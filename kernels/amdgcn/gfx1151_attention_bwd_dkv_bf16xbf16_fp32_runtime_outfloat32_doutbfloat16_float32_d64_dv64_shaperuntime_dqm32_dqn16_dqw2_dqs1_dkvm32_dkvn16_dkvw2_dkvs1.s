	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	v_and_b32_e32 v50, 15, v0
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
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_and_b32 s9, s5, 0xffff
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v1, s34, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_mul_i32 s56, s56, s33
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s46, s2
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v18, s56, v0
	.loc	1 587 22                        ; attention_backward.py:587:22
	s_add_i32 s5, s18, 31
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
	buffer_load_u16 v11, v1, s[8:11], 0 offen
	buffer_load_u16 v2, v2, s[8:11], 0 offen
	buffer_load_u16 v3, v3, s[8:11], 0 offen
	buffer_load_u16 v4, v4, s[8:11], 0 offen
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	buffer_load_u16 v6, v6, s[8:11], 0 offen
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
	s_and_b32 vcc_lo, s27, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s26, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	s_clause 0x4
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	buffer_load_u16 v16, v1, s[8:11], 0 offen
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	v_lshlrev_b32_e32 v1, 1, v15
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s23, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_lshl_u32 v15, v15, s35, 1
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s24, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s25, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	s_clause 0x4
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	buffer_load_u16 v17, v1, s[8:11], 0 offen
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	v_lshlrev_b32_e32 v1, 1, v0
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s46, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s9, s7, 0xffff
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s45, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v21, 0x90, v1
	v_xor_b32_e32 v25, 0x240, v1
	v_xor_b32_e32 v22, 0x120, v1
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s44, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v179, 0, v21
	v_add_nc_u32_e32 v182, 0, v25
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v21, s33, v29
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v26, 0x2d0, v1
	v_xor_b32_e32 v23, 0x1b0, v1
	v_add_nc_u32_e32 v180, 0, v22
	v_xor_b32_e32 v28, 0x3f0, v1
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v22, s33, v21
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v183, 0, v26
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v26, 0x80000000, v20, vcc_lo
	v_lshlrev_b32_e32 v20, 1, v29
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s43, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_add_nc_u32 v181, 0, v23
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v23, s33, v22
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v21, 1, v21
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s42, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v185, 0, v28
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v28, 0x80000000, v20, vcc_lo
	v_lshlrev_b32_e32 v20, 1, v22
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s41, s4
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v25, s33, v23
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v29, 0x80000000, v21, vcc_lo
	v_lshlrev_b32_e32 v21, 1, v23
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s40, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_mov_b32 s8, s6
	v_cndmask_b32_e32 v23, 0x80000000, v20, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s39, s4
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_ashr_i32 s7, s5, 31
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v30, 0x80000000, v21, vcc_lo
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v27, 0x360, v1
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s38, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v178, 0, v1
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_lshr_b32 s7, s7, 27
	s_mov_b32 s6, 0
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v184, 0, v27
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v27, s33, v25
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v25, 1, v25
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_add_i32 s7, s5, s7
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_hi_u32 s5, s21, s22
	.loc	1 587 20                        ; attention_backward.py:587:20
	s_and_b32 s59, s7, 0xffffffe0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v22, s33, v27
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v21, 1, v27
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s37, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v20, s33, v22
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v31, 0x80000000, v21 :: v_dual_lshlrev_b32 v22, 1, v22
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s36, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v27, s33, v20
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v20, 1, v20
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s27, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(15)
	ds_store_b16 v178, v11
	s_waitcnt vmcnt(9)
	ds_store_b16 v178, v9 offset:1024
	ds_store_b16 v179, v2
	s_waitcnt vmcnt(8)
	ds_store_b16 v179, v10 offset:1024
	ds_store_b16 v180, v3
	s_waitcnt vmcnt(7)
	ds_store_b16 v180, v16 offset:1024
	ds_store_b16 v181, v4
	s_waitcnt vmcnt(6)
	ds_store_b16 v181, v12 offset:1024
	ds_store_b16 v182, v5
	s_waitcnt vmcnt(5)
	ds_store_b16 v182, v13 offset:1024
	ds_store_b16 v183, v6
	s_waitcnt vmcnt(4)
	ds_store_b16 v183, v14 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v184, v7
	s_waitcnt vmcnt(2)
	ds_store_b16 v184, v17 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v185, v8
	s_waitcnt vmcnt(0)
	ds_store_b16 v185, v15 offset:1024
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v21, s33, v27
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v27, 1, v27
	v_cndmask_b32_e32 v33, 0x80000000, v20, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s26, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt lgkmcnt(0)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v32, s33, v21
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v20, 1, v21
	v_cndmask_b32_e32 v34, 0x80000000, v27, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s23, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_barrier
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v21, 1, v32
	v_add_lshl_u32 v27, v32, s33, 1
	v_cndmask_b32_e32 v32, 0x80000000, v20, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s24, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_and_b32_e32 v3, 7, v0
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v35, 0x80000000, v21, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s25, s4
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_bfe_u32 s7, s28, 0x10008
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v36, 0x80000000, v27, vcc_lo
	s_clause 0xf
	buffer_load_u16 v21, v18, s[8:11], 0 offen
	buffer_load_u16 v20, v19, s[8:11], 0 offen
	buffer_load_u16 v19, v26, s[8:11], 0 offen
	buffer_load_u16 v18, v24, s[8:11], 0 offen
	buffer_load_u16 v17, v28, s[8:11], 0 offen
	buffer_load_u16 v16, v29, s[8:11], 0 offen
	buffer_load_u16 v15, v23, s[8:11], 0 offen
	buffer_load_u16 v14, v30, s[8:11], 0 offen
	buffer_load_u16 v29, v25, s[8:11], 0 offen
	buffer_load_u16 v28, v31, s[8:11], 0 offen
	buffer_load_u16 v27, v22, s[8:11], 0 offen
	buffer_load_u16 v26, v33, s[8:11], 0 offen
	buffer_load_u16 v25, v34, s[8:11], 0 offen
	buffer_load_u16 v24, v32, s[8:11], 0 offen
	buffer_load_u16 v23, v35, s[8:11], 0 offen
	buffer_load_u16 v22, v36, s[8:11], 0 offen
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v2, 4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v5, v50, 7, v2
	v_xor_b32_e32 v4, 16, v5
	v_xor_b32_e32 v8, 32, v5
	v_xor_b32_e32 v9, 48, v5
	v_xor_b32_e32 v10, 64, v5
	v_xor_b32_e32 v12, 0x60, v5
	v_add_nc_u32_e32 v7, 0, v4
	v_xor_b32_e32 v4, 0x50, v5
	v_xor_b32_e32 v13, 0x70, v5
	v_add_nc_u32_e32 v6, 0, v5
	v_add_nc_u32_e32 v8, 0, v8
	v_add_nc_u32_e32 v9, 0, v9
	v_add_nc_u32_e32 v10, 0, v10
	v_add_nc_u32_e32 v11, 0, v4
	v_add_nc_u32_e32 v12, 0, v12
	v_add_nc_u32_e32 v13, 0, v13
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
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[30:33], v6
	ds_load_b128 v[34:37], v7
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_mul_i32 s7, s5, s14
	s_load_b128 s[36:39], s[0:1], 0x50
	s_sub_i32 s7, s21, s7
	s_xor_b32 s8, s15, s20
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s7, s14
	s_cmp_ge_u32 s7, s14
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v188, s12, v50
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s7, s10, s7
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s7, s14
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_and_b32_e32 v4, 32, v0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s5, s9, s5
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[30:33], off
	scratch_store_b128 off, v[34:37], off offset:16
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[30:33], v8
	ds_load_b128 v[34:37], v9
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_xor_b32 s5, s5, s8
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	v_lshrrev_b32_e32 v51, 1, v4
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_sub_i32 s28, s5, s8
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s5, s19, v188
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cmp_lt_i32 s28, 1
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[30:33], off offset:32 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[34:37], off offset:48 ; 16-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[30:33], v10
	ds_load_b128 v[34:37], v11
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[30:33], off offset:64 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[34:37], off offset:80 ; 16-byte Folded Spill
	ds_load_b128 v[30:33], v12
	ds_load_b128 v[34:37], v13
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[30:33], off offset:96 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[34:37], off offset:112 ; 16-byte Folded Spill
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	v_and_b32_e32 v30, 16, v0
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b16 v178, v21
	s_waitcnt vmcnt(7)
	ds_store_b16 v178, v29 offset:1024
	ds_store_b16 v179, v20
	s_waitcnt vmcnt(6)
	ds_store_b16 v179, v28 offset:1024
	ds_store_b16 v180, v19
	s_waitcnt vmcnt(5)
	ds_store_b16 v180, v27 offset:1024
	ds_store_b16 v181, v18
	s_waitcnt vmcnt(4)
	ds_store_b16 v181, v26 offset:1024
	ds_store_b16 v182, v17
	s_waitcnt vmcnt(3)
	ds_store_b16 v182, v25 offset:1024
	ds_store_b16 v183, v16
	s_waitcnt vmcnt(2)
	ds_store_b16 v183, v24 offset:1024
	ds_store_b16 v184, v15
	s_waitcnt vmcnt(1)
	ds_store_b16 v184, v23 offset:1024
	ds_store_b16 v185, v14
	s_waitcnt vmcnt(0)
	ds_store_b16 v185, v22 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cbranch_scc1 .LBB0_13
; %bb.3:                                ; %.lr.ph180
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[19:22], v13
	ds_load_b128 v[15:18], v12
	s_clause 0x1
	s_load_b128 s[40:43], s[0:1], 0x80
	s_load_b32 s8, s[0:1], 0x90
	s_xor_b32 s7, s3, s17
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_lshrrev_b32_e32 v189, 4, v0
	s_ashr_i32 s7, s7, 31
	s_load_b256 s[20:27], s[0:1], 0x30
	s_xor_b32 s9, s13, s7
	s_load_b64 s[44:45], s[0:1], 0x0
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_sub_i32 s0, s12, s31
	v_lshl_or_b32 v37, v4, 6, v5
	s_sub_i32 s7, s9, s7
	s_max_i32 s0, s0, 0
	s_mul_i32 s1, s7, s17
	s_and_b32 s0, s0, 0x7fffffe0
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_sub_i32 s1, s3, s1
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_max_u32 s0, s6, s0
	s_and_b32 s3, s58, exec_lo
	s_cselect_b32 s60, s0, s6
	.loc	1 608 39 is_stmt 1              ; attention_backward.py:608:39
	v_and_b32_e32 v14, 48, v0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[15:18], off offset:128
	scratch_store_b128 off, v[19:22], off offset:144
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[19:22], v11
	ds_load_b128 v[15:18], v10
	v_mul_lo_u32 v5, s43, v189
	s_cmp_lt_i32 s60, s59
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s61, s28, s1
	s_cselect_b32 s64, -1, 0
	s_lshl_b32 s0, s43, 2
	s_lshl_b32 s6, s43, 4
	s_lshl_b32 s1, s43, 3
	v_lshlrev_b32_e32 v36, 3, v50
	s_mul_i32 s3, s43, 12
	v_cmp_eq_u32_e32 vcc_lo, 0, v4
	v_and_b32_e32 v1, 60, v1
	.loc	1 662 35                        ; attention_backward.py:662:35
	s_mul_i32 s62, s7, s16
	.loc	1 683 27                        ; attention_backward.py:683:27
	s_mul_i32 s41, s7, s41
	s_mul_i32 s7, s43, 20
	s_mul_i32 s9, s43, 28
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v38, s35, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v50, off offset:440
	scratch_store_b32 off, v51, off offset:448
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_mul_f32 s63, s40, 0x3fb8aa3b
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[15:18], off offset:160
	scratch_store_b128 off, v[19:22], off offset:176
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[19:22], v9
	ds_load_b128 v[15:18], v8
	ds_load_b128 v[10:13], v7
	ds_load_b128 v[6:9], v6
	s_mov_b32 s19, 0
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s49, s27, 0xffff
	s_mov_b32 s48, s26
	s_and_b32 s53, s23, 0xffff
	s_mov_b32 s52, s22
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[6:9], off offset:224
	scratch_store_b128 off, v[10:13], off offset:240
	v_mul_lo_u32 v6, s8, v188
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[15:18], off offset:192
	scratch_store_b128 off, v[19:22], off offset:208
	v_lshlrev_b32_e32 v10, 2, v14
	v_lshrrev_b32_e32 v13, 2, v30
	v_lshrrev_b32_e32 v14, 4, v4
	v_dual_mov_b32 v97, 0 :: v_dual_lshlrev_b32 v22, 3, v0
	v_lshlrev_b32_e32 v21, 1, v50
	v_add_nc_u32_e32 v7, v6, v5
	v_add3_u32 v11, v5, s6, v6
	v_or3_b32 v18, v13, v14, v36
	v_dual_mov_b32 v78, v97 :: v_dual_lshlrev_b32 v23, 2, v30
	scratch_store_b32 off, v7, off offset:256 ; 4-byte Folded Spill
	v_add3_u32 v7, v5, s0, v6
	v_and_b32_e32 v22, 48, v22
	v_mov_b32_e32 v76, v97
	v_or3_b32 v23, v21, v23, v4
	v_and_b32_e32 v8, 14, v0
	scratch_store_b32 off, v7, off offset:260 ; 4-byte Folded Spill
	v_add3_u32 v7, v5, s1, v6
	v_and_b32_e32 v9, 1, v0
	s_mul_i32 s8, s43, 24
	v_add3_u32 v205, 0, v4, v21
	v_lshl_or_b32 v21, v50, 6, v22
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v7, off offset:264
	scratch_store_b32 off, v18, off offset:300
	v_add3_u32 v7, v5, s3, v6
	v_and_b32_e32 v12, 2, v0
	v_lshrrev_b32_e32 v15, 1, v30
	v_lshrrev_b32_e32 v16, 5, v4
	v_lshrrev_b32_e32 v20, 1, v0
	scratch_store_b32 off, v7, off offset:268 ; 4-byte Folded Spill
	v_cndmask_b32_e64 v7, 0x104, 0, vcc_lo
	v_dual_mov_b32 v80, v97 :: v_dual_add_nc_u32 v39, s33, v0
	v_dual_mov_b32 v247, v37 :: v_dual_and_b32 v20, 12, v20
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v1, v7, v1
	v_lshlrev_b32_e32 v7, 1, v8
	v_lshl_or_b32 v8, v8, 7, v10
	v_add3_u32 v10, v5, s7, v6
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v11, off offset:272
	scratch_store_b32 off, v39, off offset:324
	v_lshlrev_b32_e32 v11, 5, v9
	v_lshl_or_b32 v9, v9, 6, v1
	v_add3_u32 v1, v5, s8, v6
	scratch_store_b32 off, v10, off offset:276 ; 4-byte Folded Spill
	v_mov_b32_e32 v74, v97
	v_or3_b32 v17, v8, v11, v7
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v9, off offset:280
	scratch_store_b32 off, v1, off offset:284
	v_add3_u32 v1, v5, s9, v6
	v_xor_b32_e32 v5, 0x410, v9
	v_xor_b32_e32 v6, 0x618, v9
	v_lshlrev_b32_e32 v8, 5, v0
	v_xor_b32_e32 v7, 4, v17
	scratch_store_b32 off, v1, off offset:288 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x208, v9
	v_lshlrev_b32_e32 v9, 2, v0
	v_and_b32_e32 v8, 0x180, v8
	v_lshl_or_b32 v3, v3, 7, v20
	v_dual_mov_b32 v66, v97 :: v_dual_add_nc_u32 v39, s33, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v9, 52, v9
	v_dual_mov_b32 v68, v97 :: v_dual_add_nc_u32 v1, 0, v1
	scratch_store_b32 off, v23, off offset:308 ; 4-byte Folded Spill
	v_xor_b32_e32 v10, 8, v17
	v_or3_b32 v8, v9, v12, v8
	scratch_store_b32 off, v1, off offset:328 ; 4-byte Folded Spill
	v_dual_mov_b32 v70, v97 :: v_dual_add_nc_u32 v1, 0, v5
	v_or3_b32 v29, v3, v2, v14
	v_or3_b32 v24, v8, v15, v16
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v17, off offset:292
	scratch_store_b32 off, v21, off offset:312
	v_dual_mov_b32 v92, v97 :: v_dual_add_nc_u32 v5, s33, v39
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v24, off offset:304
	scratch_store_b32 off, v1, off offset:332
	scratch_store_b32 off, v30, off offset:444
	scratch_store_b32 off, v5, off offset:388
	v_dual_mov_b32 v72, v97 :: v_dual_add_nc_u32 v1, 0, v6
	v_dual_mov_b32 v77, v97 :: v_dual_add_nc_u32 v6, 0, v7
	v_xor_b32_e32 v11, 12, v17
	v_xor_b32_e32 v2, 0x1b0, v23
	v_xor_b32_e32 v3, 16, v21
	scratch_store_b32 off, v29, off offset:316 ; 4-byte Folded Spill
	v_dual_mov_b32 v96, v97 :: v_dual_add_nc_u32 v5, s33, v5
	scratch_store_b32 off, v6, off offset:344 ; 4-byte Folded Spill
	v_dual_mov_b32 v79, v97 :: v_dual_add_nc_u32 v6, 0, v10
	scratch_store_b32 off, v38, off offset:320 ; 4-byte Folded Spill
	v_dual_mov_b32 v75, v97 :: v_dual_add_nc_u32 v38, s35, v38
	v_xor_b32_e32 v9, 16, v17
	v_dual_mov_b32 v87, v97 :: v_dual_add_nc_u32 v242, 0, v2
	v_add_nc_u32_e32 v2, 0, v3
	scratch_store_b32 off, v6, off offset:348 ; 4-byte Folded Spill
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v6, 0, v11
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:336
	scratch_store_b32 off, v38, off offset:340
	v_dual_mov_b32 v90, v97 :: v_dual_add_nc_u32 v1, s35, v38
	v_xor_b32_e32 v12, 20, v17
	v_xor_b32_e32 v14, 32, v21
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:352
	scratch_store_b32 off, v1, off offset:372
	v_dual_mov_b32 v67, v97 :: v_dual_add_nc_u32 v6, 0, v9
	v_xor_b32_e32 v13, 24, v17
	v_xor_b32_e32 v21, 48, v21
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v39, off offset:356
	scratch_store_b32 off, v2, off offset:404
	v_add_nc_u32_e32 v2, 0, v14
	scratch_store_b32 off, v6, off offset:360 ; 4-byte Folded Spill
	v_dual_mov_b32 v69, v97 :: v_dual_add_nc_u32 v6, 0, v12
	v_xor_b32_e32 v8, 28, v17
	v_add_nc_u32_e32 v3, 0, v21
	v_dual_mov_b32 v94, v97 :: v_dual_add_nc_u32 v1, s35, v1
	scratch_store_b32 off, v6, off offset:364 ; 4-byte Folded Spill
	v_dual_mov_b32 v71, v97 :: v_dual_add_nc_u32 v6, 0, v13
	v_xor_b32_e32 v15, 0x90, v18
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:368
	scratch_store_b32 off, v1, off offset:396
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v6, 0, v8
	v_xor_b32_e32 v16, 0x120, v18
	scratch_store_b32 off, v5, off offset:400 ; 4-byte Folded Spill
	v_dual_mov_b32 v84, v97 :: v_dual_add_nc_u32 v5, s33, v5
	scratch_store_b32 off, v6, off offset:376 ; 4-byte Folded Spill
	v_dual_mov_b32 v91, v97 :: v_dual_add_nc_u32 v6, 0, v15
	v_xor_b32_e32 v17, 0x1b0, v18
	v_dual_mov_b32 v82, v97 :: v_dual_add_nc_u32 v1, s35, v1
	scratch_store_b32 off, v5, off offset:420 ; 4-byte Folded Spill
	v_dual_mov_b32 v88, v97 :: v_dual_add_nc_u32 v5, s33, v5
	scratch_store_b32 off, v6, off offset:380 ; 4-byte Folded Spill
	v_dual_mov_b32 v93, v97 :: v_dual_add_nc_u32 v6, 0, v16
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:384
	scratch_store_b32 off, v1, off offset:412
	v_dual_mov_b32 v86, v97 :: v_dual_add_nc_u32 v1, s35, v1
	v_dual_mov_b32 v95, v97 :: v_dual_add_nc_u32 v6, 0, v17
	v_xor_b32_e32 v4, 0x90, v23
	scratch_store_b32 off, v1, off offset:424 ; 4-byte Folded Spill
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v1, s35, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:392
	scratch_store_b32 off, v5, off offset:428
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v5, s33, v5
	v_dual_mov_b32 v83, v97 :: v_dual_add_nc_u32 v238, 0, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:432
	scratch_store_b32 off, v2, off offset:408
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v1, s35, v1
	v_dual_mov_b32 v85, v97 :: v_dual_add_nc_u32 v4, s33, v5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off offset:436
	scratch_store_b32 off, v3, off offset:416
	v_mov_b32_e32 v187, v1
	v_add_nc_u32_e32 v1, s35, v1
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v2, s33, v4
	v_mov_b32_e32 v240, v4
	v_xor_b32_e32 v18, 16, v24
	v_xor_b32_e32 v22, 16, v29
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v3, s35, v1
	v_dual_mov_b32 v241, v1 :: v_dual_add_nc_u32 v4, s33, v2
	v_mov_b32_e32 v1, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v2, v3 :: v_dual_add_nc_u32 v233, 0, v18
	v_dual_mov_b32 v250, v4 :: v_dual_add_nc_u32 v3, s35, v3
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v4, s33, v4
	v_xor_b32_e32 v19, 32, v24
	v_xor_b32_e32 v24, 48, v24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v8, s35, v3
	v_xor_b32_e32 v25, 48, v29
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v9, s33, v4
	v_add_nc_u32_e32 v248, 0, v22
	v_xor_b32_e32 v20, 0x120, v23
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v10, s35, v8
	v_xor_b32_e32 v23, 32, v29
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v11, s33, v9
	v_xor_b32_e32 v26, 64, v29
	v_xor_b32_e32 v27, 0x50, v29
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v14, s35, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v246, v10 :: v_dual_add_nc_u32 v15, s33, v11
	v_mov_b32_e32 v10, v11
	v_xor_b32_e32 v28, 0x60, v29
	v_dual_mov_b32 v11, v14 :: v_dual_add_nc_u32 v14, s35, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v255, v15
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v15, s33, v15
	v_xor_b32_e32 v29, 0x70, v29
	v_add_nc_u32_e32 v237, 0, v24
	v_add_nc_u32_e32 v17, s35, v14
	v_add_nc_u32_e32 v252, 0, v25
	v_add_nc_u32_e32 v18, s33, v15
	v_add_nc_u32_e32 v186, 0, v28
	v_add_nc_u32_e32 v177, 0, v29
	v_add_nc_u32_e32 v21, s35, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v7, v8 :: v_dual_add_nc_u32 v22, s33, v18
	v_xor_b32_e32 v30, 0x90, v36
	v_xor_b32_e32 v31, 0x120, v36
	v_add_nc_u32_e32 v24, s35, v21
	v_xor_b32_e32 v32, 0x1b0, v36
	v_add_nc_u32_e32 v25, s33, v22
	v_xor_b32_e32 v33, 0x240, v36
	v_add_nc_u32_e32 v201, 0, v30
	v_dual_mov_b32 v251, v3 :: v_dual_add_nc_u32 v28, s35, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v29, s33, v25
	v_add_nc_u32_e32 v3, 0, v31
	v_xor_b32_e32 v34, 0x2d0, v36
	v_add_nc_u32_e32 v30, s35, v28
	v_xor_b32_e32 v35, 0x360, v36
	v_dual_mov_b32 v6, v4 :: v_dual_add_nc_u32 v31, s33, v29
	v_add_nc_u32_e32 v4, 0, v32
	v_add_nc_u32_e32 v5, 0, v33
	v_add_nc_u32_e32 v32, s35, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v33, s33, v31
	scratch_store_b32 off, v36, off offset:296 ; 4-byte Folded Spill
	v_xor_b32_e32 v36, 0x3f0, v36
	v_dual_mov_b32 v245, v9 :: v_dual_add_nc_u32 v8, 0, v34
	v_add_nc_u32_e32 v9, 0, v35
	v_add_nc_u32_e32 v34, s35, v32
	v_add_nc_u32_e32 v35, s33, v33
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v234, 0, v19
	v_add_nc_u32_e32 v239, 0, v20
	v_add_nc_u32_e32 v249, 0, v23
	v_add_nc_u32_e32 v253, 0, v26
	v_add_nc_u32_e32 v254, 0, v27
	v_xor_b32_e32 v13, 16, v37
	v_add_nc_u32_e32 v12, 0, v36
	v_xor_b32_e32 v16, 32, v37
	v_xor_b32_e32 v19, 48, v37
	v_xor_b32_e32 v20, 64, v37
	v_xor_b32_e32 v23, 0x50, v37
	v_xor_b32_e32 v26, 0x60, v37
	v_xor_b32_e32 v27, 0x70, v37
	v_add_nc_u32_e32 v36, s35, v34
	v_add_nc_u32_e32 v37, s33, v35
	v_add_nc_u32_e32 v13, 0, v13
	v_add_nc_u32_e32 v16, 0, v16
	v_add_nc_u32_e32 v19, 0, v19
	v_add_nc_u32_e32 v38, s35, v36
	v_add_nc_u32_e32 v39, s33, v37
	v_add_nc_u32_e32 v20, 0, v20
	v_add_nc_u32_e32 v23, 0, v23
	v_add_nc_u32_e32 v26, 0, v26
	v_add_nc_u32_e32 v40, s35, v38
	v_add_nc_u32_e32 v41, s33, v39
	v_add_nc_u32_e32 v27, 0, v27
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v50, v51, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v42, s35, v40
	v_add_nc_u32_e32 v43, s33, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v44, s35, v42
	v_add_nc_u32_e32 v45, s33, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v46, s35, v44
	v_add_nc_u32_e32 v47, s33, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v48, s35, v46
	v_add_nc_u32_e32 v49, s33, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v51, s35, v48
	v_add_nc_u32_e32 v52, s33, v49
	s_branch .LBB0_5
.LBB0_4:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_add_i32 s19, s19, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s19, s28
	s_cbranch_scc0 .LBB0_12
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s64
	s_cbranch_vccnz .LBB0_4
; %bb.6:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_add_i32 s0, s19, s61
	s_mov_b32 s67, s60
	.loc	1 662 35                        ; attention_backward.py:662:35
	s_add_i32 s65, s0, s62
	.loc	1 684 27                        ; attention_backward.py:684:27
	s_mul_i32 s66, s0, s42
	.loc	1 662 34                        ; attention_backward.py:662:34
	s_mul_i32 s65, s65, s18
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_add_i32 s66, s66, s41
	s_branch .LBB0_8
.LBB0_7:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v98, off, off offset:256
	scratch_load_b32 v100, off, off offset:260
	scratch_load_b32 v102, off, off offset:264
	scratch_load_b32 v99, off, off offset:272
	scratch_load_b32 v101, off, off offset:276
	scratch_load_b32 v103, off, off offset:284
	scratch_load_b32 v104, off, off offset:288
	scratch_load_b32 v122, off, off offset:268
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_mul_i32 s0, s67, s43
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_mov_b32 s22, s46
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_add_i32 s0, s66, s0
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_mov_b32 s23, s47
	v_add_nc_u32_e32 v167, s33, v52
	.loc	1 697 25                        ; attention_backward.py:697:25
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v98, s0, v98, 2
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v100, s0, v100, 2
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v102, s0, v102, 2
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v99, s0, v99, 2
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v101, s0, v101, 2
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v103, s0, v103, 2
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v104, s0, v104, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v122, s0, v122, 2
	v_cndmask_b32_e64 v98, 0x80000000, v98, s101
	v_cndmask_b32_e64 v100, 0x80000000, v100, s99
	v_cndmask_b32_e64 v102, 0x80000000, v102, s97
	v_cndmask_b32_e64 v99, 0x80000000, v99, s102
	v_cndmask_b32_e64 v101, 0x80000000, v101, s100
	v_cndmask_b32_e64 v103, 0x80000000, v103, s98
	v_cndmask_b32_e64 v104, 0x80000000, v104, s96
	v_cndmask_b32_e64 v122, 0x80000000, v122, s55
	s_clause 0x7
	buffer_load_b32 v98, v98, s[20:23], 0 offen
	buffer_load_b32 v99, v99, s[20:23], 0 offen
	buffer_load_b32 v100, v100, s[20:23], 0 offen
	buffer_load_b32 v101, v101, s[20:23], 0 offen
	buffer_load_b32 v102, v102, s[20:23], 0 offen
	buffer_load_b32 v103, v103, s[20:23], 0 offen
	buffer_load_b32 v104, v104, s[20:23], 0 offen
	buffer_load_b32 v122, v122, s[20:23], 0 offen
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v123, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_waitcnt vmcnt(8)
	v_cndmask_b32_e64 v98, 0xff800000, v98, s101
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v99, 0xff800000, v99, s102
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s0, 0xff800000, v98
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v123, 0, v123
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v99
	.loc	1 697 25 is_stmt 0              ; attention_backward.py:697:25
	s_and_b32 s0, s101, s0
	.loc	1 696 35 is_stmt 1              ; attention_backward.py:696:35
	ds_store_2addr_b32 v123, v98, v99 offset1:32
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_cndmask_b32_e64 v98, 0xff800000, v100, s99
	.loc	1 696 35                        ; attention_backward.py:696:35
	scratch_load_b32 v100, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_cndmask_b32_e64 v99, 0xff800000, v101, s100
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_and_b32 s6, s102, vcc_lo
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_cndmask_b32_e64 v101, 0xff800000, v104, s96
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v98
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_neq_f32_e64 s3, 0xff800000, v99
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v100, v98, v99 offset1:32
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v98, 0, 1, s6
	v_cndmask_b32_e64 v99, 0, 1, s0
	s_and_b32 s0, s100, s3
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_cndmask_b32_e64 v100, 0xff800000, v103, s98
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v101
	.loc	1 697 25 is_stmt 0              ; attention_backward.py:697:25
	v_lshlrev_b16 v53.h, 8, v98.l
	v_cndmask_b32_e64 v98, 0, 1, s0
	s_and_b32 s0, s99, s1
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_or_b16 v53.h, v99.l, v53.h
	v_lshlrev_b16 v54.h, 8, v98.l
	.loc	1 691 36 is_stmt 1              ; attention_backward.py:691:36
	v_cndmask_b32_e64 v98, 0xff800000, v102, s97
	.loc	1 696 35                        ; attention_backward.py:696:35
	scratch_load_b32 v102, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v99, 0, 1, s0
	s_and_b32 s6, s98, vcc_lo
	.loc	1 697 34 is_stmt 0              ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s0, 0xff800000, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_or_b16 v54.h, v99.l, v54.h
	.loc	1 691 36 is_stmt 1              ; attention_backward.py:691:36
	v_cndmask_b32_e64 v99, 0xff800000, v122, s55
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_and_b32 s0, s97, s0
	.loc	1 697 34 is_stmt 0              ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v99
	.loc	1 696 35 is_stmt 1              ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v102, v98, v100 offset1:32
	scratch_load_b32 v102, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v98, 0, 1, s6
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v102, v99, v101 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v102, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v99, 0, 1, s0
	s_and_b32 s0, s96, s3
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v102, 0, v102
	ds_load_b32 v122, v102
	scratch_load_b32 v102, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v123, v102
	scratch_load_b32 v102, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v124, v102
	scratch_load_b32 v102, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v125, v102
	scratch_load_b32 v102, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v126, v102
	scratch_load_b32 v102, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v127, v102
	scratch_load_b32 v102, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v128, v102
	scratch_load_b32 v102, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v145, v102
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v102, off, off offset:300
	scratch_load_b32 v100, off, off offset:324
	scratch_load_b32 v101, off, off offset:356
	scratch_load_b32 v103, off, off offset:400
	scratch_load_b32 v141, off, off offset:428
	scratch_load_b32 v104, off, off offset:420
	scratch_load_b32 v142, off, off offset:436
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v102, 0, v102
	ds_store_b16_d16_hi v102, v53
	v_lshlrev_b16 v53.h, 8, v98.l
	v_cndmask_b32_e64 v98, 0, 1, s0
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v102, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_and_b32 s0, s55, s1
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s1, s54, s33
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_or_b16 v53.h, v99.l, v53.h
	v_lshlrev_b16 v55.h, 8, v98.l
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v98, s67, v50
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v99, 0, 1, s0
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v100, s1, v100, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s95
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v101, s1, v101, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s18, v98
	.loc	1 697 25                        ; attention_backward.py:697:25
	scratch_load_b32 v98, off, off offset:380 ; 4-byte Folded Reload
	v_or_b16 v55.h, v99.l, v55.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v103, s1, v103, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v104, s1, v104, 1
	v_add_lshl_u32 v141, s1, v141, 1
	v_add_lshl_u32 v143, s1, v240, 1
	v_add_lshl_u32 v144, s1, v1, 1
	v_add_lshl_u32 v146, s1, v250, 1
	v_add_lshl_u32 v147, s1, v6, 1
	v_add_lshl_u32 v148, s1, v245, 1
	v_add_lshl_u32 v149, s1, v10, 1
	v_add_lshl_u32 v150, s1, v255, 1
	v_add_lshl_u32 v151, s1, v15, 1
	v_add_lshl_u32 v152, s1, v18, 1
	v_add_lshl_u32 v153, s1, v22, 1
	v_add_lshl_u32 v154, s1, v25, 1
	v_add_lshl_u32 v155, s1, v29, 1
	v_add_lshl_u32 v156, s1, v31, 1
	v_add_lshl_u32 v157, s1, v33, 1
	v_add_lshl_u32 v158, s1, v35, 1
	v_add_lshl_u32 v159, s1, v37, 1
	v_add_lshl_u32 v160, s1, v39, 1
	v_add_lshl_u32 v161, s1, v41, 1
	v_add_lshl_u32 v162, s1, v43, 1
	v_add_lshl_u32 v163, s1, v45, 1
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_add_lshl_u32 v99, s54, v50, 2
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v164, s1, v47, 1
	v_add_lshl_u32 v165, s1, v49, 1
	v_add_lshl_u32 v166, s1, v52, 1
	v_add_lshl_u32 v167, s1, v167, 1
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_cndmask_b32_e32 v99, 0x80000000, v99, vcc_lo
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s54, s46
	s_mov_b32 s55, s47
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s67, s67, 32
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v142, s1, v142, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v102, s1, v102, 1
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v98, v54
	scratch_load_b32 v98, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v98, v53
	scratch_load_b32 v98, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v98, v55
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v98, s1, v0, 1
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v98, 0x80000000, v98, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s94
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v100, 0x80000000, v100, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s93
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v101, 0x80000000, v101, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s92
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v102, 0x80000000, v102, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s91
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v103, 0x80000000, v103, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s90
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v104, 0x80000000, v104, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s89
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v141, 0x80000000, v141, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s88
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v142, 0x80000000, v142, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s87
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v143, 0x80000000, v143, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s86
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v144, 0x80000000, v144, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s85
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v146, 0x80000000, v146, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s84
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v147, 0x80000000, v147, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s83
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v148, 0x80000000, v148, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s82
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v149, 0x80000000, v149, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s81
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v150, 0x80000000, v150, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s80
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v151, 0x80000000, v151, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s79
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v152, 0x80000000, v152, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s78
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v153, 0x80000000, v153, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s77
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v154, 0x80000000, v154, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s76
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v155, 0x80000000, v155, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s75
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v156, 0x80000000, v156, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s74
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v157, 0x80000000, v157, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s73
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v158, 0x80000000, v158, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s72
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v159, 0x80000000, v159, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s71
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v160, 0x80000000, v160, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s70
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v161, 0x80000000, v161, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s69
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v162, 0x80000000, v162, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s68
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v163, 0x80000000, v163, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s51
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s51, s47
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v164, 0x80000000, v164, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s50
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s50, s46
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v165, 0x80000000, v165, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s27
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s27, s47
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v166, 0x80000000, v166, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s26
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s26, s46
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v209, v99, s[48:51], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v210, v99, s[24:27], 0 offen
	.loc	1 697 25                        ; attention_backward.py:697:25
	scratch_load_b32 v99, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v167, 0x80000000, v167, s0
	s_clause 0x1f
	buffer_load_u16 v98, v98, s[52:55], 0 offen
	buffer_load_u16 v100, v100, s[52:55], 0 offen
	buffer_load_u16 v101, v101, s[52:55], 0 offen
	buffer_load_u16 v102, v102, s[52:55], 0 offen
	buffer_load_u16 v103, v103, s[52:55], 0 offen
	buffer_load_u16 v104, v104, s[52:55], 0 offen
	buffer_load_u16 v168, v141, s[52:55], 0 offen
	buffer_load_u16 v169, v142, s[52:55], 0 offen
	buffer_load_u16 v170, v143, s[52:55], 0 offen
	buffer_load_u16 v171, v144, s[52:55], 0 offen
	buffer_load_u16 v146, v146, s[52:55], 0 offen
	buffer_load_u16 v147, v147, s[52:55], 0 offen
	buffer_load_u16 v148, v148, s[52:55], 0 offen
	buffer_load_u16 v149, v149, s[52:55], 0 offen
	buffer_load_u16 v150, v150, s[52:55], 0 offen
	buffer_load_u16 v151, v151, s[52:55], 0 offen
	buffer_load_u16 v152, v152, s[52:55], 0 offen
	buffer_load_u16 v153, v153, s[52:55], 0 offen
	buffer_load_u16 v172, v154, s[52:55], 0 offen
	buffer_load_u16 v173, v155, s[52:55], 0 offen
	buffer_load_u16 v156, v156, s[52:55], 0 offen
	buffer_load_u16 v157, v157, s[52:55], 0 offen
	buffer_load_u16 v158, v158, s[52:55], 0 offen
	buffer_load_u16 v159, v159, s[52:55], 0 offen
	buffer_load_u16 v160, v160, s[52:55], 0 offen
	buffer_load_u16 v161, v161, s[52:55], 0 offen
	buffer_load_u16 v162, v162, s[52:55], 0 offen
	buffer_load_u16 v163, v163, s[52:55], 0 offen
	buffer_load_u16 v164, v164, s[52:55], 0 offen
	buffer_load_u16 v165, v165, s[52:55], 0 offen
	buffer_load_u16 v166, v166, s[52:55], 0 offen
	buffer_load_u16 v167, v167, s[52:55], 0 offen
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_i32 s67, s59
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_waitcnt vmcnt(32)
	v_add_nc_u32_e32 v99, 0, v99
	ds_load_u8_d16 v141, v99
	ds_load_u8_d16 v142, v99 offset:64
	ds_load_u8_d16 v143, v233
	ds_load_u8_d16 v144, v233 offset:64
	ds_load_u8_d16 v154, v234
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v154, v234 offset:64
	ds_load_u8_d16 v155, v237
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v155, v237 offset:64
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(31)
	ds_store_b16 v178, v98
	s_waitcnt vmcnt(30)
	ds_store_b16 v178, v100 offset:128
	s_waitcnt vmcnt(29)
	ds_store_b16 v178, v101 offset:256
	s_waitcnt vmcnt(28)
	ds_store_b16 v178, v102 offset:384
	s_waitcnt vmcnt(27)
	ds_store_b16 v178, v103 offset:512
	s_waitcnt vmcnt(26)
	ds_store_b16 v178, v104 offset:640
	s_waitcnt vmcnt(25)
	ds_store_b16 v178, v168 offset:768
	s_waitcnt vmcnt(24)
	ds_store_b16 v178, v169 offset:896
	s_waitcnt vmcnt(23)
	ds_store_b16 v178, v170 offset:1024
	s_waitcnt vmcnt(22)
	ds_store_b16 v178, v171 offset:1152
	s_waitcnt vmcnt(21)
	ds_store_b16 v178, v146 offset:1280
	s_waitcnt vmcnt(20)
	ds_store_b16 v178, v147 offset:1408
	s_waitcnt vmcnt(19)
	ds_store_b16 v178, v148 offset:1536
	s_waitcnt vmcnt(18)
	ds_store_b16 v178, v149 offset:1664
	s_waitcnt vmcnt(17)
	ds_store_b16 v178, v150 offset:1792
	s_waitcnt vmcnt(16)
	ds_store_b16 v178, v151 offset:1920
	s_waitcnt vmcnt(15)
	ds_store_b16 v178, v152 offset:2048
	s_waitcnt vmcnt(14)
	ds_store_b16 v178, v153 offset:2176
	s_waitcnt vmcnt(13)
	ds_store_b16 v178, v172 offset:2304
	s_waitcnt vmcnt(12)
	ds_store_b16 v178, v173 offset:2432
	s_waitcnt vmcnt(11)
	ds_store_b16 v178, v156 offset:2560
	s_waitcnt vmcnt(10)
	ds_store_b16 v178, v157 offset:2688
	s_waitcnt vmcnt(9)
	ds_store_b16 v178, v158 offset:2816
	s_waitcnt vmcnt(8)
	ds_store_b16 v178, v159 offset:2944
	s_waitcnt vmcnt(7)
	ds_store_b16 v178, v160 offset:3072
	s_waitcnt vmcnt(6)
	ds_store_b16 v178, v161 offset:3200
	s_waitcnt vmcnt(5)
	ds_store_b16 v178, v162 offset:3328
	s_waitcnt vmcnt(4)
	ds_store_b16 v178, v163 offset:3456
	s_waitcnt vmcnt(3)
	ds_store_b16 v178, v164 offset:3584
	s_waitcnt vmcnt(2)
	ds_store_b16 v178, v165 offset:3712
	s_waitcnt vmcnt(1)
	ds_store_b16 v178, v166 offset:3840
	s_waitcnt vmcnt(0)
	ds_store_b16 v178, v167 offset:3968
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16_hi v163, v205 offset:640
	ds_load_u16_d16_hi v164, v205 offset:896
	ds_load_u16_d16_hi v132, v205 offset:960
	ds_load_u16_d16_hi v131, v205 offset:704
	ds_load_u16_d16_hi v165, v205 offset:1152
	ds_load_u16_d16_hi v166, v205 offset:1408
	ds_load_u16_d16_hi v134, v205 offset:1472
	ds_load_u16_d16_hi v133, v205 offset:1216
	ds_load_u16_d16_hi v167, v205 offset:1664
	ds_load_u16_d16_hi v168, v205 offset:1920
	ds_load_u16_d16_hi v136, v205 offset:1984
	ds_load_u16_d16_hi v135, v205 offset:1728
	ds_load_u16_d16_hi v137, v205 offset:2176
	ds_load_u16_d16_hi v138, v205 offset:2432
	ds_load_u16_d16_hi v106, v205 offset:2496
	ds_load_u16_d16_hi v105, v205 offset:2240
	ds_load_u16_d16_hi v139, v205 offset:2688
	ds_load_u16_d16_hi v140, v205 offset:2944
	ds_load_u16_d16_hi v108, v205 offset:3008
	ds_load_u16_d16_hi v107, v205 offset:2752
	ds_load_u16_d16_hi v141, v205 offset:3200
	ds_load_u16_d16_hi v142, v205 offset:3456
	ds_load_u16_d16_hi v110, v205 offset:3520
	ds_load_u16_d16_hi v109, v205 offset:3264
	ds_load_u16_d16_hi v143, v205 offset:3712
	ds_load_u16_d16_hi v144, v205 offset:3968
	ds_load_u16_d16_hi v112, v205 offset:4032
	ds_load_u16_d16_hi v111, v205 offset:3776
	ds_load_u16_d16_hi v161, v205 offset:128
	ds_load_u16_d16_hi v162, v205 offset:384
	ds_load_u16_d16_hi v130, v205 offset:448
	ds_load_u16_d16_hi v129, v205 offset:192
	ds_load_u16_d16_hi v202, v205 offset:320
	ds_load_u16_d16_hi v214, v205 offset:256
	ds_load_u16_d16_hi v208, v205
	ds_load_u16_d16_hi v203, v205 offset:64
	ds_load_u16_d16_hi v190, v205 offset:832
	ds_load_u16_d16_hi v212, v205 offset:768
	ds_load_u16_d16_hi v213, v205 offset:512
	ds_load_u16_d16_hi v197, v205 offset:576
	ds_load_u16_d16_hi v198, v205 offset:1344
	ds_load_u16_d16_hi v206, v205 offset:1280
	ds_load_u16_d16_hi v207, v205 offset:1024
	ds_load_u16_d16_hi v199, v205 offset:1088
	ds_load_u16_d16_hi v195, v205 offset:1856
	ds_load_u16_d16_hi v200, v205 offset:1792
	ds_load_u16_d16_hi v204, v205 offset:1536
	ds_load_u16_d16_hi v196, v205 offset:1600
	ds_load_u16_d16_hi v59, v205 offset:2368
	ds_load_u16_d16_hi v193, v205 offset:2304
	ds_load_u16_d16_hi v194, v205 offset:2048
	ds_load_u16_d16_hi v60, v205 offset:2112
	ds_load_u16_d16_hi v57, v205 offset:2880
	ds_load_u16_d16_hi v191, v205 offset:2816
	ds_load_u16_d16_hi v192, v205 offset:2560
	ds_load_u16_d16_hi v58, v205 offset:2624
	ds_load_u16_d16_hi v55, v205 offset:3392
	ds_load_u16_d16_hi v63, v205 offset:3328
	ds_load_u16_d16_hi v64, v205 offset:3072
	ds_load_u16_d16_hi v56, v205 offset:3136
	ds_load_u16_d16_hi v53, v205 offset:3904
	ds_load_u16_d16_hi v61, v205 offset:3840
	ds_load_u16_d16_hi v62, v205 offset:3584
	ds_load_u16_d16_hi v54, v205 offset:3648
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v178, v98
	ds_store_b16 v178, v170 offset:1024
	ds_store_b16 v178, v152 offset:2048
	ds_store_b16 v178, v160 offset:3072
	ds_store_b16 v179, v100
	ds_store_b16 v179, v171 offset:1024
	ds_store_b16 v179, v153 offset:2048
	ds_store_b16 v179, v161 offset:3072
	ds_store_b16 v180, v101
	ds_store_b16 v180, v146 offset:1024
	ds_store_b16 v180, v172 offset:2048
	ds_store_b16 v180, v162 offset:3072
	ds_store_b16 v181, v102
	ds_store_b16 v181, v147 offset:1024
	ds_store_b16 v181, v173 offset:2048
	ds_store_b16 v181, v163 offset:3072
	ds_store_b16 v182, v103
	ds_store_b16 v182, v148 offset:1024
	ds_store_b16 v182, v156 offset:2048
	ds_store_b16 v182, v164 offset:3072
	ds_store_b16 v183, v104
	ds_store_b16 v183, v149 offset:1024
	ds_store_b16 v183, v157 offset:2048
	ds_store_b16 v183, v165 offset:3072
	ds_store_b16 v184, v168
	ds_store_b16 v184, v150 offset:1024
	ds_store_b16 v184, v158 offset:2048
	ds_store_b16 v184, v166 offset:3072
	ds_store_b16 v185, v169
	ds_store_b16 v185, v151 offset:1024
	ds_store_b16 v185, v159 offset:2048
	ds_store_b16 v185, v167 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[215:218], off, off offset:224
	scratch_load_b128 v[219:222], off, off offset:240
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[146:149], v121
	ds_load_b128 v[150:153], v13
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v104, v97
	v_mov_b32_e32 v98, v97
	v_mov_b32_e32 v99, v97
	v_mov_b32_e32 v100, v97
	v_mov_b32_e32 v101, v97
	v_mov_b32_e32 v102, v97
	v_mov_b32_e32 v103, v97
	v_mov_b32_e32 v176, v104
	v_dual_mov_b32 v172, v100 :: v_dual_mov_b32 v171, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v174, v102 :: v_dual_mov_b32 v173, v101
	v_dual_mov_b32 v175, v103 :: v_dual_mov_b32 v170, v98
	v_dual_mov_b32 v169, v97 :: v_dual_mul_f32 v98, 0x3fb8aa3b, v122
	.loc	1 696 35                        ; attention_backward.py:696:35
	v_dual_mul_f32 v101, 0x3fb8aa3b, v124 :: v_dual_mul_f32 v102, 0x3fb8aa3b, v125
	v_dual_mul_f32 v99, 0x3fb8aa3b, v126 :: v_dual_mul_f32 v100, 0x3fb8aa3b, v123
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 696 25 is_stmt 0              ; attention_backward.py:696:25
	v_dual_fmac_f32 v98, s63, v113 :: v_dual_fmac_f32 v101, s63, v115
	v_dual_fmac_f32 v102, s63, v116 :: v_dual_fmac_f32 v99, s63, v117
	.loc	1 696 35                        ; attention_backward.py:696:35
	v_dual_mul_f32 v103, 0x3fb8aa3b, v127 :: v_dual_mul_f32 v104, 0x3fb8aa3b, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v121, 0x3fb8aa3b, v145 :: v_dual_fmac_f32 v100, s63, v114
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v168.l, v200.h
	.loc	1 696 25                        ; attention_backward.py:696:25
	v_dual_fmac_f32 v103, s63, v118 :: v_dual_fmac_f32 v104, s63, v119
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v167.l, v204.h
	v_mov_b16_e64 v166.l, v206.h
	v_mov_b16_e64 v165.l, v207.h
	v_mov_b16_e64 v164.l, v212.h
	v_mov_b16_e64 v163.l, v213.h
	v_mov_b16_e64 v162.l, v214.h
	v_mov_b16_e64 v161.l, v208.h
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v98, v98, v210
	v_sub_f32_e32 v99, v99, v210
	v_sub_f32_e32 v100, v100, v210
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v122, v98
	.loc	1 697 25 is_stmt 1              ; attention_backward.py:697:25
	v_and_b16 v98.l, 1, v141.l
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v100, v100
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v141.l, v64.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v98.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v98, 0, v122, vcc_lo
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[169:176], v[215:222], v[146:153], v[169:176]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[215:218], off, off offset:192
	scratch_load_b128 v[219:222], off, off offset:208
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[146:149], v16
	ds_load_b128 v[150:153], v19
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[169:176], v[215:222], v[146:153], v[169:176]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[215:218], off, off offset:160
	scratch_load_b128 v[219:222], off, off offset:176
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[146:149], v20
	ds_load_b128 v[150:153], v23
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[169:176], v[215:222], v[146:153], v[169:176]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[215:218], off, off offset:128
	scratch_load_b128 v[219:222], off, off offset:144
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[146:149], v26
	ds_load_b128 v[150:153], v27
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[169:176], v[215:222], v[146:153], v[169:176]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 696 25                        ; attention_backward.py:696:25
	v_dual_fmac_f32 v121, s63, v120 :: v_dual_sub_f32 v114, v170, v209
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v113, v169, v209
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v115, v171, v209
	v_sub_f32_e32 v116, v172, v209
	v_sub_f32_e32 v117, v173, v209
	v_sub_f32_e32 v118, v174, v209
	.loc	1 720 30 is_stmt 0              ; attention_backward.py:720:30
	v_mul_f32_e32 v113, v98, v113
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v119, v175, v209
	v_sub_f32_e32 v120, v176, v209
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38 is_stmt 1              ; attention_backward.py:721:38
	v_mul_f32_e32 v113, s40, v113
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v122, v113, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v113, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v113, v113, v122, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v122, v99
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_and_b16 v99.l, 1, v142.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v142.l, v63.h
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e64 s0, 1, v99.l
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v209, 0, v122, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v99, v209, v117
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v99, s40, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v117, v99, 16, 1
	v_cmp_o_f32_e64 s0, v99, v99
	v_add3_u32 v99, v99, v117, 0x7fff
	.loc	1 697 25 is_stmt 1              ; attention_backward.py:697:25
	v_and_b16 v99.l, 1, v143.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v143.l, v62.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v99.h, 0x7fff, v99.h, s0
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e64 s1, 1, v99.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v99.l, 0x7fff, v113.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	scratch_load_b32 v113, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v217, 0, v100, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v100, v217, v114
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v100, s40, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v114, v100, 16, 1
	v_cmp_o_f32_e64 s1, v100, v100
	v_add3_u32 v100, v100, v114, 0x7fff
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v113, 0, v113
	ds_store_b16 v113, v99
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v99.l, 0x7fff, v100.h, s1
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v100, v101, v210
	v_sub_f32_e32 v101, v102, v210
	v_sub_f32_e32 v102, v103, v210
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v100, v100
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v103, v104, v210
	v_sub_f32_e32 v104, v121, v210
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	ds_store_b16_d16_hi v113, v99 offset:512
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_and_b16 v99.h, 1, v154.l
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v101, v101
	v_exp_f32_e32 v102, v102
	v_exp_f32_e32 v104, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v99.h
	v_and_b16 v99.h, 1, v155.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v218, 0, v100, vcc_lo
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e64 s0, 1, v99.h
	v_and_b16 v99.h, 1, v144.l
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v103, v103
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v144.l, v61.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v219, 0, v101, s0
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v100, v218, v115
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e64 s1, 1, v99.h
	v_and_b16 v99.h, 1, v154.h
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v101, v219, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v100, s40, v100
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v210, 0, v102, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e64 s3, 1, v99.h
	v_and_b16 v99.h, 1, v155.h
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v101, s40, v101
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v113, v100, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v100, v100
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v211, 0, v103, s3
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v102, v210, v118
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e64 s6, 1, v99.h
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v100, v100, v113, 0x7fff
	v_bfe_u32 v113, v101, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_dual_mul_f32 v103, v211, v119 :: v_dual_mul_f32 v102, s40, v102
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v222, 0, v104, s6
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cmp_o_f32_e64 s0, v101, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v101, v101, v113, 0x7fff
	.loc	1 721 38 is_stmt 0              ; attention_backward.py:721:38
	v_mul_f32_e32 v103, s40, v103
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v113, v102, 16, 1
	.loc	1 720 30 is_stmt 1              ; attention_backward.py:720:30
	v_mul_f32_e32 v104, v222, v120
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cmp_o_f32_e64 s1, v102, v102
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s7, v210, v210
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cmp_o_f32_e64 s3, v103, v103
	v_add3_u32 v102, v102, v113, 0x7fff
	v_bfe_u32 v113, v103, 16, 1
	.loc	1 721 38 is_stmt 0              ; attention_backward.py:721:38
	v_mul_f32_e32 v104, s40, v104
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s8, v211, v211
	v_cmp_o_f32_e64 s9, v222, v222
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v99.h, 0x7fff, v102.h, s1
	v_add3_u32 v103, v103, v113, 0x7fff
	v_bfe_u32 v113, v104, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v238, v99
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v99.l, 0x7fff, v100.h, vcc_lo
	v_cmp_o_f32_e64 s6, v104, v104
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v238, v99 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v104, v104, v113, 0x7fff
	v_cndmask_b16 v99.h, 0x7fff, v103.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v239, v99
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v99.l, 0x7fff, v101.h, s0
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_mov_b16_e32 v104.l, 0
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v239, v99 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v99.h, 0x7fff, v104.h, s6
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v242, v99
	ds_store_b16_d16_hi v242, v99 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v99, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v100, v218, 16, 1
	v_bfe_u32 v101, v219, 16, 1
	v_bfe_u32 v102, v209, 16, 1
	v_bfe_u32 v103, v210, 16, 1
	v_cmp_o_f32_e64 s0, v217, v217
	v_cmp_o_f32_e64 s1, v218, v218
	v_add3_u32 v100, v218, v100, 0x7fff
	v_cmp_o_f32_e64 s3, v219, v219
	v_add3_u32 v101, v219, v101, 0x7fff
	v_cmp_o_f32_e64 s6, v209, v209
	v_add3_u32 v102, v209, v102, 0x7fff
	v_add3_u32 v103, v210, v103, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v220.l, v104.l
	v_mov_b16_e64 v216.l, v104.l
	v_mov_b16_e64 v215.l, v104.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v214.l, v104.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v216.h, 0x7fff, v103.h, s7
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v207.l, v104.l
	v_mov_b16_e64 v213.l, v104.l
	v_mov_b16_e64 v206.l, v104.l
	v_mov_b16_e64 v203.l, v104.l
	v_mov_b16_e64 v208.l, v104.l
	v_mov_b16_e64 v202.l, v104.l
	v_mov_b16_e64 v190.l, v104.l
	v_mov_b16_e64 v212.l, v104.l
	v_mov_b16_e64 v197.l, v104.l
	v_mov_b16_e64 v199.l, v104.l
	v_mov_b16_e64 v204.l, v104.l
	v_mov_b16_e64 v195.l, v104.l
	v_mov_b16_e64 v200.l, v104.l
	v_mov_b16_e64 v198.l, v104.l
	v_mov_b16_e64 v196.l, v104.l
	v_mov_b16_e64 v194.l, v104.l
	v_mov_b16_e64 v191.l, v104.l
	v_mov_b16_e64 v193.l, v104.l
	v_mov_b16_e64 v192.l, v104.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v99, 0, v99
	ds_load_b128 v[121:124], v99
	scratch_load_b32 v99, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[125:128], v99
	scratch_load_b32 v99, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[113:116], v99
	scratch_load_b32 v99, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[117:120], v99
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v178, v53
	ds_store_b16 v178, v54 offset:128
	ds_store_b16 v178, v55 offset:256
	ds_store_b16 v178, v56 offset:384
	ds_store_b16 v178, v57 offset:512
	ds_store_b16 v178, v58 offset:640
	ds_store_b16 v178, v59 offset:768
	ds_store_b16 v178, v140 offset:896
	ds_store_b16 v178, v60 offset:1024
	ds_store_b16 v178, v61 offset:1152
	ds_store_b16 v178, v62 offset:1280
	ds_store_b16 v178, v63 offset:1408
	ds_store_b16 v178, v64 offset:1536
	ds_store_b16 v178, v105 offset:1664
	ds_store_b16 v178, v106 offset:1792
	ds_store_b16 v178, v139 offset:1920
	ds_store_b16 v178, v107 offset:2048
	ds_store_b16 v178, v108 offset:2176
	ds_store_b16 v178, v109 offset:2304
	ds_store_b16 v178, v110 offset:2432
	ds_store_b16 v178, v111 offset:2560
	ds_store_b16 v178, v112 offset:2688
	ds_store_b16 v178, v129 offset:2816
	ds_store_b16 v178, v138 offset:2944
	ds_store_b16 v178, v130 offset:3072
	ds_store_b16 v178, v131 offset:3200
	ds_store_b16 v178, v132 offset:3328
	ds_store_b16 v178, v133 offset:3456
	ds_store_b16 v178, v134 offset:3584
	ds_store_b16 v178, v135 offset:3712
	ds_store_b16 v178, v136 offset:3840
	ds_store_b16 v178, v137 offset:3968
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v176, v205 offset:1792
	ds_load_u16_d16 v175, v205 offset:1536
	ds_load_u16_d16 v174, v205 offset:1280
	ds_load_u16_d16 v227, v205 offset:1088
	ds_load_u16_d16 v226, v205 offset:832
	ds_load_u16_d16 v171, v205 offset:512
	ds_load_u16_d16 v172, v205 offset:768
	ds_load_u16_d16 v173, v205 offset:1024
	ds_load_u16_d16 v169, v205
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v227, v205 offset:1216
	ds_load_u16_d16 v170, v205 offset:256
	ds_load_u16_d16 v148, v205 offset:2816
	ds_load_u16_d16 v149, v205 offset:3072
	ds_load_u16_d16 v155, v205 offset:2624
	ds_load_u16_d16 v154, v205 offset:2368
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v171, v205 offset:640
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v172, v205 offset:896
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v173, v205 offset:1152
	ds_load_u16_d16 v228, v205 offset:1344
	ds_load_u16_d16 v145, v205 offset:2048
	ds_load_u16_d16 v146, v205 offset:2304
	ds_load_u16_d16 v147, v205 offset:2560
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v155, v205 offset:2752
	ds_load_u16_d16_hi v175, v205 offset:1664
	ds_load_u16_d16_hi v174, v205 offset:1408
	ds_load_u16_d16 v223, v205 offset:64
	ds_load_u16_d16_hi v169, v205 offset:128
	ds_load_u16_d16_hi v170, v205 offset:384
	ds_load_u16_d16 v225, v205 offset:576
	ds_load_u16_d16 v224, v205 offset:320
	ds_load_u16_d16_hi v176, v205 offset:1920
	ds_load_u16_d16 v229, v205 offset:1600
	ds_load_u16_d16 v153, v205 offset:2112
	ds_load_u16_d16 v230, v205 offset:1856
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v99, v98, 16, 1
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_u16_d16 v160, v205 offset:3904
	ds_load_u16_d16 v150, v205 offset:3328
	ds_load_u16_d16 v157, v205 offset:3136
	ds_load_u16_d16 v151, v205 offset:3584
	ds_load_u16_d16 v152, v205 offset:3840
	ds_load_u16_d16 v159, v205 offset:3648
	ds_load_u16_d16 v158, v205 offset:3392
	ds_load_u16_d16 v156, v205 offset:2880
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v154, v205 offset:2496
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v153, v205 offset:2240
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v99, v98, v99, 0x7fff
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_u16_d16_hi v223, v205 offset:192
	ds_load_u16_d16_hi v226, v205 offset:960
	ds_load_u16_d16_hi v225, v205 offset:704
	ds_load_u16_d16_hi v224, v205 offset:448
	ds_load_u16_d16_hi v228, v205 offset:1472
	ds_load_u16_d16_hi v229, v205 offset:1728
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v230, v205 offset:1984
	ds_load_u16_d16_hi v148, v205 offset:2944
	ds_load_u16_d16_hi v147, v205 offset:2688
	ds_load_u16_d16_hi v146, v205 offset:2432
	ds_load_u16_d16_hi v145, v205 offset:2176
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v160, v205 offset:4032
	ds_load_u16_d16_hi v149, v205 offset:3200
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v156, v205 offset:3008
	ds_load_u16_d16_hi v150, v205 offset:3456
	ds_load_u16_d16_hi v157, v205 offset:3264
	ds_load_u16_d16_hi v151, v205 offset:3712
	ds_load_u16_d16_hi v152, v205 offset:3968
	ds_load_u16_d16_hi v159, v205 offset:3776
	ds_load_u16_d16_hi v158, v205 offset:3520
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v104.h, 0x7fff, v99.h, vcc_lo
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[89:96], v[169:176], v[121:128], v[89:96]
	v_wmma_f32_16x16x16_bf16 v[81:88], v[223:230], v[121:128], v[81:88]
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v98, v98, v104
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v121, v211, 16, 1
	v_bfe_u32 v122, v222, 16, 1
	v_cndmask_b16 v229.h, 0x7fff, v100.h, s1
	v_cndmask_b16 v228.h, 0x7fff, v101.h, s3
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v99, v98, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v121, v211, v121, 0x7fff
	v_add3_u32 v122, v222, v122, 0x7fff
	v_cndmask_b16 v227.h, 0x7fff, v102.h, s6
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v98, v98, v99, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v99, v217, 16, 1
	v_cndmask_b16 v215.h, 0x7fff, v121.h, s8
	v_cndmask_b16 v224.h, 0x7fff, v122.h, s9
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v229.l, v104.l
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cndmask_b16 v53.l, 0x7fff, v98.h, vcc_lo
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	scratch_load_b32 v98, off, off offset:316 ; 4-byte Folded Reload
	v_add3_u32 v99, v217, v99, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v228.l, v104.l
	v_mov_b16_e64 v227.l, v104.l
	v_mov_b16_e64 v224.l, v104.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v140.l, v191.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v220.h, 0x7fff, v99.h, s0
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v139.l, v192.h
	v_mov_b16_e64 v138.l, v193.h
	v_mov_b16_e64 v137.l, v194.h
	v_mov_b16_e64 v136.l, v195.h
	v_mov_b16_e64 v135.l, v196.h
	v_mov_b16_e64 v134.l, v198.h
	v_mov_b16_e64 v133.l, v199.h
	v_mov_b16_e64 v132.l, v190.h
	v_mov_b16_e64 v131.l, v197.h
	v_mov_b16_e64 v130.l, v202.h
	v_mov_b16_e64 v129.l, v203.h
	v_mov_b16_e32 v112.l, v53.h
	v_mov_b16_e32 v111.l, v54.h
	v_mov_b16_e32 v110.l, v55.h
	v_mov_b16_e32 v109.l, v56.h
	v_mov_b16_e32 v108.l, v57.h
	v_mov_b16_e32 v107.l, v58.h
	v_mov_b16_e32 v106.l, v59.h
	v_mov_b16_e32 v105.l, v60.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v63.l, v104.l
	v_mov_b16_e32 v61.l, v104.l
	v_mov_b16_e32 v59.l, v104.l
	v_mov_b16_e32 v57.l, v104.l
	v_mov_b16_e32 v55.l, v104.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[89:96], v[145:152], v[113:120], v[89:96]
	v_wmma_f32_16x16x16_bf16 v[81:88], v[153:160], v[113:120], v[81:88]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v60.l, v104.l
	v_mov_b16_e32 v64.l, v104.l
	v_mov_b16_e32 v62.l, v104.l
	v_mov_b16_e32 v58.l, v104.l
	v_mov_b16_e32 v56.l, v104.l
	v_mov_b16_e32 v54.l, v104.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v63, v63, v63
	v_sub_f32_e32 v61, v61, v61
	v_sub_f32_e32 v59, v59, v59
	v_sub_f32_e32 v57, v57, v57
	v_dual_sub_f32 v55, v55, v55 :: v_dual_sub_f32 v64, v64, v64
	v_sub_f32_e32 v62, v62, v62
	v_sub_f32_e32 v60, v60, v60
	v_sub_f32_e32 v58, v58, v58
	v_sub_f32_e32 v56, v56, v56
	v_sub_f32_e32 v54, v54, v54
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v123, 0, v98
	ds_store_b16_d16_hi v123, v104
	ds_store_b16_d16_hi v248, v220
	ds_store_b16_d16_hi v249, v229
	ds_store_b16_d16_hi v252, v228
	ds_store_b16_d16_hi v253, v227
	ds_store_b16_d16_hi v254, v216
	ds_store_b16_d16_hi v186, v215
	ds_store_b16_d16_hi v177, v224
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v98, off, off offset:296 ; 4-byte Folded Reload
	ds_load_b64 v[124:125], v201
	ds_load_b64 v[126:127], v8
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v161.h
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e64 v169.h, v124.l
	v_mov_b16_e64 v173.h, v125.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v223, 0, v98
	ds_load_b64 v[171:172], v3
	ds_load_b64 v[98:99], v4
	ds_load_b64 v[174:175], v223
	ds_load_b64 v[102:103], v9
	ds_load_b64 v[100:101], v12
	ds_load_b64 v[121:122], v5
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v123, v53
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v170.l, v171.l
	v_mov_b16_e64 v170.h, v98.l
	v_mov_b16_e64 v98.l, v171.h
	v_mov_b16_e64 v173.l, v175.l
	v_mov_b16_e64 v124.l, v174.h
	v_mov_b16_e64 v125.l, v175.h
	v_mov_b16_e64 v174.h, v99.l
	v_mov_b16_e64 v99.l, v172.h
	v_mov_b16_e64 v171.h, v126.l
	v_mov_b16_e64 v175.l, v122.l
	v_mov_b16_e64 v175.h, v127.l
	v_mov_b16_e32 v126.l, v121.h
	v_mov_b16_e32 v127.l, v122.h
	v_mov_b16_e64 v172.h, v100.l
	v_mov_b16_e32 v100.l, v102.h
	v_mov_b32_e32 v122, v98
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v98, v217, v220
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v169.l, v174.l
	v_mov_b16_e64 v174.l, v172.l
	v_mov_b16_e64 v171.l, v121.l
	v_mov_b16_e64 v172.l, v102.l
	v_dual_mov_b32 v123, v126 :: v_dual_mov_b32 v126, v99
	v_mov_b32_e32 v121, v124
	v_dual_mov_b32 v124, v100 :: v_dual_sub_f32 v99, v218, v229
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v102, v210, v216
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v210, v98, 16, 1
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v176.h, v101.l
	v_mov_b16_e32 v101.l, v103.h
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v100, v219, v228
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	v_add3_u32 v98, v98, v210, 0x7fff
	v_bfe_u32 v210, v99, 16, 1
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b32_e32 v128, v101
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v101, v209, v227
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s0, v99, v99
	v_cndmask_b16 v53.l, 0x7fff, v98.h, vcc_lo
	v_add3_u32 v99, v99, v210, 0x7fff
	v_bfe_u32 v210, v100, 16, 1
	v_cmp_o_f32_e64 s1, v100, v100
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v176.l, v103.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v248, v53
	v_cndmask_b16 v53.l, 0x7fff, v99.h, s0
	v_add3_u32 v100, v100, v210, 0x7fff
	v_bfe_u32 v210, v101, 16, 1
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v103, v211, v215
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v101, v101
	ds_store_b16 v249, v53
	v_cndmask_b16 v53.l, 0x7fff, v100.h, s1
	v_add3_u32 v101, v101, v210, 0x7fff
	v_bfe_u32 v210, v102, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v209, v222, v224
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s6, v102, v102
	ds_store_b16 v252, v53
	v_cndmask_b16 v53.l, 0x7fff, v101.h, s3
	v_add3_u32 v102, v102, v210, 0x7fff
	v_bfe_u32 v210, v103, 16, 1
	v_cmp_o_f32_e64 s7, v103, v103
	v_cmp_o_f32_e64 s8, v209, v209
	ds_store_b16 v253, v53
	v_cndmask_b16 v53.l, 0x7fff, v102.h, s6
	v_add3_u32 v103, v103, v210, 0x7fff
	v_bfe_u32 v210, v209, 16, 1
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[161:168], v[169:176], v[73:80]
	v_wmma_f32_16x16x16_bf16 v[65:72], v[129:136], v[169:176], v[65:72]
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v254, v53
	v_cndmask_b16 v53.l, 0x7fff, v103.h, s7
	v_add3_u32 v209, v209, v210, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[137:144], v[121:128], v[73:80]
	v_wmma_f32_16x16x16_bf16 v[65:72], v[105:112], v[121:128], v[65:72]
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v186, v53
	v_cndmask_b16 v53.l, 0x7fff, v209.h, s8
	ds_store_b16 v177, v53
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[98:99], v223
	ds_load_b64 v[100:101], v3
	ds_load_b64 v[102:103], v4
	ds_load_b64 v[225:226], v201
	ds_load_b64 v[227:228], v8
	ds_load_b64 v[209:210], v9
	ds_load_b64 v[229:230], v12
	ds_load_b64 v[223:224], v5
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v53.l, v104.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v53, v53, v53
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(7)
	v_mov_b16_e64 v215.l, v98.l
	s_waitcnt lgkmcnt(6)
	v_mov_b16_e64 v216.l, v100.l
	s_waitcnt lgkmcnt(5)
	v_mov_b16_e64 v216.h, v102.l
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e64 v215.h, v225.l
	v_mov_b16_e64 v225.l, v98.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v211, v104, v104
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v162.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e64 v218.h, v229.l
	v_mov_b16_e64 v229.l, v209.h
	v_mov_b16_e64 v222.h, v230.l
	v_mov_b16_e64 v230.l, v210.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v232, v104, v104
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v163.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e64 v217.l, v223.l
	v_mov_b16_e64 v217.h, v227.l
	v_mov_b16_e64 v218.l, v209.l
	v_mov_b16_e64 v219.l, v99.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v231, v104, v104
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v164.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v219.h, v226.l
	v_mov_b16_e64 v220.l, v101.l
	v_mov_b16_e64 v220.h, v103.l
	v_mov_b16_e64 v221.l, v224.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v243, v104, v104
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v165.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v221.h, v228.l
	v_mov_b16_e64 v222.l, v210.l
	v_mov_b16_e32 v103.l, v101.h
	v_mov_b16_e64 v227.l, v223.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v244, v104, v104
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v166.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[161:168], v[215:222], v[73:80]
	v_mov_b16_e32 v102.l, v100.h
	v_mov_b16_e64 v228.l, v224.h
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v224, v227 :: v_dual_sub_f32 v235, v104, v104
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v167.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v227, v103
	v_mov_b32_e32 v223, v102
	v_mov_b16_e64 v226.l, v99.h
	v_wmma_f32_16x16x16_bf16 v[65:72], v[129:136], v[215:222], v[65:72]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v236, v104, v104
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v168.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v222, v225
	v_mov_b32_e32 v225, v229
	v_mov_b32_e32 v229, v230
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v211, v211
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v163, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v137.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[137:144], v[222:229], v[73:80]
	v_wmma_f32_16x16x16_bf16 v[65:72], v[105:112], v[222:229], v[65:72]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v162, v104, v104
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v138.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v161, v104, v104
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v139.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v103, v104, v104
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v140.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v140.h, v104.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v102, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v141.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v141.h, v104.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v101, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v142.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v142.h, v104.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v100, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v143.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v99, v104, v104
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v144.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v98, v104, v104
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v129.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v139, v104, v104
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v130.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v138, v104, v104
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v131.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v137, v104, v104
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v132.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v132, v104, v104
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v133.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v133, v208, v208
	v_sub_f32_e32 v131, v104, v104
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v134.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v134.h, v104.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v134.l, v133.h
	v_cmp_o_f32_e32 vcc_lo, v133, v133
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v130, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v135.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v134, 1, v134
	v_mov_b16_e64 v135.h, v104.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v129, v104, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v133, v133, v134, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v134, v214, v214
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v136.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v136.h, v104.l
	v_mov_b16_e64 v133.l, v232.h
	v_mov_b16_e64 v135.l, v134.h
	v_cmp_o_f32_e64 s0, v134, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v135, 1, v135
	v_add3_u32 v134, v134, v135, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v135, v213, v213
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v134.l, v231.h
	v_mov_b16_e64 v105.l, v162.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v136.l, v135.h
	v_cmp_o_f32_e64 s1, v135, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v136, 1, v136
	v_add3_u32 v135, v135, v136, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v136, v212, v212
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v135.l, v243.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v208.l, 0x7fff, v135.h, s1
	v_mov_b16_e64 v140.l, v136.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v136, v136
	v_mov_b16_e64 v135.h, v104.l
	v_cmp_o_f32_e64 s1, v243, v243
	v_and_b32_e32 v140, 1, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v135, 1, v135
	v_add3_u32 v136, v136, v140, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v140, v207, v207
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v207.l, 0x7fff, v134.h, s0
	v_mov_b16_e64 v134.h, v104.l
	v_cmp_o_f32_e64 s0, v231, v231
	v_add3_u32 v135, v243, v135, 0x7fff
	v_mov_b16_e64 v141.l, v140.h
	v_cmp_o_f32_e64 s6, v140, v140
	v_and_b32_e32 v134, 1, v134
	v_cndmask_b16 v209.l, 0x7fff, v136.h, s3
	v_cndmask_b16 v209.h, 0x7fff, v135.h, s1
	v_and_b32_e32 v141, 1, v141
	v_mov_b16_e64 v135.h, v104.l
	v_add3_u32 v134, v231, v134, 0x7fff
	v_mov_b16_e64 v136.h, v104.l
	v_mov_b16_e64 v136.l, v244.h
	v_add3_u32 v140, v140, v141, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v141, v206, v206
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v208.h, 0x7fff, v134.h, s0
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v134, v204, v204
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v206.l, 0x7fff, v133.h, vcc_lo
	v_mov_b16_e64 v133.h, v104.l
	v_mov_b16_e64 v142.l, v141.h
	v_cmp_o_f32_e32 vcc_lo, v232, v232
	v_mov_b16_e64 v135.l, v134.h
	v_cmp_o_f32_e64 s0, v134, v134
	v_and_b32_e32 v133, 1, v133
	v_and_b32_e32 v142, 1, v142
	v_cmp_o_f32_e64 s1, v163, v163
	v_and_b32_e32 v135, 1, v135
	v_cndmask_b16 v210.l, 0x7fff, v140.h, s6
	v_add3_u32 v133, v232, v133, 0x7fff
	v_mov_b16_e64 v133.l, v236.h
	v_and_b32_e32 v136, 1, v136
	v_add3_u32 v135, v134, v135, 0x7fff
	v_mov_b16_e64 v134.l, v163.h
	v_mov_b16_e64 v134.h, v104.l
	v_cndmask_b16 v207.h, 0x7fff, v133.h, vcc_lo
	v_mov_b16_e64 v133.h, v104.l
	v_cndmask_b16 v212.l, 0x7fff, v135.h, s0
	v_mov_b16_e64 v135.h, v104.l
	v_and_b32_e32 v134, 1, v134
	v_cmp_o_f32_e32 vcc_lo, v236, v236
	v_and_b32_e32 v133, 1, v133
	v_mov_b16_e64 v140.h, v104.l
	v_mov_b16_e64 v140.l, v235.h
	v_add3_u32 v134, v163, v134, 0x7fff
	v_cmp_o_f32_e64 s7, v141, v141
	v_add3_u32 v133, v236, v133, 0x7fff
	v_add3_u32 v141, v141, v142, 0x7fff
	v_mov_b16_e64 v142.h, v104.l
	v_cndmask_b16 v213.h, 0x7fff, v134.h, s1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v134, v203, v203
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v212.h, 0x7fff, v133.h, vcc_lo
	v_mov_b16_e64 v133.h, v104.l
	v_mov_b16_e64 v142.l, v211.h
	v_cmp_o_f32_e64 s3, v244, v244
	v_mov_b16_e64 v135.l, v134.h
	v_cmp_o_f32_e64 s0, v134, v134
	v_add3_u32 v136, v244, v136, 0x7fff
	v_and_b32_e32 v140, 1, v140
	v_and_b32_e32 v142, 1, v142
	v_and_b32_e32 v135, 1, v135
	v_cmp_o_f32_e64 s6, v235, v235
	v_cndmask_b16 v210.h, 0x7fff, v136.h, s3
	v_add3_u32 v140, v235, v140, 0x7fff
	v_add3_u32 v142, v211, v142, 0x7fff
	v_add3_u32 v135, v134, v135, 0x7fff
	v_mov_b16_e64 v134.l, v138.h
	v_mov_b16_e64 v134.h, v104.l
	v_cndmask_b16 v211.h, 0x7fff, v140.h, s6
	v_mov_b16_e64 v140.h, v104.l
	v_cmp_o_f32_e64 s1, v138, v138
	v_cndmask_b16 v211.l, 0x7fff, v141.h, s7
	v_and_b32_e32 v134, 1, v134
	v_mov_b16_e64 v133.l, v139.h
	v_cmp_o_f32_e32 vcc_lo, v139, v139
	v_cndmask_b16 v206.h, 0x7fff, v142.h, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v134, v138, v134, 0x7fff
	v_and_b32_e32 v133, 1, v133
	v_mov_b16_e64 v138.h, v104.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v134.h, 0x7fff, v134.h, s1
	v_add3_u32 v133, v139, v133, 0x7fff
	v_mov_b16_e64 v139.h, v104.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v136, v200, v200
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v133.l, 0x7fff, v135.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v133.h, 0x7fff, v133.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v132, v132
	v_mov_b16_e64 v140.l, v136.h
	v_cmp_o_f32_e64 s3, v136, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v140, 1, v140
	v_add3_u32 v140, v136, v140, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v136, v202, v202
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v137, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v213.l, 0x7fff, v140.h, s3
	v_mov_b16_e64 v138.l, v136.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v136, v136
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[206:213], v[169:176], v[73:80]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v138, 1, v138
	v_cmp_o_f32_e64 s1, v131, v131
	v_add3_u32 v138, v136, v138, 0x7fff
	v_mov_b16_e64 v136.l, v137.h
	v_mov_b16_e64 v136.h, v104.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v134.l, 0x7fff, v138.h, s3
	v_mov_b16_e64 v138.h, v104.l
	v_and_b32_e32 v136, 1, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v136, v137, v136, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v137, v197, v197
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v136.l, v132.h
	v_cndmask_b16 v135.h, 0x7fff, v136.h, s6
	v_mov_b16_e64 v136.h, v104.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v139.l, v137.h
	v_cmp_o_f32_e64 s7, v137, v137
	v_cmp_o_f32_e64 s6, v130, v130
	v_and_b32_e32 v136, 1, v136
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v139, 1, v139
	v_add3_u32 v136, v132, v136, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v132, v190, v190
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v139, v137, v139, 0x7fff
	v_mov_b16_e64 v137.h, v104.l
	v_cndmask_b16 v136.h, 0x7fff, v136.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v137.l, v132.h
	v_cmp_o_f32_e64 s0, v132, v132
	v_cndmask_b16 v135.l, 0x7fff, v139.h, s7
	v_mov_b16_e64 v139.h, v104.l
	v_and_b32_e32 v137, 1, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v137, v132, v137, 0x7fff
	v_mov_b16_e64 v132.l, v131.h
	v_mov_b16_e64 v132.h, v104.l
	v_cndmask_b16 v136.l, 0x7fff, v137.h, s0
	v_cmp_o_f32_e64 s0, v129, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v132, 1, v132
	v_add3_u32 v132, v131, v132, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v131, v199, v199
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v137.h, 0x7fff, v132.h, s1
	v_mov_b16_e64 v138.l, v131.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v131, v131
	v_mov_b16_e64 v132.h, v104.l
	v_and_b32_e32 v138, 1, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v138, v131, v138, 0x7fff
	v_mov_b16_e64 v131.l, v130.h
	v_mov_b16_e64 v131.h, v104.l
	v_cndmask_b16 v137.l, 0x7fff, v138.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v131, 1, v131
	v_add3_u32 v131, v130, v131, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v130, v198, v198
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v138.h, 0x7fff, v131.h, s6
	v_mov_b16_e64 v131.l, v130.h
	v_mov_b16_e64 v131.h, v104.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v130, v130
	v_and_b32_e32 v131, 1, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v131, v130, v131, 0x7fff
	v_mov_b16_e64 v130.l, v129.h
	v_mov_b16_e64 v130.h, v104.l
	v_cndmask_b16 v138.l, 0x7fff, v131.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v162, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v130, 1, v130
	v_add3_u32 v130, v129, v130, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v129, v196, v196
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v132.l, v129.h
	v_cmp_o_f32_e64 s1, v129, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v132, 1, v132
	v_add3_u32 v132, v129, v132, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v129, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v105.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v105.h, v104.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v113, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v106.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v106, v194, v194
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e64 v139.l, v129.h
	v_cmp_o_f32_e64 s3, v129, v129
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v114, v104, v104 :: v_dual_and_b32 v105, 1, v105
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v107.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v107.l, v106.h
	v_mov_b16_e32 v107.h, v104.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v105, v162, v105, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v115, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v108.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v108, v193, v193 :: v_dual_and_b32 v107, 1, v107
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cndmask_b16 v105.h, 0x7fff, v105.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v102, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v116, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v109.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v109.l, v108.h
	v_mov_b16_e32 v109.h, v104.l
	v_add3_u32 v107, v106, v107, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v117, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v110.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v139, 1, v139
	v_and_b32_e32 v109, 1, v109
	v_mov_b16_e32 v110.h, v104.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v118, v104, v104
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v140, v129, v139, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v129, v195, v195
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v139.h, v104.l
	v_add3_u32 v109, v108, v109, 0x7fff
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v111.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v140.h, 0x7fff, v140.h, s3
	v_mov_b16_e64 v139.l, v129.h
	v_cmp_o_f32_e64 s3, v108, v108
	v_mov_b16_e32 v108.l, v103.h
	v_mov_b16_e32 v108.h, v104.l
	v_cmp_o_f32_e64 s6, v129, v129
	v_and_b32_e32 v139, 1, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v108, 1, v108
	v_add3_u32 v141, v129, v139, 0x7fff
	v_cndmask_b16 v139.h, 0x7fff, v130.h, s0
	v_cmp_o_f32_e64 s0, v106, v106
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v108, v103, v108, 0x7fff
	v_mov_b16_e64 v106.l, v161.h
	v_cndmask_b16 v140.l, 0x7fff, v141.h, s6
	v_cmp_o_f32_e64 s6, v103, v103
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v103, v192, v192
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v106.h, v104.l
	v_cndmask_b16 v105.l, 0x7fff, v107.h, s0
	v_cndmask_b16 v139.l, 0x7fff, v132.h, s1
	v_cndmask_b16 v107.h, 0x7fff, v108.h, s6
	v_mov_b16_e32 v110.l, v103.h
	v_cmp_o_f32_e64 s7, v103, v103
	v_mov_b16_e32 v108.h, v104.l
	v_and_b32_e32 v106, 1, v106
	v_cmp_o_f32_e64 s1, v161, v161
	v_and_b32_e32 v110, 1, v110
	v_cmp_o_f32_e64 s6, v100, v100
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[133:140], v[169:176], v[65:72]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v106, v161, v106, 0x7fff
	v_cndmask_b16 v106.l, 0x7fff, v109.h, s3
	v_add3_u32 v110, v103, v110, 0x7fff
	v_mov_b16_e32 v103.l, v102.h
	v_mov_b16_e32 v103.h, v104.l
	v_cndmask_b16 v106.h, 0x7fff, v106.h, s1
	v_cmp_o_f32_e64 s1, v101, v101
	v_cmp_o_f32_e64 s3, v64, v64
	v_cndmask_b16 v107.l, 0x7fff, v110.h, s7
	v_and_b32_e32 v103, 1, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v103, v102, v103, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v102, v191, v191
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v108.l, v102.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s0, v102, v102
	v_and_b32_e32 v108, 1, v108
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v109, v102, v108, 0x7fff
	v_mov_b16_e32 v102.l, v101.h
	v_mov_b16_e32 v102.h, v104.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v119, v104, v104
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v108.h, 0x7fff, v103.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v63, v63
	v_cndmask_b16 v108.l, 0x7fff, v109.h, s0
	v_and_b32_e32 v102, 1, v102
	v_cmp_o_f32_e64 s0, v99, v99
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v112.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v102, v101, v102, 0x7fff
	v_mov_b16_e32 v101.l, v64.h
	v_mov_b16_e32 v101.h, v104.l
	v_cndmask_b16 v109.h, 0x7fff, v102.h, s1
	v_cmp_o_f32_e64 s1, v62, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v101, 1, v101
	v_add3_u32 v101, v64, v101, 0x7fff
	v_mov_b16_e32 v64.l, v100.h
	v_mov_b16_e32 v64.h, v104.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v109.l, 0x7fff, v101.h, s3
	v_cmp_o_f32_e64 s3, v98, v98
	v_and_b32_e32 v64, 1, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v64, v100, v64, 0x7fff
	v_mov_b16_e32 v64.l, v63.h
	v_cndmask_b16 v110.h, 0x7fff, v64.h, s6
	v_mov_b16_e32 v64.h, v104.l
	v_cmp_o_f32_e64 s6, v61, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v64, 1, v64
	v_add3_u32 v64, v63, v64, 0x7fff
	v_mov_b16_e32 v63.l, v99.h
	v_mov_b16_e32 v63.h, v104.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v110.l, 0x7fff, v64.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v113, v113
	v_and_b32_e32 v63, 1, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v63, v99, v63, 0x7fff
	v_mov_b16_e32 v99.l, v62.h
	v_mov_b16_e32 v99.h, v104.l
	v_mov_b16_e32 v63.l, v59.h
	v_cndmask_b16 v111.h, 0x7fff, v63.h, s0
	v_cmp_o_f32_e64 s0, v60, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v99, 1, v99
	v_mov_b16_e32 v63.h, v104.l
	v_add3_u32 v99, v62, v99, 0x7fff
	v_mov_b16_e32 v62.l, v98.h
	v_mov_b16_e32 v62.h, v104.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v63, 1, v63
	v_cndmask_b16 v111.l, 0x7fff, v99.h, s1
	v_cmp_o_f32_e64 s1, v114, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v62, 1, v62
	v_add3_u32 v63, v59, v63, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v62, v98, v62, 0x7fff
	v_mov_b16_e32 v62.l, v60.h
	v_mov_b16_e32 v98.l, v61.h
	v_mov_b16_e32 v98.h, v104.l
	v_cndmask_b16 v112.h, 0x7fff, v62.h, s3
	v_mov_b16_e32 v62.h, v104.l
	v_cmp_o_f32_e64 s3, v59, v59
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v98, 1, v98
	v_mov_b16_e32 v59.l, v115.h
	v_mov_b16_e32 v59.h, v104.l
	v_and_b32_e32 v62, 1, v62
	v_cndmask_b16 v99.l, 0x7fff, v63.h, s3
	v_add3_u32 v98, v61, v98, 0x7fff
	v_mov_b16_e32 v61.l, v113.h
	v_mov_b16_e32 v61.h, v104.l
	v_add3_u32 v62, v60, v62, 0x7fff
	v_mov_b16_e32 v60.l, v114.h
	v_mov_b16_e32 v60.h, v104.l
	v_and_b32_e32 v59, 1, v59
	v_and_b32_e32 v61, 1, v61
	v_cndmask_b16 v112.l, 0x7fff, v98.h, s6
	v_cmp_o_f32_e64 s6, v115, v115
	v_and_b32_e32 v60, 1, v60
	v_add3_u32 v59, v115, v59, 0x7fff
	v_add3_u32 v61, v113, v61, 0x7fff
	v_mov_b16_e32 v59.l, v58.h
	v_mov_b16_e32 v61.l, v56.h
	v_add3_u32 v60, v114, v60, 0x7fff
	v_mov_b16_e32 v60.l, v57.h
	v_cndmask_b16 v98.h, 0x7fff, v61.h, vcc_lo
	v_cndmask_b16 v100.h, 0x7fff, v59.h, s6
	v_mov_b16_e32 v59.h, v104.l
	v_cndmask_b16 v99.h, 0x7fff, v60.h, s1
	v_mov_b16_e32 v60.h, v104.l
	v_cmp_o_f32_e64 s1, v57, v57
	v_mov_b16_e32 v61.h, v104.l
	v_and_b32_e32 v59, 1, v59
	v_cmp_o_f32_e64 s3, v117, v117
	v_and_b32_e32 v60, 1, v60
	v_cmp_o_f32_e32 vcc_lo, v58, v58
	v_and_b32_e32 v61, 1, v61
	v_add3_u32 v59, v58, v59, 0x7fff
	v_mov_b16_e32 v58.l, v116.h
	v_add3_u32 v60, v57, v60, 0x7fff
	v_mov_b16_e32 v57.l, v117.h
	v_mov_b16_e32 v57.h, v104.l
	v_mov_b16_e32 v58.h, v104.l
	v_add3_u32 v61, v56, v61, 0x7fff
	v_cmp_o_f32_e64 s6, v56, v56
	v_mov_b16_e32 v56.l, v118.h
	v_and_b32_e32 v57, 1, v57
	v_mov_b16_e32 v56.h, v104.l
	v_and_b32_e32 v58, 1, v58
	v_cndmask_b16 v98.l, 0x7fff, v62.h, s0
	v_cmp_o_f32_e64 s0, v116, v116
	v_add3_u32 v57, v117, v57, 0x7fff
	v_mov_b16_e32 v57.l, v54.h
	v_and_b32_e32 v56, 1, v56
	v_add3_u32 v58, v116, v58, 0x7fff
	v_cndmask_b16 v100.l, 0x7fff, v59.h, vcc_lo
	v_cndmask_b16 v102.h, 0x7fff, v57.h, s3
	v_mov_b16_e32 v57.h, v104.l
	v_add3_u32 v56, v118, v56, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v118, v118
	v_cndmask_b16 v101.l, 0x7fff, v60.h, s1
	v_cmp_o_f32_e64 s1, v54, v54
	v_and_b32_e32 v57, 1, v57
	v_cndmask_b16 v101.h, 0x7fff, v58.h, s0
	v_cndmask_b16 v103.h, 0x7fff, v56.h, vcc_lo
	v_mov_b16_e32 v56.l, v55.h
	v_mov_b16_e32 v56.h, v104.l
	v_add3_u32 v57, v54, v57, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v54, v104, v104
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v58.h, v104.l
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	v_and_b32_e32 v56, 1, v56
	v_cndmask_b16 v102.l, 0x7fff, v61.h, s6
	v_mov_b16_e32 v58.l, v54.h
	v_cmp_o_f32_e64 s3, v54, v54
	v_cmp_o_f32_e64 s0, v119, v119
	v_add3_u32 v56, v55, v56, 0x7fff
	v_mov_b16_e32 v55.l, v119.h
	v_and_b32_e32 v58, 1, v58
	v_mov_b16_e32 v55.h, v104.l
	v_cmp_o_f32_e64 s6, v53, v53
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[105:112], v[121:128], v[73:80]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v103.l, 0x7fff, v56.h, vcc_lo
	v_add3_u32 v58, v54, v58, 0x7fff
	v_mov_b16_e32 v54.h, v104.l
	v_mov_b16_e32 v54.l, v53.h
	v_and_b32_e32 v55, 1, v55
	v_cndmask_b16 v104.l, 0x7fff, v57.h, s1
	v_cndmask_b16 v105.h, 0x7fff, v58.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v54, 1, v54
	v_add3_u32 v55, v119, v55, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v54, v53, v54, 0x7fff
	v_cndmask_b16 v104.h, 0x7fff, v55.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v105.l, 0x7fff, v54.h, s6
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[98:105], v[121:128], v[65:72]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v54, off, off offset:320
	scratch_load_b32 v55, off, off offset:340
	scratch_load_b32 v56, off, off offset:372
	scratch_load_b32 v57, off, off offset:396
	scratch_load_b32 v58, off, off offset:412
	scratch_load_b32 v59, off, off offset:424
	scratch_load_b32 v60, off, off offset:432
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s0, s67, 1
	s_or_b32 s1, s67, 2
	s_or_b32 s3, s67, 3
	s_or_b32 s6, s67, 4
	s_or_b32 s7, s67, 5
	s_or_b32 s8, s67, 6
	s_or_b32 s9, s67, 7
	s_or_b32 s10, s67, 8
	s_or_b32 s11, s67, 9
	s_or_b32 s12, s67, 10
	s_or_b32 s13, s67, 11
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
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v122, 28, v189
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s0, s18
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_nc_u32_e32 v121, 0, v247
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s1, s18
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v122, s67, v122
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s3, s18
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s6, s18
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s7, s18
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s8, s18
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s9, s18
	v_cmp_gt_i32_e64 s9, s18, v122
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s10, s18
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v122, s31, v122
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s11, s18
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s12, s18
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s13, s18
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
	s_and_b32 vcc_lo, s2, s95
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_mul_i32 s0, s54, s35
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s96, s5, s9
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v53, s0, v0, 1
	v_add_lshl_u32 v61, s0, v241, 1
	v_add_lshl_u32 v62, s0, v2, 1
	v_add_lshl_u32 v63, s0, v251, 1
	v_add_lshl_u32 v64, s0, v7, 1
	v_add_lshl_u32 v99, s0, v246, 1
	v_add_lshl_u32 v100, s0, v11, 1
	v_add_lshl_u32 v101, s0, v21, 1
	v_add_lshl_u32 v102, s0, v24, 1
	v_add_lshl_u32 v103, s0, v28, 1
	v_add_lshl_u32 v104, s0, v30, 1
	v_add_lshl_u32 v107, s0, v32, 1
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v54, s0, v54, 1
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v55, s0, v55, 1
	v_cndmask_b32_e32 v53, 0x80000000, v53, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s94
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v56, s0, v56, 1
	v_cndmask_b32_e32 v54, 0x80000000, v54, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s93
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v57, s0, v57, 1
	v_cndmask_b32_e32 v55, 0x80000000, v55, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s92
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v58, s0, v58, 1
	v_cndmask_b32_e32 v56, 0x80000000, v56, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s91
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v59, s0, v59, 1
	v_cndmask_b32_e32 v57, 0x80000000, v57, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s90
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v60, s0, v60, 1
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s89
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s88
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v98, 0x80000000, v60, vcc_lo
	v_add_lshl_u32 v60, s0, v187, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s87
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x6
	buffer_load_u16 v53, v53, s[44:47], 0 offen
	buffer_load_u16 v54, v54, s[44:47], 0 offen
	buffer_load_u16 v55, v55, s[44:47], 0 offen
	buffer_load_u16 v56, v56, s[44:47], 0 offen
	buffer_load_u16 v57, v57, s[44:47], 0 offen
	buffer_load_u16 v58, v58, s[44:47], 0 offen
	buffer_load_u16 v59, v59, s[44:47], 0 offen
	v_cndmask_b32_e32 v60, 0x80000000, v60, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s86
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v61, 0x80000000, v61, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s85
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s84
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s83
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v64, 0x80000000, v64, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s82
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v99, 0x80000000, v99, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s81
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v100, 0x80000000, v100, vcc_lo
	s_clause 0x6
	buffer_load_u16 v60, v60, s[44:47], 0 offen
	buffer_load_u16 v61, v61, s[44:47], 0 offen
	buffer_load_u16 v62, v62, s[44:47], 0 offen
	buffer_load_u16 v63, v63, s[44:47], 0 offen
	buffer_load_u16 v64, v64, s[44:47], 0 offen
	buffer_load_u16 v105, v99, s[44:47], 0 offen
	buffer_load_u16 v106, v100, s[44:47], 0 offen
	v_add_lshl_u32 v99, s0, v14, 1
	v_add_lshl_u32 v100, s0, v17, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v99, 0x80000000, v99, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s79
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v100, 0x80000000, v100, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s78
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v101, 0x80000000, v101, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s77
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v102, 0x80000000, v102, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s76
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v103, 0x80000000, v103, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s75
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v104, 0x80000000, v104, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s74
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v112, 0x80000000, v107, vcc_lo
	v_add_lshl_u32 v107, s0, v34, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v113, 0x80000000, v107, vcc_lo
	v_add_lshl_u32 v107, s0, v38, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s71
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v114, 0x80000000, v107, vcc_lo
	v_add_lshl_u32 v107, s0, v40, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v115, 0x80000000, v107, vcc_lo
	v_add_lshl_u32 v107, s0, v42, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s69
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v116, 0x80000000, v107, vcc_lo
	s_clause 0x6
	buffer_load_u16 v107, v100, s[44:47], 0 offen
	buffer_load_u16 v108, v101, s[44:47], 0 offen
	buffer_load_u16 v109, v102, s[44:47], 0 offen
	buffer_load_u16 v110, v103, s[44:47], 0 offen
	buffer_load_u16 v111, v104, s[44:47], 0 offen
	buffer_load_u16 v112, v112, s[44:47], 0 offen
	buffer_load_u16 v129, v113, s[44:47], 0 offen
	v_add_lshl_u32 v100, s0, v44, 1
	v_add_lshl_u32 v101, s0, v46, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s68
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v102, s0, v48, 1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v103, v97 :: v_dual_cndmask_b32 v100, 0x80000000, v100
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s51
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v104, v97 :: v_dual_cndmask_b32 v101, 0x80000000, v101
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s50
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v102, 0x80000000, v102, vcc_lo
	s_clause 0x5
	buffer_load_u16 v130, v114, s[44:47], 0 offen
	buffer_load_u16 v131, v115, s[44:47], 0 offen
	buffer_load_u16 v132, v116, s[44:47], 0 offen
	buffer_load_u16 v133, v100, s[44:47], 0 offen
	buffer_load_u16 v134, v101, s[44:47], 0 offen
	buffer_load_u16 v135, v102, s[44:47], 0 offen
	v_add_nc_u32_e32 v102, s35, v51
	v_add_lshl_u32 v100, s0, v51, 1
	v_add_lshl_u32 v101, s0, v36, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v102, s0, v102, 1
	v_cndmask_b32_e32 v100, 0x80000000, v100, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s72
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v101, 0x80000000, v101, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s26
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v102, 0x80000000, v102, vcc_lo
	s_clause 0x4
	buffer_load_u16 v136, v100, s[44:47], 0 offen
	buffer_load_u16 v140, v98, s[44:47], 0 offen
	buffer_load_u16 v139, v99, s[44:47], 0 offen
	buffer_load_u16 v138, v101, s[44:47], 0 offen
	buffer_load_u16 v137, v102, s[44:47], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v98, v97
	v_mov_b32_e32 v99, v97
	v_mov_b32_e32 v100, v97
	v_mov_b32_e32 v101, v97
	v_mov_b32_e32 v102, v97
	v_dual_mov_b32 v120, v104 :: v_dual_mov_b32 v119, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v116, v100 :: v_dual_mov_b32 v115, v99
	v_dual_mov_b32 v118, v102 :: v_dual_mov_b32 v117, v101
	v_dual_mov_b32 v114, v98 :: v_dual_mov_b32 v113, v97
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v99, 4, v189
	v_or_b32_e32 v100, 8, v189
	v_or_b32_e32 v101, 12, v189
	v_or_b32_e32 v102, 16, v189
	v_or_b32_e32 v103, 20, v189
	v_or_b32_e32 v104, 24, v189
	.loc	1 608 29 is_stmt 0              ; attention_backward.py:608:29
	v_or_b32_e32 v98, s67, v189
	v_or_b32_e32 v99, s67, v99
	v_or_b32_e32 v100, s67, v100
	v_or_b32_e32 v101, s67, v101
	v_or_b32_e32 v102, s67, v102
	v_or_b32_e32 v103, s67, v103
	v_or_b32_e32 v104, s67, v104
	.loc	1 609 29 is_stmt 1              ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s18, v98
	v_cmp_gt_i32_e64 s0, s18, v99
	v_cmp_gt_i32_e64 s1, s18, v100
	v_cmp_gt_i32_e64 s3, s18, v101
	v_cmp_gt_i32_e64 s6, s18, v102
	v_cmp_gt_i32_e64 s7, s18, v103
	v_cmp_gt_i32_e64 s8, s18, v104
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v98, s31, v98
	v_add_nc_u32_e32 v99, s31, v99
	v_add_nc_u32_e32 v100, s31, v100
	v_add_nc_u32_e32 v101, s31, v101
	v_add_nc_u32_e32 v102, s31, v102
	v_add_nc_u32_e32 v103, s31, v103
	v_add_nc_u32_e32 v104, s31, v104
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s101, s5, vcc_lo
	s_and_b32 s99, s5, s0
	s_and_b32 s97, s5, s1
	s_and_b32 s55, s5, s3
	s_and_b32 s102, s5, s6
	s_and_b32 s100, s5, s7
	s_and_b32 s98, s5, s8
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_and_not1_b32 vcc_lo, exec_lo, s58
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(31)
	ds_store_b16 v178, v53
	s_waitcnt vmcnt(24)
	ds_store_b16 v178, v60 offset:1024
	s_waitcnt vmcnt(17)
	ds_store_b16 v178, v107 offset:2048
	s_waitcnt vmcnt(10)
	ds_store_b16 v178, v130 offset:3072
	ds_store_b16 v179, v54
	ds_store_b16 v179, v61 offset:1024
	ds_store_b16 v179, v108 offset:2048
	s_waitcnt vmcnt(9)
	ds_store_b16 v179, v131 offset:3072
	ds_store_b16 v180, v55
	ds_store_b16 v180, v62 offset:1024
	ds_store_b16 v180, v109 offset:2048
	s_waitcnt vmcnt(8)
	ds_store_b16 v180, v132 offset:3072
	ds_store_b16 v181, v56
	ds_store_b16 v181, v63 offset:1024
	ds_store_b16 v181, v110 offset:2048
	s_waitcnt vmcnt(7)
	ds_store_b16 v181, v133 offset:3072
	ds_store_b16 v182, v57
	ds_store_b16 v182, v64 offset:1024
	ds_store_b16 v182, v111 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b16 v182, v134 offset:3072
	ds_store_b16 v183, v58
	ds_store_b16 v183, v105 offset:1024
	ds_store_b16 v183, v112 offset:2048
	s_waitcnt vmcnt(5)
	ds_store_b16 v183, v135 offset:3072
	ds_store_b16 v184, v59
	ds_store_b16 v184, v106 offset:1024
	ds_store_b16 v184, v129 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v184, v136 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v185, v140
	s_waitcnt vmcnt(2)
	ds_store_b16 v185, v139 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v185, v138 offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b16 v185, v137 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[149:152], off, off
	scratch_load_b128 v[153:156], off, off offset:16
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[141:144], v121
	ds_load_b128 v[145:148], v13
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[149:156], v[141:148], v[113:120]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[149:152], off, off offset:32
	scratch_load_b128 v[153:156], off, off offset:48
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[141:144], v16
	ds_load_b128 v[145:148], v19
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[149:156], v[141:148], v[113:120]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[149:152], off, off offset:64
	scratch_load_b128 v[153:156], off, off offset:80
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[141:144], v20
	ds_load_b128 v[145:148], v23
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[149:156], v[141:148], v[113:120]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[149:152], off, off offset:96
	scratch_load_b128 v[153:156], off, off offset:112
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[141:144], v26
	ds_load_b128 v[145:148], v27
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[149:156], v[141:148], v[113:120]
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e32 vcc_lo, v188, v98
	v_cmp_le_i32_e64 s0, v188, v99
	v_cmp_le_i32_e64 s1, v188, v100
	v_cmp_le_i32_e64 s3, v188, v101
	v_cmp_le_i32_e64 s6, v188, v102
	v_cmp_le_i32_e64 s7, v188, v103
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s10, s101, vcc_lo
	s_and_b32 s0, s99, s0
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s8, v188, v104
	v_cmp_le_i32_e64 s9, v188, v122
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s1, s97, s1
	s_and_b32 s3, s55, s3
	s_and_not1_b32 s11, s101, exec_lo
	s_and_b32 s10, s10, exec_lo
	s_and_not1_b32 s12, s99, exec_lo
	s_and_b32 s0, s0, exec_lo
	s_and_b32 s6, s102, s6
	s_and_b32 s7, s100, s7
	s_or_b32 s101, s11, s10
	s_or_b32 s99, s12, s0
	s_and_not1_b32 s0, s97, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s10, s55, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s8, s98, s8
	s_and_b32 s9, s96, s9
	s_or_b32 s97, s0, s1
	s_or_b32 s55, s10, s3
	s_and_not1_b32 s0, s102, exec_lo
	s_and_b32 s1, s6, exec_lo
	s_and_not1_b32 s3, s100, exec_lo
	s_and_b32 s6, s7, exec_lo
	s_or_b32 s102, s0, s1
	s_or_b32 s100, s3, s6
	s_and_not1_b32 s0, s98, exec_lo
	s_and_b32 s1, s8, exec_lo
	s_and_not1_b32 s3, s96, exec_lo
	s_and_b32 s6, s9, exec_lo
	s_or_b32 s98, s0, s1
	s_or_b32 s96, s3, s6
.LBB0_10:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 677 17 is_stmt 1              ; attention_backward.py:677:17
	s_and_not1_b32 vcc_lo, exec_lo, s57
	s_cbranch_vccnz .LBB0_7
; %bb.11:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v123, s29, v98
	v_subrev_nc_u32_e32 v124, s29, v99
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v98, s30, v98
	v_add_nc_u32_e32 v99, s30, v99
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v125, s29, v100
	v_subrev_nc_u32_e32 v126, s29, v101
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v100, s30, v100
	v_add_nc_u32_e32 v101, s30, v101
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v127, s29, v102
	v_subrev_nc_u32_e32 v128, s29, v103
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v102, s30, v102
	v_add_nc_u32_e32 v103, s30, v103
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v188, v123
	v_cmp_ge_i32_e64 s0, v188, v124
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s10, v188, v98
	v_cmp_le_i32_e64 s11, v188, v99
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v141, s29, v104
	v_subrev_nc_u32_e32 v142, s29, v122
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v104, s30, v104
	v_add_nc_u32_e32 v122, s30, v122
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s1, v188, v125
	v_cmp_ge_i32_e64 s3, v188, v126
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s12, v188, v100
	v_cmp_le_i32_e64 s13, v188, v101
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s6, v188, v127
	v_cmp_ge_i32_e64 s7, v188, v128
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s14, v188, v102
	v_cmp_le_i32_e64 s15, v188, v103
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s10, vcc_lo, s10
	s_and_b32 s0, s0, s11
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s8, v188, v141
	v_cmp_ge_i32_e64 s9, v188, v142
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s16, v188, v104
	v_cmp_le_i32_e64 s17, v188, v122
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s10, s10, s101
	s_and_b32 s0, s0, s99
	s_and_b32 s1, s1, s12
	s_and_b32 s3, s3, s13
	s_and_b32 s1, s1, s97
	s_and_b32 s3, s3, s55
	s_and_b32 s6, s6, s14
	s_and_b32 s7, s7, s15
	s_and_not1_b32 s11, s101, exec_lo
	s_and_b32 s10, s10, exec_lo
	s_and_not1_b32 s12, s99, exec_lo
	s_and_b32 s0, s0, exec_lo
	s_and_b32 s6, s6, s102
	s_and_b32 s7, s7, s100
	s_and_b32 s8, s8, s16
	s_and_b32 s9, s9, s17
	s_or_b32 s101, s11, s10
	s_or_b32 s99, s12, s0
	s_and_not1_b32 s0, s97, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s10, s55, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s8, s8, s98
	s_and_b32 s9, s9, s96
	s_or_b32 s97, s0, s1
	s_or_b32 s55, s10, s3
	s_and_not1_b32 s0, s102, exec_lo
	s_and_b32 s1, s6, exec_lo
	s_and_not1_b32 s3, s100, exec_lo
	s_and_b32 s6, s7, exec_lo
	s_or_b32 s102, s0, s1
	s_or_b32 s100, s3, s6
	s_and_not1_b32 s0, s98, exec_lo
	s_and_b32 s1, s8, exec_lo
	s_and_not1_b32 s3, s96, exec_lo
	s_and_b32 s6, s9, exec_lo
	s_or_b32 s98, s0, s1
	s_or_b32 s96, s3, s6
	s_branch .LBB0_7
.LBB0_12:                               ; %Flow373
	.loc	1 0 21                          ; attention_backward.py:0:21
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v50, off, off offset:440
	scratch_load_b32 v30, off, off offset:444
	scratch_load_b32 v51, off, off offset:448
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
.LBB0_14:                               ; %._crit_edge181
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v0, 4, v30
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v16, s35, v50
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s41, s37, 0xffff
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, v0, v51
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
	v_mul_lo_u32 v21, s33, v50
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
	buffer_store_b32 v73, v0, s[40:43], 0 offen
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
	buffer_store_b32 v74, v15, s[40:43], 0 offen
	buffer_store_b32 v75, v14, s[40:43], 0 offen
	v_add_lshl_u32 v11, v11, s56, 2
	s_clause 0x1
	buffer_store_b32 v76, v0, s[40:43], 0 offen
	buffer_store_b32 v77, v12, s[40:43], 0 offen
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
	buffer_store_b32 v78, v11, s[40:43], 0 offen
	buffer_store_b32 v79, v10, s[40:43], 0 offen
	v_add_lshl_u32 v7, v7, s56, 2
	s_clause 0x1
	buffer_store_b32 v80, v0, s[40:43], 0 offen
	buffer_store_b32 v65, v8, s[40:43], 0 offen
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
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 456
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 103
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 456
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20408
; TotalNumSgprs: 105
; NumVgprs: 256
; ScratchSize: 456
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 456
    .sgpr_count:     105
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 113
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
