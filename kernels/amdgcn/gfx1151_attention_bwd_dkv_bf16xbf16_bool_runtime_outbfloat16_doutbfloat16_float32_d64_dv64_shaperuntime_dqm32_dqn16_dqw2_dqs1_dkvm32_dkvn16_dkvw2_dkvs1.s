	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[28:31], s[0:1], 0x94
	s_load_b128 s[16:19], s[0:1], 0x64
	s_load_b32 s33, s[0:1], 0x7c
.Ltmp0:
	.loc	1 514 33 prologue_end           ; attention_backward.py:514:33
	v_and_b32_e32 v47, 15, v0
	s_load_b32 s35, s[0:1], 0x74
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s28
	s_bitcmp1_b32 s28, 8
	s_cselect_b32 s57, -1, 0
	s_cmp_eq_u32 s4, 1
	s_load_b128 s[4:7], s[0:1], 0x8
	s_cselect_b32 s58, -1, 0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_abs_i32 s14, s17
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_abs_i32 s9, s3
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cvt_f32_u32 s8, s14
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s12, s2, 4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_rcp_iflag_f32_e32 v1, s8
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_u32_f32 s22, s8
	s_sub_i32 s8, 0, s14
	s_mul_i32 s8, s8, s22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s22, s8
	s_add_i32 s22, s22, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_mul_hi_u32 s8, s9, s22
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
	s_ashr_i32 s15, s16, 31
	s_ashr_i32 s20, s17, 31
	s_abs_i32 s21, s16
	.loc	1 514 23                        ; attention_backward.py:514:23
	s_or_b32 s2, s12, 1
	s_or_b32 s8, s12, 2
	s_or_b32 s9, s12, 3
	s_or_b32 s10, s12, 4
	s_or_b32 s11, s12, 5
	s_or_b32 s23, s12, 6
	s_or_b32 s24, s12, 7
	s_or_b32 s25, s12, 8
	s_or_b32 s26, s12, 9
	s_or_b32 s27, s12, 10
	s_or_b32 s34, s12, 11
	s_or_b32 s47, s12, 12
	s_or_b32 s48, s12, 13
	s_or_b32 s49, s12, 14
	s_or_b32 s50, s12, 15
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cmp_lt_i32 s12, s19
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s2, s19
	.loc	1 533 24                        ; attention_backward.py:533:24
	s_mul_i32 s2, s3, s19
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s8, s19
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s8, s4
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s9, s19
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s4, s33, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s10, s19
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s11, s19
	s_mov_b32 s11, 0x31027000
	s_cselect_b32 s41, -1, 0
	s_cmp_lt_i32 s23, s19
	s_cselect_b32 s40, -1, 0
	s_cmp_lt_i32 s24, s19
	s_cselect_b32 s39, -1, 0
	s_cmp_lt_i32 s25, s19
	s_cselect_b32 s38, -1, 0
	s_cmp_lt_i32 s26, s19
	s_cselect_b32 s37, -1, 0
	s_cmp_lt_i32 s27, s19
	s_cselect_b32 s36, -1, 0
	s_cmp_lt_i32 s34, s19
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s47, s19
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s48, s19
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s49, s19
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s50, s19
	s_cselect_b32 s25, -1, 0
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_add_i32 s56, s2, s12
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
	s_add_i32 s5, s18, 31
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v2, s35, v1
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v18, s33, v17
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_3)
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
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v19, 1, v0
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
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v28, s33, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v20, 1, v20
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
	s_and_b32 vcc_lo, s27, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v16, 1, v15
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s26, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_lshl_u32 v15, v15, s35, 1
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s23, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_clause 0x4
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s24, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s25, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s46, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s45, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_add_nc_u32 v195, 0, v19
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_clause 0x4
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	buffer_load_u16 v16, v16, s[8:11], 0 offen
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	v_xor_b32_e32 v21, 0x90, v19
	v_xor_b32_e32 v23, 0x1b0, v19
	v_xor_b32_e32 v25, 0x240, v19
	v_xor_b32_e32 v22, 0x120, v19
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s44, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v196, 0, v21
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v21, s33, v28
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v26, 0x2d0, v19
	v_add_nc_u32_e32 v199, 0, v25
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v25, 0x80000000, v20, vcc_lo
	v_lshlrev_b32_e32 v20, 1, v28
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v198, 0, v23
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v23, 1, v24
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v27, 0x360, v19
	v_xor_b32_e32 v19, 0x3f0, v19
	v_add_nc_u32_e32 v197, 0, v22
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v22, s33, v21
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s43, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v23, 0x80000000, v23 :: v_dual_add_nc_u32 v200, 0, v26
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s42, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v201, 0, v27
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v21, 1, v21
	v_cndmask_b32_e32 v27, 0x80000000, v20, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s41, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v202, 0, v19
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v19, s33, v22
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v21, 0x80000000, v21 :: v_dual_lshlrev_b32 v20, 1, v22
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s40, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s9, s7, 0xffff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v24, s33, v19
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v28, 0x80000000, v20 :: v_dual_lshlrev_b32 v19, 1, v19
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s39, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_mov_b32 s8, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v26, s33, v24
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v29, 0x80000000, v19 :: v_dual_lshlrev_b32 v24, 1, v24
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s38, s4
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_ashr_i32 s6, s5, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v22, s33, v26
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_lshlrev_b32 v19, 1, v26
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s37, s4
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_lshr_b32 s7, s6, 27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v20, s33, v22
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v30, 0x80000000, v19, vcc_lo
	v_lshlrev_b32_e32 v22, 1, v22
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s36, s4
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_add_i32 s7, s5, s7
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v26, s33, v20
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v20, 1, v20
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s27, s4
	s_mov_b32 s6, 0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v19, s33, v26
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v26, 1, v26
	v_cndmask_b32_e32 v32, 0x80000000, v20, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s26, s4
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_hi_u32 s5, s21, s22
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v31, s33, v19
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v19, 1, v19
	v_cndmask_b32_e32 v33, 0x80000000, v26, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s23, s4
	.loc	1 587 20                        ; attention_backward.py:587:20
	s_and_b32 s59, s7, 0xffffffe0
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v20, 1, v31
	v_add_lshl_u32 v26, v31, s33, 1
	v_cndmask_b32_e32 v31, 0x80000000, v19, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s24, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(15)
	ds_store_b16 v195, v1
	s_waitcnt vmcnt(9)
	ds_store_b16 v195, v9 offset:1024
	ds_store_b16 v196, v2
	s_waitcnt vmcnt(8)
	ds_store_b16 v196, v10 offset:1024
	ds_store_b16 v197, v3
	s_waitcnt vmcnt(7)
	ds_store_b16 v197, v11 offset:1024
	ds_store_b16 v198, v4
	s_waitcnt vmcnt(6)
	ds_store_b16 v198, v12 offset:1024
	ds_store_b16 v199, v5
	s_waitcnt vmcnt(5)
	ds_store_b16 v199, v13 offset:1024
	ds_store_b16 v200, v6
	s_waitcnt vmcnt(4)
	ds_store_b16 v200, v14 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v201, v7
	s_waitcnt vmcnt(2)
	ds_store_b16 v201, v16 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v202, v8
	s_waitcnt vmcnt(0)
	ds_store_b16 v202, v15 offset:1024
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v34, 0x80000000, v20, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s25, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt lgkmcnt(0)
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v35, 0x80000000, v26, vcc_lo
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_barrier
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_clause 0xf
	buffer_load_u16 v20, v17, s[8:11], 0 offen
	buffer_load_u16 v19, v18, s[8:11], 0 offen
	buffer_load_u16 v18, v25, s[8:11], 0 offen
	buffer_load_u16 v17, v23, s[8:11], 0 offen
	buffer_load_u16 v16, v27, s[8:11], 0 offen
	buffer_load_u16 v15, v21, s[8:11], 0 offen
	buffer_load_u16 v14, v28, s[8:11], 0 offen
	buffer_load_u16 v13, v29, s[8:11], 0 offen
	buffer_load_u16 v28, v24, s[8:11], 0 offen
	buffer_load_u16 v27, v30, s[8:11], 0 offen
	buffer_load_u16 v26, v22, s[8:11], 0 offen
	buffer_load_u16 v25, v32, s[8:11], 0 offen
	buffer_load_u16 v24, v33, s[8:11], 0 offen
	buffer_load_u16 v23, v31, s[8:11], 0 offen
	buffer_load_u16 v22, v34, s[8:11], 0 offen
	buffer_load_u16 v21, v35, s[8:11], 0 offen
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_and_b32_e32 v2, 7, v0
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_bfe_u32 s7, s28, 0x10008
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v1, 4, v2
	v_lshl_or_b32 v4, v47, 7, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v3, 16, v4
	v_add_nc_u32_e32 v5, 0, v4
	v_xor_b32_e32 v9, 64, v4
	v_xor_b32_e32 v10, 0x50, v4
	v_xor_b32_e32 v11, 0x60, v4
	v_add_nc_u32_e32 v6, 0, v3
	ds_load_b128 v[29:32], v5
	ds_load_b128 v[33:36], v6
	v_xor_b32_e32 v3, 32, v4
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[29:32], off   ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[33:36], off offset:16 ; 16-byte Folded Spill
	v_add_nc_u32_e32 v7, 0, v3
	v_xor_b32_e32 v3, 48, v4
	v_add_nc_u32_e32 v9, 0, v9
	v_add_nc_u32_e32 v10, 0, v10
	v_xor_b32_e32 v12, 0x70, v4
	v_add_nc_u32_e32 v11, 0, v11
	v_add_nc_u32_e32 v8, 0, v3
	ds_load_b128 v[29:32], v7
	ds_load_b128 v[33:36], v8
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[29:32], off offset:32 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[33:36], off offset:48 ; 16-byte Folded Spill
	ds_load_b128 v[29:32], v9
	ds_load_b128 v[33:36], v10
	v_add_nc_u32_e32 v12, 0, v12
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[29:32], off offset:64 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[33:36], off offset:80 ; 16-byte Folded Spill
	ds_load_b128 v[29:32], v11
	ds_load_b128 v[33:36], v12
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[29:32], off offset:96 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[33:36], off offset:112 ; 16-byte Folded Spill
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s6, s12, s29
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_add_i32 s8, s30, s31
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s6, s6, s31
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_sub_i32 s8, s12, s8
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s6, s6, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 592 17                        ; attention_backward.py:592:17
	s_min_i32 s6, s18, s6
	.loc	1 590 24                        ; attention_backward.py:590:24
	s_max_i32 s6, s6, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 600 19                        ; attention_backward.py:600:19
	s_add_i32 s6, s6, 31
	.loc	1 600 18 is_stmt 0              ; attention_backward.py:600:18
	s_ashr_i32 s7, s6, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s7, s7, 27
	s_add_i32 s6, s6, s7
	.loc	1 589 24 is_stmt 1              ; attention_backward.py:589:24
	s_max_i32 s7, s8, 0
	.loc	1 600 17                        ; attention_backward.py:600:17
	s_and_b32 s8, s6, 0xffffffe0
	.loc	1 597 45                        ; attention_backward.py:597:45
	s_and_b32 s6, s7, 0x7fffffe0
	.loc	1 598 24                        ; attention_backward.py:598:24
	s_min_i32 s59, s59, s8
.LBB0_2:
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_i32 s7, s5, s14
	s_load_b128 s[36:39], s[0:1], 0x50
	s_sub_i32 s7, s21, s7
	s_xor_b32 s8, s15, s20
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s7, s14
	s_cmp_ge_u32 s7, s14
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v205, s12, v47
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s7, s10, s7
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s7, s14
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_and_b32_e32 v3, 32, v0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s5, s9, s5
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_and_b32_e32 v29, 16, v0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_xor_b32 s7, s5, s8
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s5, s19, v205
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshrrev_b32_e32 v30, 1, v3
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_sub_i32 s19, s7, s8
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cmp_lt_i32 s19, 1
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b16 v195, v20
	s_waitcnt vmcnt(7)
	ds_store_b16 v195, v28 offset:1024
	ds_store_b16 v196, v19
	s_waitcnt vmcnt(6)
	ds_store_b16 v196, v27 offset:1024
	ds_store_b16 v197, v18
	s_waitcnt vmcnt(5)
	ds_store_b16 v197, v26 offset:1024
	ds_store_b16 v198, v17
	s_waitcnt vmcnt(4)
	ds_store_b16 v198, v25 offset:1024
	ds_store_b16 v199, v16
	s_waitcnt vmcnt(3)
	ds_store_b16 v199, v24 offset:1024
	ds_store_b16 v200, v15
	s_waitcnt vmcnt(2)
	ds_store_b16 v200, v23 offset:1024
	ds_store_b16 v201, v14
	s_waitcnt vmcnt(1)
	ds_store_b16 v201, v22 offset:1024
	ds_store_b16 v202, v13
	s_waitcnt vmcnt(0)
	ds_store_b16 v202, v21 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cbranch_scc1 .LBB0_29
; %bb.3:                                ; %.lr.ph180
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[25:28], v12
	ds_load_b128 v[21:24], v11
	s_xor_b32 s7, s3, s17
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_lshrrev_b32_e32 v13, 4, v0
	s_ashr_i32 s7, s7, 31
	v_lshrrev_b32_e32 v11, 5, v3
	s_xor_b32 s8, s13, s7
	v_lshlrev_b32_e32 v12, 3, v0
	s_sub_i32 s7, s8, s7
	s_clause 0x1
	s_load_b32 s8, s[0:1], 0x90
	s_load_b128 s[44:47], s[0:1], 0x80
	v_or_b32_e32 v14, 4, v13
	v_or_b32_e32 v15, 8, v13
	v_or_b32_e32 v16, 12, v13
	v_or_b32_e32 v17, 16, v13
	v_or_b32_e32 v18, 20, v13
	v_or_b32_e32 v19, 24, v13
	v_or_b32_e32 v20, 28, v13
	scratch_store_b32 off, v14, off offset:128 ; 4-byte Folded Spill
	v_and_b32_e32 v12, 48, v12
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v18, off offset:144
	scratch_store_b32 off, v19, off offset:148
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[21:24], off offset:156
	scratch_store_b128 off, v[25:28], off offset:172
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[25:28], v10
	ds_load_b128 v[21:24], v9
	v_lshrrev_b32_e32 v10, 1, v29
	s_clause 0x1
	s_load_b256 s[20:27], s[0:1], 0x30
	s_load_b64 s[40:41], s[0:1], 0x0
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_sub_i32 s1, s12, s31
	s_mul_i32 s0, s7, s17
	s_max_i32 s1, s1, 0
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_sub_i32 s0, s3, s0
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_and_b32 s1, s1, 0x7fffffe0
	.loc	1 672 31 is_stmt 1              ; attention_backward.py:672:31
	s_mul_f32 s63, s44, 0x3fb8aa3b
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_max_u32 s1, s6, s1
	s_and_b32 s3, s58, exec_lo
	s_cselect_b32 s60, s1, s6
	s_mov_b32 s28, 0
	s_cmp_lt_i32 s60, s59
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s61, s19, s0
	.loc	1 662 35                        ; attention_backward.py:662:35
	s_mul_i32 s62, s7, s16
	.loc	1 683 27                        ; attention_backward.py:683:27
	s_mul_i32 s45, s7, s45
	s_cselect_b32 s64, -1, 0
	s_mov_b32 s43, 0x31027000
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[21:24], off offset:188
	scratch_store_b128 off, v[25:28], off offset:204
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[25:28], v8
	ds_load_b128 v[21:24], v7
	v_mul_lo_u32 v7, s8, v205
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s42, 0x7ffffffe
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s49, s27, 0xffff
	s_mov_b32 s48, s26
	s_and_b32 s53, s23, 0xffff
	s_mov_b32 s52, s22
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[21:24], off offset:220
	scratch_store_b128 off, v[25:28], off offset:236
	ds_load_b128 v[25:28], v6
	ds_load_b128 v[21:24], v5
	v_and_b32_e32 v6, 2, v0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[21:24], off offset:252
	scratch_store_b128 off, v[25:28], off offset:268
	v_lshl_or_b32 v24, v3, 6, v4
	v_mad_u64_u32 v[4:5], null, s47, v14, v[7:8]
	v_lshlrev_b32_e32 v25, 3, v47
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[4:5], off offset:420
	scratch_store_b32 off, v15, off offset:132
	v_mad_u64_u32 v[4:5], null, s47, v15, v[7:8]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[4:5], off offset:428
	scratch_store_b32 off, v16, off offset:136
	v_mad_u64_u32 v[4:5], null, s47, v16, v[7:8]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[4:5], off offset:436
	scratch_store_b32 off, v17, off offset:140
	v_mad_u64_u32 v[4:5], null, s47, v17, v[7:8]
	v_mad_u64_u32 v[8:9], null, s47, v18, v[7:8]
	v_mov_b32_e32 v97, 0
	v_mov_b32_e32 v207, v24
	v_mov_b32_e32 v89, 0
	v_mov_b32_e32 v65, 0
	scratch_store_b64 off, v[4:5], off offset:444 ; 8-byte Folded Spill
	v_lshlrev_b32_e32 v4, 5, v0
	v_lshlrev_b32_e32 v5, 2, v0
	scratch_store_b64 off, v[8:9], off offset:452 ; 8-byte Folded Spill
	v_lshrrev_b32_e32 v8, 2, v29
	v_lshrrev_b32_e32 v9, 4, v3
	v_and_b32_e32 v4, 0x180, v4
	v_dual_mov_b32 v66, v97 :: v_dual_and_b32 v5, 52, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[14:15], null, s47, v20, v[7:8]
	v_mov_b32_e32 v69, v97
	v_or3_b32 v4, v5, v6, v4
	v_mad_u64_u32 v[5:6], null, s47, v19, v[7:8]
	v_mov_b32_e32 v38, v97
	v_mov_b32_e32 v71, v97
	scratch_store_b64 off, v[14:15], off offset:468 ; 8-byte Folded Spill
	v_or3_b32 v14, v4, v10, v11
	v_lshrrev_b32_e32 v10, 1, v0
	v_lshlrev_b32_e32 v11, 1, v47
	scratch_store_b64 off, v[5:6], off offset:460 ; 8-byte Folded Spill
	v_mad_u64_u32 v[4:5], null, s47, v13, v[7:8]
	v_lshlrev_b32_e32 v13, 2, v29
	v_and_b32_e32 v10, 12, v10
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v15, s33, v0
	v_or3_b32 v6, v8, v9, v25
	scratch_store_b32 off, v20, off offset:152 ; 4-byte Folded Spill
	v_or3_b32 v13, v11, v13, v3
	v_lshl_or_b32 v2, v2, 7, v10
	v_add_nc_u32_e32 v18, s33, v15
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:284
	scratch_store_b32 off, v14, off offset:288
	v_add3_u32 v218, 0, v3, v11
	v_lshl_or_b32 v11, v47, 6, v12
	v_xor_b32_e32 v3, 0x90, v13
	v_xor_b32_e32 v10, 0x120, v13
	v_or3_b32 v19, v2, v1, v9
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v13, off offset:292
	scratch_store_b32 off, v11, off offset:296
	v_xor_b32_e32 v1, 0x1b0, v13
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v13, s35, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v21, s33, v18
	scratch_store_b64 off, v[4:5], off offset:476 ; 8-byte Folded Spill
	v_xor_b32_e32 v4, 0x90, v6
	v_xor_b32_e32 v5, 0x120, v6
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v17, s35, v13
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v26, s33, v21
	v_xor_b32_e32 v6, 0x1b0, v6
	v_xor_b32_e32 v2, 16, v11
	v_add_nc_u32_e32 v4, 0, v4
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v20, s35, v17
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v13, off offset:300
	scratch_store_b32 off, v15, off offset:304
	scratch_store_b32 off, v17, off offset:308
	scratch_store_b32 off, v18, off offset:312
	scratch_store_b32 off, v19, off offset:316
	scratch_store_b32 off, v20, off offset:320
	scratch_store_b32 off, v21, off offset:332
	scratch_store_b32 off, v4, off offset:324
	v_add_nc_u32_e32 v23, s35, v20
	v_add_nc_u32_e32 v4, 0, v5
	v_add_nc_u32_e32 v6, 0, v6
	v_dual_mov_b32 v36, v97 :: v_dual_add_nc_u32 v245, 0, v1
	scratch_store_b32 off, v23, off offset:340 ; 4-byte Folded Spill
	v_dual_mov_b32 v68, v97 :: v_dual_add_nc_u32 v27, s35, v23
	v_add_nc_u32_e32 v1, 0, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v26, off offset:344
	scratch_store_b32 off, v6, off offset:336
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v26, s33, v26
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:328
	scratch_store_b32 off, v27, off offset:356
	v_dual_mov_b32 v67, v97 :: v_dual_add_nc_u32 v4, s35, v27
	v_dual_mov_b32 v70, v97 :: v_dual_add_nc_u32 v5, s33, v26
	v_mov_b32_e32 v33, 0
	scratch_store_b32 off, v4, off offset:368 ; 4-byte Folded Spill
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v4, s35, v4
	v_xor_b32_e32 v9, 32, v11
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off offset:372
	scratch_store_b32 off, v29, off offset:488
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v5, s33, v5
	v_xor_b32_e32 v11, 48, v11
	v_dual_mov_b32 v72, v97 :: v_dual_add_nc_u32 v241, 0, v3
	scratch_store_b32 off, v4, off offset:376 ; 4-byte Folded Spill
	v_dual_mov_b32 v34, v97 :: v_dual_add_nc_u32 v3, s35, v4
	v_dual_mov_b32 v35, v97 :: v_dual_add_nc_u32 v4, s33, v5
	v_mov_b32_e32 v37, v97
	v_mov_b32_e32 v39, v97
	v_mov_b32_e32 v40, v97
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v2, s33, v4
	scratch_store_b32 off, v4, off offset:388 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v11
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:348
	scratch_store_b32 off, v26, off offset:364
	v_add_nc_u32_e32 v1, 0, v9
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:352
	scratch_store_b32 off, v3, off offset:384
	v_dual_mov_b32 v90, v97 :: v_dual_add_nc_u32 v1, s35, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off offset:380
	scratch_store_b32 off, v4, off offset:360
	v_mov_b32_e32 v94, v97
	scratch_store_b32 off, v1, off offset:392 ; 4-byte Folded Spill
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v2, off offset:396 ; 4-byte Folded Spill
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v2, s33, v2
	v_mov_b32_e32 v84, v97
	v_mov_b32_e32 v93, v97
	scratch_store_b32 off, v1, off offset:400 ; 4-byte Folded Spill
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v2, off offset:404 ; 4-byte Folded Spill
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v2, s33, v2
	v_mov_b32_e32 v88, v97
	v_add_nc_u32_e32 v242, 0, v10
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v5, s35, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:408
	scratch_store_b32 off, v2, off offset:412
	v_xor_b32_e32 v12, 16, v19
	v_xor_b32_e32 v16, 64, v19
	scratch_store_b32 off, v5, off offset:416 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v5, s35, v5
	v_xor_b32_e32 v17, 0x50, v19
	v_dual_mov_b32 v92, v97 :: v_dual_add_nc_u32 v251, 0, v12
	v_dual_mov_b32 v91, v97 :: v_dual_add_nc_u32 v204, 0, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v10, v5 :: v_dual_add_nc_u32 v5, s35, v5
	v_dual_mov_b32 v82, v97 :: v_dual_add_nc_u32 v203, 0, v17
	v_xor_b32_e32 v8, 32, v14
	v_dual_mov_b32 v83, v97 :: v_dual_add_nc_u32 v2, s33, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v9, s35, v5
	v_mov_b32_e32 v87, v97
	v_xor_b32_e32 v15, 48, v19
	v_xor_b32_e32 v18, 0x60, v19
	v_xor_b32_e32 v1, 0x2d0, v25
	v_add_nc_u32_e32 v12, s35, v9
	v_xor_b32_e32 v20, 0x90, v25
	v_dual_mov_b32 v96, v97 :: v_dual_add_nc_u32 v255, 0, v15
	v_dual_mov_b32 v95, v97 :: v_dual_add_nc_u32 v208, 0, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v16, s35, v12
	v_xor_b32_e32 v21, 0x120, v25
	v_xor_b32_e32 v22, 0x1b0, v25
	v_xor_b32_e32 v23, 0x240, v25
	v_dual_mov_b32 v194, v2 :: v_dual_add_nc_u32 v17, s35, v16
	v_dual_mov_b32 v239, v25 :: v_dual_add_nc_u32 v188, 0, v1
	v_xor_b32_e32 v1, 0x3f0, v25
	v_xor_b32_e32 v7, 16, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v230, v17 :: v_dual_add_nc_u32 v17, s35, v17
	v_xor_b32_e32 v14, 48, v14
	v_xor_b32_e32 v13, 32, v19
	v_xor_b32_e32 v19, 0x70, v19
	v_mov_b32_e32 v11, v5
	v_mov_b32_e32 v233, v17
	v_add_nc_u32_e32 v17, s35, v17
	v_add_nc_u32_e32 v252, 0, v13
	v_xor_b32_e32 v5, 32, v24
	v_mov_b32_e32 v13, v9
	v_xor_b32_e32 v9, 64, v24
	v_dual_mov_b32 v246, v17 :: v_dual_add_nc_u32 v17, s35, v17
	v_add_nc_u32_e32 v237, 0, v8
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v8, s33, v2
	v_xor_b32_e32 v2, 0x360, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v235, v16 :: v_dual_mov_b32 v234, v17
	v_add_nc_u32_e32 v17, s35, v17
	v_dual_mov_b32 v215, v8 :: v_dual_add_nc_u32 v8, s33, v8
	v_add_nc_u32_e32 v240, 0, v14
	v_add_nc_u32_e32 v191, 0, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v247, v17 :: v_dual_add_nc_u32 v250, s35, v17
	v_dual_mov_b32 v189, v8 :: v_dual_add_nc_u32 v8, s33, v8
	v_mov_b32_e32 v17, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v25, s35, v250
	v_xor_b32_e32 v2, 16, v24
	v_dual_mov_b32 v14, v12 :: v_dual_add_nc_u32 v15, s33, v8
	v_mov_b32_e32 v3, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v27, s35, v25
	v_xor_b32_e32 v8, 48, v24
	v_xor_b32_e32 v12, 0x50, v24
	v_dual_mov_b32 v186, v15 :: v_dual_add_nc_u32 v15, s33, v15
	v_add_nc_u32_e32 v29, s35, v27
	v_xor_b32_e32 v16, 0x70, v24
	v_add_nc_u32_e32 v236, 0, v7
	v_dual_mov_b32 v86, v97 :: v_dual_add_nc_u32 v209, 0, v19
	v_add_nc_u32_e32 v18, s33, v15
	v_dual_mov_b32 v4, v15 :: v_dual_add_nc_u32 v31, s35, v29
	v_xor_b32_e32 v15, 0x60, v24
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v210, 0, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v190, v18
	v_add_nc_u32_e32 v18, s33, v18
	v_add_nc_u32_e32 v41, s35, v31
	v_add_nc_u32_e32 v213, 0, v21
	v_dual_mov_b32 v85, v97 :: v_dual_add_nc_u32 v206, 0, v22
	v_dual_mov_b32 v185, v18 :: v_dual_add_nc_u32 v18, s33, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v43, s35, v41
	v_add_nc_u32_e32 v187, 0, v23
	v_add_nc_u32_e32 v1, 0, v1
	v_add_nc_u32_e32 v2, 0, v2
	v_mov_b32_e32 v6, v18
	v_add_nc_u32_e32 v18, s33, v18
	v_add_nc_u32_e32 v5, 0, v5
	v_add_nc_u32_e32 v8, 0, v8
	v_add_nc_u32_e32 v9, 0, v9
	v_add_nc_u32_e32 v12, 0, v12
	v_mov_b32_e32 v192, v18
	v_add_nc_u32_e32 v18, s33, v18
	v_add_nc_u32_e32 v15, 0, v15
	v_add_nc_u32_e32 v16, 0, v16
	v_add_nc_u32_e32 v45, s35, v43
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v47, off offset:484
	scratch_store_b32 off, v17, off offset:492
	v_dual_mov_b32 v7, v18 :: v_dual_add_nc_u32 v238, s33, v18
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v47, v17, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v26, s33, v238
	v_add_nc_u32_e32 v28, s33, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v30, s33, v28
	v_add_nc_u32_e32 v32, s33, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v42, s33, v32
	v_add_nc_u32_e32 v44, s33, v42
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v46, s33, v44
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
	v_and_b16 v17.l, 0xff, v101.h
	.loc	1 689 25 is_stmt 0              ; attention_backward.py:689:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v138, s33, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s0, 0, v17.l
	v_and_b16 v17.l, 0xff, v101.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s0, s100, s0
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s1, 0, v17.l
	v_and_b16 v17.l, 0xff, v100.h
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e32 vcc_lo, 0, v17.l
	v_and_b16 v17.l, 0xff, v100.l
	v_cmp_ne_u16_e64 s3, 0, v17.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v17, 0, 1, s0
	s_and_b32 s0, s99, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v18, 0, 1, s0
	s_and_b32 s0, s98, s3
	v_lshlrev_b16 v17.l, 8, v17.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_or_b16 v17.l, v18.l, v17.l
	v_cndmask_b32_e64 v18, 0, 1, s0
	s_and_b32 s0, s97, vcc_lo
	v_cndmask_b32_e64 v19, 0, 1, s0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshlrev_b16 v17.h, 8, v18.l
	scratch_load_b32 v18, off, off offset:284 ; 4-byte Folded Reload
	v_or_b16 v17.h, v19.l, v17.h
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, 0, v18
	ds_store_b16 v18, v17
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_and_b16 v17.l, 0xff, v98.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_ne_u16_e32 vcc_lo, 0, v17.l
	v_and_b16 v17.l, 0xff, v98.l
	.loc	1 699 25 is_stmt 1              ; attention_backward.py:699:25
	v_add_lshl_u32 v98, s55, v47, 2
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s0, 0, v17.l
	v_and_b16 v17.l, 0xff, v99.h
	.loc	1 689 25 is_stmt 0              ; attention_backward.py:689:25
	s_and_b32 s0, s93, s0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s1, 0, v17.l
	v_and_b16 v17.l, 0xff, v99.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v19, 0, 1, s0
	.loc	1 712 26 is_stmt 1              ; attention_backward.py:712:26
	s_and_b32 s0, s4, s54
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s54, s42
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s1, s96, s1
	.loc	1 689 34 is_stmt 0              ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s3, 0, v17.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v18, 0, 1, s1
	s_and_b32 s1, s95, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v17.l, v18.l
	v_cndmask_b32_e64 v18, 0, 1, s1
	s_and_b32 s1, s94, s3
	v_lshlrev_b16 v17.l, 8, v17.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v17.l, v18.l, v17.l
	v_cndmask_b32_e64 v18, 0, 1, s1
	.loc	1 708 21 is_stmt 1              ; attention_backward.py:708:21
	s_mul_i32 s1, s55, s33
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s55, s43
	v_add_lshl_u32 v103, s1, v194, 1
	v_add_lshl_u32 v104, s1, v215, 1
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_lshlrev_b16 v18.l, 8, v18.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v112, s1, v189, 1
	v_add_lshl_u32 v113, s1, v3, 1
	v_add_lshl_u32 v118, s1, v6, 1
	v_add_lshl_u32 v119, s1, v192, 1
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_or_b16 v18.l, v19.l, v18.l
	scratch_load_b32 v19, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v120, s1, v7, 1
	v_add_lshl_u32 v130, s1, v238, 1
	v_add_lshl_u32 v135, s1, v42, 1
	v_add_lshl_u32 v136, s1, v44, 1
	v_add_lshl_u32 v137, s1, v46, 1
	v_add_lshl_u32 v138, s1, v138, 1
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v19, v17
	scratch_load_b32 v19, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v19, v17
	scratch_load_b32 v17, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v17, v18
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v18, off, off offset:304
	scratch_load_b32 v19, off, off offset:312
	scratch_load_b32 v20, off, off offset:332
	scratch_load_b32 v21, off, off offset:344
	scratch_load_b32 v22, off, off offset:364
	scratch_load_b32 v23, off, off offset:372
	scratch_load_b32 v24, off, off offset:380
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v17, s65, v47
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s65, s65, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s18, v17
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v17, s1, v0, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s92
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v18, s1, v18, 1
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v19, s1, v19, 1
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v20, s1, v20, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v21, s1, v21, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v22, s1, v22, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s91
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v23, s1, v23, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s90
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v24, s1, v24, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s89
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v21, 0x80000000, v21, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s88
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s87
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s86
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v24, 0x80000000, v24, s0
	s_clause 0x7
	buffer_load_u16 v99, v17, s[52:55], 0 offen
	buffer_load_u16 v100, v18, s[52:55], 0 offen
	buffer_load_u16 v101, v19, s[52:55], 0 offen
	buffer_load_u16 v102, v20, s[52:55], 0 offen
	buffer_load_u16 v21, v21, s[52:55], 0 offen
	buffer_load_u16 v22, v22, s[52:55], 0 offen
	buffer_load_u16 v23, v23, s[52:55], 0 offen
	buffer_load_u16 v24, v24, s[52:55], 0 offen
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v17, off, off offset:388
	scratch_load_b32 v18, off, off offset:396
	scratch_load_b32 v19, off, off offset:404
	scratch_load_b32 v20, off, off offset:412
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s85
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v17, s1, v17, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v18, s1, v18, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v19, s1, v19, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v20, s1, v20, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s84
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v18, 0x80000000, v18, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s83
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s82
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v20, 0x80000000, v20, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s81
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v103, 0x80000000, v103, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s80
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v104, 0x80000000, v104, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s79
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v112, 0x80000000, v112, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s78
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v113, 0x80000000, v113, s0
	s_clause 0x7
	buffer_load_u16 v114, v17, s[52:55], 0 offen
	buffer_load_u16 v115, v18, s[52:55], 0 offen
	buffer_load_u16 v116, v19, s[52:55], 0 offen
	buffer_load_u16 v117, v20, s[52:55], 0 offen
	buffer_load_u16 v103, v103, s[52:55], 0 offen
	buffer_load_u16 v104, v104, s[52:55], 0 offen
	buffer_load_u16 v112, v112, s[52:55], 0 offen
	buffer_load_u16 v113, v113, s[52:55], 0 offen
	v_add_lshl_u32 v17, s1, v186, 1
	v_add_lshl_u32 v18, s1, v4, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s77
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v19, s1, v190, 1
	v_add_lshl_u32 v20, s1, v185, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s76
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v18, 0x80000000, v18, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s75
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s74
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v20, 0x80000000, v20, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s73
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v118, 0x80000000, v118, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s72
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v119, 0x80000000, v119, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s71
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v120, 0x80000000, v120, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s70
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v130, 0x80000000, v130, s0
	s_clause 0x7
	buffer_load_u16 v131, v17, s[52:55], 0 offen
	buffer_load_u16 v132, v18, s[52:55], 0 offen
	buffer_load_u16 v133, v19, s[52:55], 0 offen
	buffer_load_u16 v134, v20, s[52:55], 0 offen
	buffer_load_u16 v118, v118, s[52:55], 0 offen
	buffer_load_u16 v119, v119, s[52:55], 0 offen
	buffer_load_u16 v120, v120, s[52:55], 0 offen
	buffer_load_u16 v130, v130, s[52:55], 0 offen
	v_add_lshl_u32 v17, s1, v26, 1
	v_add_lshl_u32 v18, s1, v28, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s69
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v19, s1, v30, 1
	v_add_lshl_u32 v20, s1, v32, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s68
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v18, 0x80000000, v18, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s67
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s66
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v20, 0x80000000, v20, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s51
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s51, s43
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v135, 0x80000000, v135, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s50
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s50, s42
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v136, 0x80000000, v136, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s27
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s27, s43
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v137, 0x80000000, v137, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s26
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s26, s42
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v138, 0x80000000, v138, s0
	s_clause 0x7
	buffer_load_u16 v139, v17, s[52:55], 0 offen
	buffer_load_u16 v140, v18, s[52:55], 0 offen
	buffer_load_u16 v141, v19, s[52:55], 0 offen
	buffer_load_u16 v142, v20, s[52:55], 0 offen
	buffer_load_u16 v135, v135, s[52:55], 0 offen
	buffer_load_u16 v136, v136, s[52:55], 0 offen
	buffer_load_u16 v137, v137, s[52:55], 0 offen
	buffer_load_u16 v138, v138, s[52:55], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_dual_cndmask_b32 v17, 0x80000000, v98 :: v_dual_mov_b32 v98, v97
	buffer_load_b32 v145, v17, s[24:27], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v146, v17, s[48:51], 0 offen
	.loc	1 689 25                        ; attention_backward.py:689:25
	scratch_load_b32 v17, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_i32 s65, s59
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, 0, v17
	ds_load_u8_d16 v17, v18
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v17, v18 offset:64
	ds_load_u8_d16 v18, v236
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v18, v236 offset:64
	ds_load_u8_d16 v19, v237
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v19, v237 offset:64
	ds_load_u8_d16 v20, v240
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v20, v240 offset:64
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v195, v99
	ds_store_b16 v195, v100 offset:128
	ds_store_b16 v195, v101 offset:256
	ds_store_b16 v195, v102 offset:384
	ds_store_b16 v195, v21 offset:512
	ds_store_b16 v195, v22 offset:640
	ds_store_b16 v195, v23 offset:768
	ds_store_b16 v195, v24 offset:896
	ds_store_b16 v195, v114 offset:1024
	ds_store_b16 v195, v115 offset:1152
	ds_store_b16 v195, v116 offset:1280
	ds_store_b16 v195, v117 offset:1408
	ds_store_b16 v195, v103 offset:1536
	ds_store_b16 v195, v104 offset:1664
	ds_store_b16 v195, v112 offset:1792
	ds_store_b16 v195, v113 offset:1920
	ds_store_b16 v195, v131 offset:2048
	ds_store_b16 v195, v132 offset:2176
	ds_store_b16 v195, v133 offset:2304
	ds_store_b16 v195, v134 offset:2432
	ds_store_b16 v195, v118 offset:2560
	ds_store_b16 v195, v119 offset:2688
	ds_store_b16 v195, v120 offset:2816
	ds_store_b16 v195, v130 offset:2944
	ds_store_b16 v195, v139 offset:3072
	ds_store_b16 v195, v140 offset:3200
	ds_store_b16 v195, v141 offset:3328
	ds_store_b16 v195, v142 offset:3456
	ds_store_b16 v195, v135 offset:3584
	ds_store_b16 v195, v136 offset:3712
	ds_store_b16 v195, v137 offset:3840
	ds_store_b16 v195, v138 offset:3968
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16_hi v163, v218 offset:640
	ds_load_u16_d16_hi v164, v218 offset:896
	ds_load_u16_d16_hi v156, v218 offset:960
	ds_load_u16_d16_hi v155, v218 offset:704
	ds_load_u16_d16_hi v165, v218 offset:1152
	ds_load_u16_d16_hi v166, v218 offset:1408
	ds_load_u16_d16_hi v158, v218 offset:1472
	ds_load_u16_d16_hi v157, v218 offset:1216
	ds_load_u16_d16_hi v167, v218 offset:1664
	ds_load_u16_d16_hi v168, v218 offset:1920
	ds_load_u16_d16_hi v160, v218 offset:1984
	ds_load_u16_d16_hi v159, v218 offset:1728
	ds_load_u16_d16_hi v113, v218 offset:2176
	ds_load_u16_d16_hi v114, v218 offset:2432
	ds_load_u16_d16_hi v106, v218 offset:2496
	ds_load_u16_d16_hi v105, v218 offset:2240
	ds_load_u16_d16_hi v115, v218 offset:2688
	ds_load_u16_d16_hi v116, v218 offset:2944
	ds_load_u16_d16_hi v108, v218 offset:3008
	ds_load_u16_d16_hi v107, v218 offset:2752
	ds_load_u16_d16_hi v117, v218 offset:3200
	ds_load_u16_d16_hi v118, v218 offset:3456
	ds_load_u16_d16_hi v110, v218 offset:3520
	ds_load_u16_d16_hi v109, v218 offset:3264
	ds_load_u16_d16_hi v119, v218 offset:3712
	ds_load_u16_d16_hi v120, v218 offset:3968
	ds_load_u16_d16_hi v112, v218 offset:4032
	ds_load_u16_d16_hi v111, v218 offset:3776
	ds_load_u16_d16_hi v161, v218 offset:128
	ds_load_u16_d16_hi v162, v218 offset:384
	ds_load_u16_d16_hi v154, v218 offset:448
	ds_load_u16_d16_hi v153, v218 offset:192
	ds_load_u16_d16_hi v78, v218 offset:320
	ds_load_u16_d16_hi v220, v218 offset:256
	ds_load_u16_d16_hi v221, v218
	ds_load_u16_d16_hi v79, v218 offset:64
	ds_load_u16_d16_hi v76, v218 offset:832
	ds_load_u16_d16_hi v193, v218 offset:768
	ds_load_u16_d16_hi v219, v218 offset:512
	ds_load_u16_d16_hi v77, v218 offset:576
	ds_load_u16_d16_hi v74, v218 offset:1344
	ds_load_u16_d16_hi v217, v218 offset:1280
	ds_load_u16_d16_hi v214, v218 offset:1024
	ds_load_u16_d16_hi v75, v218 offset:1088
	ds_load_u16_d16_hi v64, v218 offset:1856
	ds_load_u16_d16_hi v80, v218 offset:1792
	ds_load_u16_d16_hi v216, v218 offset:1536
	ds_load_u16_d16_hi v73, v218 offset:1600
	ds_load_u16_d16_hi v54, v218 offset:2368
	ds_load_u16_d16_hi v62, v218 offset:2304
	ds_load_u16_d16_hi v63, v218 offset:2048
	ds_load_u16_d16_hi v55, v218 offset:2112
	ds_load_u16_d16_hi v52, v218 offset:2880
	ds_load_u16_d16_hi v60, v218 offset:2816
	ds_load_u16_d16_hi v61, v218 offset:2560
	ds_load_u16_d16_hi v53, v218 offset:2624
	ds_load_u16_d16_hi v50, v218 offset:3392
	ds_load_u16_d16_hi v58, v218 offset:3328
	ds_load_u16_d16_hi v59, v218 offset:3072
	ds_load_u16_d16_hi v51, v218 offset:3136
	ds_load_u16_d16_hi v48, v218 offset:3904
	ds_load_u16_d16_hi v56, v218 offset:3840
	ds_load_u16_d16_hi v57, v218 offset:3584
	ds_load_u16_d16_hi v49, v218 offset:3648
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v195, v99
	ds_store_b16 v195, v114 offset:1024
	ds_store_b16 v195, v131 offset:2048
	ds_store_b16 v195, v139 offset:3072
	ds_store_b16 v196, v100
	ds_store_b16 v196, v115 offset:1024
	ds_store_b16 v196, v132 offset:2048
	ds_store_b16 v196, v140 offset:3072
	ds_store_b16 v197, v101
	ds_store_b16 v197, v116 offset:1024
	ds_store_b16 v197, v133 offset:2048
	ds_store_b16 v197, v141 offset:3072
	ds_store_b16 v198, v102
	ds_store_b16 v198, v117 offset:1024
	ds_store_b16 v198, v134 offset:2048
	ds_store_b16 v198, v142 offset:3072
	ds_store_b16 v199, v21
	ds_store_b16 v199, v103 offset:1024
	ds_store_b16 v199, v118 offset:2048
	ds_store_b16 v199, v135 offset:3072
	ds_store_b16 v200, v22
	ds_store_b16 v200, v104 offset:1024
	ds_store_b16 v200, v119 offset:2048
	ds_store_b16 v200, v136 offset:3072
	ds_store_b16 v201, v23
	ds_store_b16 v201, v112 offset:1024
	ds_store_b16 v201, v120 offset:2048
	ds_store_b16 v201, v137 offset:3072
	ds_store_b16 v202, v24
	ds_store_b16 v202, v113 offset:1024
	ds_store_b16 v202, v130 offset:2048
	ds_store_b16 v202, v138 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[169:172], off, off offset:252
	scratch_load_b128 v[173:176], off, off offset:268
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[129:132], v129
	ds_load_b128 v[133:136], v2
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v104, v97
	v_mov_b32_e32 v99, v97
	v_mov_b32_e32 v100, v97
	v_mov_b32_e32 v101, v97
	v_mov_b32_e32 v102, v97
	v_mov_b32_e32 v103, v97
	v_mov_b32_e32 v144, v104
	v_dual_mov_b32 v140, v100 :: v_dual_mov_b32 v139, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v142, v102 :: v_dual_mov_b32 v141, v101
	v_dual_mov_b32 v143, v103 :: v_dual_mov_b32 v138, v98
	v_mov_b32_e32 v137, v97
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v21, s63, v121, -v145
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_and_b16 v17.l, 1, v17.l
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v99, s63, v125, -v145
	v_fma_f32 v23, s63, v123, -v145
	v_fma_f32 v22, s63, v122, -v145
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v21, v21
	.loc	1 689 25 is_stmt 1              ; attention_backward.py:689:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v17.l
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v99, v99
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_and_b16 v17.l, 1, v17.h
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v24, s63, v124, -v145
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v22, v22
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v100, s63, v126, -v145
	v_fma_f32 v101, s63, v127, -v145
	.loc	1 689 25 is_stmt 1              ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s0, 1, v17.l
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v102, s63, v128, -v145
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v168.l, v80.h
	v_mov_b16_e64 v167.l, v216.h
	v_mov_b16_e64 v166.l, v217.h
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v177, 0, v99, s0
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v165.l, v214.h
	v_mov_b16_e64 v164.l, v193.h
	v_mov_b16_e64 v163.l, v219.h
	v_mov_b16_e64 v162.l, v220.h
	v_mov_b16_e64 v161.l, v221.h
	v_mov_b16_e64 v160.l, v64.h
	v_mov_b16_e64 v159.l, v73.h
	v_mov_b16_e64 v158.l, v74.h
	v_mov_b16_e64 v157.l, v75.h
	v_mov_b16_e64 v156.l, v76.h
	v_mov_b16_e64 v155.l, v77.h
	v_mov_b16_e64 v154.l, v78.h
	v_mov_b16_e64 v153.l, v79.h
	v_mov_b16_e32 v120.l, v56.h
	v_mov_b16_e32 v119.l, v57.h
	v_mov_b16_e32 v118.l, v58.h
	v_mov_b16_e32 v117.l, v59.h
	v_mov_b16_e32 v116.l, v60.h
	v_mov_b16_e32 v115.l, v61.h
	v_mov_b16_e32 v114.l, v62.h
	v_mov_b16_e32 v113.l, v63.h
	v_mov_b16_e32 v112.l, v48.h
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v98, 0, v21, vcc_lo
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[169:176], v[129:136], v[137:144]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[169:172], off, off offset:220
	scratch_load_b128 v[173:176], off, off offset:236
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[129:132], v5
	ds_load_b128 v[133:136], v8
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[169:176], v[129:136], v[137:144]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[169:172], off, off offset:188
	scratch_load_b128 v[173:176], off, off offset:204
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[129:132], v9
	ds_load_b128 v[133:136], v12
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[169:176], v[129:136], v[137:144]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[169:172], off, off offset:156
	scratch_load_b128 v[173:176], off, off offset:172
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[129:132], v15
	ds_load_b128 v[133:136], v16
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[169:176], v[129:136], v[137:144]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v103, v137, v146
	v_sub_f32_e32 v121, v139, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_sub_f32_e32 v125, v143, v146
	.loc	1 720 30 is_stmt 0              ; attention_backward.py:720:30
	v_mul_f32_e32 v21, v98, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_dual_sub_f32 v104, v138, v146 :: v_dual_mul_f32 v21, s44, v21
	v_sub_f32_e32 v123, v141, v146
	v_sub_f32_e32 v122, v140, v146
	.loc	1 721 37 is_stmt 1              ; attention_backward.py:721:37
	v_bfe_u32 v103, v21, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_dual_mul_f32 v17, v177, v123 :: v_dual_sub_f32 v124, v142, v146
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_add3_u32 v21, v21, v103, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38 is_stmt 0              ; attention_backward.py:721:38
	v_mul_f32_e32 v17, s44, v17
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v99, v17, 16, 1
	v_cmp_o_f32_e64 s0, v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v17, v17, v99, 0x7fff
	.loc	1 689 25 is_stmt 1              ; attention_backward.py:689:25
	v_and_b16 v17.l, 1, v18.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s1, 1, v17.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v17.l, 0x7fff, v21.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	scratch_load_b32 v21, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v126, v144, v146
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v178, 0, v22, s1
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v22, v178, v104
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_mov_b16_e32 v104.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 721 38 is_stmt 0              ; attention_backward.py:721:38
	v_mul_f32_e32 v22, s44, v22
	.loc	1 728 51 is_stmt 1              ; attention_backward.py:728:51
	v_mov_b16_e64 v232.l, v104.l
	v_mov_b16_e64 v231.l, v104.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v221.l, v104.l
	v_mov_b16_e64 v220.l, v104.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v99, v22, 16, 1
	v_cmp_o_f32_e64 s1, v22, v22
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v219.l, v104.l
	v_mov_b16_e64 v216.l, v104.l
	v_mov_b16_e64 v193.l, v104.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v22, v22, v99, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v214.l, v104.l
	v_mov_b16_e64 v217.l, v104.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, 0, v21
	ds_store_b16 v21, v17
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v17.l, 0x7fff, v22.h, s1
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v21, v17 offset:512
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v21, v23
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_and_b16 v17.h, 1, v19.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v17.h
	v_and_b16 v17.h, 1, v20.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v179, 0, v21, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s0, 1, v17.h
	v_and_b16 v17.h, 1, v18.h
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v21, v179, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s1, 1, v17.h
	v_and_b16 v17.h, 1, v19.h
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v21, s44, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s3, 1, v17.h
	v_and_b16 v17.h, 1, v20.h
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v22, v21, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s6, 1, v17.h
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v21, v21, v22, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v22, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v180, 0, v22, s0
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v22, v180, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v22, s44, v22
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v23, v22, 16, 1
	v_cmp_o_f32_e64 s0, v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v23, v22, v23, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v22, v100
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v181, 0, v22, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v18, v181, v124
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v18, s44, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v22, v18, 16, 1
	v_cmp_o_f32_e64 s1, v18, v18
	v_add3_u32 v22, v18, v22, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v18, v101
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v17.h, 0x7fff, v22.h, s1
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v241, v17
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v17.l, 0x7fff, v21.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	v_cmp_o_f32_e64 s1, v179, v179
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v241, v17 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v182, 0, v18, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v18, v182, v125
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v21, v182, 16, 1
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v18, s44, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v21, v182, v21, 0x7fff
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v19, v18, 16, 1
	v_cmp_o_f32_e64 s3, v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v19, v18, v19, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v18, v102
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v17.h, 0x7fff, v19.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v242, v17
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v17.l, 0x7fff, v23.h, s0
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s0, v178, v178
	v_bfe_u32 v19, v179, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v242, v17 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v183, 0, v18, s6
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v181, v181
	v_add3_u32 v19, v179, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v18, v183, v126
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v22, v183, 16, 1
	v_cmp_o_f32_e64 s7, v183, v183
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v18, s44, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v22, v183, v22, 0x7fff
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v20, v18, 16, 1
	v_cmp_o_f32_e64 s6, v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v20, v18, v20, 0x7fff
	v_cndmask_b16 v17.h, 0x7fff, v20.h, s6
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v245, v17
	ds_store_b16_d16_hi v245, v17 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v17, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v20, v181, 16, 1
	v_cmp_o_f32_e64 s6, v182, v182
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v20, v181, v20, 0x7fff
	v_cndmask_b16 v231.h, 0x7fff, v20.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, 0, v17
	ds_load_b128 v[121:124], v17
	scratch_load_b32 v17, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[125:128], v17
	scratch_load_b32 v17, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[129:132], v17
	scratch_load_b32 v17, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[133:136], v17
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
	ds_store_b16 v195, v73 offset:2432
	ds_store_b16 v195, v74 offset:2560
	ds_store_b16 v195, v75 offset:2688
	ds_store_b16 v195, v76 offset:2816
	ds_store_b16 v195, v109 offset:2944
	ds_store_b16 v195, v77 offset:3072
	ds_store_b16 v195, v78 offset:3200
	ds_store_b16 v195, v79 offset:3328
	ds_store_b16 v195, v80 offset:3456
	ds_store_b16 v195, v105 offset:3584
	ds_store_b16 v195, v106 offset:3712
	ds_store_b16 v195, v107 offset:3840
	ds_store_b16 v195, v108 offset:3968
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v171, v218 offset:512
	ds_load_u16_d16 v172, v218 offset:768
	ds_load_u16_d16 v173, v218 offset:1024
	ds_load_u16_d16 v176, v218 offset:1792
	ds_load_u16_d16 v174, v218 offset:1280
	ds_load_u16_d16 v226, v218 offset:1088
	ds_load_u16_d16 v225, v218 offset:832
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16_hi v226, v218 offset:1216
	ds_load_u16_d16 v170, v218 offset:256
	ds_load_u16_d16 v169, v218
	ds_load_u16_d16 v175, v218 offset:1536
	ds_load_u16_d16_hi v171, v218 offset:640
	ds_load_u16_d16_hi v172, v218 offset:896
	ds_load_u16_d16_hi v173, v218 offset:1152
	ds_load_u16_d16 v227, v218 offset:1344
	ds_load_u16_d16 v140, v218 offset:2816
	ds_load_u16_d16 v141, v218 offset:3072
	ds_load_u16_d16 v147, v218 offset:2624
	ds_load_u16_d16 v146, v218 offset:2368
	ds_load_u16_d16 v137, v218 offset:2048
	ds_load_u16_d16 v138, v218 offset:2304
	ds_load_u16_d16 v139, v218 offset:2560
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v147, v218 offset:2752
	ds_load_u16_d16_hi v175, v218 offset:1664
	ds_load_u16_d16_hi v176, v218 offset:1920
	ds_load_u16_d16_hi v174, v218 offset:1408
	ds_load_u16_d16 v222, v218 offset:64
	ds_load_u16_d16_hi v170, v218 offset:384
	ds_load_u16_d16 v224, v218 offset:576
	ds_load_u16_d16 v223, v218 offset:320
	ds_load_u16_d16_hi v169, v218 offset:128
	ds_load_u16_d16 v228, v218 offset:1600
	ds_load_u16_d16 v145, v218 offset:2112
	ds_load_u16_d16 v229, v218 offset:1856
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v17, v98, 16, 1
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_u16_d16 v152, v218 offset:3904
	ds_load_u16_d16 v148, v218 offset:2880
	ds_load_u16_d16 v142, v218 offset:3328
	ds_load_u16_d16 v149, v218 offset:3136
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v146, v218 offset:2496
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v145, v218 offset:2240
	ds_load_u16_d16 v143, v218 offset:3584
	ds_load_u16_d16 v144, v218 offset:3840
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v17, v98, v17, 0x7fff
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_u16_d16_hi v222, v218 offset:192
	ds_load_u16_d16_hi v225, v218 offset:960
	ds_load_u16_d16_hi v224, v218 offset:704
	ds_load_u16_d16_hi v223, v218 offset:448
	ds_load_u16_d16_hi v227, v218 offset:1472
	ds_load_u16_d16_hi v228, v218 offset:1728
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v229, v218 offset:1984
	ds_load_u16_d16_hi v140, v218 offset:2944
	ds_load_u16_d16_hi v139, v218 offset:2688
	ds_load_u16_d16_hi v138, v218 offset:2432
	ds_load_u16_d16_hi v137, v218 offset:2176
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v152, v218 offset:4032
	ds_load_u16_d16_hi v141, v218 offset:3200
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v148, v218 offset:3008
	ds_load_u16_d16 v151, v218 offset:3648
	ds_load_u16_d16 v150, v218 offset:3392
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v142, v218 offset:3456
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v149, v218 offset:3264
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v104.h, 0x7fff, v17.h, vcc_lo
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v143, v218 offset:3712
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v144, v218 offset:3968
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v151, v218 offset:3776
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v150, v218 offset:3520
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v17, v98, v104
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[81:88], v[222:229], v[121:128], v[81:88]
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b16 v222.h, 0x7fff, v19.h, s1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v18, v17, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v19, v177, 16, 1
	v_cmp_o_f32_e64 s1, v177, v177
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[89:96], v[169:176], v[121:128], v[89:96]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v18, v17, v18, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v17, v178, 16, 1
	v_add3_u32 v19, v177, v19, 0x7fff
	v_cndmask_b16 v225.h, 0x7fff, v21.h, s6
	v_cndmask_b16 v224.h, 0x7fff, v22.h, s7
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v223.l, v104.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v17, v178, v17, 0x7fff
	v_cndmask_b16 v226.h, 0x7fff, v19.h, s1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v226.l, v104.l
	v_mov_b16_e64 v222.l, v104.l
	v_mov_b16_e64 v225.l, v104.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v223.h, 0x7fff, v17.h, s0
	v_bfe_u32 v17, v180, 16, 1
	v_cmp_o_f32_e64 s0, v180, v180
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v20, v177, v226
	v_sub_f32_e32 v22, v182, v225
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e64 v224.l, v104.l
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_add3_u32 v17, v180, v17, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v111.l, v49.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v20, v20
	v_cmp_o_f32_e64 s7, v22, v22
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v110.l, v50.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v232.h, 0x7fff, v17.h, s0
	scratch_load_b32 v17, off, off offset:316 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v184, 0, v239
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v109.l, v51.h
	v_mov_b16_e32 v108.l, v52.h
	v_mov_b16_e32 v107.l, v53.h
	v_mov_b16_e32 v106.l, v54.h
	v_mov_b16_e32 v105.l, v55.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v73.l, v104.l
	v_mov_b16_e32 v57.l, v104.l
	v_mov_b16_e32 v58.l, v104.l
	v_mov_b16_e32 v80.l, v104.l
	v_mov_b16_e32 v54.l, v104.l
	v_mov_b16_e32 v79.l, v104.l
	v_mov_b16_e32 v78.l, v104.l
	v_mov_b16_e32 v76.l, v104.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v80, v80, v80
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v77.l, v104.l
	v_mov_b16_e32 v75.l, v104.l
	v_mov_b16_e32 v64.l, v104.l
	v_mov_b16_e32 v53.l, v104.l
	v_mov_b16_e32 v74.l, v104.l
	v_mov_b16_e32 v49.l, v104.l
	v_mov_b16_e32 v63.l, v104.l
	v_mov_b16_e32 v60.l, v104.l
	v_mov_b16_e32 v62.l, v104.l
	v_mov_b16_e32 v59.l, v104.l
	v_mov_b16_e32 v61.l, v104.l
	v_mov_b16_e32 v52.l, v104.l
	v_mov_b16_e32 v48.l, v104.l
	v_mov_b16_e32 v56.l, v104.l
	v_mov_b16_e32 v55.l, v104.l
	v_mov_b16_e32 v50.l, v104.l
	v_mov_b16_e32 v51.l, v104.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[89:96], v[137:144], v[129:136], v[89:96]
	v_wmma_f32_16x16x16_bf16 v[81:88], v[145:152], v[129:136], v[81:88]
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v21, v181, v231
	v_sub_f32_e32 v23, v183, v224
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v73, v73, v73
	v_sub_f32_e32 v57, v57, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s6, v21, v21
	v_cmp_o_f32_e64 s8, v23, v23
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v19, 0, v17
	ds_store_b16_d16_hi v19, v104
	ds_store_b16_d16_hi v251, v223
	ds_store_b16_d16_hi v252, v222
	ds_store_b16_d16_hi v255, v232
	ds_store_b16_d16_hi v204, v226
	ds_store_b16_d16_hi v203, v231
	ds_store_b16_d16_hi v208, v225
	ds_store_b16_d16_hi v209, v224
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[124:125], v210
	ds_load_b64 v[126:127], v188
	ds_load_b64 v[171:172], v213
	ds_load_b64 v[98:99], v206
	ds_load_b64 v[174:175], v184
	ds_load_b64 v[102:103], v191
	ds_load_b64 v[100:101], v1
	ds_load_b64 v[121:122], v187
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v161.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v17.l, 0x7fff, v18.h, vcc_lo
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v231, v104, v104
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v162.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v19, v17
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v17, v178, v223
	v_sub_f32_e32 v19, v180, v232
	.loc	1 732 35 is_stmt 1              ; attention_backward.py:732:35
	v_sub_f32_e32 v226, v104, v104
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v163.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v24, v17, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v170.h, v98.l
	v_mov_b16_e64 v98.l, v171.h
	v_mov_b16_e64 v169.h, v124.l
	v_mov_b16_e64 v124.l, v174.h
	v_mov_b16_e64 v174.h, v99.l
	v_mov_b16_e64 v99.l, v172.h
	v_mov_b16_e64 v171.h, v126.l
	v_mov_b16_e32 v126.l, v121.h
	v_mov_b16_e64 v173.l, v175.l
	v_mov_b16_e64 v173.h, v125.l
	v_mov_b16_e64 v125.l, v175.h
	v_mov_b16_e64 v175.l, v122.l
	v_mov_b16_e64 v175.h, v127.l
	v_mov_b16_e32 v127.l, v122.h
	v_mov_b32_e32 v122, v98
	v_dual_mov_b32 v123, v126 :: v_dual_mov_b32 v126, v99
	v_mov_b16_e64 v176.h, v101.l
	v_mov_b16_e32 v101.l, v103.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v225, v104, v104
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v164.h
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v18, v179, v222
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_add3_u32 v24, v17, v24, 0x7fff
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b32_e32 v128, v101
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s1, v19, v19
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v223, v104, v104
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v17, v18, 16, 1
	v_cmp_o_f32_e64 s0, v18, v18
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v172.h, v100.l
	v_mov_b16_e32 v100.l, v102.h
	v_mov_b16_e64 v170.l, v171.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v17, v18, v17, 0x7fff
	v_bfe_u32 v18, v19, 16, 1
	v_cndmask_b16 v17.l, 0x7fff, v24.h, vcc_lo
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v171.l, v121.l
	v_mov_b32_e32 v121, v124
	v_mov_b32_e32 v124, v100
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v18, v19, v18, 0x7fff
	v_bfe_u32 v19, v20, 16, 1
	ds_store_b16 v251, v17
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s0
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v169.l, v174.l
	v_mov_b16_e64 v174.l, v172.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v19, v20, v19, 0x7fff
	v_bfe_u32 v20, v21, 16, 1
	ds_store_b16 v252, v17
	v_cndmask_b16 v17.l, 0x7fff, v18.h, s1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v172.l, v102.l
	v_mov_b16_e64 v176.l, v103.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v20, v21, v20, 0x7fff
	v_bfe_u32 v21, v22, 16, 1
	ds_store_b16 v255, v17
	v_cndmask_b16 v17.l, 0x7fff, v19.h, s3
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[161:168], v[169:176], v[65:72]
	v_wmma_f32_16x16x16_bf16 v[33:40], v[153:160], v[169:176], v[33:40]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v21, v22, v21, 0x7fff
	v_bfe_u32 v22, v23, 16, 1
	ds_store_b16 v204, v17
	v_cndmask_b16 v17.l, 0x7fff, v20.h, s6
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[113:120], v[121:128], v[65:72]
	v_wmma_f32_16x16x16_bf16 v[33:40], v[105:112], v[121:128], v[33:40]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v22, v23, v22, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v165.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v203, v17
	v_cndmask_b16 v17.l, 0x7fff, v21.h, s7
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v225, v225
	v_cmp_o_f32_e32 vcc_lo, v231, v231
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v208, v17
	v_cndmask_b16 v17.l, 0x7fff, v22.h, s8
	ds_store_b16 v209, v17
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[177:178], v184
	ds_load_b64 v[227:228], v213
	ds_load_b64 v[243:244], v206
	ds_load_b64 v[180:181], v210
	ds_load_b64 v[182:183], v188
	ds_load_b64 v[248:249], v191
	ds_load_b64 v[253:254], v1
	ds_load_b64 v[211:212], v187
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(7)
	v_mov_b16_e64 v17.l, v177.l
	s_waitcnt lgkmcnt(6)
	v_mov_b16_e64 v18.l, v227.l
	s_waitcnt lgkmcnt(5)
	v_mov_b16_e64 v18.h, v243.l
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e64 v17.h, v180.l
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e64 v19.l, v211.l
	v_mov_b16_e64 v19.h, v182.l
	v_mov_b16_e64 v20.l, v248.l
	v_mov_b16_e64 v20.h, v253.l
	v_mov_b16_e64 v21.l, v178.l
	v_mov_b16_e64 v21.h, v181.l
	v_mov_b16_e64 v22.l, v228.l
	v_mov_b16_e64 v22.h, v244.l
	v_mov_b16_e64 v23.l, v212.l
	v_mov_b16_e64 v23.h, v183.l
	v_mov_b16_e64 v24.l, v249.l
	v_mov_b16_e64 v24.h, v254.l
	v_mov_b16_e64 v180.l, v177.h
	v_mov_b16_e64 v182.l, v211.h
	v_mov_b16_e64 v243.l, v227.h
	v_mov_b16_e64 v253.l, v248.h
	v_wmma_f32_16x16x16_bf16 v[65:72], v[161:168], v[17:24], v[65:72]
	v_wmma_f32_16x16x16_bf16 v[33:40], v[153:160], v[17:24], v[33:40]
	v_dual_mov_b32 v177, v180 :: v_dual_sub_f32 v18, v221, v221
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v17.l, v231.h
	v_mov_b16_e32 v17.h, v104.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v222, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v166.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v19.l, v18.h
	v_mov_b16_e32 v19.h, v104.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v20, v220, v220
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v21.h, v104.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v224, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v167.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v19, 1, v19
	v_mov_b16_e32 v21.l, v20.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v179, v182
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s0, v18, v18
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v232, v104, v104
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v19, v18, v19, 0x7fff
	v_mov_b16_e64 v18.l, v226.h
	v_mov_b16_e32 v18.h, v104.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v168.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v22, v219, v219 :: v_dual_and_b32 v21, 1, v21
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v20, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v18, 1, v18
	v_mov_b16_e32 v23.h, v104.l
	v_add3_u32 v21, v20, v21, 0x7fff
	v_mov_b16_e32 v23.l, v22.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v166, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v113.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v18, v226, v18, 0x7fff
	v_cndmask_b16 v18.l, 0x7fff, v21.h, s3
	v_and_b32_e32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v21, v193, v193 :: v_dual_sub_f32 v162, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v114.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s7, v22, v22
	v_add3_u32 v23, v22, v23, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v22.l, v21.h
	v_mov_b16_e32 v22.h, v104.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v161, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v115.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v17, 1, v17
	v_cndmask_b16 v19.l, 0x7fff, v23.h, s7
	v_and_b32_e32 v22, 1, v22
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v214, v214
	v_sub_f32_e32 v103, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v116.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v17, v231, v17, 0x7fff
	v_cndmask_b16 v17.l, 0x7fff, v19.h, s0
	v_add3_u32 v22, v21, v22, 0x7fff
	v_cmp_o_f32_e64 s0, v21, v21
	v_mov_b16_e64 v21.l, v222.h
	v_mov_b16_e32 v21.h, v104.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v102, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v117.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v20.l, v225.h
	v_mov_b16_e32 v20.h, v104.l
	v_mov_b16_e32 v24.l, v23.h
	v_mov_b16_e32 v24.h, v104.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v101, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v118.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v20, 1, v20
	v_cmp_o_f32_e64 s3, v23, v23
	v_and_b32_e32 v24, 1, v24
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v244.l, v228.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v100, v104, v104
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v119.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v20, v225, v20, 0x7fff
	v_add3_u32 v24, v23, v24, 0x7fff
	v_mov_b16_e64 v23.l, v224.h
	v_mov_b16_e32 v23.h, v104.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v99, v104, v104 :: v_dual_mov_b32 v180, v253
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v120.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s6
	v_mov_b16_e64 v20.l, v223.h
	v_mov_b16_e32 v20.h, v104.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v98, v104, v104 :: v_dual_and_b32 v23, 1, v23
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v153.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v254.l, v249.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v23, v224, v23, 0x7fff
	v_cmp_o_f32_e64 s6, v224, v224
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v165, v104, v104 :: v_dual_mov_b32 v184, v254
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v154.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v20, v223, v20, 0x7fff
	v_and_b32_e32 v21, 1, v21
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v181.l, v178.h
	v_mov_b16_e64 v183.l, v212.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v164, v104, v104
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v178, v243
	v_mov_b32_e32 v182, v244
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v20.l, 0x7fff, v22.h, s0
	v_cndmask_b16 v22.h, 0x7fff, v23.h, s6
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v217, v217
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v21, v222, v21, 0x7fff
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v155.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[113:120], v[177:184], v[65:72]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v21.l, 0x7fff, v24.h, s3
	v_mov_b16_e32 v24.l, v23.h
	v_mov_b16_e32 v24.h, v104.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v113, v216, v216
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v226, v226
	v_cndmask_b16 v17.h, 0x7fff, v17.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v223, v223
	v_and_b32_e32 v24, 1, v24
	v_mov_b16_e32 v114.l, v113.h
	v_mov_b16_e32 v114.h, v104.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v163, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v156.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s1
	v_cmp_o_f32_e64 s1, v222, v222
	v_cndmask_b16 v20.h, 0x7fff, v20.h, vcc_lo
	v_add3_u32 v24, v23, v24, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	v_mov_b16_e64 v23.l, v232.h
	v_mov_b16_e32 v23.h, v104.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v156, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v157.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v114, 1, v114
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s1
	v_cmp_o_f32_e64 s1, v113, v113
	v_mov_b16_e32 v115.l, v80.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v155, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v158.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v114, v113, v114, 0x7fff
	v_mov_b16_e64 v113.l, v166.h
	v_mov_b16_e32 v113.h, v104.l
	v_mov_b16_e32 v115.h, v104.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v154, v104, v104 :: v_dual_and_b32 v23, 1, v23
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s0, v232, v232
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v113, 1, v113
	v_and_b32_e32 v115, 1, v115
	v_cmp_o_f32_e64 s3, v166, v166
	v_add3_u32 v23, v232, v23, 0x7fff
	v_cmp_o_f32_e64 s6, v80, v80
	v_add3_u32 v113, v166, v113, 0x7fff
	v_add3_u32 v115, v80, v115, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v24.h, vcc_lo
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s0
	v_cndmask_b16 v23.l, 0x7fff, v114.h, s1
	v_cndmask_b16 v24.h, 0x7fff, v113.h, s3
	v_cndmask_b16 v24.l, 0x7fff, v115.h, s6
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v159.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v165, v165
	v_cmp_o_f32_e64 s1, v164, v164
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[105:112], v[177:184], v[33:40]
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[17:24], v[169:176], v[65:72]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v79, v79
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v19.h, v104.l
	v_mov_b16_e64 v17.l, v165.h
	v_mov_b16_e32 v17.h, v104.l
	v_mov_b16_e32 v21.h, v104.l
	v_mov_b16_e32 v19.l, v18.h
	v_cmp_o_f32_e64 s0, v18, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v22, v76, v76 :: v_dual_and_b32 v17, 1, v17
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v23.h, v104.l
	v_and_b32_e32 v19, 1, v19
	v_cmp_o_f32_e64 s6, v155, v155
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v23.l, v22.h
	v_add3_u32 v17, v165, v17, 0x7fff
	v_add3_u32 v19, v18, v19, 0x7fff
	v_mov_b16_e64 v19.l, v163.h
	v_mov_b16_e64 v18.l, v164.h
	v_mov_b16_e32 v18.h, v104.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v153, v104, v104
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v17.l, 0x7fff, v19.h, s0
	v_mov_b16_e32 v19.h, v104.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v20, v78, v78
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v18, 1, v18
	v_and_b32_e32 v23, 1, v23
	v_cndmask_b16 v17.h, 0x7fff, v17.h, vcc_lo
	v_and_b32_e32 v19, 1, v19
	v_mov_b16_e32 v21.l, v20.h
	v_cmp_o_f32_e64 s3, v20, v20
	v_add3_u32 v18, v164, v18, 0x7fff
	v_add3_u32 v23, v22, v23, 0x7fff
	v_add3_u32 v19, v163, v19, 0x7fff
	v_and_b32_e32 v21, 1, v21
	v_cmp_o_f32_e32 vcc_lo, v163, v163
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v160.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s1
	v_cmp_o_f32_e64 s1, v156, v156
	v_add3_u32 v21, v20, v21, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v20, v77, v77
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v19.h, 0x7fff, v19.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v18.l, 0x7fff, v21.h, s3
	v_mov_b16_e32 v21.l, v20.h
	v_mov_b16_e32 v21.h, v104.l
	v_cmp_o_f32_e64 s3, v22, v22
	v_mov_b16_e64 v22.l, v155.h
	v_mov_b16_e32 v22.h, v104.l
	v_cmp_o_f32_e64 s0, v20, v20
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v22, 1, v22
	v_add3_u32 v21, v20, v21, 0x7fff
	v_mov_b16_e64 v20.l, v156.h
	v_mov_b16_e32 v20.h, v104.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v22, v155, v22, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v21.h, s0
	v_cmp_o_f32_e64 s0, v154, v154
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v20, 1, v20
	v_cndmask_b16 v21.h, 0x7fff, v22.h, s6
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v22, v75, v75
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v75.l, v73.h
	v_mov_b16_e32 v75.h, v104.l
	v_add3_u32 v20, v156, v20, 0x7fff
	v_cndmask_b16 v20.l, 0x7fff, v23.h, s3
	v_mov_b16_e32 v23.l, v22.h
	v_mov_b16_e32 v23.h, v104.l
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v24, v74, v74 :: v_dual_and_b32 v75, 1, v75
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v73, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v23, 1, v23
	v_mov_b16_e32 v74.h, v104.l
	v_mov_b16_e32 v74.l, v24.h
	v_add3_u32 v75, v73, v75, 0x7fff
	v_mov_b16_e32 v73.h, v104.l
	v_add3_u32 v23, v22, v23, 0x7fff
	v_mov_b16_e64 v22.l, v154.h
	v_mov_b16_e32 v22.h, v104.l
	v_and_b32_e32 v74, 1, v74
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s1
	v_cndmask_b16 v21.l, 0x7fff, v23.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v105.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v22, 1, v22
	v_add3_u32 v74, v24, v74, 0x7fff
	v_cmp_o_f32_e64 s1, v24, v24
	v_mov_b16_e32 v73.l, v23.h
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	v_mov_b16_e64 v24.l, v153.h
	v_mov_b16_e32 v24.h, v104.l
	v_add3_u32 v22, v154, v22, 0x7fff
	v_and_b32_e32 v73, 1, v73
	v_cmp_o_f32_e64 s3, v153, v153
	v_cndmask_b16 v22.l, 0x7fff, v74.h, s1
	v_and_b32_e32 v24, 1, v24
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s0
	v_add3_u32 v73, v23, v73, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v64, v64
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v64.h, v104.l
	v_add3_u32 v24, v153, v24, 0x7fff
	v_cmp_o_f32_e64 s1, v161, v161
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v64.l, v23.h
	v_cmp_o_f32_e64 s0, v23, v23
	v_and_b32_e32 v64, 1, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v64, v23, v64, 0x7fff
	v_cndmask_b16 v23.h, 0x7fff, v24.h, s3
	v_cndmask_b16 v23.l, 0x7fff, v75.h, s6
	v_cndmask_b16 v24.h, 0x7fff, v73.h, vcc_lo
	v_cmp_o_f32_e64 s6, v103, v103
	v_cndmask_b16 v24.l, 0x7fff, v64.h, s0
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v64, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v106.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v162, v162
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[17:24], v[169:176], v[33:40]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v17.l, v162.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v73, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v107.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v17.h, v104.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v63, v63
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v19.h, v104.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v22, v60, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v74, v104, v104 :: v_dual_and_b32 v17, 1, v17
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v108.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v19.l, v18.h
	v_mov_b16_e32 v23.l, v22.h
	v_mov_b16_e32 v23.h, v104.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v20, v62, v62 :: v_dual_sub_f32 v75, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v109.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v19, 1, v19
	v_cmp_o_f32_e64 s0, v18, v18
	v_mov_b16_e32 v21.h, v104.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v76, v104, v104 :: v_dual_and_b32 v23, 1, v23
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v110.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v19, v18, v19, 0x7fff
	v_mov_b16_e64 v18.l, v161.h
	v_mov_b16_e32 v18.h, v104.l
	v_mov_b16_e32 v21.l, v20.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v77, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v111.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v20, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v24, v59, v59 :: v_dual_and_b32 v21, 1, v21
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v17, v162, v17, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v78, v104, v104
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v18, 1, v18
	v_cndmask_b16 v17.l, 0x7fff, v19.h, s0
	v_add3_u32 v21, v20, v21, 0x7fff
	v_mov_b16_e32 v20.l, v103.h
	v_mov_b16_e32 v20.h, v104.l
	v_mov_b16_e32 v59.l, v24.h
	v_mov_b16_e32 v59.h, v104.l
	v_add3_u32 v18, v161, v18, 0x7fff
	v_cndmask_b16 v18.l, 0x7fff, v21.h, s3
	v_and_b32_e32 v20, 1, v20
	v_mov_b16_e32 v21.h, v104.l
	v_and_b32_e32 v59, 1, v59
	v_cndmask_b16 v17.h, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s1
	v_add3_u32 v20, v103, v20, 0x7fff
	v_add3_u32 v23, v22, v23, 0x7fff
	v_cmp_o_f32_e64 s1, v22, v22
	v_mov_b16_e32 v22.l, v101.h
	v_mov_b16_e32 v22.h, v104.l
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s6
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v20, v61, v61
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v101, v101
	v_cmp_o_f32_e64 s0, v102, v102
	v_and_b32_e32 v22, 1, v22
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v112.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v21.l, v20.h
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v22, v101, v22, 0x7fff
	v_mov_b16_e32 v22.l, v100.h
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v21, v20, v21, 0x7fff
	v_mov_b16_e32 v20.l, v102.h
	v_mov_b16_e32 v20.h, v104.l
	v_cndmask_b16 v19.l, 0x7fff, v21.h, vcc_lo
	v_cndmask_b16 v21.h, 0x7fff, v22.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_b32_e32 v20, 1, v20
	v_cmp_o_f32_e64 s3, v57, v57
	v_mov_b16_e32 v22.h, v104.l
	v_cmp_o_f32_e32 vcc_lo, v100, v100
	v_add3_u32 v20, v102, v20, 0x7fff
	v_cndmask_b16 v20.l, 0x7fff, v23.h, s1
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v58, v58
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v58.l, v57.h
	v_mov_b16_e32 v58.h, v104.l
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s0
	v_and_b32_e32 v22, 1, v22
	v_cmp_o_f32_e64 s0, v23, v23
	v_cmp_o_f32_e64 s1, v99, v99
	v_and_b32_e32 v58, 1, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v22, v100, v22, 0x7fff
	v_add3_u32 v58, v57, v58, 0x7fff
	v_mov_b16_e32 v57.l, v98.h
	v_mov_b16_e32 v57.h, v104.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	v_and_b32_e32 v57, 1, v57
	v_add3_u32 v59, v24, v59, 0x7fff
	v_cmp_o_f32_e64 s6, v24, v24
	v_mov_b16_e32 v24.l, v23.h
	v_mov_b16_e32 v24.h, v104.l
	v_add3_u32 v57, v98, v57, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v21.l, 0x7fff, v59.h, s6
	v_mov_b16_e32 v59.h, v104.l
	v_and_b32_e32 v24, 1, v24
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v56, v56, v56
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v98, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v24, v23, v24, 0x7fff
	v_mov_b16_e32 v23.l, v99.h
	v_mov_b16_e32 v23.h, v104.l
	v_mov_b16_e32 v59.l, v56.h
	v_cndmask_b16 v22.l, 0x7fff, v24.h, s0
	v_cndmask_b16 v24.h, 0x7fff, v57.h, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v23, 1, v23
	v_and_b32_e32 v59, 1, v59
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v23, v99, v23, 0x7fff
	v_add3_u32 v59, v56, v59, 0x7fff
	v_cndmask_b16 v23.l, 0x7fff, v58.h, s3
	v_cmp_o_f32_e64 s3, v75, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s1
	v_cndmask_b16 v24.l, 0x7fff, v59.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v64, v64
	v_cmp_o_f32_e64 s1, v73, v73
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[17:24], v[121:128], v[65:72]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v17.l, v64.h
	v_mov_b16_e32 v17.h, v104.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v55, v55
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v19.h, v104.l
	v_mov_b16_e32 v20.h, v104.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v21, v53, v53
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v17, 1, v17
	v_mov_b16_e32 v19.l, v18.h
	v_cmp_o_f32_e64 s0, v18, v18
	v_mov_b16_e32 v22.h, v104.l
	v_mov_b16_e32 v22.l, v21.h
	v_add3_u32 v17, v64, v17, 0x7fff
	v_and_b32_e32 v19, 1, v19
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v52, v52
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v24.h, v104.l
	v_and_b32_e32 v22, 1, v22
	v_cndmask_b16 v17.h, 0x7fff, v17.h, vcc_lo
	v_add3_u32 v19, v18, v19, 0x7fff
	v_mov_b16_e32 v18.l, v73.h
	v_mov_b16_e32 v18.h, v104.l
	v_add3_u32 v22, v21, v22, 0x7fff
	v_mov_b16_e32 v24.l, v23.h
	v_cndmask_b16 v17.l, 0x7fff, v19.h, s0
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v19, v54, v54
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v18, 1, v18
	v_cmp_o_f32_e64 s6, v23, v23
	v_and_b32_e32 v24, 1, v24
	v_cmp_o_f32_e64 s0, v74, v74
	v_mov_b16_e32 v20.l, v19.h
	v_add3_u32 v18, v73, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v24, v23, v24, 0x7fff
	v_mov_b16_e32 v23.h, v104.l
	v_and_b32_e32 v20, 1, v20
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s1
	v_cmp_o_f32_e64 s1, v21, v21
	v_mov_b16_e32 v21.l, v75.h
	v_mov_b16_e32 v21.h, v104.l
	v_add3_u32 v20, v19, v20, 0x7fff
	v_mov_b16_e32 v19.l, v74.h
	v_mov_b16_e32 v19.h, v104.l
	v_cndmask_b16 v20.l, 0x7fff, v24.h, s6
	v_and_b32_e32 v21, 1, v21
	v_cndmask_b16 v18.l, 0x7fff, v20.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v76, v76
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v24, v50, v50 :: v_dual_and_b32 v19, 1, v19
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v50.h, v104.l
	v_cmp_o_f32_e64 s6, v78, v78
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v19, v74, v19, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v22.h, s1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v22, v51, v51
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v21, v75, v21, 0x7fff
	v_mov_b16_e32 v21.l, v76.h
	v_cndmask_b16 v19.h, 0x7fff, v19.h, s0
	v_mov_b16_e32 v51.h, v104.l
	v_mov_b16_e32 v23.l, v22.h
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s3
	v_mov_b16_e32 v21.h, v104.l
	v_cmp_o_f32_e64 s0, v22, v22
	v_mov_b16_e32 v50.l, v24.h
	v_and_b32_e32 v23, 1, v23
	v_cmp_o_f32_e64 s3, v24, v24
	v_and_b32_e32 v21, 1, v21
	v_cmp_o_f32_e64 s1, v77, v77
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v23, v22, v23, 0x7fff
	v_mov_b16_e32 v22.l, v77.h
	v_add3_u32 v21, v76, v21, 0x7fff
	v_mov_b16_e32 v22.h, v104.l
	v_add3_u32 v50, v24, v50, 0x7fff
	v_cndmask_b16 v21.l, 0x7fff, v23.h, s0
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v49, v49
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v49.h, v104.l
	v_cndmask_b16 v21.h, 0x7fff, v21.h, vcc_lo
	v_and_b32_e32 v22, 1, v22
	v_mov_b16_e32 v24.l, v78.h
	v_mov_b16_e32 v49.l, v23.h
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	v_mov_b16_e32 v24.h, v104.l
	v_add3_u32 v22, v77, v22, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v50.h, s3
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v24, 1, v24
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v49, v23, v49, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v104, v104
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v24, v78, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v51.l, v23.h
	v_cmp_o_f32_e64 s0, v23, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v51, 1, v51
	v_add3_u32 v51, v23, v51, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v48, v48
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v48.h, v104.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v48.l, v23.h
	v_cmp_o_f32_e64 s1, v23, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v48, 1, v48
	v_add3_u32 v48, v23, v48, 0x7fff
	v_cndmask_b16 v23.h, 0x7fff, v24.h, s6
	v_cndmask_b16 v23.l, 0x7fff, v49.h, vcc_lo
	v_cndmask_b16 v24.h, 0x7fff, v51.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v24.l, 0x7fff, v48.h, s1
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[17:24], v[121:128], v[33:40]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v18, off, off offset:300
	scratch_load_b32 v19, off, off offset:308
	scratch_load_b32 v20, off, off offset:320
	scratch_load_b32 v21, off, off offset:340
	scratch_load_b32 v22, off, off offset:356
	scratch_load_b32 v23, off, off offset:368
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s0, s65, 1
	s_or_b32 s1, s65, 2
	s_or_b32 s3, s65, 3
	s_or_b32 s6, s65, 4
	s_or_b32 s7, s65, 5
	s_or_b32 s8, s65, 6
	s_or_b32 s9, s65, 7
	s_or_b32 s10, s65, 8
	s_or_b32 s11, s65, 9
	s_or_b32 s12, s65, 10
	s_or_b32 s13, s65, 11
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
	v_dual_mov_b32 v104, v97 :: v_dual_add_nc_u32 v129, 0, v207
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s0, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v99, v97
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s1, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v101, v97
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s3, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v103, v97
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s6, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v100, v97
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s7, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v98, v97
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s8, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v102, v97
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s9, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v128, v104 :: v_dual_mov_b32 v127, v103
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s10, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v124, v100 :: v_dual_mov_b32 v123, v99
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s11, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v122, v98 :: v_dual_mov_b32 v121, v97
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s12, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v126, v102 :: v_dual_mov_b32 v125, v101
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s13, s18
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
	s_and_b32 vcc_lo, s2, s54
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_mul_i32 s0, s55, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v17, s0, v0, 1
	v_add_lshl_u32 v24, s0, v11, 1
	v_add_lshl_u32 v62, s0, v247, 1
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v18, s0, v18, 1
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v19, s0, v19, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s92
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v20, s0, v20, 1
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s91
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v21, s0, v21, 1
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s90
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v22, s0, v22, 1
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s89
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v23, s0, v23, 1
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s88
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s87
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	s_clause 0x6
	buffer_load_u16 v48, v17, s[40:43], 0 offen
	buffer_load_u16 v49, v18, s[40:43], 0 offen
	buffer_load_u16 v50, v19, s[40:43], 0 offen
	buffer_load_u16 v51, v20, s[40:43], 0 offen
	buffer_load_u16 v52, v21, s[40:43], 0 offen
	buffer_load_u16 v53, v22, s[40:43], 0 offen
	buffer_load_u16 v54, v23, s[40:43], 0 offen
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v17, off, off offset:376
	scratch_load_b32 v18, off, off offset:384
	scratch_load_b32 v19, off, off offset:392
	scratch_load_b32 v20, off, off offset:400
	scratch_load_b32 v21, off, off offset:408
	scratch_load_b32 v22, off, off offset:416
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s86
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v23, s0, v10, 1
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v17, s0, v17, 1
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v18, s0, v18, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v19, s0, v19, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v20, s0, v20, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v21, s0, v21, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s85
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v22, s0, v22, 1
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s84
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s83
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s82
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s81
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s80
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s79
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	s_clause 0x6
	buffer_load_u16 v55, v18, s[40:43], 0 offen
	buffer_load_u16 v56, v19, s[40:43], 0 offen
	buffer_load_u16 v57, v20, s[40:43], 0 offen
	buffer_load_u16 v58, v21, s[40:43], 0 offen
	buffer_load_u16 v59, v22, s[40:43], 0 offen
	buffer_load_u16 v60, v23, s[40:43], 0 offen
	buffer_load_u16 v61, v24, s[40:43], 0 offen
	v_add_lshl_u32 v18, s0, v13, 1
	v_add_lshl_u32 v19, s0, v14, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s78
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v20, s0, v235, 1
	v_add_lshl_u32 v21, s0, v230, 1
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s77
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v22, s0, v233, 1
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s76
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v23, s0, v246, 1
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s75
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v24, s0, v234, 1
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s74
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s73
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s72
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s71
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v76, 0x80000000, v62, vcc_lo
	v_add_lshl_u32 v62, s0, v25, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v77, 0x80000000, v62, vcc_lo
	v_add_lshl_u32 v62, s0, v27, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s68
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v78, 0x80000000, v62, vcc_lo
	v_add_lshl_u32 v62, s0, v29, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s67
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v79, 0x80000000, v62, vcc_lo
	s_clause 0x6
	buffer_load_u16 v62, v19, s[40:43], 0 offen
	buffer_load_u16 v63, v20, s[40:43], 0 offen
	buffer_load_u16 v64, v21, s[40:43], 0 offen
	buffer_load_u16 v73, v22, s[40:43], 0 offen
	buffer_load_u16 v74, v23, s[40:43], 0 offen
	buffer_load_u16 v75, v24, s[40:43], 0 offen
	buffer_load_u16 v76, v76, s[40:43], 0 offen
	v_add_lshl_u32 v19, s0, v31, 1
	v_add_lshl_u32 v20, s0, v41, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s66
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v21, s0, v43, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s51
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s50
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	s_clause 0x5
	buffer_load_u16 v77, v77, s[40:43], 0 offen
	buffer_load_u16 v78, v78, s[40:43], 0 offen
	buffer_load_u16 v79, v79, s[40:43], 0 offen
	buffer_load_u16 v80, v19, s[40:43], 0 offen
	buffer_load_u16 v105, v20, s[40:43], 0 offen
	buffer_load_u16 v106, v21, s[40:43], 0 offen
	v_add_nc_u32_e32 v21, s35, v45
	v_add_lshl_u32 v19, s0, v45, 1
	v_add_lshl_u32 v20, s0, v250, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v21, s0, v21, 1
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s70
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s26
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	s_clause 0x4
	buffer_load_u16 v107, v19, s[40:43], 0 offen
	buffer_load_u16 v111, v17, s[40:43], 0 offen
	buffer_load_u16 v110, v18, s[40:43], 0 offen
	buffer_load_u16 v109, v20, s[40:43], 0 offen
	buffer_load_u16 v108, v21, s[40:43], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v195, v48
	s_waitcnt vmcnt(24)
	ds_store_b16 v195, v55 offset:1024
	s_waitcnt vmcnt(17)
	ds_store_b16 v195, v62 offset:2048
	s_waitcnt vmcnt(10)
	ds_store_b16 v195, v77 offset:3072
	ds_store_b16 v196, v49
	ds_store_b16 v196, v56 offset:1024
	ds_store_b16 v196, v63 offset:2048
	s_waitcnt vmcnt(9)
	ds_store_b16 v196, v78 offset:3072
	ds_store_b16 v197, v50
	ds_store_b16 v197, v57 offset:1024
	ds_store_b16 v197, v64 offset:2048
	s_waitcnt vmcnt(8)
	ds_store_b16 v197, v79 offset:3072
	ds_store_b16 v198, v51
	ds_store_b16 v198, v58 offset:1024
	ds_store_b16 v198, v73 offset:2048
	s_waitcnt vmcnt(7)
	ds_store_b16 v198, v80 offset:3072
	ds_store_b16 v199, v52
	ds_store_b16 v199, v59 offset:1024
	ds_store_b16 v199, v74 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b16 v199, v105 offset:3072
	ds_store_b16 v200, v53
	ds_store_b16 v200, v60 offset:1024
	ds_store_b16 v200, v75 offset:2048
	s_waitcnt vmcnt(5)
	ds_store_b16 v200, v106 offset:3072
	ds_store_b16 v201, v54
	ds_store_b16 v201, v61 offset:1024
	ds_store_b16 v201, v76 offset:2048
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
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[17:20], off, off
	scratch_load_b128 v[21:24], off, off offset:16
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[112:115], v129
	ds_load_b128 v[116:119], v2
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[121:128], v[17:24], v[112:119], v[121:128]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[17:20], off, off offset:32
	scratch_load_b128 v[21:24], off, off offset:48
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[112:115], v5
	ds_load_b128 v[116:119], v8
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[121:128], v[17:24], v[112:119], v[121:128]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[17:20], off, off offset:64
	scratch_load_b128 v[21:24], off, off offset:80
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[112:115], v9
	ds_load_b128 v[116:119], v12
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[121:128], v[17:24], v[112:119], v[121:128]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[17:20], off, off offset:96
	scratch_load_b128 v[21:24], off, off offset:112
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[112:115], v15
	ds_load_b128 v[116:119], v16
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[121:128], v[17:24], v[112:119], v[121:128]
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v18, off, off offset:128
	scratch_load_b32 v19, off, off offset:132
	scratch_load_b32 v20, off, off offset:136
	scratch_load_b32 v21, off, off offset:140
	scratch_load_b32 v22, off, off offset:144
	scratch_load_b32 v23, off, off offset:148
	scratch_load_b32 v24, off, off offset:152
	v_lshrrev_b32_e32 v17, 4, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v17, s65, v17
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s18, v17
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v98, s31, v17
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s99, s5, vcc_lo
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_and_not1_b32 vcc_lo, exec_lo, s58
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(6)
	v_or_b32_e32 v18, s65, v18
	s_waitcnt vmcnt(5)
	v_or_b32_e32 v19, s65, v19
	s_waitcnt vmcnt(4)
	v_or_b32_e32 v20, s65, v20
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v21, s65, v21
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v22, s65, v22
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v23, s65, v23
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v24, s65, v24
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s0, s18, v18
	v_cmp_gt_i32_e64 s1, s18, v19
	v_cmp_gt_i32_e64 s3, s18, v20
	v_cmp_gt_i32_e64 s6, s18, v21
	v_cmp_gt_i32_e64 s7, s18, v22
	v_cmp_gt_i32_e64 s8, s18, v23
	v_cmp_gt_i32_e64 s9, s18, v24
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v99, s31, v18
	v_add_nc_u32_e32 v100, s31, v19
	v_add_nc_u32_e32 v101, s31, v20
	v_add_nc_u32_e32 v102, s31, v21
	v_add_nc_u32_e32 v103, s31, v22
	v_add_nc_u32_e32 v104, s31, v23
	v_add_nc_u32_e32 v112, s31, v24
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s97, s5, s0
	s_and_b32 s95, s5, s1
	s_and_b32 s93, s5, s3
	s_and_b32 s100, s5, s6
	s_and_b32 s98, s5, s7
	s_and_b32 s96, s5, s8
	s_and_b32 s94, s5, s9
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e32 vcc_lo, v205, v98
	v_cmp_le_i32_e64 s0, v205, v99
	v_cmp_le_i32_e64 s1, v205, v100
	v_cmp_le_i32_e64 s3, v205, v101
	v_cmp_le_i32_e64 s6, v205, v102
	v_cmp_le_i32_e64 s7, v205, v103
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s10, s99, vcc_lo
	s_and_b32 s0, s97, s0
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s8, v205, v104
	v_cmp_le_i32_e64 s9, v205, v112
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s1, s95, s1
	s_and_b32 s3, s93, s3
	s_and_not1_b32 s11, s99, exec_lo
	s_and_b32 s10, s10, exec_lo
	s_and_not1_b32 s12, s97, exec_lo
	s_and_b32 s0, s0, exec_lo
	s_and_b32 s6, s100, s6
	s_and_b32 s7, s98, s7
	s_or_b32 s99, s11, s10
	s_or_b32 s97, s12, s0
	s_and_not1_b32 s0, s95, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s10, s93, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s8, s96, s8
	s_and_b32 s9, s94, s9
	s_or_b32 s95, s0, s1
	s_or_b32 s93, s10, s3
	s_and_not1_b32 s0, s100, exec_lo
	s_and_b32 s1, s6, exec_lo
	s_and_not1_b32 s3, s98, exec_lo
	s_and_b32 s6, s7, exec_lo
	s_or_b32 s100, s0, s1
	s_or_b32 s98, s3, s6
	s_and_not1_b32 s0, s96, exec_lo
	s_and_b32 s1, s8, exec_lo
	s_and_not1_b32 s3, s94, exec_lo
	s_and_b32 s6, s9, exec_lo
	s_or_b32 s96, s0, s1
	s_or_b32 s94, s3, s6
.LBB0_10:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 677 17 is_stmt 1              ; attention_backward.py:677:17
	s_and_not1_b32 vcc_lo, exec_lo, s57
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v17, s29, v98
	v_subrev_nc_u32_e32 v18, s29, v99
	v_subrev_nc_u32_e32 v19, s29, v100
	v_subrev_nc_u32_e32 v20, s29, v101
	v_subrev_nc_u32_e32 v21, s29, v102
	v_subrev_nc_u32_e32 v22, s29, v103
	.loc	1 678 30 is_stmt 0              ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v205, v17
	v_cmp_ge_i32_e64 s0, v205, v18
	.loc	1 679 47 is_stmt 1              ; attention_backward.py:679:47
	v_add_nc_u32_e32 v17, s30, v98
	v_add_nc_u32_e32 v18, s30, v99
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v23, s29, v104
	v_subrev_nc_u32_e32 v24, s29, v112
	.loc	1 678 30 is_stmt 0              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s1, v205, v19
	v_cmp_ge_i32_e64 s3, v205, v20
	.loc	1 679 47 is_stmt 1              ; attention_backward.py:679:47
	v_add_nc_u32_e32 v19, s30, v100
	v_add_nc_u32_e32 v20, s30, v101
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s6, v205, v21
	v_cmp_ge_i32_e64 s7, v205, v22
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v21, s30, v102
	v_add_nc_u32_e32 v22, s30, v103
	.loc	1 679 30 is_stmt 0              ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s10, v205, v17
	v_cmp_le_i32_e64 s11, v205, v18
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s8, v205, v23
	v_cmp_ge_i32_e64 s9, v205, v24
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v23, s30, v104
	v_add_nc_u32_e32 v24, s30, v112
	.loc	1 679 30 is_stmt 0              ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s12, v205, v19
	v_cmp_le_i32_e64 s13, v205, v20
	v_cmp_le_i32_e64 s14, v205, v21
	v_cmp_le_i32_e64 s15, v205, v22
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s10, vcc_lo, s10
	s_and_b32 s0, s0, s11
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s16, v205, v23
	v_cmp_le_i32_e64 s17, v205, v24
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s10, s10, s99
	s_and_b32 s0, s0, s97
	s_and_b32 s1, s1, s12
	s_and_b32 s3, s3, s13
	s_and_b32 s1, s1, s95
	s_and_b32 s3, s3, s93
	s_and_b32 s6, s6, s14
	s_and_b32 s7, s7, s15
	s_and_not1_b32 s11, s99, exec_lo
	s_and_b32 s10, s10, exec_lo
	s_and_not1_b32 s12, s97, exec_lo
	s_and_b32 s0, s0, exec_lo
	s_and_b32 s6, s6, s100
	s_and_b32 s7, s7, s98
	s_and_b32 s8, s8, s16
	s_and_b32 s9, s9, s17
	s_or_b32 s99, s11, s10
	s_or_b32 s97, s12, s0
	s_and_not1_b32 s0, s95, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s10, s93, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s8, s8, s96
	s_and_b32 s9, s9, s94
	s_or_b32 s95, s0, s1
	s_or_b32 s93, s10, s3
	s_and_not1_b32 s0, s100, exec_lo
	s_and_b32 s1, s6, exec_lo
	s_and_not1_b32 s3, s98, exec_lo
	s_and_b32 s6, s7, exec_lo
	s_or_b32 s100, s0, s1
	s_or_b32 s98, s3, s6
	s_and_not1_b32 s0, s96, exec_lo
	s_and_b32 s1, s8, exec_lo
	s_and_not1_b32 s3, s94, exec_lo
	s_and_b32 s6, s9, exec_lo
	s_or_b32 s96, s0, s1
	s_or_b32 s94, s3, s6
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
	scratch_load_b64 v[17:18], off, off offset:476 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v18, 31, v17
	v_add_co_u32 v17, vcc_lo, s20, v17
	v_add_co_ci_u32_e64 v18, null, s21, v18, vcc_lo
	global_load_d16_u8 v101, v[17:18], off
.LBB0_14:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s97
	s_cbranch_execz .LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[17:18], off, off offset:420 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v18, 31, v17
	v_add_co_u32 v17, vcc_lo, s20, v17
	v_add_co_ci_u32_e64 v18, null, s21, v18, vcc_lo
	global_load_d16_hi_u8 v100, v[17:18], off
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
	scratch_load_b64 v[17:18], off, off offset:428 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v18, 31, v17
	v_add_co_u32 v17, vcc_lo, s20, v17
	v_add_co_ci_u32_e64 v18, null, s21, v18, vcc_lo
	global_load_d16_hi_u8 v98, v[17:18], off
.LBB0_18:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s93
	s_cbranch_execz .LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[17:18], off, off offset:436 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v18, 31, v17
	v_add_co_u32 v17, vcc_lo, s20, v17
	v_add_co_ci_u32_e64 v18, null, s21, v18, vcc_lo
	global_load_d16_u8 v98, v[17:18], off
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
	scratch_load_b64 v[17:18], off, off offset:444 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v18, 31, v17
	v_add_co_u32 v17, vcc_lo, s20, v17
	v_add_co_ci_u32_e64 v18, null, s21, v18, vcc_lo
	global_load_d16_hi_u8 v101, v[17:18], off
.LBB0_22:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s98
	s_cbranch_execz .LBB0_24
; %bb.23:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[17:18], off, off offset:452 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v18, 31, v17
	v_add_co_u32 v17, vcc_lo, s20, v17
	v_add_co_ci_u32_e64 v18, null, s21, v18, vcc_lo
	global_load_d16_u8 v100, v[17:18], off
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
	scratch_load_b64 v[17:18], off, off offset:460 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v18, 31, v17
	v_add_co_u32 v17, vcc_lo, s20, v17
	v_add_co_ci_u32_e64 v18, null, s21, v18, vcc_lo
	global_load_d16_hi_u8 v99, v[17:18], off
.LBB0_26:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s94
	s_cbranch_execz .LBB0_7
; %bb.27:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[17:18], off, off offset:468 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v18, 31, v17
	v_add_co_u32 v17, vcc_lo, s20, v17
	v_add_co_ci_u32_e64 v18, null, s21, v18, vcc_lo
	global_load_d16_u8 v99, v[17:18], off
	s_branch .LBB0_7
.LBB0_28:                               ; %Flow353
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v47, off, off offset:484
	scratch_load_b32 v29, off, off offset:488
	scratch_load_b32 v30, off, off offset:492
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
	v_mov_b32_e32 v72, v40
	v_mov_b32_e32 v71, v40
	v_mov_b32_e32 v70, v40
	v_mov_b32_e32 v69, v40
	v_mov_b32_e32 v68, v40
	v_mov_b32_e32 v67, v40
	v_mov_b32_e32 v66, v40
	v_mov_b32_e32 v65, v40
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
.LBB0_30:                               ; %._crit_edge181
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v0, 4, v29
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v16, s35, v47
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s41, s37, 0xffff
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, v0, v30
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_mov_b32 s40, s36
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v1, 46, v0
	v_or_b32_e32 v15, 2, v0
	v_or_b32_e32 v14, 4, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v17, v16, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s16, s35, v0
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e32 vcc_lo, s33, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s17, s35, v15
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v19, v16, v14
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v17, v17, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v13, 6, v0
	.loc	1 580 22 is_stmt 0              ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s5, vcc_lo
	.loc	1 753 13 is_stmt 1              ; attention_backward.py:753:13
	v_add_nc_u32_e32 v18, v16, v15
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s18, s35, v14
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v12, 8, v0
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s5, s16
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v19, v19, s34, 2
	v_add_lshl_u32 v18, v18, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v11, 10, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s5, s17
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v20, v16, v13
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v10, 12, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s5, s18
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v21, v16, v12
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s19, s35, v13
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v22, v16, v11
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s20, s35, v12
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v89, v17, s[40:43], 0 offen
	v_add_lshl_u32 v17, v20, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v9, 14, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v23, v16, v10
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s21, s35, v11
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v90, v18, s[40:43], 0 offen
	buffer_store_b32 v91, v19, s[40:43], 0 offen
	v_add_lshl_u32 v18, v21, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v8, 32, v0
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s5, s19
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s22, s35, v10
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	v_add_lshl_u32 v19, v22, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v7, 34, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s5, s20
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v24, v16, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v23, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v6, 36, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s5, s21
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v25, v16, v8
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s23, s35, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s5, s22
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v26, v16, v7
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s24, s35, v8
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s16
	s_clause 0x1
	buffer_store_b32 v92, v17, s[40:43], 0 offen
	buffer_store_b32 v93, v18, s[40:43], 0 offen
	v_add_lshl_u32 v17, v24, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v5, 38, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v27, v16, v6
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s25, s35, v7
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v18, v25, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v4, 40, v0
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s5, s23
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s26, s35, v6
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v94, v19, s[40:43], 0 offen
	buffer_store_b32 v95, v20, s[40:43], 0 offen
	v_add_lshl_u32 v19, v26, s34, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v21, s33, v47
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v3, 42, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s5, s24
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v28, v16, v5
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v27, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v2, 44, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s5, s25
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v29, v16, v4
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s27, s35, v5
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s5, s26
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v30, v16, v3
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s28, s35, v4
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s16
	s_clause 0x1
	buffer_store_b32 v96, v17, s[40:43], 0 offen
	buffer_store_b32 v81, v18, s[40:43], 0 offen
	v_add_lshl_u32 v17, v28, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s15, s33, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v31, v16, v2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v0, v21, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s29, s35, v3
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v18, v29, s34, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v16, v16, v1
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s5, s27
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s30, s35, v2
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v82, v19, s[40:43], 0 offen
	buffer_store_b32 v83, v20, s[40:43], 0 offen
	v_add_lshl_u32 v19, v30, s34, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s5, s28
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s31, s35, v1
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v31, s34, 2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v0, v0, s56, 2
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s5, s29
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v16, v16, s34, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s5, s30
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s15, s5, s15
	.loc	1 580 44 is_stmt 0              ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s12, s33, v13
	v_cmp_gt_i32_e64 s14, s33, v15
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s5, s31
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v15, v21, v15
	v_add_nc_u32_e32 v13, v21, v13
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s15
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s11, s33, v12
	v_cmp_gt_i32_e64 s13, s33, v14
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v14, v21, v14
	v_add_nc_u32_e32 v12, v21, v12
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v16, 0x80000000, v16, s16
	s_clause 0x4
	buffer_store_b32 v84, v17, s[40:43], 0 offen
	buffer_store_b32 v85, v18, s[40:43], 0 offen
	buffer_store_b32 v86, v19, s[40:43], 0 offen
	buffer_store_b32 v87, v20, s[40:43], 0 offen
	buffer_store_b32 v88, v16, s[40:43], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s41, s39, 0xffff
	s_mov_b32 s40, s38
	v_add_lshl_u32 v15, v15, s56, 2
	buffer_store_b32 v65, v0, s[40:43], 0 offen
	v_add_lshl_u32 v0, v13, s56, 2
	v_add_lshl_u32 v14, v14, s56, 2
	v_add_lshl_u32 v12, v12, s56, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s14, s5, s14
	s_and_b32 s12, s5, s12
	s_and_b32 s13, s5, s13
	s_and_b32 s11, s5, s11
	.loc	1 580 44 is_stmt 0              ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s8, s33, v9
	v_cmp_gt_i32_e64 s10, s33, v11
	.loc	1 759 13 is_stmt 1              ; attention_backward.py:759:13
	v_add_nc_u32_e32 v11, v21, v11
	v_add_nc_u32_e32 v9, v21, v9
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v15, 0x80000000, v15, s14
	v_cndmask_b32_e64 v0, 0x80000000, v0, s12
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
	buffer_store_b32 v66, v15, s[40:43], 0 offen
	buffer_store_b32 v67, v14, s[40:43], 0 offen
	v_add_lshl_u32 v11, v11, s56, 2
	s_clause 0x1
	buffer_store_b32 v68, v0, s[40:43], 0 offen
	buffer_store_b32 v69, v12, s[40:43], 0 offen
	v_add_lshl_u32 v0, v9, s56, 2
	v_add_lshl_u32 v10, v10, s56, 2
	v_add_lshl_u32 v8, v8, s56, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s10, s5, s10
	s_and_b32 s8, s5, s8
	s_and_b32 s9, s5, s9
	s_and_b32 s7, s5, s7
	.loc	1 580 44 is_stmt 0              ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s3, s33, v5
	v_cmp_gt_i32_e64 s6, s33, v7
	.loc	1 759 13 is_stmt 1              ; attention_backward.py:759:13
	v_add_nc_u32_e32 v7, v21, v7
	v_add_nc_u32_e32 v5, v21, v5
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v11, 0x80000000, v11, s10
	v_cndmask_b32_e64 v0, 0x80000000, v0, s8
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s2, s33, v4
	v_cmp_gt_i32_e64 s4, s33, v6
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v6, v21, v6
	v_add_nc_u32_e32 v4, v21, v4
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v10, 0x80000000, v10, s9
	v_cndmask_b32_e64 v8, 0x80000000, v8, s7
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s1, s33, v3
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v3, v21, v3
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s0, s33, v2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v2, v21, v2
	v_add_nc_u32_e32 v1, v21, v1
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_clause 0x1
	buffer_store_b32 v70, v11, s[40:43], 0 offen
	buffer_store_b32 v71, v10, s[40:43], 0 offen
	v_add_lshl_u32 v7, v7, s56, 2
	s_clause 0x1
	buffer_store_b32 v72, v0, s[40:43], 0 offen
	buffer_store_b32 v33, v8, s[40:43], 0 offen
	v_add_lshl_u32 v0, v5, s56, 2
	v_add_lshl_u32 v6, v6, s56, 2
	v_add_lshl_u32 v4, v4, s56, 2
	v_add_lshl_u32 v3, v3, s56, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s6, s5, s6
	s_and_b32 s3, s5, s3
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v2, v2, s56, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s4, s5, s4
	s_and_b32 s2, s5, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v1, v1, s56, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s6
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s1, s5, s1
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 580 22                        ; attention_backward.py:580:22
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
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 500
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 101
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 500
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19844
; TotalNumSgprs: 103
; NumVgprs: 256
; ScratchSize: 500
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 500
    .sgpr_count:     103
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 124
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
