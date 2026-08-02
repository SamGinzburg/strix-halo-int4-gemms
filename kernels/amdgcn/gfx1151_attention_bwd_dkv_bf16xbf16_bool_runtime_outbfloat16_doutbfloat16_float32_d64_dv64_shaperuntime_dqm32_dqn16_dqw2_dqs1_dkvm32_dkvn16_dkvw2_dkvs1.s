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
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_add_nc_u32 v215, 0, v19
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
	v_add_nc_u32_e32 v216, 0, v21
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v21, s33, v28
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v26, 0x2d0, v19
	v_add_nc_u32_e32 v219, 0, v25
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v25, 0x80000000, v20, vcc_lo
	v_lshlrev_b32_e32 v20, 1, v28
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v218, 0, v23
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v23, 1, v24
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v27, 0x360, v19
	v_xor_b32_e32 v19, 0x3f0, v19
	v_add_nc_u32_e32 v217, 0, v22
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v22, s33, v21
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s43, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v23, 0x80000000, v23 :: v_dual_add_nc_u32 v220, 0, v26
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s42, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v221, 0, v27
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v21, 1, v21
	v_cndmask_b32_e32 v27, 0x80000000, v20, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s41, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v222, 0, v19
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
	ds_store_b16 v215, v1
	s_waitcnt vmcnt(9)
	ds_store_b16 v215, v9 offset:1024
	ds_store_b16 v216, v2
	s_waitcnt vmcnt(8)
	ds_store_b16 v216, v10 offset:1024
	ds_store_b16 v217, v3
	s_waitcnt vmcnt(7)
	ds_store_b16 v217, v11 offset:1024
	ds_store_b16 v218, v4
	s_waitcnt vmcnt(6)
	ds_store_b16 v218, v12 offset:1024
	ds_store_b16 v219, v5
	s_waitcnt vmcnt(5)
	ds_store_b16 v219, v13 offset:1024
	ds_store_b16 v220, v6
	s_waitcnt vmcnt(4)
	ds_store_b16 v220, v14 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v221, v7
	s_waitcnt vmcnt(2)
	ds_store_b16 v221, v16 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v222, v8
	s_waitcnt vmcnt(0)
	ds_store_b16 v222, v15 offset:1024
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
	v_or_b32_e32 v225, s12, v47
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
	v_cmp_gt_i32_e64 s5, s19, v225
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshrrev_b32_e32 v48, 1, v3
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_sub_i32 s19, s7, s8
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cmp_lt_i32 s19, 1
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b16 v215, v20
	s_waitcnt vmcnt(7)
	ds_store_b16 v215, v28 offset:1024
	ds_store_b16 v216, v19
	s_waitcnt vmcnt(6)
	ds_store_b16 v216, v27 offset:1024
	ds_store_b16 v217, v18
	s_waitcnt vmcnt(5)
	ds_store_b16 v217, v26 offset:1024
	ds_store_b16 v218, v17
	s_waitcnt vmcnt(4)
	ds_store_b16 v218, v25 offset:1024
	ds_store_b16 v219, v16
	s_waitcnt vmcnt(3)
	ds_store_b16 v219, v24 offset:1024
	ds_store_b16 v220, v15
	s_waitcnt vmcnt(2)
	ds_store_b16 v220, v23 offset:1024
	ds_store_b16 v221, v14
	s_waitcnt vmcnt(1)
	ds_store_b16 v221, v22 offset:1024
	ds_store_b16 v222, v13
	s_waitcnt vmcnt(0)
	ds_store_b16 v222, v21 offset:1024
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
	v_lshl_or_b32 v32, v3, 6, v4
	s_xor_b32 s8, s13, s7
	v_dual_mov_b32 v65, 0 :: v_dual_and_b32 v12, 24, v0
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
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	s_load_b256 s[20:27], s[0:1], 0x30
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[21:24], off offset:156
	scratch_store_b128 off, v[25:28], off offset:172
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[25:28], v10
	ds_load_b128 v[21:24], v9
	v_and_b32_e32 v9, 2, v0
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
	s_mov_b32 s42, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[21:24], off offset:188
	scratch_store_b128 off, v[25:28], off offset:204
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[25:28], v8
	ds_load_b128 v[21:24], v7
	v_mul_lo_u32 v7, s8, v225
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s49, s27, 0xffff
	s_mov_b32 s48, s26
	s_and_b32 s53, s23, 0xffff
	s_mov_b32 s52, s22
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v47, off offset:540
	scratch_store_b32 off, v48, off offset:548
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[21:24], off offset:220
	scratch_store_b128 off, v[25:28], off offset:236
	ds_load_b128 v[25:28], v6
	ds_load_b128 v[21:24], v5
	v_mad_u64_u32 v[4:5], null, s47, v14, v[7:8]
	v_lshrrev_b32_e32 v6, 2, v29
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[4:5], off offset:476
	scratch_store_b32 off, v15, off offset:132
	v_mad_u64_u32 v[4:5], null, s47, v15, v[7:8]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[4:5], off offset:484
	scratch_store_b32 off, v16, off offset:136
	v_mad_u64_u32 v[4:5], null, s47, v16, v[7:8]
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[21:24], off offset:252
	scratch_store_b128 off, v[25:28], off offset:268
	v_lshlrev_b32_e32 v27, 3, v47
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[4:5], off offset:492
	scratch_store_b32 off, v17, off offset:140
	v_mad_u64_u32 v[4:5], null, s47, v17, v[7:8]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[4:5], off offset:500
	scratch_store_b32 off, v18, off offset:144
	v_mad_u64_u32 v[4:5], null, s47, v18, v[7:8]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[4:5], off offset:508
	scratch_store_b32 off, v19, off offset:148
	v_mad_u64_u32 v[4:5], null, s47, v19, v[7:8]
	v_lshrrev_b32_e32 v8, 4, v3
	v_mov_b32_e32 v36, v32
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v89, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[10:11], null, s47, v20, v[7:8]
	scratch_store_b64 off, v[4:5], off offset:516 ; 8-byte Folded Spill
	v_lshlrev_b32_e32 v4, 5, v0
	v_lshlrev_b32_e32 v5, 2, v0
	v_mad_u64_u32 v[15:16], null, s47, v13, v[7:8]
	v_or3_b32 v14, v6, v8, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v4, 0x180, v4
	v_and_b32_e32 v5, 52, v5
	scratch_store_b64 off, v[10:11], off offset:524 ; 8-byte Folded Spill
	v_dual_mov_b32 v66, v46 :: v_dual_lshlrev_b32 v11, 3, v0
	v_lshrrev_b32_e32 v6, 1, v29
	v_lshrrev_b32_e32 v10, 5, v3
	v_or3_b32 v4, v5, v9, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v68, v46 :: v_dual_and_b32 v5, 48, v11
	v_dual_mov_b32 v70, v46 :: v_dual_lshlrev_b32 v7, 1, v12
	scratch_store_b64 off, v[15:16], off offset:532 ; 8-byte Folded Spill
	v_or3_b32 v15, v4, v6, v10
	v_bfe_i32 v10, v0, 3, 1
	v_xor_b32_e32 v7, v5, v7
	v_cndmask_b32_e64 v11, 0x420, 0, vcc_lo
	v_xor_b32_e32 v9, 0x90, v14
	v_xor_b32_e32 v4, 0x120, v14
	v_lshrrev_b32_e32 v12, 1, v12
	v_lshl_or_b32 v17, v0, 6, v7
	v_lshl_or_b32 v7, v2, 6, v5
	v_and_or_b32 v10, 0x210, v10, v11
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v20, off offset:152
	scratch_store_b32 off, v14, off offset:284
	scratch_store_b32 off, v15, off offset:288
	v_xor_b32_e32 v6, 0x1b0, v14
	v_xor_b32_e32 v19, v10, v7
	v_lshlrev_b32_e32 v7, 1, v47
	v_dual_mov_b32 v67, v46 :: v_dual_lshlrev_b32 v10, 2, v29
	v_lshl_or_b32 v2, v2, 7, v12
	v_add_nc_u32_e32 v4, 0, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v243, 0, v3, v7
	v_or3_b32 v20, v7, v10, v3
	v_dual_mov_b32 v72, v46 :: v_dual_add_nc_u32 v7, 0, v9
	v_or3_b32 v24, v2, v1, v8
	v_dual_mov_b32 v58, v46 :: v_dual_add_nc_u32 v9, s33, v0
	.loc	1 535 17                        ; attention_backward.py:535:17
	scratch_store_b32 off, v7, off offset:308 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v7, s35, v0
	scratch_store_b32 off, v4, off offset:320 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v6
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v6, s33, v9
	v_lshl_or_b32 v21, v47, 6, v5
	v_mov_b32_e32 v69, v46
	v_mov_b32_e32 v59, v46
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v4, off offset:324
	scratch_store_b32 off, v6, off offset:332
	scratch_store_b32 off, v9, off offset:316
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v4, s35, v7
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v6, s33, v6
	v_xor_b32_e32 v5, 0x90, v20
	v_xor_b32_e32 v1, 0x1b0, v20
	v_xor_b32_e32 v2, 16, v21
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v4, off offset:328
	scratch_store_b32 off, v29, off offset:544
	scratch_store_b32 off, v6, off offset:340
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v4, s35, v4
	v_dual_mov_b32 v61, v46 :: v_dual_add_nc_u32 v6, s33, v6
	v_xor_b32_e32 v8, 32, v21
	v_add_nc_u32_e32 v232, 0, v5
	scratch_store_b32 off, v4, off offset:336 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, s35, v4
	v_dual_mov_b32 v92, v46 :: v_dual_add_nc_u32 v5, s33, v6
	v_add_nc_u32_e32 v187, 0, v1
	v_add_nc_u32_e32 v1, 0, v2
	scratch_store_b32 off, v4, off offset:344 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, s35, v4
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v17, off offset:292
	scratch_store_b32 off, v19, off offset:296
	scratch_store_b32 off, v20, off offset:300
	scratch_store_b32 off, v21, off offset:304
	v_xor_b32_e32 v18, 16, v19
	v_xor_b32_e32 v10, 32, v19
	v_xor_b32_e32 v12, 48, v19
	v_xor_b32_e32 v19, 0x120, v20
	v_xor_b32_e32 v20, 48, v21
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:360
	scratch_store_b32 off, v4, off offset:352
	v_dual_mov_b32 v94, v46 :: v_dual_add_nc_u32 v1, s35, v4
	v_dual_mov_b32 v91, v46 :: v_dual_add_nc_u32 v4, 0, v8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:348
	scratch_store_b32 off, v1, off offset:364
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v2, s33, v5
	scratch_store_b32 off, v4, off offset:372 ; 4-byte Folded Spill
	v_dual_mov_b32 v93, v46 :: v_dual_add_nc_u32 v4, 0, v20
	v_xor_b32_e32 v3, 48, v24
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v5, off offset:356
	scratch_store_b32 off, v2, off offset:368
	scratch_store_b32 off, v4, off offset:376
	v_dual_mov_b32 v95, v46 :: v_dual_add_nc_u32 v4, s35, v1
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v2, s33, v2
	v_add_nc_u32_e32 v25, 0, v3
	scratch_store_b32 off, v4, off offset:380 ; 4-byte Folded Spill
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v3, s35, v4
	scratch_store_b32 off, v2, off offset:384 ; 4-byte Folded Spill
	v_dual_mov_b32 v85, v46 :: v_dual_add_nc_u32 v2, s33, v2
	v_mov_b32_e32 v82, v46
	scratch_store_b32 off, v3, off offset:388 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s35, v3
	scratch_store_b32 off, v2, off offset:392 ; 4-byte Folded Spill
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v2, s33, v2
	scratch_store_b32 off, v24, off offset:396 ; 4-byte Folded Spill
	v_mov_b32_e32 v84, v46
	v_mov_b32_e32 v88, v46
	v_xor_b32_e32 v1, 64, v24
	scratch_store_b32 off, v2, off offset:404 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s33, v2
	scratch_store_b32 off, v3, off offset:400 ; 4-byte Folded Spill
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v3, s35, v3
	v_dual_mov_b32 v87, v46 :: v_dual_add_nc_u32 v26, 0, v1
	scratch_store_b32 off, v2, off offset:412 ; 4-byte Folded Spill
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v2, s33, v2
	scratch_store_b32 off, v3, off offset:408 ; 4-byte Folded Spill
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v3, s35, v3
	v_xor_b32_e32 v1, 0x60, v24
	v_xor_b32_e32 v16, 32, v17
	scratch_store_b32 off, v2, off offset:420 ; 4-byte Folded Spill
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v2, s33, v2
	scratch_store_b32 off, v3, off offset:416 ; 4-byte Folded Spill
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v3, s35, v3
	v_dual_mov_b32 v63, v46 :: v_dual_add_nc_u32 v230, 0, v10
	scratch_store_b32 off, v2, off offset:428 ; 4-byte Folded Spill
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v2, s33, v2
	scratch_store_b32 off, v3, off offset:424 ; 4-byte Folded Spill
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v3, s35, v3
	v_add_nc_u32_e32 v10, 0, v1
	v_dual_mov_b32 v64, v46 :: v_dual_add_nc_u32 v223, 0, v16
	scratch_store_b32 off, v2, off offset:436 ; 4-byte Folded Spill
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v2, s33, v2
	scratch_store_b32 off, v3, off offset:432 ; 4-byte Folded Spill
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v3, s35, v3
	scratch_store_b32 off, v27, off offset:440 ; 4-byte Folded Spill
	v_xor_b32_e32 v4, 0x50, v24
	scratch_store_b32 off, v2, off offset:448 ; 4-byte Folded Spill
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v2, s33, v2
	scratch_store_b32 off, v3, off offset:444 ; 4-byte Folded Spill
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v3, s35, v3
	v_xor_b32_e32 v22, 16, v24
	v_xor_b32_e32 v23, 32, v24
	scratch_store_b32 off, v2, off offset:456 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s33, v2
	scratch_store_b32 off, v3, off offset:452 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s35, v3
	v_add_nc_u32_e32 v9, 0, v4
	v_xor_b32_e32 v4, 0x70, v24
	scratch_store_b32 off, v2, off offset:464 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s33, v2
	scratch_store_b32 off, v3, off offset:460 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s35, v3
	v_xor_b32_e32 v13, 16, v15
	v_xor_b32_e32 v14, 32, v15
	scratch_store_b32 off, v2, off offset:472 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s33, v2
	scratch_store_b32 off, v3, off offset:468 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s35, v3
	v_xor_b32_e32 v11, 48, v15
	v_xor_b32_e32 v15, 16, v17
	v_mov_b32_e32 v40, v2
	v_xor_b32_e32 v1, 0x90, v27
	v_mov_b32_e32 v29, v3
	v_add_nc_u32_e32 v3, s35, v3
	v_add_nc_u32_e32 v2, s33, v2
	v_xor_b32_e32 v17, 48, v17
	v_add_nc_u32_e32 v16, 0, v1
	v_xor_b32_e32 v1, 0x1b0, v27
	v_dual_mov_b32 v60, v46 :: v_dual_add_nc_u32 v21, 0, v13
	v_dual_mov_b32 v189, v2 :: v_dual_add_nc_u32 v2, s33, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v20, 0, v1
	v_xor_b32_e32 v1, 0x2d0, v27
	v_dual_mov_b32 v86, v46 :: v_dual_add_nc_u32 v13, 0, v4
	v_dual_mov_b32 v39, v2 :: v_dual_add_nc_u32 v2, s33, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v24, 0, v1
	v_xor_b32_e32 v1, 0x3f0, v27
	v_xor_b32_e32 v4, 0x120, v27
	v_dual_mov_b32 v62, v46 :: v_dual_add_nc_u32 v253, 0, v11
	v_mov_b32_e32 v56, v2
	v_add_nc_u32_e32 v30, 0, v1
	v_xor_b32_e32 v1, 32, v32
	v_add_nc_u32_e32 v2, s33, v2
	v_dual_mov_b32 v96, v46 :: v_dual_add_nc_u32 v193, 0, v22
	v_dual_mov_b32 v83, v46 :: v_dual_add_nc_u32 v22, 0, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v34, 0, v1
	v_xor_b32_e32 v1, 64, v32
	v_dual_mov_b32 v33, v2 :: v_dual_add_nc_u32 v2, s33, v2
	v_dual_mov_b32 v71, v46 :: v_dual_add_nc_u32 v252, 0, v14
	v_add_nc_u32_e32 v38, 0, v1
	v_xor_b32_e32 v1, 0x60, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v35, v2 :: v_dual_add_nc_u32 v2, s33, v2
	v_dual_mov_b32 v90, v46 :: v_dual_add_nc_u32 v227, 0, v18
	v_add_nc_u32_e32 v44, 0, v1
	v_add_nc_u32_e32 v1, s35, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v11, v2 :: v_dual_add_nc_u32 v2, s33, v2
	v_add_nc_u32_e32 v231, 0, v12
	v_dual_mov_b32 v55, v1 :: v_dual_add_nc_u32 v186, 0, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v12, v2 :: v_dual_add_nc_u32 v1, s35, v1
	v_add_nc_u32_e32 v2, s33, v2
	v_add_nc_u32_e32 v254, 0, v15
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v15, v48, v47
	v_mov_b32_e32 v229, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v42, v2 :: v_dual_add_nc_u32 v1, s35, v1
	v_add_nc_u32_e32 v2, s33, v2
	v_dual_mov_b32 v190, v1 :: v_dual_add_nc_u32 v1, s35, v1
	v_add_nc_u32_e32 v214, 0, v17
	v_add_nc_u32_e32 v17, 0, v4
	v_xor_b32_e32 v4, 0x240, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v43, v1 :: v_dual_add_nc_u32 v18, s33, v2
	v_dual_mov_b32 v28, v2 :: v_dual_add_nc_u32 v1, s35, v1
	v_add_nc_u32_e32 v23, 0, v4
	v_xor_b32_e32 v4, 0x360, v27
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v233, v1 :: v_dual_add_nc_u32 v236, s33, v18
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v7, off offset:312 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v27, 0, v4
	v_xor_b32_e32 v4, 16, v32
	v_add_nc_u32_e32 v237, s33, v236
	v_mov_b32_e32 v235, v1
	v_add_nc_u32_e32 v1, s35, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v31, 0, v4
	v_xor_b32_e32 v4, 48, v32
	v_dual_mov_b32 v238, v1 :: v_dual_add_nc_u32 v1, s35, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v37, 0, v4
	v_xor_b32_e32 v4, 0x50, v32
	v_dual_mov_b32 v14, v1 :: v_dual_add_nc_u32 v1, s35, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v41, 0, v4
	v_xor_b32_e32 v4, 0x70, v32
	v_dual_mov_b32 v32, v3 :: v_dual_add_nc_u32 v19, s35, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v226, v1 :: v_dual_add_nc_u32 v45, 0, v4
	v_add_nc_u32_e32 v234, s35, v19
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
	scratch_load_b32 v1, off, off offset:284 ; 4-byte Folded Reload
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
	v_cmp_ne_u16_e64 s3, 0, v47.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v47, 0, 1, s0
	s_and_b32 s0, s99, s1
	v_mov_b16_e64 v128.h, v195.l
	v_cndmask_b32_e64 v48, 0, 1, s0
	s_and_b32 s0, s98, s3
	v_lshlrev_b16 v47.l, 8, v47.l
	v_mov_b16_e64 v129.h, v153.l
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
	scratch_load_b32 v1, off, off offset:308 ; 4-byte Folded Reload
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
	v_cmp_ne_u16_e64 s3, 0, v47.l
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
	s_and_b32 s1, s94, s3
	v_lshlrev_b16 v47.l, 8, v47.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v47.l, v48.l, v47.l
	v_cndmask_b32_e64 v48, 0, 1, s1
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s1, s84, s33
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_lshlrev_b16 v48.l, 8, v48.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v48.l, v49.l, v48.l
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v1, v47
	scratch_load_b32 v1, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v1, v47
	scratch_load_b32 v1, off, off offset:324 ; 4-byte Folded Reload
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
	scratch_load_b32 v1, off, off offset:412 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s89
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v48, s1, v1, 1
	scratch_load_b32 v1, off, off offset:428 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	s_clause 0x1
	buffer_load_u16 v141, v47, s[52:55], 0 offen
	buffer_load_u16 v142, v48, s[52:55], 0 offen
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s88
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v48, s1, v40, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v47, s1, v1, 1
	scratch_load_b32 v1, off, off offset:448 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s87
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v143, v47, s[52:55], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v47, s1, v1, 1
	scratch_load_b32 v1, off, off offset:464 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s86
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v144, v47, s[52:55], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v47, s1, v1, 1
	v_mov_b32_e32 v1, v15
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s85
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	s_clause 0x1
	buffer_load_u16 v145, v47, s[52:55], 0 offen
	buffer_load_u16 v146, v48, s[52:55], 0 offen
	v_add_lshl_u32 v47, s1, v39, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s83
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v48, s1, v42, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s82
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v147, v47, s[52:55], 0 offen
	v_add_lshl_u32 v47, s1, v33, 1
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s81
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v148, v47, s[52:55], 0 offen
	v_add_lshl_u32 v47, s1, v11, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s80
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	s_clause 0x1
	buffer_load_u16 v149, v47, s[52:55], 0 offen
	buffer_load_u16 v150, v48, s[52:55], 0 offen
	v_add_lshl_u32 v47, s1, v18, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s78
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_add_lshl_u32 v48, s84, v1, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s79
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v151, v47, s[52:55], 0 offen
	v_add_lshl_u32 v47, s1, v237, 1
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	buffer_load_u16 v152, v47, s[52:55], 0 offen
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v47, s65, v1
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v1, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s65, s65, 32
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s18, v47
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
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
	scratch_load_b32 v1, off, off offset:404 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v51, 0x80000000, v51, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s73
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v52, s1, v1, 1
	scratch_load_b32 v1, off, off offset:420 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v52, 0x80000000, v52, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s72
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v53, s1, v1, 1
	scratch_load_b32 v1, off, off offset:436 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v53, 0x80000000, v53, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s71
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v54, s1, v1, 1
	scratch_load_b32 v1, off, off offset:456 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v54, 0x80000000, v54, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s70
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v73, s1, v1, 1
	scratch_load_b32 v1, off, off offset:472 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v73, 0x80000000, v73, s0
	s_clause 0x7
	buffer_load_u16 v244, v51, s[52:55], 0 offen
	buffer_load_u16 v241, v50, s[52:55], 0 offen
	buffer_load_u16 v247, v49, s[52:55], 0 offen
	buffer_load_u16 v245, v47, s[52:55], 0 offen
	buffer_load_u16 v240, v73, s[52:55], 0 offen
	buffer_load_u16 v242, v54, s[52:55], 0 offen
	buffer_load_u16 v248, v53, s[52:55], 0 offen
	buffer_load_u16 v246, v52, s[52:55], 0 offen
	v_add_lshl_u32 v47, s1, v189, 1
	v_add_lshl_u32 v49, s1, v56, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s69
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v50, s1, v35, 1
	v_add_nc_u32_e32 v54, s33, v237
	v_cndmask_b32_e64 v47, 0x80000000, v47, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s68
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v52, s1, v28, 1
	v_cndmask_b32_e64 v49, 0x80000000, v49, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s67
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v53, s1, v236, 1
	v_cndmask_b32_e64 v50, 0x80000000, v50, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s27
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v54, s1, v54, 1
	v_add_lshl_u32 v73, s1, v12, 1
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s27, s43
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v140.h, v244.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v139.h, v241.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v51, s1, v1, 1
	.loc	1 689 25                        ; attention_backward.py:689:25
	scratch_load_b32 v1, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v138.h, v247.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v137.h, v245.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v144.h, v240.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v51, 0x80000000, v51, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s51
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s51, s43
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v52, 0x80000000, v52, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s66
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v143.h, v242.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v53, 0x80000000, v53, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s50
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s50, s42
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v54, 0x80000000, v54, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s26
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s26, s42
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v73, 0x80000000, v73, s0
	s_clause 0x7
	buffer_load_u16 v250, v50, s[52:55], 0 offen
	buffer_load_u16 v255, v49, s[52:55], 0 offen
	buffer_load_u16 v188, v47, s[52:55], 0 offen
	buffer_load_u16 v228, v51, s[52:55], 0 offen
	buffer_load_u16 v251, v54, s[52:55], 0 offen
	buffer_load_u16 v224, v53, s[52:55], 0 offen
	buffer_load_u16 v191, v52, s[52:55], 0 offen
	buffer_load_u16 v192, v73, s[52:55], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_cndmask_b32_e32 v47, 0x80000000, v48, vcc_lo
	buffer_load_b32 v76, v47, s[24:27], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v77, v47, s[48:51], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(12)
	v_mov_b16_e64 v142.h, v248.l
	s_waitcnt vmcnt(11)
	v_mov_b16_e64 v141.h, v246.l
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v48, v46
	v_mov_b32_e32 v49, v46
	v_mov_b32_e32 v50, v46
	v_mov_b32_e32 v51, v46
	v_mov_b32_e32 v52, v46
	v_mov_b32_e32 v53, v46
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_i32 s65, s59
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v47, 0, v1
	ds_load_u8_d16 v54, v47
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v54, v47 offset:64
	ds_load_u8_d16 v73, v21
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v73, v21 offset:64
	ds_load_u8_d16 v74, v252
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v74, v252 offset:64
	ds_load_u8_d16 v75, v253
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v75, v253 offset:64
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v47, v46
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(10)
	v_mov_b16_e64 v148.h, v250.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e64 v147.h, v255.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v146.h, v188.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v145.h, v228.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v152.h, v251.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v151.h, v224.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v150.h, v191.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v149.h, v192.l
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v104, v53 :: v_dual_mov_b32 v103, v52
	v_dual_mov_b32 v102, v51 :: v_dual_mov_b32 v101, v50
	v_dual_mov_b32 v100, v49 :: v_dual_mov_b32 v99, v48
	v_dual_mov_b32 v98, v47 :: v_dual_mov_b32 v97, v46
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(2)
	v_fma_f32 v47, s63, v105, -v76
	v_fma_f32 v51, s63, v109, -v76
	v_fma_f32 v48, s63, v106, -v76
	v_fma_f32 v49, s63, v107, -v76
	v_fma_f32 v50, s63, v108, -v76
	v_fma_f32 v52, s63, v110, -v76
	v_fma_f32 v53, s63, v111, -v76
	v_fma_f32 v76, s63, v112, -v76
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v51, v51
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v49, v49
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v53, v53
	v_exp_f32_e32 v76, v76
	.loc	1 732 34 is_stmt 1              ; attention_backward.py:732:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v78, 0, v1
	ds_store_b128 v78, v[137:140]
	ds_store_b128 v254, v[141:144]
	ds_store_b128 v223, v[145:148]
	ds_store_b128 v214, v[149:152]
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v79, 0, v1
	ds_load_b128 v[182:185], v79
	ds_load_b128 v[174:177], v79 offset:2048
	ds_load_b128 v[178:181], v227
	ds_load_b128 v[170:173], v227 offset:2048
	ds_load_b128 v[166:169], v230
	ds_load_b128 v[158:161], v230 offset:2048
	ds_load_b128 v[162:165], v231
	ds_load_b128 v[154:157], v231 offset:2048
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v215, v137
	ds_store_b16 v215, v141 offset:1024
	ds_store_b16 v215, v145 offset:2048
	ds_store_b16 v215, v149 offset:3072
	ds_store_b16 v216, v245
	ds_store_b16 v216, v246 offset:1024
	ds_store_b16 v216, v228 offset:2048
	ds_store_b16 v216, v192 offset:3072
	ds_store_b16 v217, v138
	ds_store_b16 v217, v142 offset:1024
	ds_store_b16 v217, v146 offset:2048
	ds_store_b16 v217, v150 offset:3072
	ds_store_b16 v218, v247
	ds_store_b16 v218, v248 offset:1024
	ds_store_b16 v218, v188 offset:2048
	ds_store_b16 v218, v191 offset:3072
	ds_store_b16 v219, v139
	ds_store_b16 v219, v143 offset:1024
	ds_store_b16 v219, v147 offset:2048
	ds_store_b16 v219, v151 offset:3072
	ds_store_b16 v220, v241
	ds_store_b16 v220, v242 offset:1024
	ds_store_b16 v220, v255 offset:2048
	ds_store_b16 v220, v224 offset:3072
	ds_store_b16 v221, v140
	ds_store_b16 v221, v144 offset:1024
	ds_store_b16 v221, v148 offset:2048
	ds_store_b16 v221, v152 offset:3072
	ds_store_b16 v222, v244
	ds_store_b16 v222, v240 offset:1024
	ds_store_b16 v222, v250 offset:2048
	ds_store_b16 v222, v251 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:252
	scratch_load_b128 v[5:8], off, off offset:268
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[201:204], v201
	ds_load_b128 v[205:208], v31
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[1:8], v[201:208], v[97:104]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:220
	scratch_load_b128 v[5:8], off, off offset:236
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[201:204], v34
	ds_load_b128 v[205:208], v37
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[1:8], v[201:208], v[97:104]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:188
	scratch_load_b128 v[5:8], off, off offset:204
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[201:204], v38
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
	scratch_load_b32 v1, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v80, v97, v77
	v_sub_f32_e32 v97, v98, v77
	v_sub_f32_e32 v98, v99, v77
	v_sub_f32_e32 v99, v100, v77
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v100, v47
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_and_b16 v47.l, 1, v54.l
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v101, v101, v77
	v_sub_f32_e32 v102, v102, v77
	v_sub_f32_e32 v103, v103, v77
	v_sub_f32_e32 v77, v104, v77
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v47.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v104, 0, v100, vcc_lo
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v47, v104, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v47, s44, v47
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v80, v47, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v47, v47, v80, 0x7fff
	.loc	1 689 25 is_stmt 1              ; attention_backward.py:689:25
	v_and_b16 v47.l, 1, v54.h
	v_cmp_eq_u16_e64 s0, 1, v47.l
	v_and_b16 v47.l, 1, v73.l
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
	v_bfe_u32 v80, v54, 16, 1
	v_cmp_o_f32_e64 s1, v54, v54
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v54, v54, v80, 0x7fff
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, 0, v1
	ds_store_b16 v51, v47
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v47.l, 0x7fff, v54.h, s1
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v51, v47 offset:512
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_and_b16 v47.h, 1, v74.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e32 vcc_lo, 1, v47.h
	v_and_b16 v47.h, 1, v75.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s0, 1, v47.h
	v_and_b16 v47.h, 1, v73.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v51, v49, v98
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v50, 0, v50, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s1, 1, v47.h
	v_and_b16 v47.h, 1, v74.h
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v51, s44, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v52, 0, v52, s1
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s3, 1, v47.h
	v_and_b16 v47.h, 1, v75.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v54, v51, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v73, v52, v102
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v53, 0, v53, s3
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s6, 1, v47.h
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v51, v51, v54, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_dual_mul_f32 v54, v50, v99 :: v_dual_mul_f32 v73, s44, v73
	v_mul_f32_e32 v74, v53, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v75, 0, v76, s6
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v54, s44, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_cmp_o_f32_e64 s1, v73, v73
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v74, s44, v74
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 720 30 is_stmt 1              ; attention_backward.py:720:30
	v_mul_f32_e32 v76, v75, v77
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s7, v75, v75
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v80, v54, 16, 1
	v_cmp_o_f32_e64 s0, v54, v54
	v_cmp_o_f32_e64 s3, v74, v74
	.loc	1 721 38 is_stmt 0              ; attention_backward.py:721:38
	v_mul_f32_e32 v76, s44, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v54, v54, v80, 0x7fff
	v_bfe_u32 v80, v73, 16, 1
	v_bfe_u32 v77, v76, 16, 1
	v_cmp_o_f32_e64 s6, v76, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v73, v73, v80, 0x7fff
	v_bfe_u32 v80, v74, 16, 1
	v_add3_u32 v76, v76, v77, 0x7fff
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_bfe_u32 v77, v53, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v47.h, 0x7fff, v73.h, s1
	v_add3_u32 v74, v74, v80, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v232, v47
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v47.l, 0x7fff, v51.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v104, v104
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v232, v47 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v47.h, 0x7fff, v74.h, s3
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v73, v50, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v186, v47
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v47.l, 0x7fff, v54.h, s0
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v54, v49, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v186, v47 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v47.h, 0x7fff, v76.h, s6
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v187, v47
	ds_store_b16_d16_hi v187, v47 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s0, v48, v48
	v_add3_u32 v54, v49, v54, 0x7fff
	v_cmp_o_f32_e64 s1, v49, v49
	v_bfe_u32 v74, v100, 16, 1
	v_bfe_u32 v76, v52, 16, 1
	v_add3_u32 v73, v50, v73, 0x7fff
	v_cmp_o_f32_e64 s3, v52, v52
	v_cndmask_b16 v54.h, 0x7fff, v54.h, s1
	v_add3_u32 v74, v100, v74, 0x7fff
	v_cmp_o_f32_e64 s1, v100, v100
	v_add3_u32 v76, v52, v76, 0x7fff
	v_add3_u32 v77, v53, v77, 0x7fff
	v_cmp_o_f32_e64 s6, v53, v53
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v54.l, v239.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v74.h, 0x7fff, v74.h, s1
	v_cndmask_b16 v76.h, 0x7fff, v76.h, s3
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v73.l, v239.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v77.h, 0x7fff, v77.h, s6
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v74.l, v239.l
	v_mov_b16_e64 v76.l, v239.l
	v_mov_b16_e64 v77.l, v239.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_dual_sub_f32 v52, v52, v76 :: v_dual_sub_f32 v53, v53, v77
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s6, v52, v52
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v47, 0, v1
	scratch_load_b32 v1, off, off offset:360 ; 4-byte Folded Reload
	ds_load_b128 v[198:201], v47
	s_waitcnt vmcnt(0)
	ds_load_b128 v[202:205], v1
	scratch_load_b32 v1, off, off offset:372 ; 4-byte Folded Reload
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
	v_cndmask_b16 v73.h, 0x7fff, v73.h, s0
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	ds_load_b128 v[106:109], v1
	scratch_load_b32 v1, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[110:113], v1
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v78, v[114:117]
	ds_store_b128 v254, v[118:121]
	ds_store_b128 v223, v[122:125]
	ds_store_b128 v214, v[126:129]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[118:121], v227
	ds_load_b128 v[114:117], v79
	ds_load_b128 v[122:125], v79 offset:2048
	ds_load_b128 v[126:129], v227 offset:2048
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v78, v75, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v78, v75, v78, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v78.l, v239.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v78.h, 0x7fff, v78.h, s7
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s7, v53, v53
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[114:121], v[198:205], v[89:96]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[122:129], v[198:205], v[81:88]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[118:121], v231
	ds_load_b128 v[114:117], v230
	ds_load_b128 v[122:125], v230 offset:2048
	ds_load_b128 v[126:129], v231 offset:2048
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:396 ; 4-byte Folded Reload
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[89:96], v[114:121], v[106:113], v[89:96]
	v_wmma_f32_16x16x16_bf16 v[81:88], v[122:129], v[106:113], v[81:88]
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v79, 0, v1
	ds_store_b16_d16_hi v79, v239
	ds_store_b16_d16_hi v193, v47
	ds_store_b16_d16_hi v22, v54
	ds_store_b16_d16_hi v25, v73
	ds_store_b16_d16_hi v26, v74
	ds_store_b16_d16_hi v9, v76
	ds_store_b16_d16_hi v10, v77
	ds_store_b16_d16_hi v13, v78
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:440 ; 4-byte Folded Reload
	ds_load_b64 v[101:102], v16
	ds_load_b64 v[103:104], v24
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v182.l
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
	ds_load_b64 v[210:211], v17
	ds_load_b64 v[204:205], v20
	ds_load_b64 v[212:213], v51
	ds_load_b64 v[98:99], v27
	ds_load_b64 v[206:207], v30
	ds_load_b64 v[208:209], v23
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v79, v47
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e64 v47.l, v239.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v47, v48, v47 :: v_dual_sub_f32 v48, v49, v54
	v_dual_sub_f32 v49, v50, v73 :: v_dual_sub_f32 v50, v100, v74
	v_sub_f32_e32 v54, v75, v78
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v73, v47, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	v_cmp_o_f32_e64 s0, v48, v48
	v_cmp_o_f32_e64 s1, v49, v49
	v_cmp_o_f32_e64 s3, v50, v50
	v_add3_u32 v73, v47, v73, 0x7fff
	v_bfe_u32 v47, v48, 16, 1
	v_cmp_o_f32_e64 s8, v54, v54
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v101.l, v212.h
	v_mov_b16_e64 v141.h, v206.l
	v_mov_b16_e64 v145.h, v207.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v47, v48, v47, 0x7fff
	v_bfe_u32 v48, v49, 16, 1
	v_cndmask_b16 v47.l, 0x7fff, v73.h, vcc_lo
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v206.l, v98.h
	v_mov_b16_e64 v207.l, v99.h
	v_mov_b16_e64 v139.h, v204.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v48, v49, v48, 0x7fff
	v_bfe_u32 v49, v50, 16, 1
	ds_store_b16 v193, v47
	v_cndmask_b16 v47.l, 0x7fff, v47.h, s0
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v105, v207
	v_mov_b16_e64 v143.h, v205.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v49, v50, v49, 0x7fff
	v_bfe_u32 v50, v52, 16, 1
	ds_store_b16 v22, v47
	v_cndmask_b16 v47.l, 0x7fff, v48.h, s1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v204.l, v210.h
	v_mov_b16_e64 v205.l, v211.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v50, v52, v50, 0x7fff
	v_bfe_u32 v52, v53, 16, 1
	ds_store_b16 v25, v47
	v_cndmask_b16 v47.l, 0x7fff, v49.h, s3
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v103.l, v208.h
	v_mov_b16_e64 v104.l, v209.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v52, v53, v52, 0x7fff
	v_bfe_u32 v53, v54, 16, 1
	ds_store_b16 v26, v47
	v_cndmask_b16 v47.l, 0x7fff, v50.h, s6
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_dual_mov_b32 v100, v103 :: v_dual_mov_b32 v103, v205
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v53, v54, v53, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v102.l, v213.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v9, v47
	v_cndmask_b16 v47.l, 0x7fff, v52.h, s7
	ds_store_b16 v10, v47
	v_cndmask_b16 v47.l, 0x7fff, v53.h, s8
	ds_store_b16 v13, v47
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[135:136], v24
	ds_load_b64 v[133:134], v16
	ds_load_b64 v[130:131], v17
	ds_load_b64 v[194:195], v20
	ds_load_b64 v[200:201], v51
	ds_load_b64 v[198:199], v27
	ds_load_b64 v[196:197], v30
	ds_load_b64 v[202:203], v23
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
	ds_store_b16 v215, v145 offset:2048
	ds_store_b16 v215, v146 offset:2304
	ds_store_b16 v215, v147 offset:2560
	ds_store_b16 v215, v148 offset:2816
	ds_store_b16 v215, v149 offset:3072
	ds_store_b16 v215, v150 offset:3328
	ds_store_b16 v215, v151 offset:3584
	ds_store_b16 v215, v152 offset:3840
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v139.l, v210.l
	v_mov_b16_e64 v140.l, v208.l
	v_mov_b16_e64 v144.l, v209.l
	v_mov_b16_e64 v141.l, v98.l
	v_dual_mov_b32 v98, v101 :: v_dual_mov_b32 v101, v206
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_store_b16 v215, v245 offset:128
	ds_store_b16 v215, v247 offset:384
	ds_store_b16 v215, v241 offset:640
	ds_store_b16 v215, v244 offset:896
	ds_store_b16 v215, v246 offset:1152
	ds_store_b16 v215, v248 offset:1408
	ds_store_b16 v215, v242 offset:1664
	ds_store_b16 v215, v240 offset:1920
	ds_store_b16 v215, v228 offset:2176
	ds_store_b16 v215, v188 offset:2432
	ds_store_b16 v215, v255 offset:2688
	ds_store_b16 v215, v250 offset:2944
	ds_store_b16 v215, v192 offset:3200
	ds_store_b16 v215, v191 offset:3456
	ds_store_b16 v215, v224 offset:3712
	ds_store_b16 v215, v251 offset:3968
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v210, v243 offset:1536
	ds_load_u16_d16 v209, v243 offset:1280
	ds_load_u16_d16 v51, v243 offset:1088
	ds_load_u16_d16 v50, v243 offset:832
	ds_load_u16_d16 v206, v243 offset:512
	ds_load_u16_d16 v207, v243 offset:768
	ds_load_u16_d16 v208, v243 offset:1024
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v145.l, v99.l
	v_mov_b32_e32 v99, v204
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v51, v243 offset:1216
	ds_load_u16_d16 v205, v243 offset:256
	ds_load_u16_d16 v204, v243
	ds_load_u16_d16 v148, v243 offset:2624
	ds_load_u16_d16 v147, v243 offset:2368
	ds_load_u16_d16 v74, v243 offset:2304
	ds_load_u16_d16 v75, v243 offset:2560
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v143.l, v211.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(3)
	ds_load_u16_d16_hi v148, v243 offset:2752
	ds_load_u16_d16 v211, v243 offset:1792
	ds_load_u16_d16 v73, v243 offset:2048
	ds_load_u16_d16 v77, v243 offset:3072
	ds_load_u16_d16 v76, v243 offset:2816
	ds_load_u16_d16 v78, v243 offset:3328
	ds_load_u16_d16 v79, v243 offset:3584
	ds_load_u16_d16 v80, v243 offset:3840
	ds_load_u16_d16 v52, v243 offset:1344
	ds_load_u16_d16_hi v210, v243 offset:1664
	ds_load_u16_d16_hi v208, v243 offset:1152
	ds_load_u16_d16_hi v206, v243 offset:640
	ds_load_u16_d16_hi v207, v243 offset:896
	ds_load_u16_d16_hi v209, v243 offset:1408
	ds_load_u16_d16 v47, v243 offset:64
	ds_load_u16_d16_hi v205, v243 offset:384
	ds_load_u16_d16_hi v204, v243 offset:128
	ds_load_u16_d16 v49, v243 offset:576
	ds_load_u16_d16 v48, v243 offset:320
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v211, v243 offset:1920
	ds_load_u16_d16 v146, v243 offset:2112
	ds_load_u16_d16 v54, v243 offset:1856
	ds_load_u16_d16 v53, v243 offset:1600
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v73, v243 offset:2176
	ds_load_u16_d16_hi v74, v243 offset:2432
	ds_load_u16_d16_hi v75, v243 offset:2688
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v76, v243 offset:2944
	ds_load_u16_d16 v149, v243 offset:2880
	ds_load_u16_d16_hi v77, v243 offset:3200
	ds_load_u16_d16 v150, v243 offset:3136
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v78, v243 offset:3456
	ds_load_u16_d16 v153, v243 offset:3904
	ds_load_u16_d16 v152, v243 offset:3648
	ds_load_u16_d16 v151, v243 offset:3392
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v79, v243 offset:3712
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v80, v243 offset:3968
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v47, v243 offset:192
	ds_load_u16_d16_hi v50, v243 offset:960
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v49, v243 offset:704
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v48, v243 offset:448
	ds_load_u16_d16_hi v52, v243 offset:1472
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v53, v243 offset:1728
	ds_load_u16_d16_hi v147, v243 offset:2496
	ds_load_u16_d16_hi v146, v243 offset:2240
	ds_load_u16_d16_hi v54, v243 offset:1984
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v149, v243 offset:3008
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v150, v243 offset:3264
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v153, v243 offset:4032
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v152, v243 offset:3776
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v151, v243 offset:3520
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v138.l, v212.l
	v_mov_b16_e64 v142.l, v213.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v244.l, v200.l
	v_mov_b16_e64 v244.h, v133.l
	v_mov_b16_e64 v245.l, v130.l
	v_mov_b16_e64 v245.h, v194.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[204:211], v[138:145], v[65:72]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v246.l, v202.l
	v_mov_b16_e64 v246.h, v135.l
	v_mov_b16_e64 v247.l, v198.l
	v_mov_b16_e64 v247.h, v196.l
	v_mov_b16_e64 v248.l, v201.l
	v_mov_b16_e64 v248.h, v134.l
	v_mov_b16_e64 v249.l, v131.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[47:54], v[138:145], v[57:64]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v249.h, v195.l
	v_mov_b16_e64 v250.l, v203.l
	v_mov_b16_e64 v250.h, v136.l
	v_mov_b16_e64 v251.l, v199.l
	v_mov_b16_e64 v251.h, v197.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[146:153], v[98:105], v[57:64]
	v_wmma_f32_16x16x16_bf16 v[65:72], v[73:80], v[98:105], v[65:72]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v133.l, v200.h
	v_mov_b16_e64 v194.l, v130.h
	v_mov_b16_e64 v195.l, v131.h
	v_wmma_f32_16x16x16_bf16 v[57:64], v[47:54], v[244:251], v[57:64]
	v_mov_b16_e64 v135.l, v202.h
	v_mov_b16_e64 v196.l, v198.h
	v_mov_b16_e64 v197.l, v199.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v49, 0xffff0000, v182
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[204:211], v[244:251], v[65:72]
	v_mov_b16_e64 v134.l, v201.h
	v_mov_b16_e64 v136.l, v203.h
	v_dual_mov_b32 v131, v194 :: v_dual_mov_b32 v132, v135
	v_dual_mov_b32 v135, v195 :: v_dual_mov_b32 v130, v133
	v_mov_b32_e32 v133, v196
	v_mov_b32_e32 v137, v197
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v49, v49, v49
	v_sub_f32_e32 v47, v239, v239
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v51, 0xffff0000, v183
	v_mov_b16_e64 v239.h, v183.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[73:80], v[130:137], v[65:72]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v80.l, v49.h
	v_mov_b16_e64 v80.h, v239.l
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_cmp_o_f32_e64 s0, v47, v47
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v48, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v52, 0xffff0000, v184
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v80, 1, v80
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v184.l
	v_and_b32_e32 v53, 0xffff0000, v185
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v48, v48
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v76, 0xffff0000, v178
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v80, v49, v80, 0x7fff
	v_mov_b16_e32 v49.l, v47.h
	v_mov_b16_e64 v49.h, v239.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v50, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v185.l
	v_and_b32_e32 v77, 0xffff0000, v179
	v_and_b32_e32 v78, 0xffff0000, v180
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v54, v239, v239 :: v_dual_and_b32 v79, 0xffff0000, v181
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v178.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v49, v47, v49, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v47, v51, v51
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v51.h, v239.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v73, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v179.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v51.l, v47.h
	v_cmp_o_f32_e64 s1, v47, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v74, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v180.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v51, 1, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v75, v239, v239
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v51, v47, v51, 0x7fff
	v_mov_b16_e32 v47.l, v48.h
	v_mov_b16_e64 v47.h, v239.l
	v_mov_b16_e32 v51.l, v50.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v181.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v47, 1, v47
	v_add3_u32 v97, v48, v47, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v47, v52, v52
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v48.h, v239.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v48.l, v47.h
	v_cmp_o_f32_e64 s6, v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v48, 1, v48
	v_add3_u32 v52, v47, v48, 0x7fff
	v_cndmask_b16 v48.h, 0x7fff, v51.h, s1
	v_mov_b16_e64 v51.h, v239.l
	v_cndmask_b16 v47.h, 0x7fff, v80.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	v_cndmask_b16 v47.l, 0x7fff, v49.h, s0
	v_cndmask_b16 v49.h, 0x7fff, v52.h, s6
	v_and_b32_e32 v51, 1, v51
	v_mov_b16_e64 v52.h, v239.l
	v_cmp_o_f32_e64 s1, v54, v54
	v_cndmask_b16 v48.l, 0x7fff, v97.h, s3
	v_cmp_o_f32_e64 s6, v73, v73
	v_add3_u32 v51, v50, v51, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v50, v53, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v49.l, 0x7fff, v51.h, vcc_lo
	v_mov_b16_e32 v52.l, v50.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s0, v50, v50
	v_and_b32_e32 v52, 1, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v52, v50, v52, 0x7fff
	v_mov_b16_e32 v50.l, v54.h
	v_mov_b16_e64 v50.h, v239.l
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v53, v54, v50, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v50, v76, v76
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v54.h, v239.l
	v_mov_b16_e32 v54.l, v50.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v50, v50
	v_and_b32_e32 v54, 1, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v54, v50, v54, 0x7fff
	v_mov_b16_e32 v50.l, v73.h
	v_mov_b16_e64 v50.h, v239.l
	v_cndmask_b16 v51.h, 0x7fff, v54.h, s3
	v_cmp_o_f32_e64 s3, v75, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v76, v73, v50, 0x7fff
	v_cndmask_b16 v50.h, 0x7fff, v52.h, s0
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v52, v77, v77
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v50.l, 0x7fff, v53.h, s1
	v_mov_b16_e64 v53.h, v239.l
	v_mov_b16_e64 v73.h, v239.l
	v_cmp_o_f32_e64 s0, v74, v74
	v_mov_b16_e32 v53.l, v52.h
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	v_cndmask_b16 v51.l, 0x7fff, v76.h, s6
	v_mov_b16_e64 v76.h, v239.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v53, 1, v53
	v_add3_u32 v53, v52, v53, 0x7fff
	v_mov_b16_e32 v52.l, v74.h
	v_mov_b16_e64 v52.h, v239.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v52, 1, v52
	v_add3_u32 v54, v74, v52, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v52, v78, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v73.l, v52.h
	v_cmp_o_f32_e64 s1, v52, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v73, v52, v73, 0x7fff
	v_mov_b16_e32 v52.l, v75.h
	v_mov_b16_e64 v52.h, v239.l
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v52, 1, v52
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[57:64], v[146:153], v[130:137], v[57:64]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v134, 0xffff0000, v172
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v136.h, v239.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v132, 0xffff0000, v170
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v74, v75, v52, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v52, v79, v79
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v75.h, v239.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v133, 0xffff0000, v171
	v_and_b32_e32 v135, 0xffff0000, v173
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v75.l, v52.h
	v_cmp_o_f32_e64 s6, v52, v52
	v_and_b32_e32 v75, 1, v75
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v75, v52, v75, 0x7fff
	v_cndmask_b16 v52.h, 0x7fff, v53.h, vcc_lo
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v53, v239, v239
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v52.l, 0x7fff, v54.h, s0
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v166.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v54.h, 0x7fff, v75.h, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v76.l, v53.h
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	v_and_b32_e32 v76, 1, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v76, v53, v76, 0x7fff
	v_cndmask_b16 v53.h, 0x7fff, v73.h, s1
	v_cndmask_b16 v53.l, 0x7fff, v74.h, s3
	v_cndmask_b16 v54.l, 0x7fff, v76.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[47:54], v[138:145], v[65:72]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v48, 0xffff0000, v174
	v_and_b32_e32 v51, 0xffff0000, v175
	v_and_b32_e32 v52, 0xffff0000, v176
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v48, v48, v48 :: v_dual_and_b32 v53, 0xffff0000, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e64 v136.l, v48.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v73, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v167.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v136, 1, v136
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v74, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v168.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v136, v48, v136, 0x7fff
	v_mov_b16_e64 v48.h, v239.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v75, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v169.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v76, v239, v239
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v162.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v77, v239, v239
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v163.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v78, v239, v239
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v164.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v79, v239, v239
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v165.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v80, v239, v239
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v174.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v47, v239, v239
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v175.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v48.l, v47.h
	v_cmp_o_f32_e64 s0, v47, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v49, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v176.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v48, 1, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v50, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v177.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v48, v47, v48, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v47, v51, v51
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v51.h, v239.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v54, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v170.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v51.l, v47.h
	v_cmp_o_f32_e64 s1, v47, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s6, v54, v54
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v97, v239, v239
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v51, 1, v51
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v171.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v51, v47, v51, 0x7fff
	v_cndmask_b16 v47.l, 0x7fff, v48.h, s0
	v_mov_b16_e32 v51.l, v49.h
	v_cndmask_b16 v47.h, 0x7fff, v136.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_cndmask_b16 v48.h, 0x7fff, v51.h, s1
	v_mov_b16_e64 v51.h, v239.l
	v_cmp_o_f32_e64 s1, v50, v50
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v130, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v172.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v51, 1, v51
	v_add3_u32 v51, v49, v51, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v49, v52, v52
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v52.h, v239.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v48.l, 0x7fff, v51.h, vcc_lo
	v_mov_b16_e32 v52.l, v49.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s0, v49, v49
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v51, v132, v132
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v132.h, v239.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v131, v239, v239 :: v_dual_and_b32 v52, 1, v52
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v173.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	v_add3_u32 v52, v49, v52, 0x7fff
	v_mov_b16_e32 v49.l, v50.h
	v_mov_b16_e64 v49.h, v239.l
	v_mov_b16_e32 v52.l, v51.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v136, v50, v49, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v49, v53, v53
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v50.h, v239.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v50.l, v49.h
	v_cmp_o_f32_e64 s3, v49, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v50, v49, v50, 0x7fff
	v_mov_b16_e32 v49.l, v54.h
	v_mov_b16_e64 v49.h, v239.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s3
	v_cmp_o_f32_e64 s3, v130, v130
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v53, v54, v49, 0x7fff
	v_cndmask_b16 v49.h, 0x7fff, v52.h, s0
	v_mov_b16_e64 v52.h, v239.l
	v_mov_b16_e64 v54.h, v239.l
	v_cndmask_b16 v49.l, 0x7fff, v136.h, s1
	v_cndmask_b16 v50.l, 0x7fff, v53.h, s6
	v_cmp_o_f32_e64 s0, v97, v97
	v_and_b32_e32 v52, 1, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v52, v51, v52, 0x7fff
	v_mov_b16_e32 v51.l, v97.h
	v_mov_b16_e64 v51.h, v239.l
	v_and_b32_e32 v51, 1, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v53, v97, v51, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v51, v133, v133
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v53.l, v131.h
	v_mov_b16_e32 v54.l, v51.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v51, v51
	v_and_b32_e32 v54, 1, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v54, v51, v54, 0x7fff
	v_mov_b16_e64 v51.l, v130.h
	v_mov_b16_e64 v51.h, v239.l
	v_and_b32_e32 v51, 1, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v97, v130, v51, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v51, v134, v134
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v130.h, v239.l
	v_cndmask_b16 v52.l, 0x7fff, v97.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v130.l, v51.h
	v_cmp_o_f32_e64 s6, v51, v51
	v_mov_b16_e64 v97.h, v239.l
	v_cmp_o_f32_e64 s3, v74, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v130, 1, v130
	v_add3_u32 v130, v51, v130, 0x7fff
	v_cndmask_b16 v51.l, 0x7fff, v53.h, s0
	v_mov_b16_e64 v53.h, v239.l
	v_cndmask_b16 v51.h, 0x7fff, v52.h, vcc_lo
	v_cndmask_b16 v52.h, 0x7fff, v54.h, s1
	v_cmp_o_f32_e32 vcc_lo, v131, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v53, 1, v53
	v_add3_u32 v54, v131, v53, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v53, v135, v135
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v131.h, v239.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v131.l, v53.h
	v_cmp_o_f32_e64 s0, v53, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v131, 1, v131
	v_add3_u32 v131, v53, v131, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v53, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v158.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v132.l, v53.h
	v_cmp_o_f32_e64 s1, v53, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v132, 1, v132
	v_add3_u32 v132, v53, v132, 0x7fff
	v_cndmask_b16 v53.h, 0x7fff, v130.h, s6
	v_cndmask_b16 v53.l, 0x7fff, v54.h, vcc_lo
	v_cndmask_b16 v54.h, 0x7fff, v131.h, s0
	v_cmp_o_f32_e64 s0, v73, v73
	v_cndmask_b16 v54.l, 0x7fff, v132.h, s1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[57:64], v[47:54], v[138:145], v[57:64]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v47, 0xffff0000, v166
	v_and_b32_e32 v48, 0xffff0000, v167
	v_and_b32_e32 v49, 0xffff0000, v168
	v_and_b32_e32 v50, 0xffff0000, v169
	v_and_b32_e32 v51, 0xffff0000, v162
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v47, v47, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v49, v49, v49 :: v_dual_and_b32 v52, 0xffff0000, v163
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v53, 0xffff0000, v164
	v_and_b32_e32 v54, 0xffff0000, v165
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v97.l, v47.h
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v52, v52, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_sub_f32 v54, v54, v54 :: v_dual_and_b32 v97, 1, v97
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v97, v47, v97, 0x7fff
	v_mov_b16_e32 v47.l, v73.h
	v_mov_b16_e64 v47.h, v239.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v47, 1, v47
	v_add3_u32 v106, v73, v47, 0x7fff
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
	v_mov_b16_e32 v47.l, v74.h
	v_mov_b16_e64 v47.h, v239.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s1
	v_and_b32_e32 v47, 1, v47
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v73, v74, v47, 0x7fff
	v_mov_b16_e32 v73.l, v49.h
	v_cndmask_b16 v47.h, 0x7fff, v97.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_cndmask_b16 v47.l, 0x7fff, v106.h, s0
	v_cndmask_b16 v48.l, 0x7fff, v73.h, s3
	v_mov_b16_e64 v73.h, v239.l
	v_cmp_o_f32_e64 s0, v75, v75
	v_cmp_o_f32_e64 s3, v76, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v73, v49, v73, 0x7fff
	v_mov_b16_e32 v49.l, v75.h
	v_mov_b16_e64 v49.h, v239.l
	v_mov_b16_e32 v73.l, v77.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v74, v75, v49, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v49, v50, v50
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v50.h, v239.l
	v_mov_b16_e32 v74.l, v52.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v50.l, v49.h
	v_cmp_o_f32_e64 s1, v49, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v50, v49, v50, 0x7fff
	v_mov_b16_e32 v49.l, v76.h
	v_mov_b16_e64 v49.h, v239.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s1
	v_cmp_o_f32_e64 s1, v78, v78
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v75, v76, v49, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v49, v51, v51
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v51.h, v239.l
	v_cndmask_b16 v50.l, 0x7fff, v75.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v51.l, v49.h
	v_cmp_o_f32_e64 s6, v49, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v51, 1, v51
	v_add3_u32 v51, v49, v51, 0x7fff
	v_cndmask_b16 v49.l, 0x7fff, v74.h, s0
	v_mov_b16_e64 v74.h, v239.l
	v_cndmask_b16 v49.h, 0x7fff, v73.h, vcc_lo
	v_mov_b16_e64 v73.h, v239.l
	v_cmp_o_f32_e64 s0, v52, v52
	v_cmp_o_f32_e32 vcc_lo, v77, v77
	v_and_b32_e32 v74, 1, v74
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s6
	v_and_b32_e32 v73, 1, v73
	v_cmp_o_f32_e64 s6, v79, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v74, v52, v74, 0x7fff
	v_mov_b16_e32 v52.l, v78.h
	v_mov_b16_e64 v52.h, v239.l
	v_add3_u32 v73, v77, v73, 0x7fff
	v_mov_b16_e32 v73.l, v54.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v77, 0xffff0000, v155
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v52, 1, v52
	v_cndmask_b16 v51.l, 0x7fff, v73.h, vcc_lo
	v_mov_b16_e64 v73.h, v239.l
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v75, v78, v52, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v52, v53, v53
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v53.h, v239.l
	v_and_b32_e32 v73, 1, v73
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v78, 0xffff0000, v156
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v53.l, v52.h
	v_cmp_o_f32_e64 s3, v52, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v73, v54, v73, 0x7fff
	v_mov_b16_e32 v54.l, v80.h
	v_mov_b16_e64 v54.h, v239.l
	v_and_b32_e32 v53, 1, v53
	v_and_b32_e32 v54, 1, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v53, v52, v53, 0x7fff
	v_mov_b16_e32 v52.l, v79.h
	v_mov_b16_e64 v52.h, v239.l
	v_cndmask_b16 v53.h, 0x7fff, v53.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v52, 1, v52
	v_add3_u32 v76, v79, v52, 0x7fff
	v_cndmask_b16 v52.h, 0x7fff, v74.h, s0
	v_add3_u32 v74, v80, v54, 0x7fff
	v_cmp_o_f32_e64 s0, v80, v80
	v_cndmask_b16 v52.l, 0x7fff, v75.h, s1
	v_cndmask_b16 v53.l, 0x7fff, v76.h, s6
	v_cndmask_b16 v54.h, 0x7fff, v73.h, vcc_lo
	v_mov_b16_e64 v80.h, v239.l
	v_cndmask_b16 v54.l, 0x7fff, v74.h, s0
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v79, 0xffff0000, v157
	v_and_b32_e32 v76, 0xffff0000, v154
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[47:54], v[98:105], v[65:72]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v47, v239, v239 :: v_dual_and_b32 v50, 0xffff0000, v158
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v159.l
	v_and_b32_e32 v51, 0xffff0000, v159
	v_and_b32_e32 v52, 0xffff0000, v160
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v50, v50, v50
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s0, v47, v47
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v48, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v160.l
	v_and_b32_e32 v53, 0xffff0000, v161
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v80.l, v50.h
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v49, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v161.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v80, 1, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v49, v49
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v54, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v154.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v80, v50, v80, 0x7fff
	v_mov_b16_e32 v50.l, v47.h
	v_mov_b16_e64 v50.h, v239.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v73, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v155.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v50, 1, v50
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v74, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v156.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v50, v47, v50, 0x7fff
	v_cndmask_b16 v47.h, 0x7fff, v80.h, vcc_lo
	v_cndmask_b16 v47.l, 0x7fff, v50.h, s0
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v50, v51, v51
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v51.h, v239.l
	v_cmp_o_f32_e64 s0, v48, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v51.l, v50.h
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v51, 1, v51
	v_add3_u32 v51, v50, v51, 0x7fff
	v_mov_b16_e32 v50.l, v48.h
	v_mov_b16_e64 v50.h, v239.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v75, v239, v239
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v51.l, v54.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v157.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v50, v48, v50, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v48, v52, v52
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v52.h, v239.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v52.l, v48.h
	v_cmp_o_f32_e64 s1, v48, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v52, 1, v52
	v_add3_u32 v52, v48, v52, 0x7fff
	v_mov_b16_e32 v48.l, v49.h
	v_mov_b16_e64 v48.h, v239.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v48, 1, v48
	v_add3_u32 v80, v49, v48, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v48, v53, v53
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v49.h, v239.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v49.l, v48.h
	v_cmp_o_f32_e64 s6, v48, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v53, v48, v49, 0x7fff
	v_cndmask_b16 v49.h, 0x7fff, v52.h, s1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v52, v76, v76
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v48.l, 0x7fff, v50.h, s0
	v_cndmask_b16 v48.h, 0x7fff, v51.h, vcc_lo
	v_cndmask_b16 v50.h, 0x7fff, v53.h, s6
	v_mov_b16_e64 v53.h, v239.l
	v_mov_b16_e32 v53.l, v52.h
	v_mov_b16_e64 v51.h, v239.l
	v_cmp_o_f32_e64 s0, v52, v52
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	v_cmp_o_f32_e64 s1, v73, v73
	v_and_b32_e32 v53, 1, v53
	v_and_b32_e32 v51, 1, v51
	v_cndmask_b16 v49.l, 0x7fff, v80.h, s3
	v_cmp_o_f32_e64 s6, v74, v74
	v_mov_b16_e64 v76.h, v239.l
	v_add3_u32 v53, v52, v53, 0x7fff
	v_mov_b16_e32 v52.l, v73.h
	v_mov_b16_e64 v52.h, v239.l
	v_add3_u32 v51, v54, v51, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v54, v77, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v52, 1, v52
	v_cndmask_b16 v50.l, 0x7fff, v51.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v54, v54
	v_cndmask_b16 v51.h, 0x7fff, v53.h, s0
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v53, v78, v78
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v52, v73, v52, 0x7fff
	v_mov_b16_e32 v73.l, v54.h
	v_mov_b16_e64 v73.h, v239.l
	v_cmp_o_f32_e64 s0, v75, v75
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	v_cndmask_b16 v51.l, 0x7fff, v52.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v73, v54, v73, 0x7fff
	v_mov_b16_e32 v73.l, v53.h
	v_mov_b16_e32 v54.l, v74.h
	v_mov_b16_e64 v54.h, v239.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v52.h, 0x7fff, v73.h, s3
	v_mov_b16_e64 v73.h, v239.l
	v_and_b32_e32 v54, 1, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v54, v74, v54, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v73, v53, v73, 0x7fff
	v_mov_b16_e32 v53.l, v75.h
	v_mov_b16_e64 v53.h, v239.l
	v_cndmask_b16 v52.l, 0x7fff, v54.h, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v53, 1, v53
	v_add3_u32 v74, v75, v53, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v53, v79, v79
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v75.h, v239.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v75.l, v53.h
	v_cmp_o_f32_e64 s1, v53, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v75, 1, v75
	v_add3_u32 v75, v53, v75, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v53, v239, v239
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v54.h, 0x7fff, v75.h, s1
	v_mov_b16_e32 v76.l, v53.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v53, v53
	v_and_b32_e32 v76, 1, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v76, v53, v76, 0x7fff
	v_cndmask_b16 v53.h, 0x7fff, v73.h, vcc_lo
	v_cndmask_b16 v53.l, 0x7fff, v74.h, s0
	v_cndmask_b16 v54.l, 0x7fff, v76.h, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[57:64], v[47:54], v[98:105], v[57:64]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 663 37                        ; attention_backward.py:663:37
	scratch_load_b32 v1, off, off offset:328 ; 4-byte Folded Reload
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
	s_cmp_lt_i32 s3, s18
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s6, s18
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s7, s18
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s8, s18
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s9, s18
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s10, s18
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s11, s18
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s12, s18
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s13, s18
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
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s79, s18
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s80, s18
	s_cselect_b32 s81, -1, 0
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
	s_and_b32 vcc_lo, s2, s55
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
	s_and_b32 vcc_lo, s2, s54
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s92
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x1
	buffer_load_u16 v114, v47, s[40:43], 0 offen
	buffer_load_u16 v115, v48, s[40:43], 0 offen
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v47, s0, v1, 1
	scratch_load_b32 v1, off, off offset:364 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s91
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v116, v47, s[40:43], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v47, s0, v1, 1
	scratch_load_b32 v1, off, off offset:388 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s90
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v117, v47, s[40:43], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v47, s0, v1, 1
	scratch_load_b32 v1, off, off offset:408 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s89
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v48, s0, v1, 1
	scratch_load_b32 v1, off, off offset:424 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	s_clause 0x1
	buffer_load_u16 v118, v47, s[40:43], 0 offen
	buffer_load_u16 v119, v48, s[40:43], 0 offen
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s88
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v48, s0, v29, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v47, s0, v1, 1
	scratch_load_b32 v1, off, off offset:444 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s87
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v120, v47, s[40:43], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v47, s0, v1, 1
	scratch_load_b32 v1, off, off offset:460 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s86
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v121, v47, s[40:43], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v47, s0, v1, 1
	scratch_load_b32 v1, off, off offset:312 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s85
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	s_clause 0x1
	buffer_load_u16 v122, v47, s[40:43], 0 offen
	buffer_load_u16 v123, v48, s[40:43], 0 offen
	v_add_lshl_u32 v47, s0, v55, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s83
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v48, s0, v238, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s82
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v124, v47, s[40:43], 0 offen
	v_add_lshl_u32 v47, s0, v190, 1
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s81
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v125, v47, s[40:43], 0 offen
	v_add_lshl_u32 v47, s0, v233, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s80
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	s_clause 0x1
	buffer_load_u16 v126, v47, s[40:43], 0 offen
	buffer_load_u16 v127, v48, s[40:43], 0 offen
	v_add_lshl_u32 v47, s0, v226, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s79
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v128, v47, s[40:43], 0 offen
	v_add_lshl_u32 v47, s0, v234, 1
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s77
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v129, v47, s[40:43], 0 offen
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v47, s0, v1, 1
	scratch_load_b32 v1, off, off offset:336 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s76
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v48, s0, v1, 1
	scratch_load_b32 v1, off, off offset:352 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s75
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v49, s0, v1, 1
	scratch_load_b32 v1, off, off offset:400 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s73
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v50, s0, v1, 1
	scratch_load_b32 v1, off, off offset:416 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s72
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v51, s0, v1, 1
	scratch_load_b32 v1, off, off offset:432 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s71
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v52, s0, v1, 1
	scratch_load_b32 v1, off, off offset:380 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v52, 0x80000000, v52, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s74
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v53, s0, v1, 1
	scratch_load_b32 v1, off, off offset:452 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v53, 0x80000000, v53, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s70
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v54, s0, v1, 1
	scratch_load_b32 v1, off, off offset:468 ; 4-byte Folded Reload
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
	v_add_lshl_u32 v48, s0, v32, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s27
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v49, s0, v235, 1
	v_add_lshl_u32 v50, s0, v229, 1
	v_add_lshl_u32 v51, s0, v14, 1
	v_add_lshl_u32 v52, s0, v19, 1
	v_add_nc_u32_e32 v54, s35, v234
	v_add_lshl_u32 v53, s0, v43, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v54, s0, v54, 1
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v47, s0, v1, 1
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s69
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s26
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s68
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s51
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s66
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v52, 0x80000000, v52, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s67
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v53, 0x80000000, v53, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s50
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v54, 0x80000000, v54, vcc_lo
	s_clause 0x7
	buffer_load_u16 v134, v53, s[40:43], 0 offen
	buffer_load_u16 v135, v50, s[40:43], 0 offen
	buffer_load_u16 v136, v48, s[40:43], 0 offen
	buffer_load_u16 v194, v47, s[40:43], 0 offen
	buffer_load_u16 v153, v54, s[40:43], 0 offen
	buffer_load_u16 v195, v52, s[40:43], 0 offen
	buffer_load_u16 v196, v51, s[40:43], 0 offen
	buffer_load_u16 v197, v49, s[40:43], 0 offen
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v53, v46
	v_mov_b32_e32 v47, v46
	v_mov_b32_e32 v48, v46
	v_mov_b32_e32 v49, v46
	v_mov_b32_e32 v50, v46
	v_mov_b32_e32 v51, v46
	v_dual_mov_b32 v52, v46 :: v_dual_add_nc_u32 v201, 0, v36
	v_mov_b32_e32 v112, v53
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v111, v52 :: v_dual_mov_b32 v110, v51
	v_dual_mov_b32 v109, v50 :: v_dual_mov_b32 v108, v49
	v_dual_mov_b32 v107, v48 :: v_dual_mov_b32 v106, v47
	v_mov_b32_e32 v105, v46
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
	ds_store_b16 v222, v153 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[47:50], off, off
	scratch_load_b128 v[51:54], off, off offset:16
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[137:140], v201
	ds_load_b128 v[141:144], v31
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[47:54], v[137:144], v[105:112]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[47:50], off, off offset:32
	scratch_load_b128 v[51:54], off, off offset:48
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[137:140], v34
	ds_load_b128 v[141:144], v37
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[47:54], v[137:144], v[105:112]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[47:50], off, off offset:64
	scratch_load_b128 v[51:54], off, off offset:80
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[137:140], v38
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
	v_cmp_gt_i32_e64 s3, s18, v50
	v_cmp_gt_i32_e64 s6, s18, v51
	v_cmp_gt_i32_e64 s7, s18, v52
	v_cmp_gt_i32_e64 s8, s18, v53
	v_cmp_gt_i32_e64 s9, s18, v54
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
	s_and_b32 s93, s5, s3
	s_and_b32 s100, s5, s6
	s_and_b32 s98, s5, s7
	s_and_b32 s96, s5, s8
	s_and_b32 s94, s5, s9
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e32 vcc_lo, v225, v98
	v_cmp_le_i32_e64 s0, v225, v99
	v_cmp_le_i32_e64 s1, v225, v100
	v_cmp_le_i32_e64 s3, v225, v101
	v_cmp_le_i32_e64 s6, v225, v102
	v_cmp_le_i32_e64 s7, v225, v103
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s10, s99, vcc_lo
	s_and_b32 s0, s97, s0
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s8, v225, v104
	v_cmp_le_i32_e64 s9, v225, v137
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
	v_cmp_ge_i32_e64 s3, v225, v50
	.loc	1 679 47 is_stmt 1              ; attention_backward.py:679:47
	v_add_nc_u32_e32 v49, s30, v100
	v_add_nc_u32_e32 v50, s30, v101
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s6, v225, v51
	v_cmp_ge_i32_e64 s7, v225, v52
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v51, s30, v102
	v_add_nc_u32_e32 v52, s30, v103
	.loc	1 679 30 is_stmt 0              ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s10, v225, v47
	v_cmp_le_i32_e64 s11, v225, v48
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s8, v225, v53
	v_cmp_ge_i32_e64 s9, v225, v54
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v53, s30, v104
	v_add_nc_u32_e32 v54, s30, v137
	.loc	1 679 30 is_stmt 0              ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s12, v225, v49
	v_cmp_le_i32_e64 s13, v225, v50
	v_cmp_le_i32_e64 s14, v225, v51
	v_cmp_le_i32_e64 s15, v225, v52
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s10, vcc_lo, s10
	s_and_b32 s0, s0, s11
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s16, v225, v53
	v_cmp_le_i32_e64 s17, v225, v54
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
	scratch_load_b64 v[1:2], off, off offset:532 ; 8-byte Folded Reload
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
	scratch_load_b64 v[1:2], off, off offset:476 ; 8-byte Folded Reload
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
	scratch_load_b64 v[1:2], off, off offset:484 ; 8-byte Folded Reload
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
	scratch_load_b64 v[1:2], off, off offset:492 ; 8-byte Folded Reload
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
	scratch_load_b64 v[1:2], off, off offset:500 ; 8-byte Folded Reload
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
	scratch_load_b64 v[1:2], off, off offset:508 ; 8-byte Folded Reload
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
	scratch_load_b64 v[1:2], off, off offset:516 ; 8-byte Folded Reload
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
	scratch_load_b64 v[1:2], off, off offset:524 ; 8-byte Folded Reload
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
	scratch_load_b32 v47, off, off offset:540
	scratch_load_b32 v29, off, off offset:544
	scratch_load_b32 v48, off, off offset:548
	s_branch .LBB0_30
.LBB0_29:
	v_mov_b32_e32 v64, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v63, v64
	v_mov_b32_e32 v62, v64
	v_mov_b32_e32 v61, v64
	v_mov_b32_e32 v60, v64
	v_mov_b32_e32 v59, v64
	v_mov_b32_e32 v58, v64
	v_mov_b32_e32 v57, v64
	v_mov_b32_e32 v72, v64
	v_mov_b32_e32 v71, v64
	v_mov_b32_e32 v70, v64
	v_mov_b32_e32 v69, v64
	v_mov_b32_e32 v68, v64
	v_mov_b32_e32 v67, v64
	v_mov_b32_e32 v66, v64
	v_mov_b32_e32 v65, v64
	v_mov_b32_e32 v88, v64
	v_mov_b32_e32 v87, v64
	v_mov_b32_e32 v86, v64
	v_mov_b32_e32 v85, v64
	v_mov_b32_e32 v84, v64
	v_mov_b32_e32 v83, v64
	v_mov_b32_e32 v82, v64
	v_mov_b32_e32 v81, v64
	v_mov_b32_e32 v96, v64
	v_mov_b32_e32 v95, v64
	v_mov_b32_e32 v94, v64
	v_mov_b32_e32 v93, v64
	v_mov_b32_e32 v92, v64
	v_mov_b32_e32 v91, v64
	v_mov_b32_e32 v90, v64
	v_mov_b32_e32 v89, v64
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
	v_or_b32_e32 v0, v0, v48
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
	buffer_store_b32 v57, v8, s[40:43], 0 offen
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
	buffer_store_b32 v58, v7, s[40:43], 0 offen
	buffer_store_b32 v59, v6, s[40:43], 0 offen
	buffer_store_b32 v60, v0, s[40:43], 0 offen
	buffer_store_b32 v61, v4, s[40:43], 0 offen
	buffer_store_b32 v62, v3, s[40:43], 0 offen
	buffer_store_b32 v63, v2, s[40:43], 0 offen
	buffer_store_b32 v64, v1, s[40:43], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 556
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
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 556
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20336
; TotalNumSgprs: 103
; NumVgprs: 256
; ScratchSize: 556
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
    .private_segment_fixed_size: 556
    .sgpr_count:     103
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 138
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
