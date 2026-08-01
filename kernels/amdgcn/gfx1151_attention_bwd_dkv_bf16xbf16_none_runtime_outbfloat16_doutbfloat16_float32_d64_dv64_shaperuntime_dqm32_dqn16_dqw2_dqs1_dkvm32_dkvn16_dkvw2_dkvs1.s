	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[28:31], s[0:1], 0x94
	s_load_b128 s[24:27], s[0:1], 0x64
	s_load_b32 s33, s[0:1], 0x7c
.Ltmp0:
	.loc	1 534 24 prologue_end           ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v19, 1, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v40, 15, v0
	s_load_b32 s35, s[0:1], 0x74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v23, 0x1b0, v19
	v_xor_b32_e32 v26, 0x2d0, v19
	v_add_nc_u32_e32 v176, 0, v26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s28
	s_bitcmp1_b32 s28, 8
	s_cselect_b32 s58, -1, 0
	s_cmp_eq_u32 s4, 1
	s_load_b128 s[4:7], s[0:1], 0x8
	s_cselect_b32 s59, -1, 0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_abs_i32 s14, s25
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_abs_i32 s9, s3
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cvt_f32_u32 s8, s14
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s57, s2, 4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_rcp_iflag_f32_e32 v1, s8
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_u32_f32 s18, s8
	s_sub_i32 s8, 0, s14
	s_mul_i32 s8, s8, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s18, s8
	s_add_i32 s18, s18, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_mul_hi_u32 s8, s9, s18
	s_mul_i32 s10, s8, s14
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s2, s9, s10
	s_add_i32 s9, s8, 1
	s_sub_i32 s10, s2, s14
	s_cmp_ge_u32 s2, s14
	s_cselect_b32 s8, s9, s8
	s_cselect_b32 s2, s10, s2
	s_add_i32 s9, s8, 1
	s_cmp_ge_u32 s2, s14
	s_cselect_b32 s13, s9, s8
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_ashr_i32 s15, s24, 31
	s_ashr_i32 s16, s25, 31
	s_abs_i32 s17, s24
	.loc	1 514 23                        ; attention_backward.py:514:23
	s_or_b32 s2, s57, 1
	s_or_b32 s8, s57, 2
	s_or_b32 s9, s57, 3
	s_or_b32 s10, s57, 4
	s_or_b32 s11, s57, 5
	s_or_b32 s12, s57, 6
	s_or_b32 s19, s57, 7
	s_or_b32 s20, s57, 8
	s_or_b32 s21, s57, 9
	s_or_b32 s22, s57, 10
	s_or_b32 s23, s57, 11
	s_or_b32 s34, s57, 12
	s_or_b32 s47, s57, 13
	s_or_b32 s48, s57, 14
	s_or_b32 s49, s57, 15
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cmp_lt_i32 s57, s27
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s2, s27
	.loc	1 533 24                        ; attention_backward.py:533:24
	s_mul_i32 s2, s3, s27
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s8, s27
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s8, s4
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s9, s27
	s_mov_b32 s4, 0
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s10, s27
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s11, s27
	s_mov_b32 s11, 0x31027000
	s_cselect_b32 s41, -1, 0
	s_cmp_lt_i32 s12, s27
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s12, s33, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s40, -1, 0
	s_cmp_lt_i32 s19, s27
	s_cselect_b32 s39, -1, 0
	s_cmp_lt_i32 s20, s27
	s_cselect_b32 s38, -1, 0
	s_cmp_lt_i32 s21, s27
	s_cselect_b32 s37, -1, 0
	s_cmp_lt_i32 s22, s27
	s_cselect_b32 s36, -1, 0
	s_cmp_lt_i32 s23, s27
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s34, s27
	s_cselect_b32 s22, -1, 0
	s_cmp_lt_i32 s47, s27
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s48, s27
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s49, s27
	s_cselect_b32 s21, -1, 0
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_add_i32 s56, s2, s57
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_cmp_gt_i32_e64 s2, s35, v0
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_mul_i32 s34, s56, s35
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_mul_i32 s56, s56, s33
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v1, s34, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v17, s56, v0
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s46, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_and_b32 s9, s5, 0xffff
	.loc	1 587 22                        ; attention_backward.py:587:22
	s_add_i32 s5, s26, 31
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v2, s35, v1
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v18, s33, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v3, s35, v2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v2, 1, v2
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v20, s33, v18
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v18, 1, v18
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v4, s35, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s45, s2
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v24, s33, v20
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v5, s35, v4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s44, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v4, 1, v4
	v_lshlrev_b32_e32 v3, 1, v3
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v6, s35, v5
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v20, 1, v20
	v_lshlrev_b32_e32 v17, 1, v17
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v28, s33, v24
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v7, s35, v6
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s43, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s42, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v8, s35, v7
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v6, 1, v6
	v_lshlrev_b32_e32 v5, 1, v5
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v9, s35, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s41, s2
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v10, s35, v9
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s40, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v8, 1, v8
	v_lshlrev_b32_e32 v7, 1, v7
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v11, s35, v10
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_clause 0x5
	buffer_load_u16 v1, v1, s[8:11], 0 offen
	buffer_load_u16 v2, v2, s[8:11], 0 offen
	buffer_load_u16 v3, v3, s[8:11], 0 offen
	buffer_load_u16 v4, v4, s[8:11], 0 offen
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	buffer_load_u16 v6, v6, s[8:11], 0 offen
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v12, s35, v11
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s39, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s38, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v10, 1, v10
	v_lshlrev_b32_e32 v9, 1, v9
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v13, s35, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s37, s2
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v14, s35, v13
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s36, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v12, 1, v12
	v_lshlrev_b32_e32 v11, 1, v11
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v15, s35, v14
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v14, 1, v14
	v_lshlrev_b32_e32 v13, 1, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s23, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v16, 1, v15
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s22, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_lshl_u32 v15, v15, s35, 1
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s19, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_clause 0x4
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s20, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s21, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s46, s12
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_add_nc_u32 v174, 0, v23
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s45, s12
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v23, 0x80000000, v18 :: v_dual_lshlrev_b32 v18, 1, v24
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s44, s12
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s43, s12
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v26, 0x80000000, v18 :: v_dual_add_nc_u32 v171, 0, v19
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_clause 0x4
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	buffer_load_u16 v16, v16, s[8:11], 0 offen
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	v_xor_b32_e32 v21, 0x90, v19
	v_xor_b32_e32 v22, 0x120, v19
	v_xor_b32_e32 v25, 0x240, v19
	v_xor_b32_e32 v27, 0x360, v19
	v_xor_b32_e32 v19, 0x3f0, v19
	v_add_nc_u32_e32 v172, 0, v21
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v21, s33, v28
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v173, 0, v22
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s42, s12
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s9, s7, 0xffff
	s_mov_b32 s8, s6
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v22, s33, v21
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v21, 1, v21
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v178, 0, v19
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_ashr_i32 s6, s5, 31
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v19, s33, v22
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v22, 1, v22
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v175, 0, v25
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v25, 1, v28
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_lshr_b32 s6, s6, 27
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v24, s33, v19
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v19, 1, v19
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_add_i32 s6, s5, s6
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s41, s12
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v18, s33, v24
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s40, s12
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v24, 1, v24
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s39, s12
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_hi_u32 s5, s17, s18
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s38, s12
	.loc	1 587 20                        ; attention_backward.py:587:20
	s_and_b32 s60, s6, 0xffffffe0
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s37, s12
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v177, 0, v27
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v27, s33, v18
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v28, s33, v27
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v30, 0x80000000, v18 :: v_dual_lshlrev_b32 v27, 1, v27
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s36, s12
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(15)
	ds_store_b16 v171, v1
	s_waitcnt vmcnt(9)
	ds_store_b16 v171, v9 offset:1024
	ds_store_b16 v172, v2
	s_waitcnt vmcnt(8)
	ds_store_b16 v172, v10 offset:1024
	ds_store_b16 v173, v3
	s_waitcnt vmcnt(7)
	ds_store_b16 v173, v11 offset:1024
	ds_store_b16 v174, v4
	s_waitcnt vmcnt(6)
	ds_store_b16 v174, v12 offset:1024
	ds_store_b16 v175, v5
	s_waitcnt vmcnt(5)
	ds_store_b16 v175, v13 offset:1024
	ds_store_b16 v176, v6
	s_waitcnt vmcnt(4)
	ds_store_b16 v176, v14 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v177, v7
	s_waitcnt vmcnt(2)
	ds_store_b16 v177, v16 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v178, v8
	s_waitcnt vmcnt(0)
	ds_store_b16 v178, v15 offset:1024
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v29, s33, v28
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_lshlrev_b32 v28, 1, v28
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s23, s12
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v18, s33, v29
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v28, 0x80000000, v28 :: v_dual_lshlrev_b32 v29, 1, v29
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s22, s12
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v31, s33, v18
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v29, 0x80000000, v29 :: v_dual_lshlrev_b32 v18, 1, v18
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s19, s12
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v1, 4, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v32, 1, v31
	v_add_lshl_u32 v31, v31, s33, 1
	v_cndmask_b32_e32 v33, 0x80000000, v18, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s20, s12
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_and_b32_e32 v1, 0x70, v1
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s21, s12
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_bfe_u32 s6, s28, 0x10008
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	s_clause 0xf
	buffer_load_u16 v18, v17, s[8:11], 0 offen
	buffer_load_u16 v17, v23, s[8:11], 0 offen
	buffer_load_u16 v16, v20, s[8:11], 0 offen
	buffer_load_u16 v15, v26, s[8:11], 0 offen
	buffer_load_u16 v14, v25, s[8:11], 0 offen
	buffer_load_u16 v13, v21, s[8:11], 0 offen
	buffer_load_u16 v12, v22, s[8:11], 0 offen
	buffer_load_u16 v11, v19, s[8:11], 0 offen
	buffer_load_u16 v26, v24, s[8:11], 0 offen
	buffer_load_u16 v25, v30, s[8:11], 0 offen
	buffer_load_u16 v24, v27, s[8:11], 0 offen
	buffer_load_u16 v23, v28, s[8:11], 0 offen
	buffer_load_u16 v22, v29, s[8:11], 0 offen
	buffer_load_u16 v21, v33, s[8:11], 0 offen
	buffer_load_u16 v20, v32, s[8:11], 0 offen
	buffer_load_u16 v19, v31, s[8:11], 0 offen
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshl_or_b32 v1, v40, 7, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v3, 16, v1
	v_xor_b32_e32 v4, 32, v1
	v_xor_b32_e32 v5, 48, v1
	v_xor_b32_e32 v6, 64, v1
	v_xor_b32_e32 v7, 0x50, v1
	v_xor_b32_e32 v8, 0x60, v1
	v_xor_b32_e32 v9, 0x70, v1
	v_add_nc_u32_e32 v2, 0, v1
	v_add_nc_u32_e32 v3, 0, v3
	v_add_nc_u32_e32 v4, 0, v4
	v_add_nc_u32_e32 v5, 0, v5
	v_add_nc_u32_e32 v6, 0, v6
	v_add_nc_u32_e32 v7, 0, v7
	v_add_nc_u32_e32 v8, 0, v8
	v_add_nc_u32_e32 v9, 0, v9
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s4, s57, s29
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_add_i32 s7, s30, s31
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s4, s4, s31
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_sub_i32 s7, s57, s7
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s4, s4, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 592 17                        ; attention_backward.py:592:17
	s_min_i32 s4, s26, s4
	.loc	1 590 24                        ; attention_backward.py:590:24
	s_max_i32 s4, s4, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 600 19                        ; attention_backward.py:600:19
	s_add_i32 s4, s4, 31
	.loc	1 600 18 is_stmt 0              ; attention_backward.py:600:18
	s_ashr_i32 s6, s4, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s6, s6, 27
	s_add_i32 s4, s4, s6
	.loc	1 589 24 is_stmt 1              ; attention_backward.py:589:24
	s_max_i32 s6, s7, 0
	.loc	1 600 17                        ; attention_backward.py:600:17
	s_and_b32 s7, s4, 0xffffffe0
	.loc	1 597 45                        ; attention_backward.py:597:45
	s_and_b32 s4, s6, 0x7fffffe0
	.loc	1 598 24                        ; attention_backward.py:598:24
	s_min_i32 s60, s60, s7
.LBB0_2:
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[27:30], v2
	ds_load_b128 v[31:34], v3
	s_load_b128 s[36:39], s[0:1], 0x50
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_mul_i32 s6, s5, s14
	s_xor_b32 s7, s15, s16
	s_sub_i32 s6, s17, s6
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s6, s14
	s_cmp_ge_u32 s6, s14
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_and_b32_e32 v10, 32, v0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s6, s9, s6
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s6, s14
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[27:30], off
	scratch_store_b128 off, v[31:34], off offset:16
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[27:30], v4
	ds_load_b128 v[31:34], v5
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s5, s8, s5
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[27:30], off offset:32 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[31:34], off offset:48 ; 16-byte Folded Spill
	.loc	1 0 0                           ; attention_backward.py:0
	ds_load_b128 v[27:30], v6
	ds_load_b128 v[31:34], v7
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_xor_b32 s5, s5, s7
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[27:30], off offset:64 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[31:34], off offset:80 ; 16-byte Folded Spill
	.loc	1 0 0                           ; attention_backward.py:0
	ds_load_b128 v[27:30], v8
	ds_load_b128 v[31:34], v9
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_sub_i32 s28, s5, s7
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[27:30], off offset:96 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[31:34], off offset:112 ; 16-byte Folded Spill
	.loc	1 514 33 is_stmt 1              ; attention_backward.py:514:33
	v_bfe_u32 v34, v0, 4, 1
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshrrev_b32_e32 v33, 1, v10
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cmp_lt_i32 s28, 1
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b16 v171, v18
	s_waitcnt vmcnt(7)
	ds_store_b16 v171, v26 offset:1024
	ds_store_b16 v172, v17
	s_waitcnt vmcnt(6)
	ds_store_b16 v172, v25 offset:1024
	ds_store_b16 v173, v16
	s_waitcnt vmcnt(5)
	ds_store_b16 v173, v24 offset:1024
	ds_store_b16 v174, v15
	s_waitcnt vmcnt(4)
	ds_store_b16 v174, v23 offset:1024
	ds_store_b16 v175, v14
	s_waitcnt vmcnt(3)
	ds_store_b16 v175, v22 offset:1024
	ds_store_b16 v176, v13
	s_waitcnt vmcnt(2)
	ds_store_b16 v176, v21 offset:1024
	ds_store_b16 v177, v12
	s_waitcnt vmcnt(1)
	ds_store_b16 v177, v20 offset:1024
	ds_store_b16 v178, v11
	s_waitcnt vmcnt(0)
	ds_store_b16 v178, v19 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cbranch_scc1 .LBB0_13
; %bb.3:                                ; %.lr.ph164
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	s_xor_b32 s5, s3, s25
	s_clause 0x3
	s_load_b32 s61, s[0:1], 0x80
	s_load_b64 s[40:41], s[0:1], 0x48
	s_load_b128 s[44:47], s[0:1], 0x38
	s_load_b64 s[48:49], s[0:1], 0x0
	.loc	1 514 23 is_stmt 1              ; attention_backward.py:514:23
	v_or_b32_e32 v181, s57, v34
	s_ashr_i32 s1, s5, 31
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_sub_i32 s0, s57, s31
	s_xor_b32 s5, s13, s1
	s_max_i32 s0, s0, 0
	s_sub_i32 s10, s5, s1
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v12, 2, v181
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_and_b32 s0, s0, 0x7fffffe0
	s_mul_i32 s1, s10, s25
	s_max_u32 s0, s4, s0
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_sub_i32 s3, s3, s1
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_and_b32 s1, s59, exec_lo
	.loc	1 514 23 is_stmt 1              ; attention_backward.py:514:23
	v_or_b32_e32 v13, 4, v181
	v_or_b32_e32 v14, 6, v181
	v_or_b32_e32 v15, 8, v181
	v_or_b32_e32 v16, 10, v181
	v_or_b32_e32 v17, 12, v181
	v_or_b32_e32 v18, 14, v181
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s1, s27, v12
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v12, s35, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v19, s33, v0
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_cselect_b32 s63, s0, s4
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s4, s27, v13
	v_cmp_gt_i32_e64 s5, s27, v14
	v_cmp_gt_i32_e64 s6, s27, v15
	scratch_store_b32 off, v12, off offset:224 ; 4-byte Folded Spill
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v12, s35, v12
	scratch_store_b32 off, v19, off offset:228 ; 4-byte Folded Spill
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v13, s33, v19
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s7, s27, v16
	v_cmp_gt_i32_e64 s8, s27, v17
	v_cmp_gt_i32_e64 s9, s27, v18
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[18:21], v9
	ds_load_b128 v[14:17], v8
	scratch_store_b32 off, v12, off offset:232 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[14:17], off offset:128
	scratch_store_b128 off, v[18:21], off offset:144
	ds_load_b128 v[18:21], v7
	ds_load_b128 v[14:17], v6
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v12, s35, v12
	s_waitcnt lgkmcnt(0)
	s_clause 0x2                            ; 36-byte Folded Spill
	scratch_store_b128 off, v[14:17], off offset:160
	scratch_store_b128 off, v[18:21], off offset:176
	scratch_store_b32 off, v12, off offset:240
	v_add_nc_u32_e32 v6, s35, v12
	scratch_store_b32 off, v13, off offset:236 ; 4-byte Folded Spill
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v13, s33, v13
	v_lshl_or_b32 v201, v10, 6, v1
	v_dual_mov_b32 v97, 0 :: v_dual_lshlrev_b32 v8, 1, v40
	.loc	1 662 35                        ; attention_backward.py:662:35
	s_mul_i32 s10, s10, s24
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v7, s33, v13
	scratch_store_b32 off, v13, off offset:244 ; 4-byte Folded Spill
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[16:19], v5
	ds_load_b128 v[12:15], v4
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v4, s35, v6
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[12:15], off offset:192
	scratch_store_b128 off, v[16:19], off offset:208
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v5, s33, v7
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[16:19], v3
	ds_load_b128 v[12:15], v2
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v2, s35, v4
	v_dual_mov_b32 v202, v4 :: v_dual_and_b32 v11, 16, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v3, s33, v5
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[12:15], off offset:256
	scratch_store_b128 off, v[16:19], off offset:272
	v_dual_mov_b32 v96, v2 :: v_dual_add_nc_u32 v1, s35, v2
	v_add_nc_u32_e32 v2, s33, v3
	v_dual_mov_b32 v90, v3 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v43, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v3, s35, v1
	v_dual_mov_b32 v45, v97 :: v_dual_add_nc_u32 v4, s33, v2
	v_mov_b32_e32 v47, v97
	v_mov_b32_e32 v44, v97
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v212, v3
	scratch_store_b32 off, v7, off offset:252 ; 4-byte Folded Spill
	v_dual_mov_b32 v46, v97 :: v_dual_add_nc_u32 v7, s33, v4
	v_mov_b32_e32 v26, v97
	v_mov_b32_e32 v58, v97
	v_mov_b32_e32 v28, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v12, s33, v7
	v_mov_b32_e32 v62, v97
	v_mov_b32_e32 v31, v97
	v_mov_b32_e32 v56, v97
	v_dual_mov_b32 v30, v97 :: v_dual_mov_b32 v217, v12
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v12, s33, v12
	v_mov_b32_e32 v42, v97
	v_mov_b32_e32 v32, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v48, v97 :: v_dual_mov_b32 v91, v12
	v_add_nc_u32_e32 v12, s33, v12
	v_dual_mov_b32 v88, v2 :: v_dual_mov_b32 v25, 0
	v_xor_b32_e32 v2, 32, v201
	v_add3_u32 v218, 0, v10, v8
	v_mov_b32_e32 v220, v12
	v_add_nc_u32_e32 v12, s33, v12
	v_mov_b32_e32 v50, v97
	v_mov_b32_e32 v87, v1
	v_xor_b32_e32 v1, 16, v201
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s65, s28, s3
	v_dual_mov_b32 v93, v12 :: v_dual_add_nc_u32 v14, s33, v12
	v_mov_b32_e32 v59, v97
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s0, s27, v181
	s_add_i32 s65, s65, s10
	v_dual_mov_b32 v222, v14 :: v_dual_mov_b32 v211, v7
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v34, off offset:292
	scratch_store_b32 off, v6, off offset:248
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v6, s35, v3
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v203, s33, v14
	v_mov_b32_e32 v53, v97
	v_lshlrev_b32_e32 v7, 3, v0
	v_xor_b32_e32 v3, 48, v201
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v9, s35, v6
	v_add_nc_u32_e32 v225, s33, v203
	v_mov_b32_e32 v55, v97
	v_dual_mov_b32 v210, v6 :: v_dual_and_b32 v7, 48, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v216, v9 :: v_dual_add_nc_u32 v13, s35, v9
	v_lshlrev_b32_e32 v9, 2, v11
	v_add_nc_u32_e32 v230, s33, v225
	v_lshl_or_b32 v215, v40, 6, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v89, v13
	v_add_nc_u32_e32 v13, s35, v13
	v_or3_b32 v214, v8, v9, v10
	v_add_nc_u32_e32 v235, s33, v230
	v_mov_b32_e32 v95, v5
	v_xor_b32_e32 v5, 0x50, v201
	v_add_nc_u32_e32 v9, s35, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v219, v13 :: v_dual_add_nc_u32 v240, s33, v235
	v_mov_b32_e32 v213, v4
	v_xor_b32_e32 v4, 64, v201
	v_add_nc_u32_e32 v13, s35, v9
	v_xor_b32_e32 v6, 0x60, v201
	v_add_nc_u32_e32 v245, s33, v240
	v_xor_b32_e32 v11, 0x70, v201
	v_xor_b32_e32 v7, 0x90, v214
	v_add_nc_u32_e32 v15, s35, v13
	v_xor_b32_e32 v8, 0x120, v214
	v_dual_mov_b32 v92, v9 :: v_dual_add_nc_u32 v247, s33, v245
	v_xor_b32_e32 v9, 0x1b0, v214
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v224, s35, v15
	v_xor_b32_e32 v10, 16, v215
	v_add_nc_u32_e32 v249, s33, v247
	v_xor_b32_e32 v12, 32, v215
	v_mov_b32_e32 v221, v13
	v_add_nc_u32_e32 v229, s35, v224
	v_xor_b32_e32 v13, 48, v215
	v_add_nc_u32_e32 v251, s33, v249
	v_dual_mov_b32 v60, v97 :: v_dual_add_nc_u32 v223, 0, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v234, s35, v229
	v_dual_mov_b32 v94, v15 :: v_dual_add_nc_u32 v253, s33, v251
	v_dual_mov_b32 v27, v97 :: v_dual_add_nc_u32 v226, 0, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v239, s35, v234
	v_dual_mov_b32 v64, v97 :: v_dual_add_nc_u32 v227, 0, v9
	v_add_nc_u32_e32 v255, s33, v253
	v_dual_mov_b32 v29, v97 :: v_dual_add_nc_u32 v228, 0, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v244, s35, v239
	v_dual_mov_b32 v52, v97 :: v_dual_add_nc_u32 v231, 0, v12
	v_add_nc_u32_e32 v180, s33, v255
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v232, 0, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v246, s35, v244
	v_dual_mov_b32 v54, v97 :: v_dual_add_nc_u32 v233, 0, v1
	v_add_nc_u32_e32 v182, s33, v180
	v_dual_mov_b32 v61, v97 :: v_dual_add_nc_u32 v236, 0, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v248, s35, v246
	v_add_nc_u32_e32 v237, 0, v3
	v_add_nc_u32_e32 v184, s33, v182
	v_dual_mov_b32 v63, v97 :: v_dual_add_nc_u32 v238, 0, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v250, s35, v248
	v_add_nc_u32_e32 v241, 0, v5
	v_add_nc_u32_e32 v186, s33, v184
	v_dual_mov_b32 v51, v97 :: v_dual_add_nc_u32 v242, 0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v252, s35, v250
	v_add_nc_u32_e32 v243, 0, v11
	v_add_nc_u32_e32 v188, s33, v186
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v1, v33, v40
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_mul_f32 s64, s61, 0x3fb8aa3b
	v_add_nc_u32_e32 v254, s35, v252
	s_cmp_lt_i32 s63, s60
	s_mov_b32 s62, 0
	s_cselect_b32 s66, -1, 0
	s_and_b32 s49, s49, 0xffff
	v_add_nc_u32_e32 v179, s35, v254
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_and_b32 s53, s47, 0xffff
	s_mov_b32 s52, s46
	v_add_nc_u32_e32 v170, s35, v179
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:288
	scratch_store_b32 off, v40, off offset:296
	v_add_nc_u32_e32 v183, s35, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v185, s35, v183
	v_add_nc_u32_e32 v187, s35, v185
	s_branch .LBB0_5
.LBB0_4:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_add_i32 s62, s62, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s62, s28
	s_cbranch_scc0 .LBB0_12
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s66
	s_cbranch_vccnz .LBB0_4
; %bb.6:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 662 35                        ; attention_backward.py:662:35
	s_add_i32 s67, s65, s62
	s_mov_b32 s68, s63
	.loc	1 662 34 is_stmt 0              ; attention_backward.py:662:34
	s_mul_i32 s67, s67, s26
	s_branch .LBB0_8
.LBB0_7:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v66, off, off offset:228
	scratch_load_b32 v67, off, off offset:236
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s3, s43, s33
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, vcc_hi
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v65, s3, v0, 1
	s_mov_b32 s46, s50
	s_mov_b32 s47, s51
	v_add_lshl_u32 v77, s3, v225, 1
	v_add_lshl_u32 v76, s3, v203, 1
	v_add_lshl_u32 v75, s3, v222, 1
	v_add_lshl_u32 v78, s3, v230, 1
	v_add_lshl_u32 v79, s3, v235, 1
	v_add_lshl_u32 v80, s3, v240, 1
	v_add_lshl_u32 v102, s3, v245, 1
	v_add_lshl_u32 v103, s3, v247, 1
	v_add_lshl_u32 v104, s3, v249, 1
	v_add_lshl_u32 v107, s3, v251, 1
	v_add_lshl_u32 v108, s3, v253, 1
	v_add_lshl_u32 v109, s3, v255, 1
	v_add_lshl_u32 v110, s3, v180, 1
	v_add_lshl_u32 v111, s3, v182, 1
	v_add_lshl_u32 v112, s3, v184, 1
	v_add_nc_u32_e32 v115, s33, v188
	v_add_lshl_u32 v113, s3, v186, 1
	v_add_lshl_u32 v114, s3, v188, 1
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_add_lshl_u32 v116, s43, v1, 2
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s43, s51
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v115, s3, v115, 1
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s68, s68, 32
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_cndmask_b32_e64 v116, 0x80000000, v116, s10
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v66, s3, v66, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v67, s3, v67, 1
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s104
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s103
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v69, 0x80000000, v67, vcc_lo
	scratch_load_b32 v67, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s102
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v67, s3, v67, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v70, 0x80000000, v67, vcc_lo
	scratch_load_b32 v67, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s101
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v67, s3, v67, 1
	v_cndmask_b32_e32 v71, 0x80000000, v67, vcc_lo
	v_add_lshl_u32 v67, s3, v95, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v72, 0x80000000, v67, vcc_lo
	v_add_lshl_u32 v67, s3, v90, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s98
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v73, 0x80000000, v67, vcc_lo
	v_add_lshl_u32 v67, s3, v88, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s97
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v74, 0x80000000, v67, vcc_lo
	s_clause 0x7
	buffer_load_u16 v68, v65, s[44:47], 0 offen
	buffer_load_u16 v67, v66, s[44:47], 0 offen
	buffer_load_u16 v66, v69, s[44:47], 0 offen
	buffer_load_u16 v65, v70, s[44:47], 0 offen
	buffer_load_u16 v101, v71, s[44:47], 0 offen
	buffer_load_u16 v100, v72, s[44:47], 0 offen
	buffer_load_u16 v99, v73, s[44:47], 0 offen
	buffer_load_u16 v98, v74, s[44:47], 0 offen
	v_add_lshl_u32 v69, s3, v213, 1
	v_add_lshl_u32 v70, s3, v211, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s94
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v71, s3, v217, 1
	v_add_lshl_u32 v72, s3, v91, 1
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s90
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v73, s3, v220, 1
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s88
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v74, s3, v93, 1
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s86
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s85
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s84
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s83
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s82
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s81
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s80
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s79
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_u16 v69, v69, s[44:47], 0 offen
	buffer_load_u16 v70, v70, s[44:47], 0 offen
	buffer_load_u16 v71, v71, s[44:47], 0 offen
	buffer_load_u16 v72, v72, s[44:47], 0 offen
	buffer_load_u16 v73, v73, s[44:47], 0 offen
	buffer_load_u16 v74, v74, s[44:47], 0 offen
	buffer_load_u16 v75, v75, s[44:47], 0 offen
	buffer_load_u16 v76, v76, s[44:47], 0 offen
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s78
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s77
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v102, 0x80000000, v102, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s76
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v103, 0x80000000, v103, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s75
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v104, 0x80000000, v104, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s74
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v107, 0x80000000, v107, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s73
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_u16 v77, v77, s[44:47], 0 offen
	buffer_load_u16 v78, v78, s[44:47], 0 offen
	buffer_load_u16 v79, v79, s[44:47], 0 offen
	buffer_load_u16 v80, v80, s[44:47], 0 offen
	buffer_load_u16 v102, v102, s[44:47], 0 offen
	buffer_load_u16 v103, v103, s[44:47], 0 offen
	buffer_load_u16 v104, v104, s[44:47], 0 offen
	buffer_load_u16 v107, v107, s[44:47], 0 offen
	v_cndmask_b32_e32 v108, 0x80000000, v108, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s72
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v109, 0x80000000, v109, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s71
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v110, 0x80000000, v110, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s70
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v111, 0x80000000, v111, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s69
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v112, 0x80000000, v112, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s55
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s55, s51
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v113, 0x80000000, v113, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s54
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s54, s50
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v114, 0x80000000, v114, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s12, s42
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s42, s50
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v115, 0x80000000, v115, vcc_lo
	s_clause 0x7
	buffer_load_u16 v108, v108, s[44:47], 0 offen
	buffer_load_u16 v109, v109, s[44:47], 0 offen
	buffer_load_u16 v110, v110, s[44:47], 0 offen
	buffer_load_u16 v111, v111, s[44:47], 0 offen
	buffer_load_u16 v112, v112, s[44:47], 0 offen
	buffer_load_u16 v113, v113, s[44:47], 0 offen
	buffer_load_u16 v114, v114, s[44:47], 0 offen
	buffer_load_u16 v115, v115, s[44:47], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v146, v116, s[52:55], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v147, v116, s[40:43], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_i32 s68, s60
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(33)
	ds_store_b16 v171, v68
	s_waitcnt vmcnt(32)
	ds_store_b16 v171, v67 offset:128
	s_waitcnt vmcnt(31)
	ds_store_b16 v171, v66 offset:256
	s_waitcnt vmcnt(30)
	ds_store_b16 v171, v65 offset:384
	s_waitcnt vmcnt(29)
	ds_store_b16 v171, v101 offset:512
	s_waitcnt vmcnt(28)
	ds_store_b16 v171, v100 offset:640
	s_waitcnt vmcnt(27)
	ds_store_b16 v171, v99 offset:768
	s_waitcnt vmcnt(26)
	ds_store_b16 v171, v98 offset:896
	s_waitcnt vmcnt(25)
	ds_store_b16 v171, v69 offset:1024
	s_waitcnt vmcnt(24)
	ds_store_b16 v171, v70 offset:1152
	s_waitcnt vmcnt(23)
	ds_store_b16 v171, v71 offset:1280
	s_waitcnt vmcnt(22)
	ds_store_b16 v171, v72 offset:1408
	s_waitcnt vmcnt(21)
	ds_store_b16 v171, v73 offset:1536
	s_waitcnt vmcnt(20)
	ds_store_b16 v171, v74 offset:1664
	s_waitcnt vmcnt(19)
	ds_store_b16 v171, v75 offset:1792
	s_waitcnt vmcnt(18)
	ds_store_b16 v171, v76 offset:1920
	s_waitcnt vmcnt(17)
	ds_store_b16 v171, v77 offset:2048
	s_waitcnt vmcnt(16)
	ds_store_b16 v171, v78 offset:2176
	s_waitcnt vmcnt(15)
	ds_store_b16 v171, v79 offset:2304
	s_waitcnt vmcnt(14)
	ds_store_b16 v171, v80 offset:2432
	s_waitcnt vmcnt(13)
	ds_store_b16 v171, v102 offset:2560
	s_waitcnt vmcnt(12)
	ds_store_b16 v171, v103 offset:2688
	s_waitcnt vmcnt(11)
	ds_store_b16 v171, v104 offset:2816
	s_waitcnt vmcnt(10)
	ds_store_b16 v171, v107 offset:2944
	s_waitcnt vmcnt(9)
	ds_store_b16 v171, v108 offset:3072
	s_waitcnt vmcnt(8)
	ds_store_b16 v171, v109 offset:3200
	s_waitcnt vmcnt(7)
	ds_store_b16 v171, v110 offset:3328
	s_waitcnt vmcnt(6)
	ds_store_b16 v171, v111 offset:3456
	s_waitcnt vmcnt(5)
	ds_store_b16 v171, v112 offset:3584
	s_waitcnt vmcnt(4)
	ds_store_b16 v171, v113 offset:3712
	s_waitcnt vmcnt(3)
	ds_store_b16 v171, v114 offset:3840
	s_waitcnt vmcnt(2)
	ds_store_b16 v171, v115 offset:3968
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16_hi v132, v218 offset:640
	ds_load_u16_d16_hi v133, v218 offset:896
	ds_load_u16_d16_hi v109, v218 offset:960
	ds_load_u16_d16_hi v108, v218 offset:704
	ds_load_u16_d16_hi v136, v218 offset:1664
	ds_load_u16_d16_hi v137, v218 offset:1920
	ds_load_u16_d16_hi v113, v218 offset:1984
	ds_load_u16_d16_hi v112, v218 offset:1728
	ds_load_u16_d16_hi v114, v218 offset:2176
	ds_load_u16_d16_hi v115, v218 offset:2432
	ds_load_u16_d16_hi v123, v218 offset:2496
	ds_load_u16_d16_hi v122, v218 offset:2240
	ds_load_u16_d16_hi v116, v218 offset:2688
	ds_load_u16_d16_hi v117, v218 offset:2944
	ds_load_u16_d16_hi v125, v218 offset:3008
	ds_load_u16_d16_hi v124, v218 offset:2752
	ds_load_u16_d16_hi v118, v218 offset:3200
	ds_load_u16_d16_hi v119, v218 offset:3456
	ds_load_u16_d16_hi v127, v218 offset:3520
	ds_load_u16_d16_hi v126, v218 offset:3264
	ds_load_u16_d16_hi v120, v218 offset:3712
	ds_load_u16_d16_hi v121, v218 offset:3968
	ds_load_u16_d16_hi v129, v218 offset:4032
	ds_load_u16_d16_hi v128, v218 offset:3776
	ds_load_u16_d16_hi v134, v218 offset:1152
	ds_load_u16_d16_hi v135, v218 offset:1408
	ds_load_u16_d16_hi v111, v218 offset:1472
	ds_load_u16_d16_hi v110, v218 offset:1216
	ds_load_u16_d16_hi v130, v218 offset:128
	ds_load_u16_d16_hi v131, v218 offset:384
	ds_load_u16_d16_hi v107, v218 offset:448
	ds_load_u16_d16_hi v106, v218 offset:192
	ds_load_u16_d16_hi v190, v218
	ds_load_u16_d16_hi v189, v218 offset:256
	ds_load_u16_d16_hi v24, v218 offset:320
	ds_load_u16_d16_hi v33, v218 offset:64
	ds_load_u16_d16_hi v40, v218 offset:512
	ds_load_u16_d16_hi v39, v218 offset:768
	ds_load_u16_d16_hi v22, v218 offset:832
	ds_load_u16_d16_hi v23, v218 offset:576
	ds_load_u16_d16_hi v38, v218 offset:1024
	ds_load_u16_d16_hi v37, v218 offset:1280
	ds_load_u16_d16_hi v20, v218 offset:1344
	ds_load_u16_d16_hi v21, v218 offset:1088
	ds_load_u16_d16_hi v18, v218 offset:1856
	ds_load_u16_d16_hi v35, v218 offset:1792
	ds_load_u16_d16_hi v36, v218 offset:1536
	ds_load_u16_d16_hi v19, v218 offset:1600
	ds_load_u16_d16_hi v8, v218 offset:2368
	ds_load_u16_d16_hi v16, v218 offset:2304
	ds_load_u16_d16_hi v17, v218 offset:2048
	ds_load_u16_d16_hi v9, v218 offset:2112
	ds_load_u16_d16_hi v6, v218 offset:2880
	ds_load_u16_d16_hi v14, v218 offset:2816
	ds_load_u16_d16_hi v15, v218 offset:2560
	ds_load_u16_d16_hi v7, v218 offset:2624
	ds_load_u16_d16_hi v4, v218 offset:3392
	ds_load_u16_d16_hi v12, v218 offset:3328
	ds_load_u16_d16_hi v13, v218 offset:3072
	ds_load_u16_d16_hi v5, v218 offset:3136
	ds_load_u16_d16_hi v2, v218 offset:3904
	ds_load_u16_d16_hi v10, v218 offset:3840
	ds_load_u16_d16_hi v11, v218 offset:3584
	ds_load_u16_d16_hi v3, v218 offset:3648
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v171, v68
	ds_store_b16 v171, v69 offset:1024
	ds_store_b16 v171, v77 offset:2048
	ds_store_b16 v171, v108 offset:3072
	ds_store_b16 v172, v67
	ds_store_b16 v172, v70 offset:1024
	ds_store_b16 v172, v78 offset:2048
	ds_store_b16 v172, v109 offset:3072
	ds_store_b16 v173, v66
	ds_store_b16 v173, v71 offset:1024
	ds_store_b16 v173, v79 offset:2048
	ds_store_b16 v173, v110 offset:3072
	ds_store_b16 v174, v65
	ds_store_b16 v174, v72 offset:1024
	ds_store_b16 v174, v80 offset:2048
	ds_store_b16 v174, v111 offset:3072
	ds_store_b16 v175, v101
	ds_store_b16 v175, v73 offset:1024
	ds_store_b16 v175, v102 offset:2048
	ds_store_b16 v175, v112 offset:3072
	ds_store_b16 v176, v100
	ds_store_b16 v176, v74 offset:1024
	ds_store_b16 v176, v103 offset:2048
	ds_store_b16 v176, v113 offset:3072
	ds_store_b16 v177, v99
	ds_store_b16 v177, v75 offset:1024
	ds_store_b16 v177, v104 offset:2048
	ds_store_b16 v177, v114 offset:3072
	ds_store_b16 v178, v98
	ds_store_b16 v178, v76 offset:1024
	ds_store_b16 v178, v107 offset:2048
	ds_store_b16 v178, v115 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[73:76], off, off offset:256
	scratch_load_b128 v[77:80], off, off offset:272
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[65:68], v105
	ds_load_b128 v[69:72], v233
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v104, v97
	v_mov_b32_e32 v98, v97
	v_mov_b32_e32 v99, v97
	v_mov_b32_e32 v100, v97
	v_mov_b32_e32 v101, v97
	v_mov_b32_e32 v102, v97
	v_mov_b32_e32 v103, v97
	v_mov_b32_e32 v105, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v104, v103
	v_mov_b32_e32 v103, v102
	v_mov_b32_e32 v102, v101
	v_mov_b32_e32 v101, v100
	v_mov_b32_e32 v100, v99
	v_mov_b32_e32 v99, v98
	v_dual_mov_b32 v98, v97 :: v_dual_add_nc_u32 v197, 0, v214
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[98:105], v[73:80], v[65:72], v[98:105]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[73:76], off, off offset:192
	scratch_load_b128 v[77:80], off, off offset:208
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[65:68], v236
	ds_load_b128 v[69:72], v237
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[98:105], v[73:80], v[65:72], v[98:105]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[73:76], off, off offset:160
	scratch_load_b128 v[77:80], off, off offset:176
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[65:68], v238
	ds_load_b128 v[69:72], v241
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[98:105], v[73:80], v[65:72], v[98:105]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[73:76], off, off offset:128
	scratch_load_b128 v[77:80], off, off offset:144
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[65:68], v242
	ds_load_b128 v[69:72], v243
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[98:105], v[73:80], v[65:72], v[98:105]
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v65, s64, v138, -v146
	v_fma_f32 v66, s64, v139, -v146
	v_fma_f32 v67, s64, v140, -v146
	v_fma_f32 v68, s64, v141, -v146
	v_fma_f32 v70, s64, v143, -v146
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	.loc	1 720 47 is_stmt 1              ; attention_backward.py:720:47
	v_sub_f32_e32 v73, v98, v147
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v67, v67
	.loc	1 703 34 is_stmt 0              ; attention_backward.py:703:34
	v_fma_f32 v69, s64, v142, -v146
	.loc	1 720 47 is_stmt 1              ; attention_backward.py:720:47
	v_sub_f32_e32 v74, v99, v147
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v68, v68
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v75, v100, v147
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v71, s64, v144, -v146
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v69, v69
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v143, 0, v65, s100
	v_cndmask_b32_e64 v157, 0, v66, s96
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v76, v101, v147
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v192, 0, v67, s95
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_dual_mul_f32 v65, v143, v73 :: v_dual_mul_f32 v66, v157, v74
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v193, 0, v68, s93
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v67, v192, v75
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v72, s64, v145, -v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_dual_mul_f32 v65, s61, v65 :: v_dual_mul_f32 v66, s61, v66
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_dual_sub_f32 v77, v102, v147 :: v_dual_mul_f32 v68, v193, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v67, s61, v67
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v73, v65, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v144, 0, v69, s92
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v71, v71
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v78, v103, v147
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v65, v65, v73, 0x7fff
	v_bfe_u32 v73, v66, 16, 1
	v_cmp_o_f32_e64 s3, v66, v66
	.loc	1 721 38 is_stmt 0              ; attention_backward.py:721:38
	v_mul_f32_e32 v68, s61, v68
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v194, 0, v70, s91
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v69, v144, v77
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v66, v66, v73, 0x7fff
	v_bfe_u32 v73, v67, 16, 1
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v72, v72
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v79, v104, v147
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cmp_o_f32_e64 s10, v67, v67
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v70, v194, v78
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v67, v67, v73, 0x7fff
	v_bfe_u32 v73, v68, 16, 1
	.loc	1 721 38 is_stmt 0              ; attention_backward.py:721:38
	v_mul_f32_e32 v69, s61, v69
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v195, 0, v71, s89
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v80, v105, v147
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cmp_o_f32_e64 s11, v68, v68
	v_add3_u32 v68, v68, v73, 0x7fff
	.loc	1 721 38 is_stmt 0              ; attention_backward.py:721:38
	v_mul_f32_e32 v70, s61, v70
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v73, v69, 16, 1
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v196, 0, v72, s87
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v71, v195, v79
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cmp_o_f32_e64 s13, v69, v69
	v_cndmask_b16 v34.h, 0x7fff, v65.h, vcc_lo
	v_add3_u32 v69, v69, v73, 0x7fff
	v_bfe_u32 v73, v70, 16, 1
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_dual_mul_f32 v72, v196, v80 :: v_dual_mul_f32 v71, s61, v71
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cmp_o_f32_e64 s14, v70, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v65.l, 0x7fff, v69.h, s13
	v_add3_u32 v70, v70, v73, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 721 38 is_stmt 0              ; attention_backward.py:721:38
	v_mul_f32_e32 v72, s61, v72
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v73, v71, 16, 1
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	ds_store_b16_d16_hi v197, v34
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v34.h, 0x7fff, v66.h, s3
	v_cmp_o_f32_e64 s15, v71, v71
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v197, v65 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v71, v71, v73, 0x7fff
	v_bfe_u32 v73, v72, 16, 1
	v_cndmask_b16 v65.l, 0x7fff, v70.h, s14
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v223, v34
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v34.h, 0x7fff, v67.h, s10
	v_cmp_o_f32_e64 s16, v72, v72
	v_add3_u32 v72, v72, v73, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v223, v65 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v65.l, 0x7fff, v71.h, s15
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v226, v34
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v34.h, 0x7fff, v68.h, s11
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v191, 0, v215
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v143, v143
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v226, v65 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v65.l, 0x7fff, v72.h, s16
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v227, v34
	ds_store_b16 v227, v65 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[149:152], v191
	ds_load_b128 v[153:156], v228
	ds_load_b128 v[98:101], v231
	ds_load_b128 v[102:105], v232
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v171, v2
	ds_store_b16 v171, v3 offset:128
	ds_store_b16 v171, v4 offset:256
	ds_store_b16 v171, v5 offset:384
	ds_store_b16 v171, v6 offset:512
	ds_store_b16 v171, v7 offset:640
	ds_store_b16 v171, v8 offset:768
	ds_store_b16 v171, v106 offset:896
	ds_store_b16 v171, v9 offset:1024
	ds_store_b16 v171, v10 offset:1152
	ds_store_b16 v171, v11 offset:1280
	ds_store_b16 v171, v12 offset:1408
	ds_store_b16 v171, v13 offset:1536
	ds_store_b16 v171, v14 offset:1664
	ds_store_b16 v171, v15 offset:1792
	ds_store_b16 v171, v40 offset:1920
	ds_store_b16 v171, v16 offset:2048
	ds_store_b16 v171, v17 offset:2176
	ds_store_b16 v171, v18 offset:2304
	ds_store_b16 v171, v19 offset:2432
	ds_store_b16 v171, v20 offset:2560
	ds_store_b16 v171, v21 offset:2688
	ds_store_b16 v171, v22 offset:2816
	ds_store_b16 v171, v39 offset:2944
	ds_store_b16 v171, v23 offset:3072
	ds_store_b16 v171, v24 offset:3200
	ds_store_b16 v171, v33 offset:3328
	ds_store_b16 v171, v34 offset:3456
	ds_store_b16 v171, v35 offset:3584
	ds_store_b16 v171, v36 offset:3712
	ds_store_b16 v171, v37 offset:3840
	ds_store_b16 v171, v38 offset:3968
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v72, v218 offset:1792
	ds_load_u16_d16 v66, v218 offset:256
	ds_load_u16_d16 v65, v218
	ds_load_u16_d16 v67, v218 offset:512
	ds_load_u16_d16 v68, v218 offset:768
	ds_load_u16_d16 v69, v218 offset:1024
	ds_load_u16_d16 v70, v218 offset:1280
	ds_load_u16_d16 v71, v218 offset:1536
	ds_load_u16_d16 v163, v218 offset:1344
	ds_load_u16_d16 v162, v218 offset:1088
	ds_load_u16_d16 v141, v218 offset:2816
	ds_load_u16_d16 v142, v218 offset:3072
	ds_load_u16_d16 v148, v218 offset:2624
	ds_load_u16_d16 v147, v218 offset:2368
	ds_load_u16_d16 v138, v218 offset:2048
	ds_load_u16_d16 v139, v218 offset:2304
	ds_load_u16_d16 v140, v218 offset:2560
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v148, v218 offset:2752
	ds_load_u16_d16_hi v71, v218 offset:1664
	ds_load_u16_d16_hi v72, v218 offset:1920
	ds_load_u16_d16 v161, v218 offset:832
	ds_load_u16_d16_hi v70, v218 offset:1408
	ds_load_u16_d16_hi v162, v218 offset:1216
	ds_load_u16_d16 v158, v218 offset:64
	ds_load_u16_d16_hi v66, v218 offset:384
	ds_load_u16_d16_hi v65, v218 offset:128
	ds_load_u16_d16 v160, v218 offset:576
	ds_load_u16_d16 v159, v218 offset:320
	ds_load_u16_d16_hi v69, v218 offset:1152
	ds_load_u16_d16_hi v67, v218 offset:640
	ds_load_u16_d16_hi v68, v218 offset:896
	ds_load_u16_d16 v164, v218 offset:1600
	ds_load_u16_d16 v146, v218 offset:2112
	ds_load_u16_d16 v165, v218 offset:1856
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v34, v143, 16, 1
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v158, v218 offset:192
	ds_load_u16_d16_hi v161, v218 offset:960
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v160, v218 offset:704
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v159, v218 offset:448
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v34, v143, v34, 0x7fff
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_u16_d16_hi v163, v218 offset:1472
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v164, v218 offset:1728
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v165, v218 offset:1984
	ds_load_u16_d16_hi v138, v218 offset:2176
	ds_load_u16_d16_hi v147, v218 offset:2496
	ds_load_u16_d16_hi v146, v218 offset:2240
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v34.h, 0x7fff, v34.h, vcc_lo
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_mov_b16_e32 v34.l, 0
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[57:64], v[65:72], v[149:156], v[57:64]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v144, v144
	v_cmp_o_f32_e64 s11, v157, v157
	v_bfe_u32 v70, v196, 16, 1
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v132.l, v34.l
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v65, v143, v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v134.l, v34.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s15, v196, v196
	v_add3_u32 v70, v196, v70, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v80, v132, v132
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v66, v65, 16, 1
	v_cmp_o_f32_e64 s10, v65, v65
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v78, v134, v134
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s15
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[158:165], v[149:156], v[49:56]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v154, v65, v66, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v65, v144, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v155.l, v34.l
	v_mov_b16_e32 v70.l, v34.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v136.l, v34.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v194, v194
	v_add3_u32 v65, v144, v65, 0x7fff
	v_bfe_u32 v69, v195, 16, 1
	v_bfe_u32 v68, v193, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v76, v136, v136
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s14, v195, v195
	v_cndmask_b16 v155.h, 0x7fff, v65.h, vcc_lo
	v_add3_u32 v69, v195, v69, 0x7fff
	v_add3_u32 v68, v193, v68, 0x7fff
	v_cmp_o_f32_e64 s13, v193, v193
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v2.l, 0x7fff, v154.h, s10
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v65, v144, v155
	.loc	1 663 37 is_stmt 1              ; attention_backward.py:663:37
	ds_load_u16_d16 v153, v218 offset:3904
	ds_load_u16_d16 v149, v218 offset:2880
	ds_load_u16_d16 v143, v218 offset:3328
	ds_load_u16_d16 v150, v218 offset:3136
	ds_load_u16_d16 v144, v218 offset:3584
	ds_load_u16_d16 v145, v218 offset:3840
	ds_load_u16_d16 v152, v218 offset:3648
	ds_load_u16_d16 v151, v218 offset:3392
	ds_load_u16_d16_hi v139, v218 offset:2432
	ds_load_u16_d16_hi v141, v218 offset:2944
	ds_load_u16_d16_hi v140, v218 offset:2688
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v153, v218 offset:4032
	ds_load_u16_d16_hi v142, v218 offset:3200
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v149, v218 offset:3008
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v143, v218 offset:3456
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v150, v218 offset:3264
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v66, v65, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v144, v218 offset:3712
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v145, v218 offset:3968
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v152, v218 offset:3776
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v151, v218 offset:3520
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v198, v65, v66, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v65, v157, 16, 1
	v_bfe_u32 v66, v194, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_barrier
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v69.h, 0x7fff, v69.h, s14
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s13
	v_add3_u32 v65, v157, v65, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v65.l, v34.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v66, v194, v66, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v3.l, 0x7fff, v198.h, vcc_lo
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e32 v68.l, v34.l
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s11
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v197, v155 offset:512
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s3
	v_cmp_o_f32_e64 s11, v192, v192
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v66.l, v34.l
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v67, v157, v65
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	ds_store_b16_d16_hi v223, v65
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v130.l, v34.l
	v_mov_b16_e32 v119.l, v34.l
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v69.l, v34.l
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v65, v67, 16, 1
	v_cmp_o_f32_e64 s3, v67, v67
	.loc	1 732 35 is_stmt 1              ; attention_backward.py:732:35
	v_sub_f32_e32 v200, v130, v130
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v116.l, v34.l
	v_mov_b16_e64 v131.l, v34.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v65, v67, v65, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v67, v192, 16, 1
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v133.l, v34.l
	v_mov_b16_e64 v135.l, v34.l
	v_mov_b16_e64 v137.l, v34.l
	v_mov_b16_e32 v114.l, v34.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v67, v192, v67, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v67.l, v34.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v115.l, v34.l
	v_mov_b16_e32 v117.l, v34.l
	v_mov_b16_e32 v118.l, v34.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v67.h, 0x7fff, v67.h, s11
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v197, v34
	ds_store_b16_d16_hi v223, v66 offset:512
	ds_store_b16_d16_hi v226, v67
	ds_store_b16_d16_hi v226, v69 offset:512
	ds_store_b16_d16_hi v227, v68
	ds_store_b16_d16_hi v227, v70 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[162:165], v191
	ds_load_b128 v[166:169], v228
	ds_load_b128 v[154:157], v231
	ds_load_b128 v[158:161], v232
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v197, v2
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v2.l, 0x7fff, v65.h, s3
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v65, v192, v67
	v_dual_sub_f32 v67, v193, v68 :: v_dual_sub_f32 v68, v194, v66
	.loc	1 732 35 is_stmt 1              ; attention_backward.py:732:35
	v_sub_f32_e32 v194, v119, v119
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v69, v195, v69
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v66, v65, 16, 1
	v_cmp_o_f32_e64 s3, v65, v65
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v70, v196, v70
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s13, v68, v68
	v_add3_u32 v66, v65, v66, 0x7fff
	v_bfe_u32 v65, v67, 16, 1
	.loc	1 732 35 is_stmt 1              ; attention_backward.py:732:35
	v_sub_f32_e32 v196, v116, v116
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v197, v3 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s11, v69, v69
	v_cmp_o_f32_e64 s10, v70, v70
	v_add3_u32 v65, v67, v65, 0x7fff
	v_bfe_u32 v67, v68, 16, 1
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v120.l, v34.l
	v_mov_b16_e32 v121.l, v34.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v75, v137, v137 :: v_dual_sub_f32 v198, v114, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v67, v68, v67, 0x7fff
	v_bfe_u32 v68, v69, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v137.l, v35.h
	v_mov_b16_e64 v136.l, v36.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v77, v135, v135 :: v_dual_sub_f32 v192, v121, v121
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v68, v69, v68, 0x7fff
	v_bfe_u32 v69, v70, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v67.h, s13
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v223, v2
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v2.l, 0x7fff, v66.h, s3
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v135.l, v37.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v69, v70, v69, 0x7fff
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v223, v3 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v3.l, 0x7fff, v68.h, s11
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v226, v2
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v2.l, 0x7fff, v65.h, vcc_lo
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v134.l, v38.h
	v_mov_b16_e64 v132.l, v40.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v226, v3 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v3.l, 0x7fff, v69.h, s10
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v227, v2
	ds_store_b16 v227, v3 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[67:70], v191
	ds_load_b128 v[71:74], v228
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v130.l, v190.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v110.l, v34.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v199, v131, v131
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v131.l, v189.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v112.l, v34.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v79, v133, v133
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v133.l, v39.h
	v_mov_b16_e32 v121.l, v10.h
	v_mov_b16_e32 v119.l, v12.h
	v_mov_b16_e32 v116.l, v15.h
	v_mov_b16_e32 v114.l, v17.h
	v_wmma_f32_16x16x16_bf16 v[41:48], v[130:137], v[162:169], v[41:48]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v106.l, v34.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v193, v120, v120
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v120.l, v11.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v107.l, v34.l
	v_mov_b16_e32 v108.l, v34.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v191, v118, v118
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v118.l, v13.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v109.l, v34.l
	v_mov_b16_e32 v111.l, v34.l
	v_mov_b16_e32 v113.l, v34.l
	v_mov_b16_e32 v127.l, v34.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v195, v117, v117
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v117.l, v14.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v129.l, v34.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v197, v115, v115
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v115.l, v16.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v122.l, v34.l
	v_mov_b16_e32 v123.l, v34.l
	v_mov_b16_e32 v124.l, v34.l
	v_mov_b16_e32 v125.l, v34.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[114:121], v[154:161], v[41:48]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v126.l, v34.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v113, v113
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v113.l, v18.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v66, v112, v112
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v112.l, v19.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v81, v111, v111
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v111.l, v20.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v82, v110, v110
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v110.l, v21.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v128.l, v34.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v84, v108, v108
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v108.l, v23.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v85, v107, v107
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v107.l, v24.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v86, v106, v106
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v106.l, v33.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v190.l, v34.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v83, v109, v109
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v109.l, v22.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[130:137], v[67:74], v[41:48]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v132, v127, v127
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v127.l, v4.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v130, v129, v129
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v129.l, v2.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v134, v125, v125
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v125.l, v6.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v135, v124, v124
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v124.l, v7.h
	v_wmma_f32_16x16x16_bf16 v[25:32], v[106:113], v[162:169], v[25:32]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v136, v123, v123
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v123.l, v8.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v137, v122, v122
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v122.l, v9.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v189.l, v34.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v131, v128, v128
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v128.l, v3.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v40.l, v34.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v133, v126, v126
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v126.l, v5.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v24.l, v34.l
	v_mov_b16_e32 v39.l, v34.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v40, v40, v40
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v36.l, v34.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[25:32], v[122:129], v[154:161], v[25:32]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v24, v24, v24
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v38.l, v34.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v40, v40
	v_cmp_o_f32_e64 s13, v80, v80
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[25:32], v[106:113], v[67:74], v[25:32]
	ds_load_b128 v[67:70], v231
	ds_load_b128 v[71:74], v232
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v39, v39, v39 :: v_dual_sub_f32 v36, v36, v36
	v_sub_f32_e32 v38, v38, v38
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v37.l, v34.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s10, v199, v199
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v35.l, v34.l
	v_mov_b16_e32 v22.l, v34.l
	v_mov_b16_e32 v33.l, v34.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v37, v37, v37
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v200, v200
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v35, v35, v35 :: v_dual_sub_f32 v22, v22, v22
	v_sub_f32_e32 v33, v33, v33
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v18.l, v34.l
	v_mov_b16_e32 v23.l, v34.l
	v_mov_b16_e32 v21.l, v34.l
	v_mov_b16_e32 v19.l, v34.l
	v_mov_b16_e32 v20.l, v34.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v18, v18
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[114:121], v[67:74], v[41:48]
	v_wmma_f32_16x16x16_bf16 v[25:32], v[122:129], v[67:74], v[25:32]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v70, v189, v189
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v71.h, v34.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v68, v190, v190
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v72.l, v40.h
	v_mov_b16_e32 v72.h, v34.l
	v_mov_b16_e32 v71.l, v70.h
	v_mov_b16_e32 v69.h, v34.l
	v_mov_b16_e32 v69.l, v68.h
	v_cmp_o_f32_e64 s11, v70, v70
	v_and_b32_e32 v72, 1, v72
	v_and_b32_e32 v71, 1, v71
	v_mov_b16_e64 v67.l, v200.h
	v_mov_b16_e32 v67.h, v34.l
	v_and_b32_e32 v69, 1, v69
	v_add3_u32 v72, v40, v72, 0x7fff
	v_add3_u32 v71, v70, v71, 0x7fff
	v_mov_b16_e32 v70.l, v80.h
	v_mov_b16_e32 v70.h, v34.l
	v_mov_b16_e32 v40.l, v79.h
	v_mov_b16_e32 v40.h, v34.l
	v_and_b32_e32 v67, 1, v67
	v_add3_u32 v69, v68, v69, 0x7fff
	v_and_b32_e32 v70, 1, v70
	v_cmp_o_f32_e64 s3, v68, v68
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v67, v200, v67, 0x7fff
	v_mov_b16_e64 v68.l, v199.h
	v_add3_u32 v70, v80, v70, 0x7fff
	v_mov_b16_e32 v68.h, v34.l
	v_cndmask_b16 v67.l, 0x7fff, v69.h, s3
	v_mov_b16_e32 v70.l, v39.h
	v_cmp_o_f32_e64 s3, v39, v39
	v_cndmask_b16 v69.h, 0x7fff, v70.h, s13
	v_mov_b16_e32 v70.h, v34.l
	v_and_b32_e32 v68, 1, v68
	v_cndmask_b16 v69.l, 0x7fff, v72.h, s14
	v_cmp_o_f32_e64 s13, v77, v77
	v_cndmask_b16 v67.h, 0x7fff, v67.h, vcc_lo
	v_and_b32_e32 v70, 1, v70
	v_add3_u32 v68, v199, v68, 0x7fff
	v_cndmask_b16 v68.l, 0x7fff, v71.h, s11
	v_cmp_o_f32_e64 s11, v38, v38
	v_add3_u32 v40, v79, v40, 0x7fff
	v_add3_u32 v71, v39, v70, 0x7fff
	v_mov_b16_e32 v39.l, v78.h
	v_mov_b16_e32 v39.h, v34.l
	v_mov_b16_e32 v70.l, v38.h
	v_mov_b16_e32 v70.h, v34.l
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s10
	v_cmp_o_f32_e64 s10, v78, v78
	v_and_b32_e32 v39, 1, v39
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	v_and_b32_e32 v70, 1, v70
	v_mov_b16_e32 v40.l, v35.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v23, v23
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v39, v78, v39, 0x7fff
	v_mov_b16_e32 v39.l, v36.h
	v_add3_u32 v72, v38, v70, 0x7fff
	v_mov_b16_e32 v38.l, v77.h
	v_mov_b16_e32 v38.h, v34.l
	v_cndmask_b16 v70.l, 0x7fff, v71.h, s3
	v_cndmask_b16 v71.h, 0x7fff, v39.h, s10
	v_mov_b16_e32 v39.h, v34.l
	v_cndmask_b16 v71.l, 0x7fff, v72.h, s11
	v_and_b32_e32 v38, 1, v38
	v_cmp_o_f32_e64 s10, v36, v36
	v_cndmask_b16 v70.h, 0x7fff, v40.h, vcc_lo
	v_and_b32_e32 v39, 1, v39
	v_mov_b16_e32 v40.h, v34.l
	v_add3_u32 v38, v77, v38, 0x7fff
	v_mov_b16_e32 v38.l, v37.h
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_add3_u32 v39, v36, v39, 0x7fff
	v_mov_b16_e32 v36.l, v75.h
	v_cndmask_b16 v72.h, 0x7fff, v38.h, s13
	v_mov_b16_e32 v38.h, v34.l
	v_mov_b16_e32 v36.h, v34.l
	v_cmp_o_f32_e64 s11, v75, v75
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v19, v19, v19 :: v_dual_and_b32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v38, 1, v38
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v21, v21, v21 :: v_dual_and_b32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v40, v35, v40, 0x7fff
	v_cmp_o_f32_e64 s13, v35, v35
	v_add3_u32 v38, v37, v38, 0x7fff
	v_mov_b16_e32 v37.l, v76.h
	v_mov_b16_e32 v37.h, v34.l
	v_add3_u32 v36, v75, v36, 0x7fff
	v_mov_b16_e32 v35.l, v86.h
	v_mov_b16_e32 v35.h, v34.l
	v_mov_b16_e32 v36.l, v33.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v20, v20, v20 :: v_dual_and_b32 v37, 1, v37
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v74.h, 0x7fff, v36.h, s11
	v_mov_b16_e32 v36.h, v34.l
	v_cmp_o_f32_e64 s3, v76, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v37, v76, v37, 0x7fff
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v17.l, v34.l
	v_mov_b16_e32 v16.l, v34.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v35, 1, v35
	v_and_b32_e32 v36, 1, v36
	v_cndmask_b16 v72.l, 0x7fff, v38.h, vcc_lo
	v_cndmask_b16 v73.h, 0x7fff, v37.h, s3
	v_cndmask_b16 v73.l, 0x7fff, v39.h, s10
	v_cndmask_b16 v74.l, 0x7fff, v40.h, s13
	v_cmp_o_f32_e32 vcc_lo, v86, v86
	v_cmp_o_f32_e64 s3, v33, v33
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v17, v17, v17
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v36, v33, v36, 0x7fff
	v_mov_b16_e32 v33.l, v85.h
	v_mov_b16_e32 v33.h, v34.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v16, v16, v16
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v35, v86, v35, 0x7fff
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[67:74], v[162:169], v[41:48]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v35.l, v23.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v14.l, v34.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v33, 1, v33
	v_cndmask_b16 v67.h, 0x7fff, v35.h, vcc_lo
	v_mov_b16_e32 v35.h, v34.l
	v_cmp_o_f32_e64 s10, v85, v85
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v14, v14, v14
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v33, v85, v33, 0x7fff
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v10.l, v34.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v35, 1, v35
	v_mov_b16_e32 v33.l, v24.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v12.l, v34.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v68.h, 0x7fff, v33.h, s10
	v_mov_b16_e32 v33.h, v34.l
	v_cmp_o_f32_e64 s10, v23, v23
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v10, v10
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v35, v23, v35, 0x7fff
	v_mov_b16_e32 v23.l, v83.h
	v_mov_b16_e32 v23.h, v34.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v12, v12, v12 :: v_dual_and_b32 v33, 1, v33
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v8.l, v34.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v33, v24, v33, 0x7fff
	v_mov_b16_e32 v24.l, v84.h
	v_mov_b16_e32 v24.h, v34.l
	v_cmp_o_f32_e64 s11, v83, v83
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v8, v8, v8
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v23, v83, v23, 0x7fff
	v_mov_b16_e32 v23.l, v21.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v15.l, v34.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v24, 1, v24
	v_cndmask_b16 v67.l, 0x7fff, v36.h, s3
	v_cndmask_b16 v70.h, 0x7fff, v23.h, s11
	v_mov_b16_e32 v23.h, v34.l
	v_cmp_o_f32_e64 s3, v84, v84
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v15, v15, v15
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v24, v84, v24, 0x7fff
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v6.l, v34.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v23, 1, v23
	v_mov_b16_e32 v36.l, v22.h
	v_mov_b16_e32 v36.h, v34.l
	v_cndmask_b16 v69.h, 0x7fff, v24.h, s3
	v_cmp_o_f32_e64 s3, v21, v21
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v6, v6, v6
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v23, v21, v23, 0x7fff
	v_mov_b16_e32 v21.l, v81.h
	v_mov_b16_e32 v21.h, v34.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v13.l, v34.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v36, 1, v36
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v4.l, v34.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v22, v22
	v_and_b32_e32 v21, 1, v21
	v_cndmask_b16 v69.l, 0x7fff, v35.h, s10
	v_cmp_o_f32_e64 s10, v81, v81
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v13, v13, v13
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v36, v22, v36, 0x7fff
	v_mov_b16_e32 v22.l, v82.h
	v_mov_b16_e32 v22.h, v34.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v4, v4, v4
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v21, v81, v21, 0x7fff
	v_mov_b16_e32 v21.l, v19.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v11.l, v34.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v22, 1, v22
	v_cndmask_b16 v68.l, 0x7fff, v33.h, vcc_lo
	v_cndmask_b16 v72.h, 0x7fff, v21.h, s10
	v_mov_b16_e32 v21.h, v34.l
	v_cmp_o_f32_e32 vcc_lo, v82, v82
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v11, v11
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v22, v82, v22, 0x7fff
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v2.l, v34.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v21, 1, v21
	v_mov_b16_e32 v24.l, v20.h
	v_mov_b16_e32 v24.h, v34.l
	v_cndmask_b16 v71.h, 0x7fff, v22.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v2, v2
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v21, v19, v21, 0x7fff
	v_mov_b16_e32 v19.l, v65.h
	v_mov_b16_e32 v19.h, v34.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v9.l, v34.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v24, 1, v24
	v_cmp_o_f32_e64 s11, v20, v20
	v_cndmask_b16 v71.l, 0x7fff, v23.h, s3
	v_and_b32_e32 v19, 1, v19
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v9, v9, v9
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v24, v20, v24, 0x7fff
	v_mov_b16_e32 v20.l, v66.h
	v_mov_b16_e32 v20.h, v34.l
	v_add3_u32 v19, v65, v19, 0x7fff
	v_cmp_o_f32_e64 s3, v65, v65
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v7.l, v34.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v19.l, v17.h
	v_and_b32_e32 v20, 1, v20
	v_cndmask_b16 v70.l, 0x7fff, v36.h, s13
	v_cndmask_b16 v74.h, 0x7fff, v19.h, s3
	v_mov_b16_e32 v19.h, v34.l
	v_cmp_o_f32_e64 s13, v66, v66
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v7, v7, v7
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v20, v66, v20, 0x7fff
	v_mov_b16_e32 v20.l, v16.h
	v_and_b32_e32 v19, 1, v19
	v_cmp_o_f32_e64 s3, v17, v17
	v_mov_b16_e32 v22.l, v18.h
	v_cndmask_b16 v73.h, 0x7fff, v20.h, s13
	v_mov_b16_e32 v20.h, v34.l
	v_add3_u32 v19, v17, v19, 0x7fff
	v_mov_b16_e64 v17.l, v197.h
	v_mov_b16_e32 v17.h, v34.l
	v_mov_b16_e32 v22.h, v34.l
	v_and_b32_e32 v20, 1, v20
	v_cndmask_b16 v72.l, 0x7fff, v24.h, s11
	v_cmp_o_f32_e64 s11, v16, v16
	v_and_b32_e32 v17, 1, v17
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v5.l, v34.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v20, v16, v20, 0x7fff
	v_and_b32_e32 v22, 1, v22
	v_mov_b16_e32 v20.l, v14.h
	v_add3_u32 v17, v197, v17, 0x7fff
	v_cmp_o_f32_e64 s10, v18, v18
	v_cndmask_b16 v17.l, 0x7fff, v20.h, s11
	v_mov_b16_e32 v20.h, v34.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v5, v5, v5
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v22, v18, v22, 0x7fff
	v_mov_b16_e64 v18.l, v198.h
	v_mov_b16_e32 v18.h, v34.l
	v_and_b32_e32 v20, 1, v20
	v_cmp_o_f32_e64 s11, v14, v14
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v3.l, v34.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v16.l, 0x7fff, v19.h, s3
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v20, v14, v20, 0x7fff
	v_mov_b16_e64 v14.l, v191.h
	v_mov_b16_e32 v14.h, v34.l
	v_mov_b16_e32 v19.l, v15.h
	v_mov_b16_e32 v19.h, v34.l
	v_cndmask_b16 v73.l, 0x7fff, v21.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v198, v198
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v3, v3, v3 :: v_dual_and_b32 v14, 1, v14
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v18, v198, v18, 0x7fff
	v_and_b32_e32 v19, 1, v19
	v_mov_b16_e64 v18.l, v196.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v14, v191, v14, 0x7fff
	v_cmp_o_f32_e64 s13, v191, v191
	v_cndmask_b16 v16.h, 0x7fff, v18.h, vcc_lo
	v_mov_b16_e32 v18.h, v34.l
	v_add3_u32 v19, v15, v19, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v20.h, s11
	v_cndmask_b16 v20.h, 0x7fff, v14.h, s13
	v_mov_b16_e32 v14.l, v13.h
	v_and_b32_e32 v18, 1, v18
	v_mov_b16_e32 v14.h, v34.l
	v_cmp_o_f32_e32 vcc_lo, v196, v196
	v_mov_b16_e32 v21.l, v11.h
	v_mov_b16_e32 v21.h, v34.l
	v_add3_u32 v18, v196, v18, 0x7fff
	v_and_b32_e32 v14, 1, v14
	v_cmp_o_f32_e64 s3, v15, v15
	v_mov_b16_e64 v15.l, v195.h
	v_and_b32_e32 v21, 1, v21
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	v_add3_u32 v14, v13, v14, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_mov_b16_e64 v13.l, v194.h
	v_mov_b16_e32 v13.h, v34.l
	v_mov_b16_e32 v15.h, v34.l
	v_add3_u32 v23, v11, v21, 0x7fff
	v_cmp_o_f32_e64 s13, v11, v11
	v_mov_b16_e64 v11.l, v192.h
	v_and_b32_e32 v13, 1, v13
	v_mov_b16_e32 v11.h, v34.l
	v_cndmask_b16 v74.l, 0x7fff, v22.h, s10
	v_cmp_o_f32_e64 s10, v197, v197
	v_and_b32_e32 v15, 1, v15
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s3
	v_add3_u32 v13, v194, v13, 0x7fff
	v_cmp_o_f32_e64 s3, v194, v194
	v_and_b32_e32 v11, 1, v11
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s10
	v_add3_u32 v15, v195, v15, 0x7fff
	v_cmp_o_f32_e64 s10, v195, v195
	v_cndmask_b16 v20.l, 0x7fff, v14.h, vcc_lo
	v_cndmask_b16 v21.h, 0x7fff, v13.h, s3
	v_add3_u32 v11, v192, v11, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v192, v192
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e32 v13.h, v34.l
	v_cndmask_b16 v19.h, 0x7fff, v15.h, s10
	v_mov_b16_e32 v15.l, v12.h
	v_mov_b16_e32 v15.h, v34.l
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s13
	v_and_b32_e32 v13, 1, v13
	v_cndmask_b16 v23.h, 0x7fff, v11.h, vcc_lo
	v_mov_b16_e32 v11.l, v9.h
	v_mov_b16_e32 v11.h, v34.l
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v13, v10, v13, 0x7fff
	v_cmp_o_f32_e64 s3, v10, v10
	v_cmp_o_f32_e64 s10, v12, v12
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v15, v12, v15, 0x7fff
	v_mov_b16_e64 v12.l, v193.h
	v_mov_b16_e32 v12.h, v34.l
	v_cndmask_b16 v23.l, 0x7fff, v13.h, s3
	v_add3_u32 v11, v9, v11, 0x7fff
	v_cmp_o_f32_e64 s3, v9, v9
	v_mov_b16_e64 v10.l, v137.h
	v_mov_b16_e32 v10.h, v34.l
	v_and_b32_e32 v12, 1, v12
	v_mov_b16_e32 v11.l, v8.h
	v_cndmask_b16 v9.l, 0x7fff, v11.h, s3
	v_mov_b16_e32 v11.h, v34.l
	v_and_b32_e32 v10, 1, v10
	v_add3_u32 v12, v193, v12, 0x7fff
	v_cmp_o_f32_e64 s11, v193, v193
	v_cmp_o_f32_e32 vcc_lo, v137, v137
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v10, v137, v10, 0x7fff
	v_cmp_o_f32_e64 s3, v8, v8
	v_cndmask_b16 v22.h, 0x7fff, v12.h, s11
	v_mov_b16_e32 v12.l, v7.h
	v_add3_u32 v11, v8, v11, 0x7fff
	v_mov_b16_e64 v8.l, v135.h
	v_mov_b16_e32 v8.h, v34.l
	v_mov_b16_e32 v12.h, v34.l
	v_cndmask_b16 v9.h, 0x7fff, v10.h, vcc_lo
	v_mov_b16_e64 v10.l, v136.h
	v_mov_b16_e32 v10.h, v34.l
	v_and_b32_e32 v8, 1, v8
	v_and_b32_e32 v12, 1, v12
	v_cndmask_b16 v21.l, 0x7fff, v15.h, s10
	v_cmp_o_f32_e64 s10, v135, v135
	v_and_b32_e32 v10, 1, v10
	v_add3_u32 v8, v135, v8, 0x7fff
	v_add3_u32 v12, v7, v12, 0x7fff
	v_cmp_o_f32_e64 s11, v7, v7
	v_mov_b16_e64 v7.l, v134.h
	v_mov_b16_e32 v7.h, v34.l
	v_add3_u32 v10, v136, v10, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s3
	v_cndmask_b16 v11.h, 0x7fff, v8.h, s10
	v_mov_b16_e32 v8.l, v5.h
	v_and_b32_e32 v7, 1, v7
	v_mov_b16_e32 v8.h, v34.l
	v_cmp_o_f32_e64 s13, v134, v134
	v_cndmask_b16 v11.l, 0x7fff, v12.h, s11
	v_cmp_o_f32_e64 s10, v5, v5
	v_add3_u32 v7, v134, v7, 0x7fff
	v_and_b32_e32 v8, 1, v8
	v_mov_b16_e32 v7.l, v6.h
	v_cmp_o_f32_e32 vcc_lo, v136, v136
	v_cmp_o_f32_e64 s11, v132, v132
	v_cndmask_b16 v12.h, 0x7fff, v7.h, s13
	v_mov_b16_e32 v7.h, v34.l
	v_add3_u32 v8, v5, v8, 0x7fff
	v_mov_b16_e64 v5.l, v132.h
	v_mov_b16_e32 v5.h, v34.l
	v_cndmask_b16 v10.h, 0x7fff, v10.h, vcc_lo
	v_and_b32_e32 v7, 1, v7
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_mov_b16_e32 v13.l, v4.h
	v_and_b32_e32 v5, 1, v5
	v_mov_b16_e32 v13.h, v34.l
	v_add3_u32 v7, v6, v7, 0x7fff
	v_mov_b16_e64 v6.l, v133.h
	v_mov_b16_e32 v6.h, v34.l
	v_add3_u32 v5, v132, v5, 0x7fff
	v_mov_b16_e32 v5.l, v3.h
	v_cmp_o_f32_e64 s3, v133, v133
	v_and_b32_e32 v13, 1, v13
	v_and_b32_e32 v6, 1, v6
	v_cndmask_b16 v14.h, 0x7fff, v5.h, s11
	v_mov_b16_e32 v5.h, v34.l
	v_cmp_o_f32_e64 s13, v4, v4
	v_add3_u32 v15, v4, v13, 0x7fff
	v_add3_u32 v6, v133, v6, 0x7fff
	v_mov_b16_e64 v4.l, v131.h
	v_and_b32_e32 v5, 1, v5
	v_mov_b16_e32 v4.h, v34.l
	v_mov_b16_e32 v6.l, v2.h
	v_cndmask_b16 v13.h, 0x7fff, v6.h, s3
	v_cmp_o_f32_e64 s3, v3, v3
	v_add3_u32 v5, v3, v5, 0x7fff
	v_mov_b16_e64 v3.l, v130.h
	v_mov_b16_e32 v3.h, v34.l
	v_mov_b16_e32 v6.h, v34.l
	v_and_b32_e32 v4, 1, v4
	v_cndmask_b16 v12.l, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v13.l, 0x7fff, v8.h, s10
	v_and_b32_e32 v3, 1, v3
	v_and_b32_e32 v6, 1, v6
	v_add3_u32 v4, v131, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v131, v131
	v_cmp_o_f32_e64 s10, v130, v130
	v_add3_u32 v3, v130, v3, 0x7fff
	v_add3_u32 v6, v2, v6, 0x7fff
	v_cmp_o_f32_e64 s11, v2, v2
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[25:32], v[67:74], v[162:169], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[41:48], v[16:23], v[154:161], v[41:48]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v14.l, 0x7fff, v15.h, s13
	v_cndmask_b16 v15.h, 0x7fff, v4.h, vcc_lo
	v_cndmask_b16 v15.l, 0x7fff, v5.h, s3
	v_cndmask_b16 v16.h, 0x7fff, v3.h, s10
	v_cndmask_b16 v16.l, 0x7fff, v6.h, s11
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[57:64], v[138:145], v[98:105], v[57:64]
	v_wmma_f32_16x16x16_bf16 v[49:56], v[146:153], v[98:105], v[49:56]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[25:32], v[9:16], v[154:161], v[25:32]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v3, off, off offset:224
	scratch_load_b32 v4, off, off offset:232
	scratch_load_b32 v5, off, off offset:240
	scratch_load_b32 v6, off, off offset:248
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s3, s68, 1
	s_or_b32 s10, s68, 2
	s_or_b32 s11, s68, 3
	s_or_b32 s13, s68, 4
	s_or_b32 s14, s68, 5
	s_or_b32 s15, s68, 6
	s_or_b32 s16, s68, 7
	s_or_b32 s17, s68, 8
	s_or_b32 s18, s68, 9
	s_or_b32 s19, s68, 10
	s_or_b32 s20, s68, 11
	s_or_b32 s21, s68, 12
	s_or_b32 s22, s68, 13
	s_or_b32 s23, s68, 14
	s_or_b32 s24, s68, 15
	s_or_b32 s25, s68, 16
	s_or_b32 s42, s68, 17
	s_or_b32 s43, s68, 18
	s_or_b32 s46, s68, 19
	s_or_b32 s47, s68, 20
	s_or_b32 s54, s68, 21
	s_or_b32 s55, s68, 22
	s_or_b32 s69, s68, 23
	s_or_b32 s70, s68, 24
	s_or_b32 s71, s68, 25
	s_or_b32 s87, s68, 26
	s_or_b32 s89, s68, 27
	s_or_b32 s91, s68, 28
	s_or_b32 s92, s68, 29
	s_or_b32 s93, s68, 30
	s_or_b32 s95, s68, 31
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s68, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v104, v97
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 vcc_hi, -1, 0
	s_cmp_lt_i32 s3, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v100, v97
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s104, -1, 0
	s_cmp_lt_i32 s10, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v101, v97
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s103, -1, 0
	s_cmp_lt_i32 s11, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v102, v97
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s102, -1, 0
	s_cmp_lt_i32 s13, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v103, v97
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s101, -1, 0
	s_cmp_lt_i32 s14, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v99, v97
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s99, -1, 0
	s_cmp_lt_i32 s15, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v98, v97
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s98, -1, 0
	s_cmp_lt_i32 s16, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v145, v104 :: v_dual_mov_b32 v144, v103
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s97, -1, 0
	s_cmp_lt_i32 s17, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v143, v102 :: v_dual_mov_b32 v142, v101
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s18, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v141, v100 :: v_dual_mov_b32 v140, v99
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s19, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v139, v98 :: v_dual_mov_b32 v138, v97
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s20, s26
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_nc_u32_e32 v105, 0, v201
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s21, s26
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s22, s26
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s23, s26
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s24, s26
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s25, s26
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s42, s26
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s43, s26
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s46, s26
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s47, s26
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s54, s26
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s55, s26
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s69, s26
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s70, s26
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s71, s26
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s87, s26
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s89, s26
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s91, s26
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s92, s26
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s93, s26
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s95, s26
	s_cselect_b32 s42, -1, 0
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_add_i32 s43, s68, s67
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, vcc_hi
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_mul_i32 s3, s43, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v2, s3, v0, 1
	v_add_lshl_u32 v7, s3, v202, 1
	v_add_lshl_u32 v8, s3, v96, 1
	v_add_lshl_u32 v9, s3, v87, 1
	v_add_lshl_u32 v11, s3, v216, 1
	v_add_lshl_u32 v10, s3, v210, 1
	v_add_lshl_u32 v12, s3, v89, 1
	v_add_lshl_u32 v13, s3, v219, 1
	v_add_lshl_u32 v14, s3, v92, 1
	v_add_lshl_u32 v15, s3, v221, 1
	v_add_lshl_u32 v16, s3, v94, 1
	v_add_lshl_u32 v17, s3, v229, 1
	v_add_lshl_u32 v18, s3, v234, 1
	v_add_lshl_u32 v19, s3, v239, 1
	v_add_lshl_u32 v20, s3, v244, 1
	v_add_lshl_u32 v21, s3, v246, 1
	v_add_lshl_u32 v22, s3, v248, 1
	v_add_lshl_u32 v23, s3, v252, 1
	v_add_lshl_u32 v24, s3, v254, 1
	v_add_lshl_u32 v33, s3, v179, 1
	v_add_lshl_u32 v34, s3, v170, 1
	v_add_lshl_u32 v35, s3, v183, 1
	v_add_lshl_u32 v36, s3, v185, 1
	v_add_lshl_u32 v37, s3, v187, 1
	v_add_lshl_u32 v40, s3, v250, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v3, s3, v3, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v4, s3, v4, 1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s104
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v5, s3, v5, 1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s103
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v6, s3, v6, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s102
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s101
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s99
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s98
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s97
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v38, 0x80000000, v9, vcc_lo
	v_add_lshl_u32 v9, s3, v212, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s94
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s90
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x6
	buffer_load_u16 v2, v2, s[48:51], 0 offen
	buffer_load_u16 v3, v3, s[48:51], 0 offen
	buffer_load_u16 v4, v4, s[48:51], 0 offen
	buffer_load_u16 v5, v5, s[48:51], 0 offen
	buffer_load_u16 v6, v6, s[48:51], 0 offen
	buffer_load_u16 v7, v7, s[48:51], 0 offen
	buffer_load_u16 v8, v8, s[48:51], 0 offen
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s88
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s86
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s85
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s84
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s83
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s82
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v39, 0x80000000, v16, vcc_lo
	v_add_lshl_u32 v16, s3, v224, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s81
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x6
	buffer_load_u16 v9, v9, s[48:51], 0 offen
	buffer_load_u16 v10, v10, s[48:51], 0 offen
	buffer_load_u16 v11, v11, s[48:51], 0 offen
	buffer_load_u16 v12, v12, s[48:51], 0 offen
	buffer_load_u16 v13, v13, s[48:51], 0 offen
	buffer_load_u16 v14, v14, s[48:51], 0 offen
	buffer_load_u16 v15, v15, s[48:51], 0 offen
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s80
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s79
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s78
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s77
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s76
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s75
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s73
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s72
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x6
	buffer_load_u16 v16, v16, s[48:51], 0 offen
	buffer_load_u16 v17, v17, s[48:51], 0 offen
	buffer_load_u16 v18, v18, s[48:51], 0 offen
	buffer_load_u16 v19, v19, s[48:51], 0 offen
	buffer_load_u16 v20, v20, s[48:51], 0 offen
	buffer_load_u16 v21, v21, s[48:51], 0 offen
	buffer_load_u16 v22, v22, s[48:51], 0 offen
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s71
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s70
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s69
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s55
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s54
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s74
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x5
	buffer_load_u16 v23, v23, s[48:51], 0 offen
	buffer_load_u16 v24, v24, s[48:51], 0 offen
	buffer_load_u16 v33, v33, s[48:51], 0 offen
	buffer_load_u16 v34, v34, s[48:51], 0 offen
	buffer_load_u16 v35, v35, s[48:51], 0 offen
	buffer_load_u16 v36, v36, s[48:51], 0 offen
	v_cndmask_b32_e32 v65, 0x80000000, v40, vcc_lo
	v_add_nc_u32_e32 v40, s35, v187
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v40, s3, v40, 1
	v_cndmask_b32_e32 v66, 0x80000000, v40, vcc_lo
	s_clause 0x4
	buffer_load_u16 v37, v37, s[48:51], 0 offen
	buffer_load_u16 v106, v38, s[48:51], 0 offen
	buffer_load_u16 v40, v39, s[48:51], 0 offen
	buffer_load_u16 v39, v65, s[48:51], 0 offen
	buffer_load_u16 v38, v66, s[48:51], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_and_not1_b32 vcc_lo, exec_lo, s59
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(31)
	ds_store_b16 v171, v2
	s_waitcnt vmcnt(24)
	ds_store_b16 v171, v9 offset:1024
	s_waitcnt vmcnt(17)
	ds_store_b16 v171, v16 offset:2048
	s_waitcnt vmcnt(10)
	ds_store_b16 v171, v23 offset:3072
	ds_store_b16 v172, v3
	ds_store_b16 v172, v10 offset:1024
	ds_store_b16 v172, v17 offset:2048
	s_waitcnt vmcnt(9)
	ds_store_b16 v172, v24 offset:3072
	ds_store_b16 v173, v4
	ds_store_b16 v173, v11 offset:1024
	ds_store_b16 v173, v18 offset:2048
	s_waitcnt vmcnt(8)
	ds_store_b16 v173, v33 offset:3072
	ds_store_b16 v174, v5
	ds_store_b16 v174, v12 offset:1024
	ds_store_b16 v174, v19 offset:2048
	s_waitcnt vmcnt(7)
	ds_store_b16 v174, v34 offset:3072
	ds_store_b16 v175, v6
	ds_store_b16 v175, v13 offset:1024
	ds_store_b16 v175, v20 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b16 v175, v35 offset:3072
	ds_store_b16 v176, v7
	ds_store_b16 v176, v14 offset:1024
	ds_store_b16 v176, v21 offset:2048
	s_waitcnt vmcnt(5)
	ds_store_b16 v176, v36 offset:3072
	ds_store_b16 v177, v8
	ds_store_b16 v177, v15 offset:1024
	ds_store_b16 v177, v22 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v177, v37 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v178, v106
	s_waitcnt vmcnt(2)
	ds_store_b16 v178, v40 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v178, v39 offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b16 v178, v38 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[73:76], off, off
	scratch_load_b128 v[77:80], off, off offset:16
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[65:68], v105
	ds_load_b128 v[69:72], v233
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[138:145], v[73:80], v[65:72], v[138:145]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[73:76], off, off offset:32
	scratch_load_b128 v[77:80], off, off offset:48
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[65:68], v236
	ds_load_b128 v[69:72], v237
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[138:145], v[73:80], v[65:72], v[138:145]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[73:76], off, off offset:64
	scratch_load_b128 v[77:80], off, off offset:80
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[65:68], v238
	ds_load_b128 v[69:72], v241
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[138:145], v[73:80], v[65:72], v[138:145]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[73:76], off, off offset:96
	scratch_load_b128 v[77:80], off, off offset:112
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[65:68], v242
	ds_load_b128 v[69:72], v243
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[138:145], v[73:80], v[65:72], v[138:145]
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v65, s68, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s10, s26, v65
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v65, s31, v65
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s100, s0, s10
	s_and_b32 s96, s1, s10
	s_and_b32 s95, s4, s10
	s_and_b32 s93, s5, s10
	s_and_b32 s92, s6, s10
	s_and_b32 s91, s7, s10
	s_and_b32 s89, s8, s10
	s_and_b32 s87, s9, s10
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_or_b32_e32 v66, 2, v181
	v_cmp_le_i32_e32 vcc_lo, v181, v65
	s_and_not1_b32 s19, s100, exec_lo
	s_and_not1_b32 s20, s96, exec_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_le_i32_e64 s3, v66, v65
	v_or_b32_e32 v66, 4, v181
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s18, s100, vcc_lo
	s_and_b32 s18, s18, exec_lo
	s_and_b32 s3, s96, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s11, v66, v65
	v_or_b32_e32 v66, 6, v181
	s_and_b32 s3, s3, exec_lo
	s_or_b32 s100, s19, s18
	s_or_b32 s96, s20, s3
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s11, s95, s11
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s13, v66, v65
	v_or_b32_e32 v66, 8, v181
	s_and_not1_b32 s3, s95, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s18, s93, exec_lo
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s13, s93, s13
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s14, v66, v65
	v_or_b32_e32 v66, 10, v181
	s_and_b32 s13, s13, exec_lo
	s_or_b32 s95, s3, s11
	s_or_b32 s93, s18, s13
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s14, s92, s14
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s15, v66, v65
	v_or_b32_e32 v66, 12, v181
	s_and_not1_b32 s3, s92, exec_lo
	s_and_b32 s11, s14, exec_lo
	s_and_not1_b32 s13, s91, exec_lo
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s15, s91, s15
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s16, v66, v65
	v_or_b32_e32 v66, 14, v181
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s92, s3, s11
	s_or_b32 s91, s13, s14
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s16, s89, s16
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s17, v66, v65
	s_and_not1_b32 s3, s89, exec_lo
	s_and_b32 s11, s16, exec_lo
	s_and_not1_b32 s13, s87, exec_lo
	s_or_b32 s89, s3, s11
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s17, s87, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s87, s13, s14
.LBB0_10:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 677 17 is_stmt 1              ; attention_backward.py:677:17
	s_and_not1_b32 vcc_lo, exec_lo, s58
	s_cbranch_vccnz .LBB0_7
; %bb.11:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v66, s29, v65
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v65, s30, v65
	v_or_b32_e32 v67, 2, v181
	v_or_b32_e32 v68, 4, v181
	v_or_b32_e32 v69, 6, v181
	v_or_b32_e32 v70, 8, v181
	v_or_b32_e32 v71, 10, v181
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v181, v66
	v_cmp_ge_i32_e64 s3, v67, v66
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s18, v181, v65
	v_cmp_le_i32_e64 s19, v67, v65
	v_or_b32_e32 v72, 12, v181
	v_or_b32_e32 v73, 14, v181
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s11, v68, v66
	v_cmp_ge_i32_e64 s13, v69, v66
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s20, v68, v65
	v_cmp_le_i32_e64 s21, v69, v65
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s14, v70, v66
	v_cmp_ge_i32_e64 s15, v71, v66
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s22, v70, v65
	v_cmp_le_i32_e64 s23, v71, v65
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s18, vcc_lo, s18
	s_and_b32 s3, s3, s19
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s16, v72, v66
	v_cmp_ge_i32_e64 s17, v73, v66
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s24, v72, v65
	v_cmp_le_i32_e64 s25, v73, v65
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s18, s18, s100
	s_and_b32 s3, s3, s96
	s_and_b32 s11, s11, s20
	s_and_b32 s13, s13, s21
	s_and_b32 s11, s11, s95
	s_and_b32 s13, s13, s93
	s_and_b32 s14, s14, s22
	s_and_b32 s15, s15, s23
	s_and_not1_b32 s19, s100, exec_lo
	s_and_b32 s18, s18, exec_lo
	s_and_not1_b32 s20, s96, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s14, s14, s92
	s_and_b32 s15, s15, s91
	s_and_b32 s16, s16, s24
	s_and_b32 s17, s17, s25
	s_or_b32 s100, s19, s18
	s_or_b32 s96, s20, s3
	s_and_not1_b32 s3, s95, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s18, s93, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s89
	s_and_b32 s17, s17, s87
	s_or_b32 s95, s3, s11
	s_or_b32 s93, s18, s13
	s_and_not1_b32 s3, s92, exec_lo
	s_and_b32 s11, s14, exec_lo
	s_and_not1_b32 s13, s91, exec_lo
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s92, s3, s11
	s_or_b32 s91, s13, s14
	s_and_not1_b32 s3, s89, exec_lo
	s_and_b32 s11, s16, exec_lo
	s_and_not1_b32 s13, s87, exec_lo
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s89, s3, s11
	s_or_b32 s87, s13, s14
	s_branch .LBB0_7
.LBB0_12:                               ; %Flow321
	.loc	1 0 21                          ; attention_backward.py:0:21
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v33, off, off offset:288
	scratch_load_b32 v34, off, off offset:292
	scratch_load_b32 v40, off, off offset:296
	s_branch .LBB0_14
.LBB0_13:
	v_mov_b32_e32 v32, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v31, v32
	v_mov_b32_e32 v30, v32
	v_mov_b32_e32 v29, v32
	v_mov_b32_e32 v28, v32
	v_mov_b32_e32 v27, v32
	v_mov_b32_e32 v26, v32
	v_mov_b32_e32 v25, v32
	v_mov_b32_e32 v48, v32
	v_mov_b32_e32 v47, v32
	v_mov_b32_e32 v46, v32
	v_mov_b32_e32 v45, v32
	v_mov_b32_e32 v44, v32
	v_mov_b32_e32 v43, v32
	v_mov_b32_e32 v42, v32
	v_mov_b32_e32 v41, v32
	v_mov_b32_e32 v56, v32
	v_mov_b32_e32 v55, v32
	v_mov_b32_e32 v54, v32
	v_mov_b32_e32 v53, v32
	v_mov_b32_e32 v52, v32
	v_mov_b32_e32 v51, v32
	v_mov_b32_e32 v50, v32
	v_mov_b32_e32 v49, v32
	v_mov_b32_e32 v64, v32
	v_mov_b32_e32 v63, v32
	v_mov_b32_e32 v62, v32
	v_mov_b32_e32 v61, v32
	v_mov_b32_e32 v60, v32
	v_mov_b32_e32 v59, v32
	v_mov_b32_e32 v58, v32
	v_mov_b32_e32 v57, v32
.LBB0_14:                               ; %._crit_edge165
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v1, v34, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v16, s35, v40
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s57, v40
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s41, s37, 0xffff
	s_mov_b32 s43, 0x31027000
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v15, 2, v1
	v_or_b32_e32 v14, 4, v1
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s27, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s16, s35, v1
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v17, v16, v1
	v_add_nc_u32_e32 v18, v16, v15
	v_add_nc_u32_e32 v19, v16, v14
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s17, s35, v15
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v13, 6, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v17, v17, s34, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s18, s35, v14
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v18, v18, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v12, 8, v1
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s16
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v19, v19, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v11, 10, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s17
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v20, v16, v13
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v10, 12, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s18
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v21, v16, v12
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s19, s35, v13
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_mov_b32 s40, s36
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v22, v16, v11
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s20, s35, v12
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v57, v17, s[40:43], 0 offen
	v_add_lshl_u32 v17, v20, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v9, 14, v1
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v23, v16, v10
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s21, s35, v11
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v58, v18, s[40:43], 0 offen
	buffer_store_b32 v59, v19, s[40:43], 0 offen
	v_add_lshl_u32 v18, v21, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v8, 32, v1
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s19
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s22, s35, v10
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	v_add_lshl_u32 v19, v22, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v7, 34, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s20
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v24, v16, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v23, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v6, 36, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s21
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v33, v16, v8
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s23, s35, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s22
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v34, v16, v7
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s24, s35, v8
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s16
	s_clause 0x1
	buffer_store_b32 v60, v17, s[40:43], 0 offen
	buffer_store_b32 v61, v18, s[40:43], 0 offen
	v_add_lshl_u32 v17, v24, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v5, 38, v1
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v35, v16, v6
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s25, s35, v7
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v18, v33, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v4, 40, v1
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s23
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s26, s35, v6
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v62, v19, s[40:43], 0 offen
	buffer_store_b32 v63, v20, s[40:43], 0 offen
	v_add_lshl_u32 v19, v34, s34, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v21, s33, v40
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v3, 42, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s24
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v36, v16, v5
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v35, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v2, 44, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s25
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v37, v16, v4
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v0, 46, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s27, s35, v5
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s26
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v38, v16, v3
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s28, s35, v4
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s16
	s_clause 0x1
	buffer_store_b32 v64, v17, s[40:43], 0 offen
	buffer_store_b32 v49, v18, s[40:43], 0 offen
	v_add_lshl_u32 v17, v36, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s15, s33, v1
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v39, v16, v2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v1, v21, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s29, s35, v3
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v18, v37, s34, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v16, v16, v0
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s27
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s30, s35, v2
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v50, v19, s[40:43], 0 offen
	buffer_store_b32 v51, v20, s[40:43], 0 offen
	v_add_lshl_u32 v19, v38, s34, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s28
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s31, s35, v0
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v39, s34, 2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v1, v1, s56, 2
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s29
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v16, v16, s34, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s30
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s15, vcc_lo, s15
	.loc	1 580 44 is_stmt 0              ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s12, s33, v13
	v_cmp_gt_i32_e64 s14, s33, v15
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s31
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v15, v21, v15
	v_add_nc_u32_e32 v13, v21, v13
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s15
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s11, s33, v12
	v_cmp_gt_i32_e64 s13, s33, v14
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v14, v21, v14
	v_add_nc_u32_e32 v12, v21, v12
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v16, 0x80000000, v16, s16
	s_clause 0x4
	buffer_store_b32 v52, v17, s[40:43], 0 offen
	buffer_store_b32 v53, v18, s[40:43], 0 offen
	buffer_store_b32 v54, v19, s[40:43], 0 offen
	buffer_store_b32 v55, v20, s[40:43], 0 offen
	buffer_store_b32 v56, v16, s[40:43], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s41, s39, 0xffff
	s_mov_b32 s40, s38
	v_add_lshl_u32 v15, v15, s56, 2
	buffer_store_b32 v41, v1, s[40:43], 0 offen
	v_add_lshl_u32 v1, v13, s56, 2
	v_add_lshl_u32 v14, v14, s56, 2
	v_add_lshl_u32 v12, v12, s56, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s14, vcc_lo, s14
	s_and_b32 s12, vcc_lo, s12
	s_and_b32 s13, vcc_lo, s13
	s_and_b32 s11, vcc_lo, s11
	.loc	1 580 44 is_stmt 0              ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s8, s33, v9
	v_cmp_gt_i32_e64 s10, s33, v11
	.loc	1 759 13 is_stmt 1              ; attention_backward.py:759:13
	v_add_nc_u32_e32 v11, v21, v11
	v_add_nc_u32_e32 v9, v21, v9
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v15, 0x80000000, v15, s14
	v_cndmask_b32_e64 v1, 0x80000000, v1, s12
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s7, s33, v8
	v_cmp_gt_i32_e64 s9, s33, v10
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v10, v21, v10
	v_add_nc_u32_e32 v8, v21, v8
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v14, 0x80000000, v14, s13
	v_cndmask_b32_e64 v12, 0x80000000, v12, s11
	s_clause 0x1
	buffer_store_b32 v42, v15, s[40:43], 0 offen
	buffer_store_b32 v43, v14, s[40:43], 0 offen
	v_add_lshl_u32 v11, v11, s56, 2
	s_clause 0x1
	buffer_store_b32 v44, v1, s[40:43], 0 offen
	buffer_store_b32 v45, v12, s[40:43], 0 offen
	v_add_lshl_u32 v1, v9, s56, 2
	v_add_lshl_u32 v10, v10, s56, 2
	v_add_lshl_u32 v8, v8, s56, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s10, vcc_lo, s10
	s_and_b32 s8, vcc_lo, s8
	s_and_b32 s9, vcc_lo, s9
	s_and_b32 s7, vcc_lo, s7
	.loc	1 580 44 is_stmt 0              ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s4, s33, v5
	v_cmp_gt_i32_e64 s6, s33, v7
	.loc	1 759 13 is_stmt 1              ; attention_backward.py:759:13
	v_add_nc_u32_e32 v7, v21, v7
	v_add_nc_u32_e32 v5, v21, v5
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v11, 0x80000000, v11, s10
	v_cndmask_b32_e64 v1, 0x80000000, v1, s8
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s3, s33, v4
	v_cmp_gt_i32_e64 s5, s33, v6
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v6, v21, v6
	v_add_nc_u32_e32 v4, v21, v4
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v10, 0x80000000, v10, s9
	v_cndmask_b32_e64 v8, 0x80000000, v8, s7
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s2, s33, v3
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v3, v21, v3
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s1, s33, v2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v2, v21, v2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s0, s33, v0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v0, v21, v0
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_clause 0x1
	buffer_store_b32 v46, v11, s[40:43], 0 offen
	buffer_store_b32 v47, v10, s[40:43], 0 offen
	v_add_lshl_u32 v7, v7, s56, 2
	s_clause 0x1
	buffer_store_b32 v48, v1, s[40:43], 0 offen
	buffer_store_b32 v25, v8, s[40:43], 0 offen
	v_add_lshl_u32 v1, v5, s56, 2
	v_add_lshl_u32 v6, v6, s56, 2
	v_add_lshl_u32 v4, v4, s56, 2
	v_add_lshl_u32 v3, v3, s56, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s6, vcc_lo, s6
	s_and_b32 s4, vcc_lo, s4
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v2, v2, s56, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s5, vcc_lo, s5
	s_and_b32 s3, vcc_lo, s3
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v0, v0, s56, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s6
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s2, vcc_lo, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s5
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s1, vcc_lo, s1
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x6
	buffer_store_b32 v26, v7, s[40:43], 0 offen
	buffer_store_b32 v27, v6, s[40:43], 0 offen
	buffer_store_b32 v28, v1, s[40:43], 0 offen
	buffer_store_b32 v29, v4, s[40:43], 0 offen
	buffer_store_b32 v30, v3, s[40:43], 0 offen
	buffer_store_b32 v31, v2, s[40:43], 0 offen
	buffer_store_b32 v32, v0, s[40:43], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 304
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 304
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16652
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 304
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 107
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 304
    .sgpr_count:     107
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 75
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
