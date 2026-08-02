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
	s_clause 0x3
	s_load_b128 s[28:31], s[0:1], 0x94
	s_load_b128 s[24:27], s[0:1], 0x64
	s_load_b32 s33, s[0:1], 0x7c
	s_load_b32 s35, s[0:1], 0x74
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s28
	s_bitcmp1_b32 s28, 8
	s_cselect_b32 s58, -1, 0
	s_cmp_eq_u32 s4, 1
	s_load_b128 s[4:7], s[0:1], 0x8
	s_cselect_b32 s59, -1, 0
.Ltmp0:
	.loc	1 513 22 prologue_end           ; attention_backward.py:513:22
	s_abs_i32 s9, s25
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_abs_i32 s10, s3
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cvt_f32_u32 s8, s9
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s57, s2, 4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_rcp_iflag_f32_e32 v1, s8
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_u32_f32 s18, s8
	s_sub_i32 s8, 0, s9
	s_mul_i32 s8, s8, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s18, s8
	s_add_i32 s18, s18, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_mul_hi_u32 s8, s10, s18
	s_mul_i32 s11, s8, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s2, s10, s11
	s_add_i32 s10, s8, 1
	s_sub_i32 s11, s2, s9
	s_cmp_ge_u32 s2, s9
	s_cselect_b32 s8, s10, s8
	s_cselect_b32 s2, s11, s2
	s_add_i32 s10, s8, 1
	s_cmp_ge_u32 s2, s9
	s_cselect_b32 s8, s10, s8
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_ashr_i32 s10, s24, 31
	s_ashr_i32 s16, s25, 31
	s_abs_i32 s17, s24
	.loc	1 514 23                        ; attention_backward.py:514:23
	s_or_b32 s2, s57, 1
	s_or_b32 s11, s57, 2
	s_or_b32 s12, s57, 3
	s_or_b32 s13, s57, 4
	s_or_b32 s14, s57, 5
	s_or_b32 s15, s57, 6
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
	s_cmp_lt_i32 s11, s27
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s11, s33, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s12, s27
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s12, s4
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s13, s27
	s_mov_b32 s4, 0
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s14, s27
	s_mov_b32 s14, 0x7ffffffe
	s_cselect_b32 s41, -1, 0
	s_cmp_lt_i32 s15, s27
	s_mov_b32 s15, 0x31027000
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
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_and_b32 s13, s5, 0xffff
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v1, s34, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_mul_i32 s56, s56, s33
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s46, s2
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v18, s56, v0
	.loc	1 587 22                        ; attention_backward.py:587:22
	s_add_i32 s5, s26, 31
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v2, s35, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v19, s33, v18
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v18, 1, v18
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v3, s35, v2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v2, 1, v2
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v20, s33, v19
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v19, 1, v19
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
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v29, s33, v24
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v24, 1, v24
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
	s_clause 0x5
	buffer_load_u16 v11, v1, s[12:15], 0 offen
	buffer_load_u16 v2, v2, s[12:15], 0 offen
	buffer_load_u16 v3, v3, s[12:15], 0 offen
	buffer_load_u16 v4, v4, s[12:15], 0 offen
	buffer_load_u16 v5, v5, s[12:15], 0 offen
	buffer_load_u16 v6, v6, s[12:15], 0 offen
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s40, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v8, 1, v8
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v1, s35, v10
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v7, 1, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v12, s35, v1
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
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
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v15, s35, v14
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v14, 1, v14
	v_lshlrev_b32_e32 v13, 1, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s23, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s22, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	s_clause 0x4
	buffer_load_u16 v9, v9, s[12:15], 0 offen
	buffer_load_u16 v10, v10, s[12:15], 0 offen
	buffer_load_u16 v16, v1, s[12:15], 0 offen
	buffer_load_u16 v12, v12, s[12:15], 0 offen
	buffer_load_u16 v13, v13, s[12:15], 0 offen
	v_lshlrev_b32_e32 v1, 1, v15
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s19, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_lshl_u32 v15, v15, s35, 1
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s20, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s21, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	s_clause 0x4
	buffer_load_u16 v14, v14, s[12:15], 0 offen
	buffer_load_u16 v7, v7, s[12:15], 0 offen
	buffer_load_u16 v17, v1, s[12:15], 0 offen
	buffer_load_u16 v8, v8, s[12:15], 0 offen
	buffer_load_u16 v15, v15, s[12:15], 0 offen
	v_lshlrev_b32_e32 v1, 1, v0
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s46, s11
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s13, s7, 0xffff
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s45, s11
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v21, 0x90, v1
	v_xor_b32_e32 v22, 0x120, v1
	v_xor_b32_e32 v26, 0x2d0, v1
	v_xor_b32_e32 v23, 0x1b0, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_add_nc_u32 v188, 0, v21
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v21, s33, v29
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v192, 0, v26
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s44, s11
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v26, 0x80000000, v20 :: v_dual_add_nc_u32 v189, 0, v22
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v22, s33, v21
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v25, 0x240, v1
	v_add_nc_u32_e32 v190, 0, v23
	v_xor_b32_e32 v27, 0x360, v1
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s43, s11
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v23, s33, v22
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_add_nc_u32 v191, 0, v25
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v28, 0x3f0, v1
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v20, 1, v29
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v25, s33, v23
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s42, s11
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v193, 0, v27
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v21, 1, v21
	v_lshlrev_b32_e32 v23, 1, v23
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v27, s33, v25
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v194, 0, v28
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v28, 0x80000000, v20, vcc_lo
	v_lshlrev_b32_e32 v20, 1, v22
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s41, s11
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v22, s33, v27
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s40, s11
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v25, 1, v25
	v_cndmask_b32_e32 v29, 0x80000000, v20, vcc_lo
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v20, s33, v22
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s39, s11
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v27, 1, v27
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s38, s11
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v30, s33, v20
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_lshlrev_b32 v22, 1, v22
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s37, s11
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v31, s33, v30
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s36, s11
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_mov_b32 s12, s6
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v32, s33, v31
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s23, s11
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v33, 0x80000000, v20 :: v_dual_lshlrev_b32 v30, 1, v30
	v_lshlrev_b32_e32 v20, 1, v31
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s22, s11
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v31, 1, v32
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v30, 0x80000000, v30 :: v_dual_add_nc_u32 v187, 0, v1
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s19, s11
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_lshl_u32 v32, v32, s33, 1
	v_cndmask_b32_e32 v34, 0x80000000, v20, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s20, s11
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_ashr_i32 s6, s5, 31
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s21, s11
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_lshr_b32 s6, s6, 27
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_add_i32 s6, s5, s6
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_hi_u32 s5, s17, s18
	.loc	1 587 20                        ; attention_backward.py:587:20
	s_and_b32 s60, s6, 0xffffffe0
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_bfe_u32 s6, s28, 0x10008
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(15)
	ds_store_b16 v187, v11
	s_waitcnt vmcnt(9)
	ds_store_b16 v187, v9 offset:1024
	ds_store_b16 v188, v2
	s_waitcnt vmcnt(8)
	ds_store_b16 v188, v10 offset:1024
	ds_store_b16 v189, v3
	s_waitcnt vmcnt(7)
	ds_store_b16 v189, v16 offset:1024
	ds_store_b16 v190, v4
	s_waitcnt vmcnt(6)
	ds_store_b16 v190, v12 offset:1024
	ds_store_b16 v191, v5
	s_waitcnt vmcnt(5)
	ds_store_b16 v191, v13 offset:1024
	ds_store_b16 v192, v6
	s_waitcnt vmcnt(4)
	ds_store_b16 v192, v14 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v193, v7
	s_waitcnt vmcnt(2)
	ds_store_b16 v193, v17 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v194, v8
	s_waitcnt vmcnt(0)
	ds_store_b16 v194, v15 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_clause 0xf
	buffer_load_u16 v20, v18, s[12:15], 0 offen
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	buffer_load_u16 v18, v26, s[12:15], 0 offen
	buffer_load_u16 v17, v24, s[12:15], 0 offen
	buffer_load_u16 v16, v28, s[12:15], 0 offen
	buffer_load_u16 v15, v21, s[12:15], 0 offen
	buffer_load_u16 v14, v29, s[12:15], 0 offen
	buffer_load_u16 v13, v23, s[12:15], 0 offen
	buffer_load_u16 v28, v25, s[12:15], 0 offen
	buffer_load_u16 v27, v27, s[12:15], 0 offen
	buffer_load_u16 v26, v22, s[12:15], 0 offen
	buffer_load_u16 v25, v33, s[12:15], 0 offen
	buffer_load_u16 v24, v30, s[12:15], 0 offen
	buffer_load_u16 v23, v34, s[12:15], 0 offen
	buffer_load_u16 v22, v31, s[12:15], 0 offen
	buffer_load_u16 v21, v32, s[12:15], 0 offen
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_and_b32_e32 v2, 7, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v32, 15, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v3, 4, v2
	v_lshl_or_b32 v4, v32, 7, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v3, 16, v4
	v_xor_b32_e32 v7, 32, v4
	v_xor_b32_e32 v8, 48, v4
	v_xor_b32_e32 v9, 64, v4
	v_xor_b32_e32 v11, 0x60, v4
	v_add_nc_u32_e32 v6, 0, v3
	v_xor_b32_e32 v3, 0x50, v4
	v_xor_b32_e32 v12, 0x70, v4
	v_add_nc_u32_e32 v5, 0, v4
	v_add_nc_u32_e32 v7, 0, v7
	v_add_nc_u32_e32 v8, 0, v8
	v_add_nc_u32_e32 v9, 0, v9
	v_add_nc_u32_e32 v10, 0, v3
	v_add_nc_u32_e32 v11, 0, v11
	v_add_nc_u32_e32 v12, 0, v12
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
	ds_load_b128 v[33:36], v5
	ds_load_b128 v[37:40], v6
	s_load_b128 s[36:39], s[0:1], 0x50
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_mul_i32 s6, s5, s9
	s_xor_b32 s7, s10, s16
	s_sub_i32 s6, s17, s6
	s_add_i32 s10, s5, 1
	s_sub_i32 s12, s6, s9
	s_cmp_ge_u32 s6, s9
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_and_b32_e32 v3, 32, v0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s5, s10, s5
	s_cselect_b32 s6, s12, s6
	s_add_i32 s10, s5, 1
	s_cmp_ge_u32 s6, s9
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v29, v0, 4, 1
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s5, s10, s5
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshrrev_b32_e32 v30, 1, v3
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_xor_b32 s5, s5, s7
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[33:36], off
	scratch_store_b128 off, v[37:40], off offset:16
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[33:36], v7
	ds_load_b128 v[37:40], v8
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_sub_i32 s28, s5, s7
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[33:36], off offset:32 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[37:40], off offset:48 ; 16-byte Folded Spill
	.loc	1 0 0                           ; attention_backward.py:0
	ds_load_b128 v[33:36], v9
	ds_load_b128 v[37:40], v10
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_cmp_lt_i32 s28, 1
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[33:36], off offset:64 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[37:40], off offset:80 ; 16-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[33:36], v11
	ds_load_b128 v[37:40], v12
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[33:36], off offset:96 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[37:40], off offset:112 ; 16-byte Folded Spill
	.loc	1 717 21 is_stmt 1              ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b16 v187, v20
	s_waitcnt vmcnt(7)
	ds_store_b16 v187, v28 offset:1024
	ds_store_b16 v188, v19
	s_waitcnt vmcnt(6)
	ds_store_b16 v188, v27 offset:1024
	ds_store_b16 v189, v18
	s_waitcnt vmcnt(5)
	ds_store_b16 v189, v26 offset:1024
	ds_store_b16 v190, v17
	s_waitcnt vmcnt(4)
	ds_store_b16 v190, v25 offset:1024
	ds_store_b16 v191, v16
	s_waitcnt vmcnt(3)
	ds_store_b16 v191, v24 offset:1024
	ds_store_b16 v192, v15
	s_waitcnt vmcnt(2)
	ds_store_b16 v192, v23 offset:1024
	ds_store_b16 v193, v14
	s_waitcnt vmcnt(1)
	ds_store_b16 v193, v22 offset:1024
	ds_store_b16 v194, v13
	s_waitcnt vmcnt(0)
	ds_store_b16 v194, v21 offset:1024
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
	v_or_b32_e32 v197, s57, v29
	s_ashr_i32 s1, s5, 31
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_sub_i32 s0, s57, s31
	s_xor_b32 s5, s8, s1
	s_max_i32 s0, s0, 0
	s_sub_i32 s10, s5, s1
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v14, 2, v197
	v_or_b32_e32 v15, 4, v197
	v_or_b32_e32 v16, 6, v197
	v_or_b32_e32 v17, 8, v197
	v_or_b32_e32 v18, 10, v197
	v_or_b32_e32 v19, 12, v197
	v_or_b32_e32 v20, 14, v197
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_and_b32 s0, s0, 0x7fffffe0
	s_mul_i32 s1, s10, s25
	s_max_u32 s0, s4, s0
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_sub_i32 s3, s3, s1
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_and_b32 s1, s59, exec_lo
	s_cselect_b32 s63, s0, s4
	.loc	1 517 21 is_stmt 1              ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s1, s27, v14
	v_cmp_gt_i32_e64 s4, s27, v15
	v_cmp_gt_i32_e64 s5, s27, v16
	v_cmp_gt_i32_e64 s6, s27, v17
	v_cmp_gt_i32_e64 s7, s27, v18
	v_cmp_gt_i32_e64 s8, s27, v19
	v_cmp_gt_i32_e64 s9, s27, v20
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[18:21], v12
	ds_load_b128 v[14:17], v11
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	.loc	1 662 35                        ; attention_backward.py:662:35
	s_mul_i32 s10, s10, s24
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[14:17], off offset:128
	scratch_store_b128 off, v[18:21], off offset:144
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[18:21], v10
	ds_load_b128 v[14:17], v9
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s65, s28, s3
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s0, s27, v197
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[14:17], off offset:160
	scratch_store_b128 off, v[18:21], off offset:176
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[18:21], v8
	ds_load_b128 v[14:17], v7
	ds_load_b128 v[9:12], v6
	ds_load_b128 v[5:8], v5
	s_add_i32 s65, s65, s10
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[5:8], off offset:224
	scratch_store_b128 off, v[9:12], off offset:240
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v6, s35, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v7, s33, v0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[14:17], off offset:192
	scratch_store_b128 off, v[18:21], off offset:208
	v_lshl_or_b32 v11, v3, 6, v4
	v_mov_b32_e32 v205, 0
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v9, s35, v6
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v10, s33, v7
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:256
	scratch_store_b32 off, v7, off offset:260
	v_xor_b32_e32 v4, 16, v11
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v9, off offset:264
	scratch_store_b32 off, v10, off offset:268
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v12, s35, v9
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v14, s33, v10
	v_lshlrev_b32_e32 v9, 3, v0
	scratch_store_b32 off, v11, off offset:272 ; 4-byte Folded Spill
	v_xor_b32_e32 v5, 32, v11
	scratch_store_b32 off, v12, off offset:276 ; 4-byte Folded Spill
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v15, s35, v12
	scratch_store_b32 off, v14, off offset:280 ; 4-byte Folded Spill
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v16, s33, v14
	v_and_b32_e32 v14, 48, v9
	v_lshlrev_b32_e32 v12, 6, v0
	v_xor_b32_e32 v1, v9, v1
	v_xor_b32_e32 v6, 48, v11
	v_add_nc_u32_e32 v18, s33, v16
	v_lshl_or_b32 v22, v32, 6, v14
	v_lshl_or_b32 v2, v2, 6, v14
	v_dual_mov_b32 v83, v205 :: v_dual_add_nc_u32 v196, 0, v4
	v_xor_b32_e32 v7, 64, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v244, v22 :: v_dual_add_nc_u32 v17, s35, v15
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v15, off offset:284
	scratch_store_b32 off, v16, off offset:288
	v_bfe_i32 v15, v0, 3, 1
	v_cndmask_b32_e64 v16, 0x420, 0, vcc_lo
	scratch_store_b32 off, v17, off offset:292 ; 4-byte Folded Spill
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v17, s35, v17
	scratch_store_b32 off, v18, off offset:296 ; 4-byte Folded Spill
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v18, s33, v18
	v_and_or_b32 v9, 0x210, v15, v16
	v_mov_b32_e32 v41, 0
	scratch_store_b32 off, v17, off offset:300 ; 4-byte Folded Spill
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v15, s35, v17
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v16, s33, v18
	v_and_or_b32 v17, v1, 48, v12
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_and_b32_e32 v13, 16, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v18, off offset:304
	scratch_store_b32 off, v15, off offset:308
	v_dual_mov_b32 v224, v17 :: v_dual_lshlrev_b32 v1, 1, v32
	v_lshlrev_b32_e32 v12, 2, v13
	.loc	1 535 17 is_stmt 1              ; attention_backward.py:535:17
	v_add_nc_u32_e32 v13, s35, v15
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v15, s33, v16
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v29, off offset:328
	scratch_store_b32 off, v16, off offset:312
	v_xor_b32_e32 v16, v9, v2
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v18, s35, v13
	scratch_store_b32 off, v15, off offset:320 ; 4-byte Folded Spill
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v15, s33, v15
	v_xor_b32_e32 v2, 16, v17
	v_xor_b32_e32 v9, 32, v17
	scratch_store_b32 off, v13, off offset:316 ; 4-byte Folded Spill
	v_xor_b32_e32 v13, 48, v17
	v_dual_mov_b32 v238, v18 :: v_dual_add_nc_u32 v17, s35, v18
	v_add_nc_u32_e32 v18, s33, v15
	v_or3_b32 v19, v1, v12, v3
	v_mov_b32_e32 v42, v205
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v43, v205 :: v_dual_add_nc_u32 v20, s35, v17
	v_add_nc_u32_e32 v21, s33, v18
	v_xor_b32_e32 v12, 16, v16
	v_mov_b32_e32 v226, v15
	v_xor_b32_e32 v15, 32, v16
	v_dual_mov_b32 v44, v205 :: v_dual_add_nc_u32 v23, s35, v20
	v_dual_mov_b32 v45, v205 :: v_dual_add_nc_u32 v24, s33, v21
	v_mov_b32_e32 v225, v16
	v_xor_b32_e32 v14, 48, v16
	v_dual_mov_b32 v227, v17 :: v_dual_mov_b32 v222, v18
	v_xor_b32_e32 v16, 0x90, v19
	v_xor_b32_e32 v17, 0x120, v19
	v_mov_b32_e32 v239, v19
	v_xor_b32_e32 v18, 0x1b0, v19
	v_mov_b32_e32 v243, v20
	v_mov_b32_e32 v229, v21
	v_xor_b32_e32 v19, 16, v22
	v_xor_b32_e32 v20, 32, v22
	v_xor_b32_e32 v21, 48, v22
	v_mov_b32_e32 v232, v23
	v_dual_mov_b32 v47, v205 :: v_dual_add_nc_u32 v22, s35, v23
	v_dual_mov_b32 v46, v205 :: v_dual_add_nc_u32 v23, s33, v24
	v_dual_mov_b32 v48, v205 :: v_dual_add_nc_u32 v237, 0, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v2, s33, v23
	v_mov_b32_e32 v34, v205
	v_mov_b32_e32 v38, v205
	v_mov_b32_e32 v39, v205
	v_dual_mov_b32 v91, v205 :: v_dual_mov_b32 v230, v2
	v_add3_u32 v236, 0, v3, v1
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v1, s35, v22
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v2, s33, v2
	v_mov_b32_e32 v92, v205
	v_dual_mov_b32 v96, v205 :: v_dual_mov_b32 v81, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v228, v1 :: v_dual_add_nc_u32 v1, s35, v1
	v_mov_b32_e32 v254, v2
	v_dual_mov_b32 v85, v205 :: v_dual_add_nc_u32 v2, s33, v2
	v_mov_b32_e32 v86, v205
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v253, v1
	v_dual_mov_b32 v234, v2 :: v_dual_add_nc_u32 v1, s35, v1
	v_add_nc_u32_e32 v2, s33, v2
	v_xor_b32_e32 v8, 0x50, v11
	v_dual_mov_b32 v88, v205 :: v_dual_add_nc_u32 v199, 0, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v223, v1
	v_dual_mov_b32 v198, v2 :: v_dual_add_nc_u32 v1, s35, v1
	v_add_nc_u32_e32 v2, s33, v2
	v_dual_mov_b32 v87, v205 :: v_dual_add_nc_u32 v200, 0, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v186, v1 :: v_dual_add_nc_u32 v1, s35, v1
	v_add_nc_u32_e32 v203, s33, v2
	v_xor_b32_e32 v10, 0x60, v11
	v_add_nc_u32_e32 v201, 0, v7
	v_add_nc_u32_e32 v204, 0, v8
	v_add_nc_u32_e32 v202, s35, v1
	v_add_nc_u32_e32 v4, s33, v203
	v_xor_b32_e32 v11, 0x70, v11
	v_dual_mov_b32 v35, v205 :: v_dual_add_nc_u32 v240, 0, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, s35, v202
	v_dual_mov_b32 v235, v1 :: v_dual_add_nc_u32 v6, s33, v4
	v_add_nc_u32_e32 v1, 0, v10
	v_dual_mov_b32 v37, v205 :: v_dual_add_nc_u32 v242, 0, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v5, s35, v3
	v_dual_mov_b32 v231, v2 :: v_dual_add_nc_u32 v8, s33, v6
	v_add_nc_u32_e32 v2, 0, v11
	v_dual_mov_b32 v36, v205 :: v_dual_add_nc_u32 v241, 0, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v7, s35, v5
	v_add_nc_u32_e32 v10, s33, v8
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v246, 0, v14
	v_dual_mov_b32 v40, v205 :: v_dual_add_nc_u32 v245, 0, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v9, s35, v7
	v_add_nc_u32_e32 v12, s33, v10
	v_dual_mov_b32 v90, v205 :: v_dual_add_nc_u32 v247, 0, v16
	v_dual_mov_b32 v93, v205 :: v_dual_add_nc_u32 v250, 0, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v11, s35, v9
	v_add_nc_u32_e32 v14, s33, v12
	v_dual_mov_b32 v94, v205 :: v_dual_add_nc_u32 v251, 0, v18
	v_dual_mov_b32 v95, v205 :: v_dual_add_nc_u32 v252, 0, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v13, s35, v11
	v_add_nc_u32_e32 v16, s33, v14
	v_dual_mov_b32 v82, v205 :: v_dual_add_nc_u32 v255, 0, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v248, v22 :: v_dual_add_nc_u32 v15, s35, v13
	v_add_nc_u32_e32 v18, s33, v16
	v_dual_mov_b32 v84, v205 :: v_dual_add_nc_u32 v195, 0, v21
	v_mov_b32_e32 v233, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v17, s35, v15
	v_dual_mov_b32 v249, v23 :: v_dual_add_nc_u32 v20, s33, v18
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v25, v30, v32
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_mul_f32 s64, s61, 0x3fb8aa3b
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v19, s35, v17
	v_add_nc_u32_e32 v22, s33, v20
	s_cmp_lt_i32 s63, s60
	s_mov_b32 s62, 0
	s_cselect_b32 s66, -1, 0
	v_add_nc_u32_e32 v21, s35, v19
	v_add_nc_u32_e32 v24, s33, v22
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	v_add_nc_u32_e32 v23, s35, v21
	s_and_b32 s53, s47, 0xffff
	s_mov_b32 s52, s46
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v32, off offset:324
	scratch_store_b32 off, v30, off offset:332
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
	scratch_load_b32 v28, off, off offset:268
	scratch_load_b32 v29, off, off offset:296
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s3, s55, s33
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s47
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v27, s3, v0, 1
	s_mov_b32 s47, s51
	v_add_lshl_u32 v31, s3, v226, 1
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v209, v205
	v_mov_b32_e32 v211, v205
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v55, s3, v18, 1
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v116.h, v62.l
	v_mov_b16_e32 v115.h, v63.l
	v_mov_b16_e32 v113.h, v65.l
	v_mov_b16_e32 v114.h, v64.l
	v_mov_b16_e32 v117.h, v61.l
	v_mov_b16_e32 v118.h, v60.l
	v_mov_b16_e32 v119.h, v59.l
	v_mov_b16_e32 v120.h, v26.l
	v_mov_b16_e64 v121.h, v129.l
	v_mov_b16_e32 v122.h, v71.l
	v_mov_b16_e32 v123.h, v69.l
	v_mov_b16_e32 v124.h, v68.l
	v_mov_b16_e64 v125.h, v131.l
	v_mov_b16_e64 v126.h, v130.l
	v_mov_b16_e32 v127.h, v72.l
	v_mov_b16_e64 v128.h, v70.l
	.loc	1 607 13 is_stmt 1              ; attention_backward.py:607:13
	s_add_i32 s68, s68, 32
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v134, 0, v225
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v206, v205
	v_mov_b32_e32 v208, v205
	v_mov_b32_e32 v210, v205
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v30, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v212, v205 :: v_dual_add_nc_u32 v133, 0, v224
	v_mov_b32_e32 v207, v205
	v_mov_b32_e32 v97, v205
	v_dual_mov_b32 v101, v209 :: v_dual_mov_b32 v98, v206
	v_mov_b32_e32 v100, v208
	v_mov_b32_e32 v104, v212
	v_dual_mov_b32 v102, v210 :: v_dual_mov_b32 v99, v207
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v28, s3, v28, 1
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s46
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s46, s50
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v29, s3, v29, 1
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	s_clause 0x1
	buffer_load_u16 v162, v27, s[44:47], 0 offen
	buffer_load_u16 v163, v28, s[44:47], 0 offen
	scratch_load_b32 v27, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s103
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v28, s3, v222, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v30, s3, v30, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v27, s3, v27, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s101
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v164, v27, s[44:47], 0 offen
	scratch_load_b32 v27, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v27, s3, v27, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s100
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v165, v27, s[44:47], 0 offen
	scratch_load_b32 v27, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v27, s3, v27, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s99
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	s_clause 0x1
	buffer_load_u16 v174, v27, s[44:47], 0 offen
	buffer_load_u16 v175, v28, s[44:47], 0 offen
	v_add_lshl_u32 v27, s3, v233, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s92
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v28, s3, v231, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s90
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v176, v27, s[44:47], 0 offen
	v_add_lshl_u32 v27, s3, v230, 1
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s89
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v177, v27, s[44:47], 0 offen
	v_add_lshl_u32 v27, s3, v234, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s88
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	s_clause 0x1
	buffer_load_u16 v178, v27, s[44:47], 0 offen
	buffer_load_u16 v179, v28, s[44:47], 0 offen
	v_add_lshl_u32 v27, s3, v4, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s87
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v28, s3, v16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s86
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v180, v27, s[44:47], 0 offen
	v_add_lshl_u32 v27, s3, v8, 1
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s85
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v181, v27, s[44:47], 0 offen
	v_add_lshl_u32 v27, s3, v12, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s84
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	s_clause 0x1
	buffer_load_u16 v182, v27, s[44:47], 0 offen
	buffer_load_u16 v183, v28, s[44:47], 0 offen
	v_add_lshl_u32 v27, s3, v20, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s83
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v28, off, off offset:280 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s82
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v184, v27, s[44:47], 0 offen
	v_add_lshl_u32 v27, s3, v24, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s81
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v185, v27, s[44:47], 0 offen
	scratch_load_b32 v27, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v28, s3, v28, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v27, s3, v27, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s80
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s79
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v29, 0x80000000, v29, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s78
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s77
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v54, 0x80000000, v31, vcc_lo
	v_add_lshl_u32 v31, s3, v229, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v52, 0x80000000, v31, vcc_lo
	v_add_lshl_u32 v31, s3, v249, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s75
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v50, 0x80000000, v31, vcc_lo
	v_add_lshl_u32 v31, s3, v254, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s74
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v32, 0x80000000, v31, vcc_lo
	s_clause 0x7
	buffer_load_u16 v31, v30, s[44:47], 0 offen
	buffer_load_u16 v49, v29, s[44:47], 0 offen
	buffer_load_u16 v51, v28, s[44:47], 0 offen
	buffer_load_u16 v53, v27, s[44:47], 0 offen
	buffer_load_u16 v32, v32, s[44:47], 0 offen
	buffer_load_u16 v50, v50, s[44:47], 0 offen
	buffer_load_u16 v52, v52, s[44:47], 0 offen
	buffer_load_u16 v54, v54, s[44:47], 0 offen
	v_add_lshl_u32 v27, s3, v203, 1
	v_add_lshl_u32 v28, s3, v6, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s73
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v29, s3, v10, 1
	v_add_lshl_u32 v30, s3, v198, 1
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s72
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s71
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v29, 0x80000000, v29, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s54
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s54, s50
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s69
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v67, 0x80000000, v55, vcc_lo
	v_add_lshl_u32 v55, s3, v22, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v73, 0x80000000, v55, vcc_lo
	v_add_nc_u32_e32 v55, s33, v24
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s43
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s43, s51
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v55, s3, v55, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v74, 0x80000000, v55, vcc_lo
	v_add_lshl_u32 v55, s3, v14, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s11, s42
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s42, s50
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_i32 s68, s60
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v75, 0x80000000, v55, vcc_lo
	s_clause 0x7
	buffer_load_u16 v55, v29, s[44:47], 0 offen
	buffer_load_u16 v56, v28, s[44:47], 0 offen
	buffer_load_u16 v57, v27, s[44:47], 0 offen
	buffer_load_u16 v58, v30, s[44:47], 0 offen
	buffer_load_u16 v27, v74, s[44:47], 0 offen
	buffer_load_u16 v28, v73, s[44:47], 0 offen
	buffer_load_u16 v29, v67, s[44:47], 0 offen
	buffer_load_u16 v30, v75, s[44:47], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_add_lshl_u32 v67, s55, v25, 2
	s_mov_b32 s55, s51
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v67, 0x80000000, v67, s10
	buffer_load_b32 v132, v67, s[52:55], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v67, v67, s[40:43], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v103, v211
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(17)
	v_mov_b16_e64 v165.h, v31.l
	s_waitcnt vmcnt(16)
	v_mov_b16_e64 v164.h, v49.l
	s_waitcnt vmcnt(15)
	v_mov_b16_e64 v163.h, v51.l
	s_waitcnt vmcnt(14)
	v_mov_b16_e64 v162.h, v53.l
	s_waitcnt vmcnt(13)
	v_mov_b16_e64 v177.h, v32.l
	s_waitcnt vmcnt(12)
	v_mov_b16_e64 v176.h, v50.l
	s_waitcnt vmcnt(11)
	v_mov_b16_e64 v175.h, v52.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e64 v174.h, v54.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e64 v181.h, v55.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v180.h, v56.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v179.h, v57.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v178.h, v58.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v185.h, v27.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v184.h, v28.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v183.h, v29.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v182.h, v30.l
	ds_store_b128 v133, v[162:165]
	ds_store_b128 v237, v[174:177]
	ds_store_b128 v240, v[178:181]
	ds_store_b128 v241, v[182:185]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[170:173], v134
	ds_load_b128 v[158:161], v134 offset:2048
	ds_load_b128 v[166:169], v242
	ds_load_b128 v[154:157], v242 offset:2048
	ds_load_b128 v[150:153], v245
	ds_load_b128 v[142:145], v245 offset:2048
	ds_load_b128 v[146:149], v246
	ds_load_b128 v[138:141], v246 offset:2048
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v187, v162
	ds_store_b16 v187, v174 offset:1024
	ds_store_b16 v187, v178 offset:2048
	ds_store_b16 v187, v182 offset:3072
	ds_store_b16 v188, v53
	ds_store_b16 v188, v54 offset:1024
	ds_store_b16 v188, v58 offset:2048
	ds_store_b16 v188, v30 offset:3072
	ds_store_b16 v189, v163
	ds_store_b16 v189, v175 offset:1024
	ds_store_b16 v189, v179 offset:2048
	ds_store_b16 v189, v183 offset:3072
	ds_store_b16 v190, v51
	ds_store_b16 v190, v52 offset:1024
	ds_store_b16 v190, v57 offset:2048
	ds_store_b16 v190, v29 offset:3072
	ds_store_b16 v191, v164
	ds_store_b16 v191, v176 offset:1024
	ds_store_b16 v191, v180 offset:2048
	ds_store_b16 v191, v184 offset:3072
	ds_store_b16 v192, v49
	ds_store_b16 v192, v50 offset:1024
	ds_store_b16 v192, v56 offset:2048
	ds_store_b16 v192, v28 offset:3072
	ds_store_b16 v193, v165
	ds_store_b16 v193, v177 offset:1024
	ds_store_b16 v193, v181 offset:2048
	ds_store_b16 v193, v185 offset:3072
	ds_store_b16 v194, v31
	ds_store_b16 v194, v32 offset:1024
	ds_store_b16 v194, v55 offset:2048
	ds_store_b16 v194, v27 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[206:209], off, off offset:224
	scratch_load_b128 v[210:213], off, off offset:240
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[73:76], v66
	ds_load_b128 v[77:80], v196
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(3)
	v_fma_f32 v66, s64, v105, -v132
	v_fma_f32 v105, s64, v112, -v132
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v62, v66
	.loc	1 715 36 is_stmt 1              ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[206:213], v[73:80], v[97:104]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[206:209], off, off offset:192
	scratch_load_b128 v[210:213], off, off offset:208
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[73:76], v199
	ds_load_b128 v[77:80], v200
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[206:213], v[73:80], v[97:104]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[206:209], off, off offset:160
	scratch_load_b128 v[210:213], off, off offset:176
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[73:76], v201
	ds_load_b128 v[77:80], v204
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[206:213], v[73:80], v[97:104]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[206:209], off, off offset:128
	scratch_load_b128 v[210:213], off, off offset:144
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[73:76], v1
	ds_load_b128 v[77:80], v2
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[206:213], v[73:80], v[97:104]
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v75, 0, v62, s102
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v73, s64, v106, -v132
	v_fma_f32 v76, s64, v107, -v132
	v_fma_f32 v77, s64, v108, -v132
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v74, v97, v67
	v_sub_f32_e32 v97, v98, v67
	v_sub_f32_e32 v98, v99, v67
	v_sub_f32_e32 v99, v100, v67
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v78, s64, v109, -v132
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v62, v75, v74
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v79, s64, v110, -v132
	v_fma_f32 v80, s64, v111, -v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v62, s61, v62
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v63, v62, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v62, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v65, v62, v63, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v62, v73
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v26.h, 0x7fff, v65.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v75, v75
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v65, 0, v244
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v74, 0, v62, s98
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v62, v74, v97
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v59, v74, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v62, s61, v62
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v59, v74, v59, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v63, v62, 16, 1
	v_cmp_o_f32_e64 s3, v62, v62
	v_add3_u32 v97, v62, v63, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v62, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v62, 0, v62, s97
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_dual_sub_f32 v100, v101, v67 :: v_dual_mul_f32 v63, v62, v98
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v60, v62, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v63, s61, v63
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v60, v62, v60, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v64, v63, 16, 1
	v_cmp_o_f32_e64 s10, v63, v63
	v_add3_u32 v98, v63, v64, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v63, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v63, 0, v63, s96
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v64, v63, v99
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v61, v63, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v64, s61, v64
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v61, v63, v61, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v66, v64, 16, 1
	v_cmp_o_f32_e64 s12, v64, v64
	v_add3_u32 v77, v64, v66, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v64, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v76, 0, v64, s95
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v101, v102, v67
	v_sub_f32_e32 v102, v103, v67
	.loc	1 720 30 is_stmt 0              ; attention_backward.py:720:30
	v_mul_f32_e32 v64, v76, v100
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v103, v104, v67
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_bfe_u32 v68, v76, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v64, s61, v64
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v68, v76, v68, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v66, v64, 16, 1
	v_cmp_o_f32_e64 s13, v64, v64
	v_add3_u32 v73, v64, v66, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v64, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v27.h, 0x7fff, v73.h, s13
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s13, v76, v76
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v73, 0, v239
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v64, 0, v64, s94
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v73, v26
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v26.h, 0x7fff, v97.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v73, v27 offset:512
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v74, v74
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v66, v64, v101
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v69, v64, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v32.h, 0x7fff, v59.h, s3
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v66, s61, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v69, v64, v69, 0x7fff
	v_cndmask_b16 v59.h, 0x7fff, v68.h, s13
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v67, v66, 16, 1
	v_cmp_o_f32_e64 s14, v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v78, v66, v67, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v66, v80
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v27.h, 0x7fff, v78.h, s14
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v247, v26
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v26.h, 0x7fff, v98.h, s10
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s14, v64, v64
	v_cmp_o_f32_e64 s10, v62, v62
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v247, v27 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v66, 0, v66, s93
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v30.h, 0x7fff, v69.h, s14
	v_cndmask_b16 v31.h, 0x7fff, v60.h, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v67, v66, v102
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v70, v66, 16, 1
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v67, s61, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v70, v66, v70, 0x7fff
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v79, v67, 16, 1
	v_cmp_o_f32_e64 s15, v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v79, v67, v79, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v67, v105
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v27.h, 0x7fff, v79.h, s15
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v250, v26
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v26.h, 0x7fff, v77.h, s12
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s12, v63, v63
	v_cmp_o_f32_e64 s15, v66, v66
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v250, v27 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v67, 0, v67, s91
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v29.h, 0x7fff, v61.h, s12
	v_cndmask_b16 v28.h, 0x7fff, v70.h, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v80, v67, v103
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v71, v67, 16, 1
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v80, s61, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v71, v67, v71, 0x7fff
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v99, v80, 16, 1
	v_cmp_o_f32_e64 s16, v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v80, v80, v99, 0x7fff
	v_cndmask_b16 v27.h, 0x7fff, v80.h, s16
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v251, v26
	ds_store_b16_d16_hi v251, v27 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[206:209], v65
	ds_load_b128 v[210:213], v252
	ds_load_b128 v[98:101], v255
	ds_load_b128 v[102:105], v195
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v133, v[113:116]
	ds_store_b128 v237, v[117:120]
	ds_store_b128 v240, v[121:124]
	ds_store_b128 v241, v[125:128]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[110:113], v242
	ds_load_b128 v[106:109], v134
	ds_load_b128 v[114:117], v134 offset:2048
	ds_load_b128 v[118:121], v242 offset:2048
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v26, v75, 16, 1
	v_cmp_o_f32_e64 s16, v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v26, v75, v26, 0x7fff
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_mov_b16_e32 v26.l, 0
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v27.h, 0x7fff, v71.h, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v26.h, 0x7fff, v26.h, vcc_lo
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v59.l, v26.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v60, v75, v26
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[106:113], v[206:213], v[89:96]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[114:121], v[206:213], v[81:88]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[118:121], v246
	ds_load_b128 v[114:117], v245
	ds_load_b128 v[122:125], v245 offset:2048
	ds_load_b128 v[126:129], v246 offset:2048
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16_d16_hi v73, v26
	ds_store_b16_d16_hi v73, v59 offset:512
	ds_store_b16_d16_hi v247, v32
	ds_store_b16_d16_hi v247, v30 offset:512
	ds_store_b16_d16_hi v250, v31
	ds_store_b16_d16_hi v250, v28 offset:512
	ds_store_b16_d16_hi v251, v29
	ds_store_b16_d16_hi v251, v27 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[130:133], v65
	ds_load_b128 v[134:137], v252
	ds_load_b128 v[106:109], v255
	ds_load_b128 v[110:113], v195
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v187, v162
	ds_store_b16 v187, v163 offset:256
	ds_store_b16 v187, v164 offset:512
	ds_store_b16 v187, v165 offset:768
	ds_store_b16 v187, v174 offset:1024
	ds_store_b16 v187, v175 offset:1280
	ds_store_b16 v187, v176 offset:1536
	ds_store_b16 v187, v177 offset:1792
	ds_store_b16 v187, v178 offset:2048
	ds_store_b16 v187, v179 offset:2304
	ds_store_b16 v187, v180 offset:2560
	ds_store_b16 v187, v181 offset:2816
	ds_store_b16 v187, v182 offset:3072
	ds_store_b16 v187, v183 offset:3328
	ds_store_b16 v187, v184 offset:3584
	ds_store_b16 v187, v185 offset:3840
	ds_store_b16 v187, v53 offset:128
	ds_store_b16 v187, v51 offset:384
	ds_store_b16 v187, v49 offset:640
	ds_store_b16 v187, v31 offset:896
	ds_store_b16 v187, v54 offset:1152
	ds_store_b16 v187, v52 offset:1408
	ds_store_b16 v187, v50 offset:1664
	ds_store_b16 v187, v32 offset:1920
	ds_store_b16 v187, v58 offset:2176
	ds_store_b16 v187, v57 offset:2432
	ds_store_b16 v187, v56 offset:2688
	ds_store_b16 v187, v55 offset:2944
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v32.l, v26.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_store_b16 v187, v30 offset:3200
	ds_store_b16 v187, v29 offset:3456
	ds_store_b16 v187, v28 offset:3712
	ds_store_b16 v187, v27 offset:3968
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v54, v236 offset:1344
	ds_load_u16_d16 v53, v236 offset:1088
	ds_load_u16_d16 v175, v236 offset:256
	ds_load_u16_d16 v176, v236 offset:512
	ds_load_u16_d16 v177, v236 offset:768
	ds_load_u16_d16 v178, v236 offset:1024
	ds_load_u16_d16 v179, v236 offset:1280
	ds_load_u16_d16 v174, v236
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v29.l, v26.l
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_dual_sub_f32 v32, v74, v32 :: v_dual_sub_f32 v59, v76, v59
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v61, v60, 16, 1
	v_cmp_o_f32_e64 s3, v60, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v29, v63, v29
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v49, v32, 16, 1
	v_cmp_o_f32_e64 s10, v32, v32
	v_add3_u32 v60, v60, v61, 0x7fff
	v_bfe_u32 v61, v59, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v31.l, v26.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v32, v32, v49, 0x7fff
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v54, v236 offset:1472
	ds_load_u16_d16 v49, v236 offset:64
	ds_load_u16_d16 v180, v236 offset:1536
	ds_load_u16_d16 v181, v236 offset:1792
	ds_load_u16_d16 v210, v236 offset:3072
	ds_load_u16_d16 v206, v236 offset:2048
	ds_load_u16_d16 v207, v236 offset:2304
	ds_load_u16_d16 v208, v236 offset:2560
	ds_load_u16_d16 v209, v236 offset:2816
	ds_load_u16_d16 v55, v236 offset:1600
	ds_load_u16_d16 v211, v236 offset:3328
	ds_load_u16_d16 v217, v236 offset:2880
	ds_load_u16_d16 v218, v236 offset:3136
	ds_load_u16_d16 v216, v236 offset:2624
	ds_load_u16_d16 v212, v236 offset:3584
	ds_load_u16_d16 v213, v236 offset:3840
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v175, v236 offset:384
	ds_load_u16_d16 v51, v236 offset:576
	ds_load_u16_d16 v52, v236 offset:832
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v174, v236 offset:128
	ds_load_u16_d16 v50, v236 offset:320
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v49, v236 offset:192
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v181, v236 offset:1920
	ds_load_u16_d16 v214, v236 offset:2112
	ds_load_u16_d16 v215, v236 offset:2368
	ds_load_u16_d16_hi v180, v236 offset:1664
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v55, v236 offset:1728
	ds_load_u16_d16 v56, v236 offset:1856
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v211, v236 offset:3456
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v218, v236 offset:3264
	ds_load_u16_d16 v220, v236 offset:3648
	ds_load_u16_d16 v221, v236 offset:3904
	ds_load_u16_d16 v219, v236 offset:3392
	ds_load_u16_d16_hi v176, v236 offset:640
	ds_load_u16_d16_hi v177, v236 offset:896
	ds_load_u16_d16_hi v178, v236 offset:1152
	ds_load_u16_d16_hi v179, v236 offset:1408
	ds_load_u16_d16_hi v53, v236 offset:1216
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e32 vcc_lo, v59, v59
	v_add3_u32 v59, v59, v61, 0x7fff
	v_cndmask_b16 v26.h, 0x7fff, v60.h, s3
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e32 v30.l, v26.l
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v31, v62, v31
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	ds_load_u16_d16_hi v210, v236 offset:3200
	ds_load_u16_d16_hi v217, v236 offset:3008
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v52, v236 offset:960
	ds_load_u16_d16_hi v51, v236 offset:704
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v50, v236 offset:448
	ds_load_u16_d16_hi v206, v236 offset:2176
	ds_load_u16_d16_hi v207, v236 offset:2432
	ds_load_u16_d16_hi v208, v236 offset:2688
	ds_load_u16_d16_hi v209, v236 offset:2944
	ds_load_u16_d16_hi v216, v236 offset:2752
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v215, v236 offset:2496
	ds_load_u16_d16_hi v214, v236 offset:2240
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v56, v236 offset:1984
	ds_load_u16_d16_hi v212, v236 offset:3712
	ds_load_u16_d16_hi v213, v236 offset:3968
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v221, v236 offset:4032
	ds_load_u16_d16_hi v220, v236 offset:3776
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v219, v236 offset:3520
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v27.l, 0x7fff, v59.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16_d16_hi v73, v26
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v26.h, 0x7fff, v32.h, s10
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v30, v64, v30
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v32, v31, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v28.l, v26.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	ds_store_b16 v73, v27 offset:512
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v27.l, v26.l
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_add3_u32 v31, v31, v32, 0x7fff
	v_bfe_u32 v32, v29, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v28, v66, v28
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v29, v29
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v27, v67, v27
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s10, v30, v30
	v_add3_u32 v29, v29, v32, 0x7fff
	v_bfe_u32 v32, v30, 16, 1
	v_cmp_o_f32_e64 s12, v28, v28
	v_cmp_o_f32_e64 s13, v27, v27
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[49:56], v[130:137], v[33:40]
	v_wmma_f32_16x16x16_bf16 v[41:48], v[174:181], v[130:137], v[41:48]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v30, v30, v32, 0x7fff
	v_bfe_u32 v32, v28, 16, 1
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v30.l, v26.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[214:221], v[106:113], v[33:40]
	v_wmma_f32_16x16x16_bf16 v[41:48], v[206:213], v[106:113], v[41:48]
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[89:96], v[114:121], v[98:105], v[89:96]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v32, v28, v32, 0x7fff
	v_bfe_u32 v28, v27, 16, 1
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v32.l, v26.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[81:88], v[122:129], v[98:105], v[81:88]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v28, v27, v28, 0x7fff
	v_cndmask_b16 v27.l, 0x7fff, v30.h, s10
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v247, v26
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v26.h, 0x7fff, v31.h, vcc_lo
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v28.l, v26.l
	v_mov_b16_e64 v30.h, v171.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v247, v27 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v27.l, 0x7fff, v32.h, s12
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v250, v26
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v26.h, 0x7fff, v29.h, s3
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v29, 0xffff0000, v171
	v_and_b32_e32 v31, 0xffff0000, v172
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v250, v27 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v27.l, 0x7fff, v28.h, s13
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v251, v26
	ds_store_b16 v251, v27 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[57:60], v65
	ds_load_b128 v[61:64], v252
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v27, 0xffff0000, v170
	v_mov_b16_e64 v28.h, v170.l
	v_mov_b16_e64 v32.h, v172.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v26.h, v26.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v27, v27
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[49:56], v[57:64], v[33:40]
	ds_load_b128 v[49:52], v255
	ds_load_b128 v[53:56], v195
	v_wmma_f32_16x16x16_bf16 v[41:48], v[174:181], v[57:64], v[41:48]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v58, 0xffff0000, v168
	v_and_b32_e32 v60, 0xffff0000, v169
	v_mov_b16_e64 v57.h, v167.l
	v_mov_b16_e32 v57.l, v26.l
	v_mov_b16_e64 v59.h, v168.l
	v_mov_b16_e32 v59.l, v26.l
	v_mov_b16_e64 v61.h, v169.l
	v_mov_b16_e32 v61.l, v26.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[206:213], v[49:56], v[41:48]
	v_wmma_f32_16x16x16_bf16 v[33:40], v[214:221], v[49:56], v[33:40]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v52, 0xffff0000, v173
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v49.l, v27.h
	v_mov_b16_e32 v49.h, v26.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v54, 0xffff0000, v166
	v_mov_b16_e64 v53.h, v173.l
	v_mov_b16_e32 v53.l, v26.l
	v_and_b32_e32 v56, 0xffff0000, v167
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v49, 1, v49
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v55.h, v166.l
	v_mov_b16_e32 v55.l, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v49, v27, v49, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v28, v28
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v28.h, v26.l
	v_cndmask_b16 v49.h, 0x7fff, v49.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v28.l, v27.h
	v_cmp_o_f32_e64 s3, v27, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v28, 1, v28
	v_add3_u32 v28, v27, v28, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v29, v29
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v29.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v49.l, 0x7fff, v28.h, s3
	v_mov_b16_e32 v29.l, v27.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s10, v27, v27
	v_mov_b16_e32 v28.h, v26.l
	v_and_b32_e32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v29, v27, v29, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v30, v30
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v30.h, v26.l
	v_cndmask_b16 v50.h, 0x7fff, v29.h, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v30.l, v27.h
	v_cmp_o_f32_e64 s12, v27, v27
	v_mov_b16_e32 v29.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v30, 1, v30
	v_add3_u32 v30, v27, v30, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v31, v31
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v31.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v50.l, 0x7fff, v30.h, s12
	v_mov_b16_e32 v31.l, v27.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s13, v27, v27
	v_mov_b16_e32 v30.h, v26.l
	v_and_b32_e32 v31, 1, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v31, v27, v31, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v32, v32
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v32.h, v26.l
	v_cndmask_b16 v51.h, 0x7fff, v31.h, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v32.l, v27.h
	v_cmp_o_f32_e64 s14, v27, v27
	v_mov_b16_e32 v31.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v32, 1, v32
	v_add3_u32 v32, v27, v32, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v52, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v51.l, 0x7fff, v32.h, s14
	v_mov_b16_e32 v28.l, v27.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_mov_b16_e32 v32.h, v26.l
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v28, v27, v28, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v53, v53
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v52.h, 0x7fff, v28.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v29.l, v27.h
	v_cmp_o_f32_e64 s3, v27, v27
	v_mov_b16_e32 v28.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v29, 1, v29
	v_add3_u32 v29, v27, v29, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v54, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v52.l, 0x7fff, v29.h, s3
	v_mov_b16_e32 v30.l, v27.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s10, v27, v27
	v_mov_b16_e32 v29.h, v26.l
	v_and_b32_e32 v30, 1, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v30, v27, v30, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v55, v55
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v53.h, 0x7fff, v30.h, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v31.l, v27.h
	v_cmp_o_f32_e64 s12, v27, v27
	v_mov_b16_e32 v30.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v31, 1, v31
	v_add3_u32 v31, v27, v31, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v56, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v53.l, 0x7fff, v31.h, s12
	v_mov_b16_e32 v32.l, v27.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s13, v27, v27
	v_mov_b16_e32 v31.h, v26.l
	v_and_b32_e32 v32, 1, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v32, v27, v32, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v57, v57
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v57.h, v155.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v54.h, 0x7fff, v32.h, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v28.l, v27.h
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_mov_b16_e32 v32.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v28, 1, v28
	v_add3_u32 v28, v27, v28, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v58, v58
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v28.l, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v54.l, 0x7fff, v28.h, vcc_lo
	v_mov_b16_e32 v29.l, v27.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v27, v27
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v28.h, v158.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v29, v27, v29, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v59, v59
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v59.h, v156.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v55.h, 0x7fff, v29.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v30.l, v27.h
	v_cmp_o_f32_e64 s10, v27, v27
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v29, 0xffff0000, v159
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v30, 1, v30
	v_add3_u32 v30, v27, v30, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v60, v60
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v30.l, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v55.l, 0x7fff, v30.h, s10
	v_mov_b16_e32 v31.l, v27.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s12, v27, v27
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v30.h, v159.l
	v_and_b32_e32 v60, 0xffff0000, v157
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v31, 1, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v31, v27, v31, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v61, v61
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v61.h, v157.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v56.h, 0x7fff, v31.h, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v32.l, v27.h
	v_cmp_o_f32_e64 s13, v27, v27
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v31, 0xffff0000, v160
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v32, 1, v32
	v_add3_u32 v32, v27, v32, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v27, 0xffff0000, v158
	v_and_b32_e32 v58, 0xffff0000, v156
	v_mov_b16_e32 v32.l, v26.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v56.l, 0x7fff, v32.h, s13
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v27, v27
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v32.h, v160.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[49:56], v[130:137], v[41:48]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v49.l, v27.h
	v_mov_b16_e32 v49.h, v26.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v56, 0xffff0000, v155
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v52, 0xffff0000, v161
	v_mov_b16_e64 v53.h, v161.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v49, 1, v49
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v53.l, v26.l
	v_and_b32_e32 v54, 0xffff0000, v154
	v_mov_b16_e64 v55.h, v154.l
	v_mov_b16_e32 v55.l, v26.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v49, v27, v49, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v28, v28
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v28.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v49.h, 0x7fff, v49.h, vcc_lo
	v_mov_b16_e32 v28.l, v27.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v27, v27
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v28, v27, v28, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v29, v29
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v29.h, v26.l
	v_cndmask_b16 v49.l, 0x7fff, v28.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v29.l, v27.h
	v_cmp_o_f32_e64 s10, v27, v27
	v_mov_b16_e32 v28.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v29, 1, v29
	v_add3_u32 v29, v27, v29, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v30, v30
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v30.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v50.h, 0x7fff, v29.h, s10
	v_mov_b16_e32 v30.l, v27.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s12, v27, v27
	v_mov_b16_e32 v29.h, v26.l
	v_and_b32_e32 v30, 1, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v30, v27, v30, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v31, v31
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v31.h, v26.l
	v_cndmask_b16 v50.l, 0x7fff, v30.h, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v31.l, v27.h
	v_cmp_o_f32_e64 s13, v27, v27
	v_mov_b16_e32 v30.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v31, 1, v31
	v_add3_u32 v31, v27, v31, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v32, v32
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v32.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v51.h, 0x7fff, v31.h, s13
	v_mov_b16_e32 v32.l, v27.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s14, v27, v27
	v_mov_b16_e32 v31.h, v26.l
	v_and_b32_e32 v32, 1, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v32, v27, v32, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v52, v52
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v51.l, 0x7fff, v32.h, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v28.l, v27.h
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_mov_b16_e32 v32.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v28, 1, v28
	v_add3_u32 v28, v27, v28, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v53, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v52.h, 0x7fff, v28.h, vcc_lo
	v_mov_b16_e32 v29.l, v27.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v27, v27
	v_mov_b16_e32 v28.h, v26.l
	v_and_b32_e32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v29, v27, v29, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v54, v54
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v52.l, 0x7fff, v29.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v30.l, v27.h
	v_cmp_o_f32_e64 s10, v27, v27
	v_mov_b16_e32 v29.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v30, 1, v30
	v_add3_u32 v30, v27, v30, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v55, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v53.h, 0x7fff, v30.h, s10
	v_mov_b16_e32 v31.l, v27.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s12, v27, v27
	v_mov_b16_e32 v30.h, v26.l
	v_and_b32_e32 v31, 1, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v31, v27, v31, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v56, v56
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v53.l, 0x7fff, v31.h, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v32.l, v27.h
	v_cmp_o_f32_e64 s13, v27, v27
	v_mov_b16_e32 v31.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v32, 1, v32
	v_add3_u32 v32, v27, v32, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v57, v57
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v57.h, v147.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v54.h, 0x7fff, v32.h, s13
	v_mov_b16_e32 v28.l, v27.h
	v_mov_b16_e32 v32.h, v26.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v28, 1, v28
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_add3_u32 v28, v27, v28, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v27, v58, v58 :: v_dual_and_b32 v58, 0xffff0000, v148
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v28.l, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v54.l, 0x7fff, v28.h, vcc_lo
	v_mov_b16_e32 v29.l, v27.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v27, v27
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v28.h, v150.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v29, v27, v29, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v59, v59
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v59.h, v148.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v55.h, 0x7fff, v29.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v30.l, v27.h
	v_cmp_o_f32_e64 s10, v27, v27
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v29, 0xffff0000, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v30, 1, v30
	v_add3_u32 v30, v27, v30, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v60, v60
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v30.l, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v55.l, 0x7fff, v30.h, s10
	v_mov_b16_e32 v31.l, v27.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s12, v27, v27
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v30.h, v151.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v31, 1, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v31, v27, v31, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v61, v61
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v61.h, v149.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v56.h, 0x7fff, v31.h, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v32.l, v27.h
	v_cmp_o_f32_e64 s13, v27, v27
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v31, 0xffff0000, v152
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v32, 1, v32
	v_add3_u32 v32, v27, v32, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v27, 0xffff0000, v150
	v_and_b32_e32 v60, 0xffff0000, v149
	v_mov_b16_e32 v32.l, v26.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v56.l, 0x7fff, v32.h, s13
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v27, v27
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v32.h, v152.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[49:56], v[130:137], v[33:40]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v49.l, v27.h
	v_mov_b16_e32 v49.h, v26.l
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v52, 0xffff0000, v153
	v_mov_b16_e64 v53.h, v153.l
	v_mov_b16_e32 v53.l, v26.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v49, 1, v49
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v54, 0xffff0000, v146
	v_mov_b16_e64 v55.h, v146.l
	v_mov_b16_e32 v55.l, v26.l
	v_and_b32_e32 v56, 0xffff0000, v147
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v49, v27, v49, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v28, v28
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v28.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v49.h, 0x7fff, v49.h, vcc_lo
	v_mov_b16_e32 v28.l, v27.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v27, v27
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v28, v27, v28, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v29, v29
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v29.h, v26.l
	v_cndmask_b16 v49.l, 0x7fff, v28.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v29.l, v27.h
	v_cmp_o_f32_e64 s10, v27, v27
	v_mov_b16_e32 v28.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v29, 1, v29
	v_add3_u32 v29, v27, v29, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v30, v30
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v30.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v50.h, 0x7fff, v29.h, s10
	v_mov_b16_e32 v30.l, v27.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s12, v27, v27
	v_mov_b16_e32 v29.h, v26.l
	v_and_b32_e32 v30, 1, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v30, v27, v30, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v31, v31
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v31.h, v26.l
	v_cndmask_b16 v50.l, 0x7fff, v30.h, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v31.l, v27.h
	v_cmp_o_f32_e64 s13, v27, v27
	v_mov_b16_e32 v30.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v31, 1, v31
	v_add3_u32 v31, v27, v31, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v32, v32
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v32.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v51.h, 0x7fff, v31.h, s13
	v_mov_b16_e32 v32.l, v27.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s14, v27, v27
	v_mov_b16_e32 v31.h, v26.l
	v_and_b32_e32 v32, 1, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v32, v27, v32, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v52, v52
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v51.l, 0x7fff, v32.h, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v28.l, v27.h
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_mov_b16_e32 v32.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v28, 1, v28
	v_add3_u32 v28, v27, v28, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v53, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v52.h, 0x7fff, v28.h, vcc_lo
	v_mov_b16_e32 v29.l, v27.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v27, v27
	v_mov_b16_e32 v28.h, v26.l
	v_and_b32_e32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v29, v27, v29, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v54, v54
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v52.l, 0x7fff, v29.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v30.l, v27.h
	v_cmp_o_f32_e64 s10, v27, v27
	v_mov_b16_e32 v29.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v30, 1, v30
	v_add3_u32 v30, v27, v30, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v55, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v53.h, 0x7fff, v30.h, s10
	v_mov_b16_e32 v31.l, v27.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s12, v27, v27
	v_mov_b16_e32 v30.h, v26.l
	v_and_b32_e32 v31, 1, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v31, v27, v31, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v56, v56
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v53.l, 0x7fff, v31.h, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v32.l, v27.h
	v_cmp_o_f32_e64 s13, v27, v27
	v_mov_b16_e32 v31.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v32, 1, v32
	v_add3_u32 v32, v27, v32, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v57, v57
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v57.h, v139.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v54.h, 0x7fff, v32.h, s13
	v_mov_b16_e32 v28.l, v27.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_mov_b16_e32 v32.h, v26.l
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v28, v27, v28, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v27, v58, v58 :: v_dual_and_b32 v58, 0xffff0000, v140
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v28.l, v26.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v54.l, 0x7fff, v28.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v29.l, v27.h
	v_cmp_o_f32_e64 s3, v27, v27
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v28.h, v142.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v29, 1, v29
	v_add3_u32 v29, v27, v29, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v59, v59
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v59.h, v140.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v55.h, 0x7fff, v29.h, s3
	v_mov_b16_e32 v30.l, v27.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s10, v27, v27
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v29, 0xffff0000, v143
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v30, 1, v30
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v30, v27, v30, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v60, v60
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v30.l, v26.l
	v_mov_b16_e64 v60.h, v141.l
	v_mov_b16_e32 v60.l, v26.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v55.l, 0x7fff, v30.h, s10
	v_mov_b16_e32 v31.l, v27.h
	v_cmp_o_f32_e64 s12, v27, v27
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v30.h, v143.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v31, 1, v31
	v_add3_u32 v31, v27, v31, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v61, v61
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v61, 0xffff0000, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v56.h, 0x7fff, v31.h, s12
	v_mov_b16_e32 v32.l, v27.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s13, v27, v27
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v31, 0xffff0000, v144
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v32, 1, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v32, v27, v32, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v27, 0xffff0000, v142
	v_mov_b16_e32 v32.l, v26.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v56.l, 0x7fff, v32.h, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v27, v27
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v32.h, v144.l
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[49:56], v[106:113], v[41:48]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v49.l, v27.h
	v_mov_b16_e32 v49.h, v26.l
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v52, 0xffff0000, v145
	v_mov_b16_e64 v53.h, v145.l
	v_mov_b16_e32 v53.l, v26.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v49, 1, v49
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v54, 0xffff0000, v138
	v_mov_b16_e64 v55.h, v138.l
	v_mov_b16_e32 v55.l, v26.l
	v_and_b32_e32 v56, 0xffff0000, v139
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v49, v27, v49, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v28, v28
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v28.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v49.h, 0x7fff, v49.h, vcc_lo
	v_mov_b16_e32 v28.l, v27.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v27, v27
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v28, v27, v28, 0x7fff
	v_cndmask_b16 v49.l, 0x7fff, v28.h, s3
	v_mov_b16_e32 v28.h, v26.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v29, v29
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v29.h, v26.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v29.l, v27.h
	v_cmp_o_f32_e64 s10, v27, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v29, 1, v29
	v_add3_u32 v29, v27, v29, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v30, v30
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v30.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v50.h, 0x7fff, v29.h, s10
	v_mov_b16_e32 v30.l, v27.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s12, v27, v27
	v_mov_b16_e32 v29.h, v26.l
	v_and_b32_e32 v30, 1, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v30, v27, v30, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v31, v31
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v31.h, v26.l
	v_cndmask_b16 v50.l, 0x7fff, v30.h, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v31.l, v27.h
	v_cmp_o_f32_e64 s13, v27, v27
	v_mov_b16_e32 v30.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v31, 1, v31
	v_add3_u32 v31, v27, v31, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v32, v32
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v32.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v51.h, 0x7fff, v31.h, s13
	v_mov_b16_e32 v32.l, v27.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s14, v27, v27
	v_mov_b16_e32 v31.h, v26.l
	v_and_b32_e32 v32, 1, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v32, v27, v32, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v52, v52
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v51.l, 0x7fff, v32.h, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v28.l, v27.h
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_mov_b16_e32 v32.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v28, 1, v28
	v_add3_u32 v28, v27, v28, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v53, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v52.h, 0x7fff, v28.h, vcc_lo
	v_mov_b16_e32 v29.l, v27.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v27, v27
	v_mov_b16_e32 v28.h, v26.l
	v_and_b32_e32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v29, v27, v29, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v54, v54
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v52.l, 0x7fff, v29.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v30.l, v27.h
	v_cmp_o_f32_e64 s10, v27, v27
	v_mov_b16_e32 v29.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v30, 1, v30
	v_add3_u32 v30, v27, v30, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v55, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v53.h, 0x7fff, v30.h, s10
	v_mov_b16_e32 v31.l, v27.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s12, v27, v27
	v_mov_b16_e32 v30.h, v26.l
	v_and_b32_e32 v31, 1, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v31, v27, v31, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v56, v56
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v53.l, 0x7fff, v31.h, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v32.l, v27.h
	v_cmp_o_f32_e64 s13, v27, v27
	v_mov_b16_e32 v31.h, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v32, 1, v32
	v_add3_u32 v32, v27, v32, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v57, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v54.h, 0x7fff, v32.h, s13
	v_mov_b16_e32 v28.l, v27.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v28, v27, v28, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v58, v58
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v54.l, 0x7fff, v28.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v29.l, v27.h
	v_cmp_o_f32_e64 s3, v27, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v29, 1, v29
	v_add3_u32 v29, v27, v29, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v59, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v55.h, 0x7fff, v29.h, s3
	v_mov_b16_e32 v30.l, v27.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s10, v27, v27
	v_and_b32_e32 v30, 1, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v30, v27, v30, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v61, v61
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v55.l, 0x7fff, v30.h, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v31.l, v27.h
	v_cmp_o_f32_e64 s12, v27, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v31, 1, v31
	v_add3_u32 v31, v27, v31, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v60, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v56.h, 0x7fff, v31.h, s12
	v_mov_b16_e32 v26.l, v27.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s13, v27, v27
	v_and_b32_e32 v26, 1, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v26, v27, v26, 0x7fff
	v_cndmask_b16 v56.l, 0x7fff, v26.h, s13
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[49:56], v[106:113], v[33:40]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:264
	scratch_load_b32 v28, off, off offset:292
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s3, s68, 1
	s_or_b32 s10, s68, 2
	s_or_b32 s12, s68, 3
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
	s_or_b32 s55, s68, 19
	s_or_b32 s69, s68, 20
	s_or_b32 s70, s68, 21
	s_or_b32 s71, s68, 22
	s_or_b32 s82, s68, 23
	s_or_b32 s83, s68, 24
	s_or_b32 s84, s68, 25
	s_or_b32 s91, s68, 26
	s_or_b32 s93, s68, 27
	s_or_b32 s94, s68, 28
	s_or_b32 s95, s68, 29
	s_or_b32 s96, s68, 30
	s_or_b32 s97, s68, 31
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s68, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v206, v205
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s3, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v208, v205
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s10, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v210, v205
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s12, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v212, v205
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s13, s26
	v_add_nc_u32_e32 v50, s35, v23
	s_cselect_b32 s103, -1, 0
	s_cmp_lt_i32 s14, s26
	.loc	1 663 37                        ; attention_backward.py:663:37
	scratch_load_b32 v32, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s15, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v207, v205
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s101, -1, 0
	s_cmp_lt_i32 s16, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v209, v205
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s17, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v211, v205
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s100, -1, 0
	s_cmp_lt_i32 s18, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v105, v205
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s19, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v107, v207
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s99, -1, 0
	s_cmp_lt_i32 s20, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v109, v209
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s21, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v111, v211
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s22, s26
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s23, s26
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s24, s26
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s25, s26
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s42, s26
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s43, s26
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s55, s26
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s69, s26
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s70, s26
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s71, s26
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s82, s26
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s83, s26
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s84, s26
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s91, s26
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s93, s26
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s94, s26
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s95, s26
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s96, s26
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s97, s26
	s_cselect_b32 s43, -1, 0
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_add_i32 s55, s68, s67
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s47
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_mul_i32 s3, s55, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v26, s3, v0, 1
	v_add_lshl_u32 v29, s3, v238, 1
	v_add_lshl_u32 v31, s3, v248, 1
	v_add_lshl_u32 v49, s3, v253, 1
	v_add_lshl_u32 v30, s3, v243, 1
	v_add_lshl_u32 v50, s3, v50, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v27, s3, v27, 1
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s46
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v28, s3, v28, 1
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_clause 0x1
	buffer_load_u16 v113, v26, s[48:51], 0 offen
	buffer_load_u16 v114, v27, s[48:51], 0 offen
	scratch_load_b32 v26, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s103
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v27, s3, v227, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v32, s3, v32, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v26, s3, v26, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s101
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v115, v26, s[48:51], 0 offen
	scratch_load_b32 v26, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v26, s3, v26, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s100
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v116, v26, s[48:51], 0 offen
	scratch_load_b32 v26, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v26, s3, v26, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s99
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_clause 0x1
	buffer_load_u16 v117, v26, s[48:51], 0 offen
	buffer_load_u16 v118, v27, s[48:51], 0 offen
	v_add_lshl_u32 v26, s3, v232, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s92
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v27, s3, v235, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s90
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v119, v26, s[48:51], 0 offen
	v_add_lshl_u32 v26, s3, v228, 1
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s89
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v120, v26, s[48:51], 0 offen
	v_add_lshl_u32 v26, s3, v223, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s88
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_clause 0x1
	buffer_load_u16 v121, v26, s[48:51], 0 offen
	buffer_load_u16 v122, v27, s[48:51], 0 offen
	v_add_lshl_u32 v26, s3, v3, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s87
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v27, s3, v15, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s86
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v123, v26, s[48:51], 0 offen
	v_add_lshl_u32 v26, s3, v7, 1
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s85
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v124, v26, s[48:51], 0 offen
	v_add_lshl_u32 v26, s3, v11, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s84
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_clause 0x1
	buffer_load_u16 v125, v26, s[48:51], 0 offen
	buffer_load_u16 v126, v27, s[48:51], 0 offen
	v_add_lshl_u32 v26, s3, v19, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s83
	.loc	1 663 37                        ; attention_backward.py:663:37
	scratch_load_b32 v27, off, off offset:276 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s82
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v127, v26, s[48:51], 0 offen
	v_add_lshl_u32 v26, s3, v23, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s81
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v128, v26, s[48:51], 0 offen
	scratch_load_b32 v26, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v27, s3, v27, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v26, s3, v26, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s80
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s79
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s77
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v29, 0x80000000, v29, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s76
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s75
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s78
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s74
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	s_clause 0x7
	buffer_load_u16 v62, v32, s[48:51], 0 offen
	buffer_load_u16 v63, v28, s[48:51], 0 offen
	buffer_load_u16 v64, v27, s[48:51], 0 offen
	buffer_load_u16 v65, v26, s[48:51], 0 offen
	buffer_load_u16 v26, v49, s[48:51], 0 offen
	buffer_load_u16 v59, v31, s[48:51], 0 offen
	buffer_load_u16 v60, v30, s[48:51], 0 offen
	buffer_load_u16 v61, v29, s[48:51], 0 offen
	v_add_lshl_u32 v27, s3, v186, 1
	v_add_lshl_u32 v28, s3, v202, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s54
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v29, s3, v13, 1
	v_add_lshl_u32 v30, s3, v5, 1
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s73
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v31, s3, v17, 1
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s42
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v32, s3, v21, 1
	v_cndmask_b32_e32 v29, 0x80000000, v29, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s72
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v49, s3, v9, 1
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s69
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s70
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s71
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s43
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	s_clause 0x7
	buffer_load_u16 v68, v49, s[48:51], 0 offen
	buffer_load_u16 v69, v30, s[48:51], 0 offen
	buffer_load_u16 v71, v28, s[48:51], 0 offen
	buffer_load_u16 v129, v27, s[48:51], 0 offen
	buffer_load_u16 v70, v50, s[48:51], 0 offen
	buffer_load_u16 v72, v32, s[48:51], 0 offen
	buffer_load_u16 v130, v31, s[48:51], 0 offen
	buffer_load_u16 v131, v29, s[48:51], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_and_not1_b32 vcc_lo, exec_lo, s59
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_store_b16 v187, v113
	ds_store_b16 v187, v117 offset:1024
	ds_store_b16 v187, v121 offset:2048
	ds_store_b16 v187, v125 offset:3072
	s_waitcnt vmcnt(12)
	ds_store_b16 v188, v65
	s_waitcnt vmcnt(8)
	ds_store_b16 v188, v61 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b16 v188, v129 offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b16 v188, v131 offset:3072
	ds_store_b16 v189, v114
	ds_store_b16 v189, v118 offset:1024
	ds_store_b16 v189, v122 offset:2048
	ds_store_b16 v189, v126 offset:3072
	ds_store_b16 v190, v64
	ds_store_b16 v190, v60 offset:1024
	ds_store_b16 v190, v71 offset:2048
	ds_store_b16 v190, v130 offset:3072
	ds_store_b16 v191, v115
	ds_store_b16 v191, v119 offset:1024
	ds_store_b16 v191, v123 offset:2048
	ds_store_b16 v191, v127 offset:3072
	ds_store_b16 v192, v63
	ds_store_b16 v192, v59 offset:1024
	ds_store_b16 v192, v69 offset:2048
	ds_store_b16 v192, v72 offset:3072
	ds_store_b16 v193, v116
	ds_store_b16 v193, v120 offset:1024
	ds_store_b16 v193, v124 offset:2048
	ds_store_b16 v193, v128 offset:3072
	ds_store_b16 v194, v62
	ds_store_b16 v194, v26 offset:1024
	ds_store_b16 v194, v68 offset:2048
	ds_store_b16 v194, v70 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 36-byte Folded Reload
	scratch_load_b32 v27, off, off offset:272
	scratch_load_b128 v[73:76], off, off
	scratch_load_b128 v[77:80], off, off offset:16
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v66, 0, v27
	ds_load_b128 v[49:52], v66
	ds_load_b128 v[53:56], v196
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v27, s68, v25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s10, s26, v27
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v106, v206 :: v_dual_add_nc_u32 v27, s31, v27
	v_mov_b32_e32 v108, v208
	v_mov_b32_e32 v110, v210
	v_mov_b32_e32 v112, v212
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s102, s0, s10
	s_and_b32 s98, s1, s10
	s_and_b32 s97, s4, s10
	s_and_b32 s96, s5, s10
	s_and_b32 s95, s6, s10
	s_and_b32 s94, s7, s10
	s_and_b32 s93, s8, s10
	s_and_b32 s91, s9, s10
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[73:80], v[49:56], v[105:112]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[73:76], off, off offset:32
	scratch_load_b128 v[77:80], off, off offset:48
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[49:52], v199
	ds_load_b128 v[53:56], v200
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[73:80], v[49:56], v[105:112]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[73:76], off, off offset:64
	scratch_load_b128 v[77:80], off, off offset:80
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[49:52], v201
	ds_load_b128 v[53:56], v204
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[73:80], v[49:56], v[105:112]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[73:76], off, off offset:96
	scratch_load_b128 v[77:80], off, off offset:112
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[49:52], v1
	ds_load_b128 v[53:56], v2
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[73:80], v[49:56], v[105:112]
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_or_b32_e32 v28, 2, v197
	v_cmp_le_i32_e32 vcc_lo, v197, v27
	s_and_not1_b32 s19, s102, exec_lo
	s_and_not1_b32 s20, s98, exec_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_le_i32_e64 s3, v28, v27
	v_or_b32_e32 v28, 4, v197
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s18, s102, vcc_lo
	s_and_b32 s18, s18, exec_lo
	s_and_b32 s3, s98, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s12, v28, v27
	v_or_b32_e32 v28, 6, v197
	s_and_b32 s3, s3, exec_lo
	s_or_b32 s102, s19, s18
	s_or_b32 s98, s20, s3
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s12, s97, s12
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s13, v28, v27
	v_or_b32_e32 v28, 8, v197
	s_and_not1_b32 s3, s97, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s18, s96, exec_lo
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s13, s96, s13
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s14, v28, v27
	v_or_b32_e32 v28, 10, v197
	s_and_b32 s13, s13, exec_lo
	s_or_b32 s97, s3, s12
	s_or_b32 s96, s18, s13
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s14, s95, s14
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s15, v28, v27
	v_or_b32_e32 v28, 12, v197
	s_and_not1_b32 s3, s95, exec_lo
	s_and_b32 s12, s14, exec_lo
	s_and_not1_b32 s13, s94, exec_lo
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s15, s94, s15
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s16, v28, v27
	v_or_b32_e32 v28, 14, v197
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s95, s3, s12
	s_or_b32 s94, s13, s14
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s16, s93, s16
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s17, v28, v27
	s_and_not1_b32 s3, s93, exec_lo
	s_and_b32 s12, s16, exec_lo
	s_and_not1_b32 s13, s91, exec_lo
	s_or_b32 s93, s3, s12
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s17, s91, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s91, s13, s14
.LBB0_10:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 677 17 is_stmt 1              ; attention_backward.py:677:17
	s_and_not1_b32 vcc_lo, exec_lo, s58
	s_cbranch_vccnz .LBB0_7
; %bb.11:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v28, s29, v27
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v27, s30, v27
	v_or_b32_e32 v29, 2, v197
	v_or_b32_e32 v30, 4, v197
	v_or_b32_e32 v31, 6, v197
	v_or_b32_e32 v32, 8, v197
	v_or_b32_e32 v49, 10, v197
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v197, v28
	v_cmp_ge_i32_e64 s3, v29, v28
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s18, v197, v27
	v_cmp_le_i32_e64 s19, v29, v27
	v_or_b32_e32 v50, 12, v197
	v_or_b32_e32 v51, 14, v197
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s12, v30, v28
	v_cmp_ge_i32_e64 s13, v31, v28
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s20, v30, v27
	v_cmp_le_i32_e64 s21, v31, v27
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s14, v32, v28
	v_cmp_ge_i32_e64 s15, v49, v28
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s22, v32, v27
	v_cmp_le_i32_e64 s23, v49, v27
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s18, vcc_lo, s18
	s_and_b32 s3, s3, s19
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s16, v50, v28
	v_cmp_ge_i32_e64 s17, v51, v28
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s24, v50, v27
	v_cmp_le_i32_e64 s25, v51, v27
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s18, s18, s102
	s_and_b32 s3, s3, s98
	s_and_b32 s12, s12, s20
	s_and_b32 s13, s13, s21
	s_and_b32 s12, s12, s97
	s_and_b32 s13, s13, s96
	s_and_b32 s14, s14, s22
	s_and_b32 s15, s15, s23
	s_and_not1_b32 s19, s102, exec_lo
	s_and_b32 s18, s18, exec_lo
	s_and_not1_b32 s20, s98, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s14, s14, s95
	s_and_b32 s15, s15, s94
	s_and_b32 s16, s16, s24
	s_and_b32 s17, s17, s25
	s_or_b32 s102, s19, s18
	s_or_b32 s98, s20, s3
	s_and_not1_b32 s3, s97, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s18, s96, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s93
	s_and_b32 s17, s17, s91
	s_or_b32 s97, s3, s12
	s_or_b32 s96, s18, s13
	s_and_not1_b32 s3, s95, exec_lo
	s_and_b32 s12, s14, exec_lo
	s_and_not1_b32 s13, s94, exec_lo
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s95, s3, s12
	s_or_b32 s94, s13, s14
	s_and_not1_b32 s3, s93, exec_lo
	s_and_b32 s12, s16, exec_lo
	s_and_not1_b32 s13, s91, exec_lo
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s93, s3, s12
	s_or_b32 s91, s13, s14
	s_branch .LBB0_7
.LBB0_12:                               ; %Flow375
	.loc	1 0 21                          ; attention_backward.py:0:21
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v32, off, off offset:324
	scratch_load_b32 v29, off, off offset:328
	scratch_load_b32 v30, off, off offset:332
	s_branch .LBB0_14
.LBB0_13:
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
.LBB0_14:                               ; %._crit_edge165
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, v29, v30
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v16, s35, v32
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s57, v32
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
	buffer_store_b32 v89, v17, s[40:43], 0 offen
	v_add_lshl_u32 v17, v20, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v9, 14, v1
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
	v_add_nc_u32_e32 v25, v16, v8
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s23, s35, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s22
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
	v_or_b32_e32 v5, 38, v1
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v27, v16, v6
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s25, s35, v7
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v18, v25, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v4, 40, v1
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s23
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s26, s35, v6
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v94, v19, s[40:43], 0 offen
	buffer_store_b32 v95, v20, s[40:43], 0 offen
	v_add_lshl_u32 v19, v26, s34, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v21, s33, v32
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v3, 42, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s24
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v28, v16, v5
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v27, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v2, 44, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s25
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v29, v16, v4
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v0, 46, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s27, s35, v5
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s26
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
	v_cmp_gt_i32_e64 s15, s33, v1
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v31, v16, v2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v1, v21, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s29, s35, v3
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v18, v29, s34, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v16, v16, v0
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s27
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s30, s35, v2
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v82, v19, s[40:43], 0 offen
	buffer_store_b32 v83, v20, s[40:43], 0 offen
	v_add_lshl_u32 v19, v30, s34, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s28
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s31, s35, v0
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v31, s34, 2
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
	buffer_store_b32 v84, v17, s[40:43], 0 offen
	buffer_store_b32 v85, v18, s[40:43], 0 offen
	buffer_store_b32 v86, v19, s[40:43], 0 offen
	buffer_store_b32 v87, v20, s[40:43], 0 offen
	buffer_store_b32 v88, v16, s[40:43], 0 offen
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
	buffer_store_b32 v33, v8, s[40:43], 0 offen
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
	buffer_store_b32 v34, v7, s[40:43], 0 offen
	buffer_store_b32 v35, v6, s[40:43], 0 offen
	buffer_store_b32 v36, v1, s[40:43], 0 offen
	buffer_store_b32 v37, v4, s[40:43], 0 offen
	buffer_store_b32 v38, v3, s[40:43], 0 offen
	buffer_store_b32 v39, v2, s[40:43], 0 offen
	buffer_store_b32 v40, v0, s[40:43], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 340
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
		.amdhsa_next_free_sgpr 104
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
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 104
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 340
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17364
; TotalNumSgprs: 106
; NumVgprs: 256
; ScratchSize: 340
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 106
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
    .private_segment_fixed_size: 340
    .sgpr_count:     106
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 84
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
