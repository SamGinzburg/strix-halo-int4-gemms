	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x4
	s_load_b128 s[28:31], s[0:1], 0x94
	s_load_b128 s[24:27], s[0:1], 0x64
	s_load_b32 s35, s[0:1], 0x74
	s_load_b32 s56, s[0:1], 0x7c
	s_load_b128 s[36:39], s[0:1], 0x8
.Ltmp0:
	.loc	1 514 33 prologue_end           ; attention_backward.py:514:33
	v_and_b32_e32 v57, 15, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s28
	s_bitcmp1_b32 s28, 8
	.loc	1 533 24                        ; attention_backward.py:533:24
	s_mul_i32 s34, s3, s27
	s_cselect_b32 s58, -1, 0
	s_cmp_eq_u32 s4, 1
	s_cselect_b32 s59, -1, 0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_abs_i32 s15, s25
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_abs_i32 s5, s3
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cvt_f32_u32 s4, s15
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s57, s2, 4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_u32_f32 s43, s4
	s_sub_i32 s4, 0, s15
	s_mul_i32 s4, s4, s43
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s43, s4
	s_add_i32 s43, s43, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_mul_hi_u32 s4, s5, s43
	s_mul_i32 s6, s4, s15
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s6
	s_add_i32 s6, s4, 1
	s_sub_i32 s7, s5, s15
	s_cmp_ge_u32 s5, s15
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s5, s7, s5
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s5, s15
	s_cselect_b32 s14, s6, s4
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_ashr_i32 s40, s24, 31
	s_ashr_i32 s41, s25, 31
	s_abs_i32 s42, s24
	.loc	1 514 23                        ; attention_backward.py:514:23
	s_or_b32 s4, s57, 1
	s_or_b32 s5, s57, 2
	s_or_b32 s6, s57, 3
	s_or_b32 s7, s57, 4
	s_or_b32 s8, s57, 5
	s_or_b32 s9, s57, 6
	s_or_b32 s10, s57, 7
	s_or_b32 s11, s57, 8
	s_or_b32 s12, s57, 9
	s_or_b32 s16, s57, 10
	s_or_b32 s17, s57, 11
	s_or_b32 s18, s57, 12
	s_or_b32 s19, s57, 13
	s_or_b32 s20, s57, 14
	s_or_b32 s21, s57, 15
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cmp_lt_i32 s57, s27
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s4, s27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s5, s27
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s6, s27
	s_cselect_b32 s4, -1, 0
	s_cmp_lt_i32 s7, s27
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s8, s27
	s_cselect_b32 s6, -1, 0
	s_cmp_lt_i32 s9, s27
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s10, s27
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s11, s27
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s12, s27
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_cmp_gt_i32_e64 s12, s35, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s16, s27
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s17, s27
	s_cselect_b32 s8, -1, 0
	s_cmp_lt_i32 s18, s27
	s_mov_b32 s18, 0x7ffffffe
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s19, s27
	s_mov_b32 s19, 0x31027000
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s20, s27
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_mov_b32 s22, s18
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s21, s27
	s_load_b64 s[20:21], s[0:1], 0x28
	s_cselect_b32 s11, -1, 0
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_add_i32 s34, s34, s57
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s10, s13, s12
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_mul_i32 s33, s34, s35
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_mov_b32 s16, s36
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v1, s33, v0
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_and_b32 s17, s37, 0xffff
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_mov_b32 s23, s19
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
	v_cndmask_b32_e64 v1, 0x80000000, v1, s10
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s10, vcc_lo, s12
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v4, s35, v3
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v3, 1, v3
	v_cndmask_b32_e64 v2, 0x80000000, v2, s10
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s10, s50, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v5, s35, v4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v4, 1, v4
	v_cndmask_b32_e64 v3, 0x80000000, v3, s10
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s10, s4, s12
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v6, s35, v5
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v5, 1, v5
	v_cndmask_b32_e64 v4, 0x80000000, v4, s10
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s10, s49, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v7, s35, v6
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v6, 1, v6
	v_cndmask_b32_e64 v5, 0x80000000, v5, s10
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s10, s6, s12
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v8, s35, v7
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e64 v6, 0x80000000, v6, s10
	s_clause 0x5
	buffer_load_u16 v11, v1, s[16:19], 0 offen
	buffer_load_u16 v12, v2, s[16:19], 0 offen
	buffer_load_u16 v13, v3, s[16:19], 0 offen
	buffer_load_u16 v4, v4, s[16:19], 0 offen
	buffer_load_u16 v5, v5, s[16:19], 0 offen
	buffer_load_u16 v6, v6, s[16:19], 0 offen
	v_lshlrev_b32_e32 v7, 1, v7
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s10, s48, s12
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v9, s35, v8
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v2, 1, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v3, 0x80000000, v7, s10
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s10, s5, s12
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v10, s35, v9
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v7, 1, v9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s10
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s10, s47, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v1, s35, v10
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v9, 1, v10
	v_cndmask_b32_e64 v7, 0x80000000, v7, s10
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s10, s7, s12
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v8, s35, v1
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v1, 1, v1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s10
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s10, s46, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v10, s35, v8
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v8, 1, v8
	v_cndmask_b32_e64 v1, 0x80000000, v1, s10
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s10, s8, s12
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v14, s35, v10
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v10, 1, v10
	v_cndmask_b32_e64 v8, 0x80000000, v8, s10
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s10, s45, s12
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v15, s35, v14
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v14, 1, v14
	v_cndmask_b32_e64 v10, 0x80000000, v10, s10
	s_clause 0x4
	buffer_load_u16 v7, v7, s[16:19], 0 offen
	buffer_load_u16 v9, v9, s[16:19], 0 offen
	buffer_load_u16 v16, v1, s[16:19], 0 offen
	buffer_load_u16 v8, v8, s[16:19], 0 offen
	buffer_load_u16 v10, v10, s[16:19], 0 offen
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s10, s9, s12
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v1, 1, v15
	v_add_lshl_u32 v15, v15, s35, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s10
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s10, s44, s12
	s_delay_alu instid0(VALU_DEP_3) | instid1(SALU_CYCLE_1)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e64 v1, 0x80000000, v1, s10
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s10, s11, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e64 v15, 0x80000000, v15, s10
	s_clause 0x4
	buffer_load_u16 v14, v14, s[16:19], 0 offen
	buffer_load_u16 v17, v3, s[16:19], 0 offen
	buffer_load_u16 v18, v1, s[16:19], 0 offen
	buffer_load_u16 v19, v2, s[16:19], 0 offen
	buffer_load_u16 v15, v15, s[16:19], 0 offen
	.loc	1 542 37                        ; attention_backward.py:542:37
	s_add_i32 s10, s27, 15
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v1, 1, v0
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_ashr_i32 s16, s10, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s16, s16, 28
	s_add_i32 s10, s10, s16
	.loc	1 541 32                        ; attention_backward.py:541:32
	s_ashr_i32 s16, s57, 1
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_ashr_i32 s10, s10, 4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v2, 0x90, v1
	.loc	1 542 35                        ; attention_backward.py:542:35
	s_lshl_b32 s17, s10, 3
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v3, 0x120, v1
	.loc	1 549 23                        ; attention_backward.py:549:23
	s_cmp_lt_i32 s16, s17
	.loc	1 543 26                        ; attention_backward.py:543:26
	s_mul_i32 s17, s3, s17
	.loc	1 549 23                        ; attention_backward.py:549:23
	s_cselect_b32 s36, -1, 0
	.loc	1 545 17                        ; attention_backward.py:545:17
	s_add_i32 s17, s17, s16
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v204, 0, v2
	v_add_nc_u32_e32 v205, 0, v3
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mad_u64_u32 v[2:3], null, s17, s56, v[0:1]
	.loc	1 565 17                        ; attention_backward.py:565:17
	s_mul_i32 s10, s3, s10
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_bfe_i32 s2, s2, 0x1c0000
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v20, 0x1b0, v1
	.loc	1 568 17                        ; attention_backward.py:568:17
	s_add_i32 s2, s10, s2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s10, s56, v0
	.loc	1 568 17                        ; attention_backward.py:568:17
	s_mul_i32 s2, s2, s56
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v21, 0x240, v1
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_add_lshl_u32 v3, s2, v0, 1
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v206, 0, v20
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v20, s56, v2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v22, 0x2d0, v1
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s13, s10
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v23, 0x360, v1
	v_add_nc_u32_e32 v207, 0, v21
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v21, 0x80000000, v3, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, vcc_lo, s10
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v24, 0x3f0, v1
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v28, s56, v20
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v208, 0, v22
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v22, 0x80000000, v3, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s50, s10
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v209, 0, v23
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v23, 0x80000000, v3, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s4, s10
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v210, 0, v24
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v24, 0x80000000, v3, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s49, s10
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v31, s56, v28
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v25, 0x80000000, v3, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s6, s10
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v203, 0, v1
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v26, 0x80000000, v3, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s48, s10
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v34, s56, v31
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v27, 0x80000000, v3, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s5, s10
	.loc	1 549 22                        ; attention_backward.py:549:22
	s_and_b32 s2, s36, s10
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v29, 0x80000000, v3, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s47, s10
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v37, s56, v34
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v30, 0x80000000, v3, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s7, s10
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e64 v32, 0x80000000, v3, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s46, s10
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v40, s56, v37
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v33, 0x80000000, v3, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s8, s10
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v35, 0x80000000, v3, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s45, s10
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v41, s56, v40
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v36, 0x80000000, v3, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s9, s10
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_and_b32 s17, s39, 0xffff
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v38, 0x80000000, v3, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s44, s10
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_mov_b32 s16, s38
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v39, 0x80000000, v3, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s11, s10
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v3, 0x80000000, v3, s13
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	v_cndmask_b32_e64 v37, 0x80000000, v37, s2
	v_cndmask_b32_e64 v40, 0x80000000, v40, s2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	.loc	1 587 22                        ; attention_backward.py:587:22
	s_add_i32 s2, s26, 31
	s_mov_b32 s13, 0
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(15)
	ds_store_b16 v203, v11
	s_waitcnt vmcnt(9)
	ds_store_b16 v203, v7 offset:1024
	ds_store_b16 v204, v12
	s_waitcnt vmcnt(8)
	ds_store_b16 v204, v9 offset:1024
	ds_store_b16 v205, v13
	s_waitcnt vmcnt(7)
	ds_store_b16 v205, v16 offset:1024
	ds_store_b16 v206, v4
	s_waitcnt vmcnt(6)
	ds_store_b16 v206, v8 offset:1024
	ds_store_b16 v207, v5
	s_waitcnt vmcnt(5)
	ds_store_b16 v207, v10 offset:1024
	ds_store_b16 v208, v6
	s_waitcnt vmcnt(4)
	ds_store_b16 v208, v14 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v209, v17
	s_waitcnt vmcnt(2)
	ds_store_b16 v209, v18 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v210, v19
	s_waitcnt vmcnt(0)
	ds_store_b16 v210, v15 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_clause 0xf
	buffer_load_u16 v21, v21, s[20:23], 0 offen
	buffer_load_u16 v22, v22, s[20:23], 0 offen
	buffer_load_u16 v23, v23, s[20:23], 0 offen
	buffer_load_u16 v24, v24, s[20:23], 0 offen
	buffer_load_u16 v25, v25, s[20:23], 0 offen
	buffer_load_u16 v26, v26, s[20:23], 0 offen
	buffer_load_u16 v27, v27, s[20:23], 0 offen
	buffer_load_u16 v29, v29, s[20:23], 0 offen
	buffer_load_u16 v30, v30, s[20:23], 0 offen
	buffer_load_u16 v32, v32, s[20:23], 0 offen
	buffer_load_u16 v33, v33, s[20:23], 0 offen
	buffer_load_u16 v35, v35, s[20:23], 0 offen
	buffer_load_u16 v36, v36, s[20:23], 0 offen
	buffer_load_u16 v38, v38, s[20:23], 0 offen
	buffer_load_u16 v39, v39, s[20:23], 0 offen
	buffer_load_u16 v3, v3, s[20:23], 0 offen
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_clause 0x7
	buffer_load_u8 v18, v2, s[16:19], 0 offen
	buffer_load_u8 v19, v20, s[16:19], 0 offen
	buffer_load_u8 v20, v28, s[16:19], 0 offen
	buffer_load_u8 v14, v31, s[16:19], 0 offen
	buffer_load_u8 v15, v34, s[16:19], 0 offen
	buffer_load_u8 v16, v37, s[16:19], 0 offen
	buffer_load_u8 v17, v40, s[16:19], 0 offen
	buffer_load_u8 v13, v41, s[16:19], 0 offen
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_and_b32_e32 v2, 7, v0
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_ashr_i32 s16, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_lshr_b32 s16, s16, 27
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v4, 4, v2
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_add_i32 s16, s2, s16
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_hi_u32 s2, s42, s43
	.loc	1 587 20                        ; attention_backward.py:587:20
	s_and_b32 s60, s16, 0xffffffe0
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_bfe_u32 s16, s28, 0x10008
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshl_or_b32 v4, v57, 7, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v6, 16, v4
	v_xor_b32_e32 v7, 32, v4
	v_xor_b32_e32 v8, 48, v4
	v_xor_b32_e32 v9, 64, v4
	v_xor_b32_e32 v10, 0x50, v4
	v_xor_b32_e32 v11, 0x60, v4
	v_xor_b32_e32 v12, 0x70, v4
	v_add_nc_u32_e32 v5, 0, v4
	v_add_nc_u32_e32 v6, 0, v6
	v_add_nc_u32_e32 v7, 0, v7
	v_add_nc_u32_e32 v8, 0, v8
	v_add_nc_u32_e32 v9, 0, v9
	v_add_nc_u32_e32 v10, 0, v10
	v_add_nc_u32_e32 v11, 0, v11
	v_add_nc_u32_e32 v12, 0, v12
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v17.h, v21.l
	v_mov_b16_e32 v18.h, v22.l
	v_mov_b16_e32 v19.h, v23.l
	v_mov_b16_e32 v20.h, v24.l
	v_mov_b16_e32 v21.h, v25.l
	v_mov_b16_e32 v22.h, v26.l
	v_mov_b16_e32 v23.h, v27.l
	v_mov_b16_e32 v24.h, v29.l
	v_mov_b16_e32 v25.h, v30.l
	v_mov_b16_e32 v26.h, v32.l
	v_mov_b16_e32 v27.h, v33.l
	v_mov_b16_e32 v28.h, v35.l
	v_mov_b16_e32 v16.h, v36.l
	v_mov_b16_e32 v14.h, v38.l
	v_mov_b16_e32 v15.h, v39.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v13.h, v3.l
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s13, s57, s29
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_add_i32 s17, s30, s31
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s13, s13, s31
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_sub_i32 s17, s57, s17
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s13, s13, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 592 17                        ; attention_backward.py:592:17
	s_min_i32 s13, s26, s13
	.loc	1 590 24                        ; attention_backward.py:590:24
	s_max_i32 s13, s13, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 600 19                        ; attention_backward.py:600:19
	s_add_i32 s13, s13, 31
	.loc	1 600 18 is_stmt 0              ; attention_backward.py:600:18
	s_ashr_i32 s16, s13, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s16, s16, 27
	s_add_i32 s13, s13, s16
	.loc	1 589 24 is_stmt 1              ; attention_backward.py:589:24
	s_max_i32 s16, s17, 0
	.loc	1 600 17                        ; attention_backward.py:600:17
	s_and_b32 s17, s13, 0xffffffe0
	.loc	1 597 45                        ; attention_backward.py:597:45
	s_and_b32 s13, s16, 0x7fffffe0
	.loc	1 598 24                        ; attention_backward.py:598:24
	s_min_i32 s60, s60, s17
.LBB0_2:
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[29:32], v5
	ds_load_b128 v[33:36], v6
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_mul_i32 s16, s2, s15
	s_xor_b32 s17, s40, s41
	s_sub_i32 s16, s42, s16
	s_add_i32 s18, s2, 1
	s_sub_i32 s19, s16, s15
	s_cmp_ge_u32 s16, s15
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v21.l, v18.l, 15
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s2, s18, s2
	s_cselect_b32 s16, s19, s16
	s_add_i32 s18, s2, 1
	s_cmp_ge_u32 s16, s15
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v40, 15, v17
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s2, s18, s2
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v22.l, v19.l, 15
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_xor_b32 s2, s2, s17
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v23.l, v20.l, 15
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_sub_i32 s28, s2, s17
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v21.l
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v41.l, 4, v18.l
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[29:32], off   ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[33:36], off offset:16 ; 16-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[29:32], v7
	ds_load_b128 v[33:36], v8
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v41.h, 0
	.loc	1 550 20 is_stmt 1              ; attention_backward.py:550:20
	v_and_b32_e32 v3, 32, v0
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v24.l, v14.l, 15
	v_and_b16 v25.l, v15.l, 15
	v_and_b16 v26.l, v16.l, 15
	v_and_b16 v27.l, v17.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v43.l, 4, v20.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v43.h, v41.h
	.loc	1 554 72 is_stmt 1              ; attention_backward.py:554:72
	v_and_b16 v28.l, v13.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v42.l, 4, v19.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v42.h, v41.h
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v45.l, 4, v15.l
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e64 v43, 0, v43, s6
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v45.h, v41.h
	.loc	1 556 28 is_stmt 0              ; attention_backward.py:556:28
	v_lshrrev_b16 v44.l, 4, v14.l
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e64 v42, 0, v42, s4
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v44.h, v41.h
	.loc	1 556 28 is_stmt 0              ; attention_backward.py:556:28
	v_lshrrev_b16 v47.l, 4, v17.l
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e64 v45, 0, v45, s7
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[29:32], off offset:32 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[33:36], off offset:48 ; 16-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[29:32], v9
	ds_load_b128 v[33:36], v10
	.loc	1 556 26 is_stmt 1              ; attention_backward.py:556:26
	v_mov_b16_e32 v47.h, v41.h
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v44, 0, v44, s5
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v50, -16, v45
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v46.l, 4, v16.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v46.h, v41.h
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e64 v47, 0, v47, s9
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v49, -16, v44
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v48.l, 4, v13.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v48.h, v41.h
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e64 v46, 0, v46, s8
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v17.l, v41.h
	v_mov_b16_e32 v21.l, v41.h
	s_load_b128 s[36:39], s[0:1], 0x50
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v48, 0, v48, s11
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v51, -16, v46
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v52, v0, 4, 1
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cmp_lt_i32 s28, 1
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[29:32], off offset:64
	scratch_store_b128 off, v[33:36], off offset:80
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[29:32], v11
	ds_load_b128 v[33:36], v12
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[29:32], off offset:96 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[33:36], off offset:112 ; 16-byte Folded Spill
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_and_b32_e32 v33, 15, v15
	v_and_b32_e32 v34, 15, v16
	v_and_b32_e32 v29, 15, v18
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v18.l, v41.h
	v_mov_b16_e32 v16.l, v41.h
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v39, -16, v33
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v32, 15, v14
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v35, -16, v29
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v14.l, v41.h
	v_mov_b16_e32 v15.l, v41.h
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v38, -16, v32
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v31, 15, v20
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v29, v29, v35, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v22.l
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v20.l, v41.h
	v_mov_b16_e32 v22.l, v41.h
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v37, -16, v31
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v30, 15, v19
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v29, v29
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v19.l, v41.h
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_barrier
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v36, -16, v30
	.loc	1 557 25 is_stmt 0              ; attention_backward.py:557:25
	v_cndmask_b32_e64 v30, v30, v36, s2
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e32 v36, 0, v41, vcc_lo
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v23.l
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v23.l, v41.h
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_lshrrev_b32_e32 v53, 1, v3
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v31, v31, v37, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v24.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v37, -16, v34
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v24.l, v41.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v32, v32, v38, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v25.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v38, -16, v40
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v25.l, v41.h
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v33, v33, v39, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v26.l
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v26.l, v41.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v34, v34, v37, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v27.l
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v27.l, v41.h
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v34, v34
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v37, v40, v38, vcc_lo
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v40, -16, v43
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v35, 15, v13
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v28.l
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v38, -16, v36
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v13.l, v41.h
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v39, -16, v35
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v28.l, v41.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v35, v35, v39, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v36
	.loc	1 558 52 is_stmt 0              ; attention_backward.py:558:52
	v_or_b32_e32 v39, -16, v42
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v35, v35
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v36, v36, v38, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v42
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v38, -16, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v36, v36
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v39, v42, v39, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v43
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v42, -16, v48
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_dual_mul_f32 v17, v29, v17 :: v_dual_mul_f32 v18, v36, v18
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v40, v43, v40, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 575 26 is_stmt 1              ; attention_backward.py:575:26
	v_bfe_u32 v29, v17, 16, 1
	v_cmp_o_f32_e64 s2, v18, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 575 27 is_stmt 0              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 558 26 is_stmt 1              ; attention_backward.py:558:26
	v_cndmask_b32_e32 v43, v44, v49, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v45
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_dual_mul_f32 v21, v31, v21 :: v_dual_mul_f32 v22, v40, v22
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v44, v45, v50, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v46
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v39, v39
	v_mul_f32_e32 v19, v30, v19
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_cmp_o_f32_e64 s4, v21, v21
	.loc	1 558 26 is_stmt 1              ; attention_backward.py:558:26
	v_cndmask_b32_e32 v45, v46, v51, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v47
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_mul_f32_e32 v20, v39, v20
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v38, v47, v38, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v48
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v41, v43
	v_mul_f32_e32 v23, v32, v23
	v_cvt_f32_i32_e32 v43, v44
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v42, v48, v42, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v30, v37, v16
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v16, v18, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v31, v38, v14
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_add3_u32 v14, v17, v29, 0x7fff
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v32, v35, v15
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_add3_u32 v15, v18, v16, 0x7fff
	v_bfe_u32 v16, v19, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v29, v42, v13
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v13.l, 0x7fff, v14.h, vcc_lo
	v_bfe_u32 v14, v20, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v24, v41, v24
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s2
	v_bfe_u32 v15, v21, 16, 1
	v_add3_u32 v16, v19, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v14, v20, v14, 0x7fff
	v_cmp_o_f32_e64 s2, v20, v20
	v_bfe_u32 v17, v23, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_dual_mul_f32 v25, v33, v25 :: v_dual_mul_f32 v26, v43, v26
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_add3_u32 v15, v21, v15, 0x7fff
	v_cndmask_b16 v14.l, 0x7fff, v16.h, vcc_lo
	v_bfe_u32 v16, v22, 16, 1
	v_bfe_u32 v18, v24, 16, 1
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s2
	v_add3_u32 v17, v23, v17, 0x7fff
	v_cmp_o_f32_e64 s2, v23, v23
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v44, v45
	v_mul_f32_e32 v27, v34, v27
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s4
	v_add3_u32 v16, v22, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_add3_u32 v18, v24, v18, 0x7fff
	v_cmp_o_f32_e64 s4, v24, v24
	v_bfe_u32 v19, v25, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s2
	v_bfe_u32 v17, v26, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v28, v44, v28
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v15.h, 0x7fff, v16.h, vcc_lo
	v_cndmask_b16 v16.h, 0x7fff, v18.h, s4
	v_bfe_u32 v18, v27, 16, 1
	v_add3_u32 v19, v25, v19, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_add3_u32 v17, v26, v17, 0x7fff
	v_cmp_o_f32_e64 s2, v26, v26
	v_add3_u32 v18, v27, v18, 0x7fff
	v_cmp_o_f32_e64 s4, v27, v27
	v_bfe_u32 v20, v28, 16, 1
	v_cndmask_b16 v17.l, 0x7fff, v19.h, vcc_lo
	v_bfe_u32 v19, v30, 16, 1
	v_bfe_u32 v21, v31, 16, 1
	v_bfe_u32 v22, v32, 16, 1
	v_bfe_u32 v23, v29, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s2
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s4
	v_add3_u32 v20, v28, v20, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_add3_u32 v19, v30, v19, 0x7fff
	v_cmp_o_f32_e64 s2, v30, v30
	v_add3_u32 v21, v31, v21, 0x7fff
	v_cmp_o_f32_e64 s4, v31, v31
	v_add3_u32 v22, v32, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v32, v32
	v_add3_u32 v23, v29, v23, 0x7fff
	v_cmp_o_f32_e64 s6, v29, v29
	v_cndmask_b16 v18.h, 0x7fff, v20.h, vcc_lo
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s2
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s4
	v_cndmask_b16 v20.l, 0x7fff, v22.h, s5
	v_cndmask_b16 v20.h, 0x7fff, v23.h, s6
	.loc	1 715 36 is_stmt 1              ; attention_backward.py:715:36
	ds_store_b16 v203, v13
	ds_store_b16 v203, v17 offset:1024
	ds_store_b16_d16_hi v204, v13
	ds_store_b16_d16_hi v204, v17 offset:1024
	ds_store_b16 v205, v14
	ds_store_b16 v205, v18 offset:1024
	ds_store_b16_d16_hi v206, v14
	ds_store_b16_d16_hi v206, v18 offset:1024
	ds_store_b16 v207, v15
	ds_store_b16 v207, v19 offset:1024
	ds_store_b16_d16_hi v208, v15
	ds_store_b16_d16_hi v208, v19 offset:1024
	ds_store_b16 v209, v16
	ds_store_b16 v209, v20 offset:1024
	ds_store_b16_d16_hi v210, v16
	ds_store_b16_d16_hi v210, v20 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cbranch_scc1 .LBB0_13
; %bb.3:                                ; %.lr.ph180
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	s_xor_b32 s2, s3, s25
	s_clause 0x3
	s_load_b32 s61, s[0:1], 0x80
	s_load_b64 s[40:41], s[0:1], 0x48
	s_load_b128 s[44:47], s[0:1], 0x38
	s_load_b64 s[48:49], s[0:1], 0x0
	.loc	1 514 23 is_stmt 1              ; attention_backward.py:514:23
	v_or_b32_e32 v213, s57, v52
	s_ashr_i32 s1, s2, 31
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_sub_i32 s0, s57, s31
	s_xor_b32 s2, s14, s1
	s_max_i32 s0, s0, 0
	s_sub_i32 s2, s2, s1
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v14, 2, v213
	v_or_b32_e32 v15, 4, v213
	v_or_b32_e32 v16, 6, v213
	v_or_b32_e32 v17, 8, v213
	v_or_b32_e32 v18, 10, v213
	v_or_b32_e32 v19, 12, v213
	v_or_b32_e32 v20, 14, v213
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_and_b32 s0, s0, 0x7fffffe0
	s_mul_i32 s1, s2, s25
	s_max_u32 s0, s13, s0
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_sub_i32 s3, s3, s1
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_and_b32 s1, s59, exec_lo
	.loc	1 517 21 is_stmt 1              ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s1, s27, v14
	v_cmp_gt_i32_e64 s4, s27, v15
	v_cmp_gt_i32_e64 s5, s27, v16
	v_cmp_gt_i32_e64 s6, s27, v17
	v_cmp_gt_i32_e64 s7, s27, v18
	v_cmp_gt_i32_e64 s8, s27, v19
	v_cmp_gt_i32_e64 s9, s27, v20
	.loc	1 715 36                        ; attention_backward.py:715:36
	ds_load_b128 v[18:21], v12
	ds_load_b128 v[14:17], v11
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_mov_b32_e32 v229, 0
	.loc	1 662 35                        ; attention_backward.py:662:35
	s_mul_i32 s2, s2, s24
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[14:17], off offset:128
	scratch_store_b128 off, v[18:21], off offset:144
	.loc	1 715 36                        ; attention_backward.py:715:36
	ds_load_b128 v[18:21], v10
	ds_load_b128 v[14:17], v9
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s65, s28, s3
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_cselect_b32 s63, s0, s13
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s0, s27, v213
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[14:17], off offset:160
	scratch_store_b128 off, v[18:21], off offset:176
	.loc	1 715 36                        ; attention_backward.py:715:36
	ds_load_b128 v[18:21], v8
	ds_load_b128 v[14:17], v7
	ds_load_b128 v[9:12], v6
	ds_load_b128 v[5:8], v5
	s_add_i32 s65, s65, s2
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_mul_f32 s64, s61, 0x3fb8aa3b
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[5:8], off offset:224
	scratch_store_b128 off, v[9:12], off offset:240
	v_lshl_or_b32 v5, v3, 6, v4
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v4, s35, v0
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v6, s56, v0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[14:17], off offset:192
	scratch_store_b128 off, v[18:21], off offset:208
	v_mov_b32_e32 v81, 0
	v_xor_b32_e32 v8, 16, v5
	scratch_store_b32 off, v4, off offset:256 ; 4-byte Folded Spill
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v4, s35, v4
	scratch_store_b32 off, v6, off offset:260 ; 4-byte Folded Spill
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v6, s56, v6
	v_xor_b32_e32 v11, 32, v5
	v_xor_b32_e32 v12, 48, v5
	scratch_store_b32 off, v4, off offset:264 ; 4-byte Folded Spill
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v7, s35, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:268
	scratch_store_b32 off, v5, off offset:272
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v6, s56, v6
	v_lshlrev_b32_e32 v4, 3, v0
	scratch_store_b32 off, v7, off offset:276 ; 4-byte Folded Spill
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v7, s35, v7
	v_xor_b32_e32 v14, 64, v5
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v9, s56, v6
	scratch_store_b32 off, v6, off offset:280 ; 4-byte Folded Spill
	v_and_b32_e32 v6, 48, v4
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v10, s35, v7
	scratch_store_b32 off, v7, off offset:284 ; 4-byte Folded Spill
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v15, s56, v9
	scratch_store_b32 off, v9, off offset:288 ; 4-byte Folded Spill
	v_bfe_i32 v7, v0, 3, 1
	v_cndmask_b32_e64 v9, 0x420, 0, vcc_lo
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v10, off offset:292
	scratch_store_b32 off, v52, off offset:304
	scratch_store_b32 off, v15, off offset:296
	v_add_nc_u32_e32 v15, s56, v15
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v10, s35, v10
	v_xor_b32_e32 v1, v4, v1
	v_and_or_b32 v4, 0x210, v7, v9
	v_xor_b32_e32 v16, 0x50, v5
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v9, s56, v15
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v7, s35, v10
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_and_b32_e32 v13, 16, v0
	v_xor_b32_e32 v17, 0x60, v5
	v_xor_b32_e32 v18, 0x70, v5
	v_dual_mov_b32 v248, v9 :: v_dual_add_nc_u32 v9, s56, v9
	v_mov_b32_e32 v42, v229
	v_dual_mov_b32 v78, v7 :: v_dual_add_nc_u32 v7, s35, v7
	v_mov_b32_e32 v46, v229
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v79, v9
	v_add_nc_u32_e32 v9, s56, v9
	v_lshlrev_b32_e32 v5, 6, v0
	v_lshl_or_b32 v2, v2, 6, v6
	v_mov_b32_e32 v247, v10
	v_dual_mov_b32 v77, v15 :: v_dual_mov_b32 v250, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_or_b32 v10, v1, 48, v5
	v_lshlrev_b32_e32 v5, 2, v13
	v_dual_mov_b32 v44, v229 :: v_dual_add_nc_u32 v13, s35, v7
	v_xor_b32_e32 v15, v4, v2
	v_xor_b32_e32 v2, 16, v10
	v_xor_b32_e32 v4, 32, v10
	v_mov_b32_e32 v75, v7
	v_mov_b32_e32 v249, v10
	v_xor_b32_e32 v7, 48, v10
	v_mov_b32_e32 v80, v13
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v10, s35, v13
	v_dual_mov_b32 v48, v229 :: v_dual_add_nc_u32 v13, s56, v9
	v_dual_mov_b32 v36, v229 :: v_dual_add_nc_u32 v253, 0, v2
	v_mov_b32_e32 v38, v229
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v20, s56, v13
	v_xor_b32_e32 v9, 32, v15
	v_dual_mov_b32 v251, v15 :: v_dual_mov_b32 v76, v13
	v_dual_mov_b32 v58, v53 :: v_dual_add_nc_u32 v23, s56, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v216, 0, v9
	v_add_nc_u32_e32 v11, 0, v11
	v_mov_b32_e32 v255, v23
	v_add_nc_u32_e32 v23, s56, v23
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v12, 0, v12
	v_add_nc_u32_e32 v17, 0, v17
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v57, off offset:300
	scratch_store_b32 off, v58, off offset:308
	v_dual_mov_b32 v243, v23 :: v_dual_add_nc_u32 v2, s56, v23
	v_dual_mov_b32 v34, v229 :: v_dual_add_nc_u32 v19, s35, v10
	v_mov_b32_e32 v90, v229
	v_mov_b32_e32 v47, v229
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v215, v2 :: v_dual_add_nc_u32 v22, s35, v19
	v_add_nc_u32_e32 v2, s56, v2
	v_dual_mov_b32 v94, v229 :: v_dual_mov_b32 v239, v10
	v_dual_mov_b32 v92, v229 :: v_dual_add_nc_u32 v211, 0, v4
	v_mov_b32_e32 v254, v22
	v_add_nc_u32_e32 v22, s35, v22
	v_lshlrev_b32_e32 v1, 1, v57
	v_dual_mov_b32 v37, v229 :: v_dual_add_nc_u32 v220, s56, v2
	v_mov_b32_e32 v82, v229
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v242, v22
	v_or3_b32 v21, v1, v5, v3
	v_add3_u32 v252, 0, v3, v1
	v_add_nc_u32_e32 v1, s35, v22
	v_xor_b32_e32 v5, 16, v15
	v_lshl_or_b32 v24, v57, 6, v6
	v_xor_b32_e32 v10, 0x90, v21
	v_xor_b32_e32 v6, 48, v15
	v_dual_mov_b32 v214, v1 :: v_dual_add_nc_u32 v1, s35, v1
	v_dual_mov_b32 v45, v229 :: v_dual_add_nc_u32 v202, 0, v5
	v_dual_mov_b32 v86, v229 :: v_dual_add_nc_u32 v5, s56, v220
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v219, s35, v1
	v_xor_b32_e32 v13, 0x120, v21
	v_xor_b32_e32 v15, 0x1b0, v21
	v_dual_mov_b32 v35, v229 :: v_dual_add_nc_u32 v218, 0, v10
	v_add_nc_u32_e32 v4, s35, v219
	v_dual_mov_b32 v95, v229 :: v_dual_add_nc_u32 v10, s56, v5
	v_mov_b32_e32 v238, v19
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v240, v20 :: v_dual_add_nc_u32 v9, s35, v4
	v_xor_b32_e32 v19, 16, v24
	v_xor_b32_e32 v20, 32, v24
	v_dual_mov_b32 v245, v1 :: v_dual_mov_b32 v246, v2
	v_add_nc_u32_e32 v1, 0, v13
	v_dual_mov_b32 v39, v229 :: v_dual_add_nc_u32 v2, 0, v15
	v_add_nc_u32_e32 v13, 0, v14
	v_dual_mov_b32 v83, v229 :: v_dual_add_nc_u32 v14, s35, v9
	v_add_nc_u32_e32 v15, s56, v10
	v_mov_b32_e32 v241, v21
	v_xor_b32_e32 v21, 48, v24
	v_dual_mov_b32 v96, v229 :: v_dual_add_nc_u32 v217, 0, v6
	v_dual_mov_b32 v84, v229 :: v_dual_add_nc_u32 v3, 0, v19
	v_dual_mov_b32 v91, v229 :: v_dual_add_nc_u32 v6, 0, v20
	v_add_nc_u32_e32 v19, s35, v14
	v_add_nc_u32_e32 v20, s56, v15
	v_dual_mov_b32 v43, v229 :: v_dual_add_nc_u32 v212, 0, v7
	v_dual_mov_b32 v88, v229 :: v_dual_add_nc_u32 v7, 0, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v21, s35, v19
	v_add_nc_u32_e32 v22, s56, v20
	v_mov_b32_e32 v244, v24
	v_dual_mov_b32 v93, v229 :: v_dual_add_nc_u32 v8, 0, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v23, s35, v21
	v_add_nc_u32_e32 v24, s56, v22
	v_dual_mov_b32 v85, v229 :: v_dual_add_nc_u32 v16, 0, v16
	v_dual_mov_b32 v87, v229 :: v_dual_add_nc_u32 v18, 0, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v25, s35, v23
	v_add_nc_u32_e32 v26, s56, v24
	v_mov_b32_e32 v40, v229
	.loc	1 608 39 is_stmt 1              ; attention_backward.py:608:39
	v_or_b32_e32 v57, v58, v57
	s_cmp_lt_i32 s63, s60
	v_add_nc_u32_e32 v27, s35, v25
	v_add_nc_u32_e32 v28, s56, v26
	s_mov_b32 s62, 0
	s_cselect_b32 s66, -1, 0
	s_and_b32 s49, s49, 0xffff
	v_add_nc_u32_e32 v29, s35, v27
	v_add_nc_u32_e32 v30, s56, v28
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_and_b32 s53, s47, 0xffff
	v_add_nc_u32_e32 v31, s35, v29
	v_add_nc_u32_e32 v32, s56, v30
	s_mov_b32 s52, s46
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s45, s45, 0xffff
	v_add_nc_u32_e32 v49, s35, v31
	v_add_nc_u32_e32 v50, s56, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v51, s35, v49
	v_add_nc_u32_e32 v52, s56, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v53, s35, v51
	v_add_nc_u32_e32 v54, s56, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v55, s35, v53
	v_add_nc_u32_e32 v56, s56, v54
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
	scratch_load_b32 v63, off, off offset:268
	scratch_load_b32 v64, off, off offset:296
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s2, s55, s56
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s47
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v62, s2, v0, 1
	s_mov_b32 s47, s51
	v_add_lshl_u32 v67, s2, v250, 1
	v_add_lshl_u32 v69, s2, v243, 1
	v_add_lshl_u32 v66, s2, v248, 1
	v_add_lshl_u32 v68, s2, v240, 1
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v230, v229
	v_mov_b32_e32 v232, v229
	v_mov_b32_e32 v234, v229
	v_mov_b32_e32 v236, v229
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v70, s2, v246, 1
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e64 v115.h, v155.l
	v_mov_b16_e64 v114.h, v156.l
	v_mov_b16_e64 v113.h, v157.l
	v_mov_b16_e64 v116.h, v137.l
	v_mov_b16_e32 v117.h, v61.l
	v_mov_b16_e32 v118.h, v60.l
	v_mov_b16_e32 v119.h, v59.l
	v_mov_b16_e32 v120.h, v58.l
	v_mov_b16_e64 v121.h, v136.l
	v_mov_b16_e64 v122.h, v135.l
	v_mov_b16_e64 v123.h, v134.l
	v_mov_b16_e64 v124.h, v133.l
	v_mov_b16_e64 v125.h, v132.l
	v_mov_b16_e64 v126.h, v131.l
	v_mov_b16_e64 v127.h, v130.l
	v_mov_b16_e64 v128.h, v129.l
	.loc	1 607 13 is_stmt 1              ; attention_backward.py:607:13
	s_add_i32 s68, s68, 32
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v73, 0, v251
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v231, v229
	v_mov_b32_e32 v233, v229
	v_mov_b32_e32 v235, v229
	v_dual_mov_b32 v97, v229 :: v_dual_mov_b32 v100, v232
	v_mov_b32_e32 v102, v234
	v_dual_mov_b32 v104, v236 :: v_dual_mov_b32 v99, v231
	v_dual_mov_b32 v101, v233 :: v_dual_mov_b32 v98, v230
	v_mov_b32_e32 v103, v235
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v63, s2, v63, 1
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s46
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s46, s50
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v64, s2, v64, 1
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	s_clause 0x1
	buffer_load_u16 v138, v62, s[44:47], 0 offen
	buffer_load_u16 v139, v63, s[44:47], 0 offen
	scratch_load_b32 v62, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s103
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v63, s2, v76, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v62, s2, v62, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s102
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v140, v62, s[44:47], 0 offen
	v_add_lshl_u32 v62, s2, v77, 1
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s101
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v141, v62, s[44:47], 0 offen
	v_add_lshl_u32 v62, s2, v79, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s100
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	s_clause 0x1
	buffer_load_u16 v142, v62, s[44:47], 0 offen
	buffer_load_u16 v143, v63, s[44:47], 0 offen
	v_add_lshl_u32 v62, s2, v255, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s99
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v63, s2, v10, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s98
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v144, v62, s[44:47], 0 offen
	v_add_lshl_u32 v62, s2, v215, 1
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s97
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v145, v62, s[44:47], 0 offen
	v_add_lshl_u32 v62, s2, v220, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s96
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	s_clause 0x1
	buffer_load_u16 v146, v62, s[44:47], 0 offen
	buffer_load_u16 v147, v63, s[44:47], 0 offen
	v_add_lshl_u32 v62, s2, v20, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s94
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v63, s2, v32, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s93
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v148, v62, s[44:47], 0 offen
	v_add_lshl_u32 v62, s2, v24, 1
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s91
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v149, v62, s[44:47], 0 offen
	v_add_lshl_u32 v62, s2, v28, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s89
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	s_clause 0x1
	buffer_load_u16 v150, v62, s[44:47], 0 offen
	buffer_load_u16 v151, v63, s[44:47], 0 offen
	v_add_lshl_u32 v62, s2, v52, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s87
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v63, off, off offset:280 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s85
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v152, v62, s[44:47], 0 offen
	v_add_lshl_u32 v62, s2, v56, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s81
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v153, v62, s[44:47], 0 offen
	scratch_load_b32 v62, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v63, s2, v63, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v62, s2, v62, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s80
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s79
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v64, 0x80000000, v64, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s78
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s77
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s76
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s75
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s74
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	s_clause 0x7
	buffer_load_u16 v158, v66, s[44:47], 0 offen
	buffer_load_u16 v160, v64, s[44:47], 0 offen
	buffer_load_u16 v162, v63, s[44:47], 0 offen
	buffer_load_u16 v164, v62, s[44:47], 0 offen
	buffer_load_u16 v159, v70, s[44:47], 0 offen
	buffer_load_u16 v161, v69, s[44:47], 0 offen
	buffer_load_u16 v163, v68, s[44:47], 0 offen
	buffer_load_u16 v165, v67, s[44:47], 0 offen
	v_add_lshl_u32 v62, s2, v15, 1
	v_add_lshl_u32 v63, s2, v22, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s73
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v64, s2, v26, 1
	v_add_lshl_u32 v66, s2, v5, 1
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s72
	v_add_nc_u32_e32 v69, s56, v56
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s71
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v67, s2, v50, 1
	v_cndmask_b32_e32 v64, 0x80000000, v64, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s54
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v68, s2, v54, 1
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s69
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v69, s2, v69, 1
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s70
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v70, s2, v30, 1
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s43
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s54, s50
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s42
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s42, s50
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	s_clause 0x7
	buffer_load_u16 v166, v64, s[44:47], 0 offen
	buffer_load_u16 v167, v63, s[44:47], 0 offen
	buffer_load_u16 v168, v62, s[44:47], 0 offen
	buffer_load_u16 v169, v66, s[44:47], 0 offen
	buffer_load_u16 v62, v69, s[44:47], 0 offen
	buffer_load_u16 v63, v68, s[44:47], 0 offen
	buffer_load_u16 v64, v67, s[44:47], 0 offen
	buffer_load_u16 v154, v70, s[44:47], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_add_lshl_u32 v66, s55, v57, 2
	s_mov_b32 s55, s51
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s43, s51
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_i32 s68, s60
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_cndmask_b32_e64 v66, 0x80000000, v66, s3
	buffer_load_b32 v67, v66, s[52:55], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v66, v66, s[40:43], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v74, 0, v249
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(17)
	v_mov_b16_e64 v141.h, v158.l
	s_waitcnt vmcnt(16)
	v_mov_b16_e64 v140.h, v160.l
	s_waitcnt vmcnt(15)
	v_mov_b16_e64 v139.h, v162.l
	s_waitcnt vmcnt(14)
	v_mov_b16_e64 v138.h, v164.l
	s_waitcnt vmcnt(13)
	v_mov_b16_e64 v145.h, v159.l
	s_waitcnt vmcnt(12)
	v_mov_b16_e64 v144.h, v161.l
	s_waitcnt vmcnt(11)
	v_mov_b16_e64 v143.h, v163.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e64 v142.h, v165.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e64 v149.h, v166.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v148.h, v167.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v147.h, v168.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v146.h, v169.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v153.h, v62.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v152.h, v63.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v151.h, v64.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v150.h, v154.l
	ds_store_b128 v74, v[138:141]
	ds_store_b128 v253, v[142:145]
	ds_store_b128 v211, v[146:149]
	ds_store_b128 v212, v[150:153]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[198:201], v73
	ds_load_b128 v[190:193], v73 offset:2048
	ds_load_b128 v[194:197], v202
	ds_load_b128 v[186:189], v202 offset:2048
	ds_load_b128 v[182:185], v216
	ds_load_b128 v[174:177], v216 offset:2048
	ds_load_b128 v[178:181], v217
	ds_load_b128 v[170:173], v217 offset:2048
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v203, v138
	ds_store_b16 v203, v142 offset:1024
	ds_store_b16 v203, v146 offset:2048
	ds_store_b16 v203, v150 offset:3072
	ds_store_b16 v204, v164
	ds_store_b16 v204, v165 offset:1024
	ds_store_b16 v204, v169 offset:2048
	ds_store_b16 v204, v154 offset:3072
	ds_store_b16 v205, v139
	ds_store_b16 v205, v143 offset:1024
	ds_store_b16 v205, v147 offset:2048
	ds_store_b16 v205, v151 offset:3072
	ds_store_b16 v206, v162
	ds_store_b16 v206, v163 offset:1024
	ds_store_b16 v206, v168 offset:2048
	ds_store_b16 v206, v64 offset:3072
	ds_store_b16 v207, v140
	ds_store_b16 v207, v144 offset:1024
	ds_store_b16 v207, v148 offset:2048
	ds_store_b16 v207, v152 offset:3072
	ds_store_b16 v208, v160
	ds_store_b16 v208, v161 offset:1024
	ds_store_b16 v208, v167 offset:2048
	ds_store_b16 v208, v63 offset:3072
	ds_store_b16 v209, v141
	ds_store_b16 v209, v145 offset:1024
	ds_store_b16 v209, v149 offset:2048
	ds_store_b16 v209, v153 offset:3072
	ds_store_b16 v210, v158
	ds_store_b16 v210, v159 offset:1024
	ds_store_b16 v210, v166 offset:2048
	ds_store_b16 v210, v62 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[230:233], off, off offset:224
	scratch_load_b128 v[234:237], off, off offset:240
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[221:224], v65
	ds_load_b128 v[225:228], v8
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(3)
	v_fma_f32 v65, s64, v105, -v67
	v_fma_f32 v68, s64, v106, -v67
	v_fma_f32 v69, s64, v107, -v67
	v_fma_f32 v70, s64, v108, -v67
	v_fma_f32 v71, s64, v109, -v67
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v65, v65
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v105, s64, v110, -v67
	v_fma_f32 v106, s64, v111, -v67
	v_fma_f32 v107, s64, v112, -v67
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v155, 0, v65, s95
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[230:237], v[221:228], v[97:104]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[230:233], off, off offset:192
	scratch_load_b128 v[234:237], off, off offset:208
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[221:224], v11
	ds_load_b128 v[225:228], v12
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[230:237], v[221:228], v[97:104]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[230:233], off, off offset:160
	scratch_load_b128 v[234:237], off, off offset:176
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[221:224], v13
	ds_load_b128 v[225:228], v16
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[230:237], v[221:228], v[97:104]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[230:233], off, off offset:128
	scratch_load_b128 v[234:237], off, off offset:144
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[221:224], v17
	ds_load_b128 v[225:228], v18
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[230:237], v[221:228], v[97:104]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v67, v97, v66
	v_sub_f32_e32 v97, v98, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v98, v99, v66
	v_sub_f32_e32 v99, v100, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v100, v101, v66 :: v_dual_mul_f32 v65, v155, v67
	v_sub_f32_e32 v101, v102, v66
	v_sub_f32_e32 v102, v103, v66
	v_sub_f32_e32 v103, v104, v66
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v65, s61, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v66, v65, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	v_add3_u32 v104, v65, v66, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v65, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v58.h, 0x7fff, v104.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v155, v155
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v72, 0, v65, s92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v65, v72, v97
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v65, s61, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v66, v65, 16, 1
	v_cmp_o_f32_e64 s2, v65, v65
	v_add3_u32 v97, v65, v66, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v65, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v65, 0, v65, s90
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v66, v65, v98
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v60, v65, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v66, s61, v66
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v60, v65, v60, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v67, v66, 16, 1
	v_cmp_o_f32_e64 s3, v66, v66
	v_add3_u32 v98, v66, v67, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v66, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v66, 0, v66, s88
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v67, v66, v99
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v61, v66, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v67, s61, v67
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v61, v66, v61, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v68, v67, 16, 1
	v_cmp_o_f32_e64 s11, v67, v67
	v_add3_u32 v70, v67, v68, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v67, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v156, 0, v67, s86
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v67, v156, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v67, s61, v67
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v68, v67, 16, 1
	v_cmp_o_f32_e64 s13, v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v71, v67, v68, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v67, v105
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v59.h, 0x7fff, v71.h, s13
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v71, 0, v241
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s13, v156, v156
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v67, 0, v67, s84
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v71, v58
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v58.h, 0x7fff, v97.h, s2
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v71, v59 offset:512
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s2, v72, v72
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v68, v67, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v68, s61, v68
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v69, v68, 16, 1
	v_cmp_o_f32_e64 s14, v68, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v99, v68, v69, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v68, v106
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v59.h, 0x7fff, v99.h, s14
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v218, v58
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v58.h, 0x7fff, v98.h, s3
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s14, v67, v67
	v_cmp_o_f32_e64 s3, v65, v65
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v218, v59 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v68, 0, v68, s83
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v63.h, 0x7fff, v60.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v69, v68, v102
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v97, v68, 16, 1
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v69, s61, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v97, v68, v97, 0x7fff
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v100, v69, 16, 1
	v_cmp_o_f32_e64 s15, v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v100, v69, v100, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v69, v107
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v59.h, 0x7fff, v100.h, s15
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v1, v58
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v58.h, 0x7fff, v70.h, s11
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v70, 0, v244
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s11, v66, v66
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v1, v59 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v69, 0, v69, s82
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s15, v68, v68
	v_cndmask_b16 v61.h, 0x7fff, v61.h, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v101, v69, v103
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v60.h, 0x7fff, v97.h, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v101, s61, v101
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v102, v101, 16, 1
	v_cmp_o_f32_e64 s16, v101, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v101, v101, v102, 0x7fff
	v_cndmask_b16 v59.h, 0x7fff, v101.h, s16
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	ds_store_b16_d16_hi v2, v58
	ds_store_b16_d16_hi v2, v59 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[221:224], v70
	ds_load_b128 v[225:228], v3
	ds_load_b128 v[98:101], v6
	ds_load_b128 v[102:105], v7
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v74, v[113:116]
	ds_store_b128 v253, v[117:120]
	ds_store_b128 v211, v[121:124]
	ds_store_b128 v212, v[125:128]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[110:113], v202
	ds_load_b128 v[106:109], v73
	ds_load_b128 v[114:117], v73 offset:2048
	ds_load_b128 v[118:121], v202 offset:2048
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v58, v155, 16, 1
	v_bfe_u32 v73, v156, 16, 1
	v_bfe_u32 v59, v72, 16, 1
	v_bfe_u32 v74, v67, 16, 1
	v_cmp_o_f32_e64 s16, v69, v69
	v_add3_u32 v58, v155, v58, 0x7fff
	v_add3_u32 v73, v156, v73, 0x7fff
	v_add3_u32 v59, v72, v59, 0x7fff
	v_add3_u32 v74, v67, v74, 0x7fff
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_mov_b16_e32 v58.l, 0
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v58.h, 0x7fff, v58.h, vcc_lo
	v_cndmask_b16 v139.h, 0x7fff, v73.h, s13
	v_cndmask_b16 v138.h, 0x7fff, v59.h, s2
	v_cndmask_b16 v62.h, 0x7fff, v74.h, s14
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v61.l, v58.l
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v74, v155, v58
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v60.l, v58.l
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[106:113], v[221:228], v[89:96]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v106, v69, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[114:121], v[221:228], v[81:88]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v106, v69, v106, 0x7fff
	v_cndmask_b16 v59.h, 0x7fff, v106.h, s16
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[110:113], v217
	ds_load_b128 v[106:109], v216
	ds_load_b128 v[114:117], v216 offset:2048
	ds_load_b128 v[118:121], v217 offset:2048
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16_d16_hi v71, v58
	ds_store_b16_d16_hi v71, v139 offset:512
	ds_store_b16_d16_hi v218, v138
	ds_store_b16_d16_hi v218, v62 offset:512
	ds_store_b16_d16_hi v1, v63
	ds_store_b16_d16_hi v1, v60 offset:512
	ds_store_b16_d16_hi v2, v61
	ds_store_b16_d16_hi v2, v59 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[130:133], v70
	ds_load_b128 v[134:137], v3
	ds_load_b128 v[122:125], v6
	ds_load_b128 v[126:129], v7
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v203, v138
	ds_store_b16 v203, v139 offset:256
	ds_store_b16 v203, v140 offset:512
	ds_store_b16 v203, v141 offset:768
	ds_store_b16 v203, v142 offset:1024
	ds_store_b16 v203, v143 offset:1280
	ds_store_b16 v203, v144 offset:1536
	ds_store_b16 v203, v145 offset:1792
	ds_store_b16 v203, v146 offset:2048
	ds_store_b16 v203, v147 offset:2304
	ds_store_b16 v203, v148 offset:2560
	ds_store_b16 v203, v149 offset:2816
	ds_store_b16 v203, v150 offset:3072
	ds_store_b16 v203, v151 offset:3328
	ds_store_b16 v203, v152 offset:3584
	ds_store_b16 v203, v153 offset:3840
	ds_store_b16 v203, v164 offset:128
	ds_store_b16 v203, v162 offset:384
	ds_store_b16 v203, v160 offset:640
	ds_store_b16 v203, v158 offset:896
	ds_store_b16 v203, v165 offset:1152
	ds_store_b16 v203, v163 offset:1408
	ds_store_b16 v203, v161 offset:1664
	ds_store_b16 v203, v159 offset:1920
	ds_store_b16 v203, v169 offset:2176
	ds_store_b16 v203, v168 offset:2432
	ds_store_b16 v203, v167 offset:2688
	ds_store_b16 v203, v166 offset:2944
	ds_store_b16 v203, v154 offset:3200
	ds_store_b16 v203, v64 offset:3456
	ds_store_b16 v203, v63 offset:3712
	ds_store_b16 v203, v62 offset:3968
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v151, v252 offset:1344
	ds_load_u16_d16 v150, v252 offset:1088
	ds_load_u16_d16 v221, v252
	ds_load_u16_d16 v222, v252 offset:256
	ds_load_u16_d16 v223, v252 offset:512
	ds_load_u16_d16 v224, v252 offset:768
	ds_load_u16_d16 v225, v252 offset:1024
	ds_load_u16_d16 v226, v252 offset:1280
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v139.l, v58.l
	v_mov_b16_e64 v138.l, v58.l
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v61, v66, v61
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v97, v74, 16, 1
	v_cmp_o_f32_e64 s2, v74, v74
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v73, v156, v139
	v_sub_f32_e32 v72, v72, v138
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v151, v252 offset:1472
	ds_load_u16_d16 v146, v252 offset:64
	ds_load_u16_d16 v227, v252 offset:1536
	ds_load_u16_d16 v228, v252 offset:1792
	ds_load_u16_d16 v143, v252 offset:3328
	ds_load_u16_d16 v138, v252 offset:2048
	ds_load_u16_d16 v139, v252 offset:2304
	ds_load_u16_d16 v140, v252 offset:2560
	ds_load_u16_d16 v141, v252 offset:2816
	ds_load_u16_d16 v142, v252 offset:3072
	ds_load_u16_d16 v152, v252 offset:1600
	ds_load_u16_d16 v157, v252 offset:2880
	ds_load_u16_d16 v158, v252 offset:3136
	ds_load_u16_d16 v156, v252 offset:2624
	ds_load_u16_d16 v144, v252 offset:3584
	ds_load_u16_d16 v145, v252 offset:3840
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v222, v252 offset:384
	ds_load_u16_d16 v148, v252 offset:576
	ds_load_u16_d16 v149, v252 offset:832
	ds_load_u16_d16_hi v221, v252 offset:128
	ds_load_u16_d16 v147, v252 offset:320
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v146, v252 offset:192
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v228, v252 offset:1920
	ds_load_u16_d16 v154, v252 offset:2112
	ds_load_u16_d16 v155, v252 offset:2368
	ds_load_u16_d16_hi v227, v252 offset:1664
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v152, v252 offset:1728
	ds_load_u16_d16 v153, v252 offset:1856
	ds_load_u16_d16_hi v143, v252 offset:3456
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v158, v252 offset:3264
	ds_load_u16_d16 v160, v252 offset:3648
	ds_load_u16_d16 v161, v252 offset:3904
	ds_load_u16_d16 v159, v252 offset:3392
	ds_load_u16_d16_hi v223, v252 offset:640
	ds_load_u16_d16_hi v224, v252 offset:896
	ds_load_u16_d16_hi v225, v252 offset:1152
	ds_load_u16_d16_hi v226, v252 offset:1408
	ds_load_u16_d16_hi v150, v252 offset:1216
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v74, v74, v97, 0x7fff
	v_bfe_u32 v97, v73, 16, 1
	v_bfe_u32 v64, v72, 16, 1
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e32 v63.l, v58.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_cmp_o_f32_e64 s3, v72, v72
	v_add3_u32 v73, v73, v97, 0x7fff
	v_add3_u32 v64, v72, v64, 0x7fff
	v_cndmask_b16 v58.h, 0x7fff, v74.h, s2
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v63, v65, v63
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	ds_load_u16_d16_hi v142, v252 offset:3200
	ds_load_u16_d16_hi v157, v252 offset:3008
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v149, v252 offset:960
	ds_load_u16_d16_hi v148, v252 offset:704
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v147, v252 offset:448
	ds_load_u16_d16_hi v138, v252 offset:2176
	ds_load_u16_d16_hi v139, v252 offset:2432
	ds_load_u16_d16_hi v140, v252 offset:2688
	ds_load_u16_d16_hi v141, v252 offset:2944
	ds_load_u16_d16_hi v156, v252 offset:2752
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v155, v252 offset:2496
	ds_load_u16_d16_hi v154, v252 offset:2240
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v153, v252 offset:1984
	ds_load_u16_d16_hi v144, v252 offset:3712
	ds_load_u16_d16_hi v145, v252 offset:3968
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v161, v252 offset:4032
	ds_load_u16_d16_hi v160, v252 offset:3776
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v159, v252 offset:3520
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v59.l, 0x7fff, v73.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16_d16_hi v71, v58
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v58.h, 0x7fff, v64.h, s3
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e32 v62.l, v58.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v64, v63, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v63, v63
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	ds_store_b16 v71, v59 offset:512
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v60, v68, v60
	v_sub_f32_e32 v62, v67, v62
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_add3_u32 v63, v63, v64, 0x7fff
	v_bfe_u32 v64, v61, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v59.l, v58.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s2, v61, v61
	v_cmp_o_f32_e64 s3, v62, v62
	v_cmp_o_f32_e64 s11, v60, v60
	v_add3_u32 v61, v61, v64, 0x7fff
	v_bfe_u32 v64, v62, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v59, v69, v59
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[221:228], v[130:137], v[41:48]
	v_wmma_f32_16x16x16_bf16 v[33:40], v[146:153], v[130:137], v[33:40]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v97.h, v58.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v64, v62, v64, 0x7fff
	v_bfe_u32 v62, v60, 16, 1
	v_cmp_o_f32_e64 s13, v59, v59
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[138:145], v[122:129], v[41:48]
	v_wmma_f32_16x16x16_bf16 v[33:40], v[154:161], v[122:129], v[33:40]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v68.h, v194.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v62, v60, v62, 0x7fff
	v_bfe_u32 v60, v59, 16, 1
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v68.l, v58.l
	v_and_b32_e32 v69, 0xffff0000, v195
	v_mov_b16_e64 v72.h, v196.l
	v_mov_b16_e32 v72.l, v58.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v60, v59, v60, 0x7fff
	v_cndmask_b16 v59.l, 0x7fff, v64.h, s3
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v218, v58
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v58.h, 0x7fff, v63.h, vcc_lo
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v73.h, v197.l
	v_mov_b16_e32 v73.l, v58.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v218, v59 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v59.l, 0x7fff, v62.h, s11
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v1, v58
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v58.h, 0x7fff, v61.h, s2
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[89:96], v[106:113], v[98:105], v[89:96]
	v_wmma_f32_16x16x16_bf16 v[81:88], v[114:121], v[98:105], v[81:88]
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v1, v59 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v59.l, 0x7fff, v60.h, s13
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v2, v58
	ds_store_b16 v2, v59 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[162:165], v70
	ds_load_b128 v[166:169], v3
	ds_load_b128 v[59:62], v6
	ds_load_b128 v[63:66], v7
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v70.h, v195.l
	v_mov_b16_e32 v70.l, v58.l
	v_and_b32_e32 v71, 0xffff0000, v196
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v58.h, v58.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[221:228], v[162:169], v[41:48]
	v_wmma_f32_16x16x16_bf16 v[33:40], v[146:153], v[162:169], v[33:40]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[138:145], v[59:66], v[41:48]
	v_wmma_f32_16x16x16_bf16 v[33:40], v[154:161], v[59:66], v[33:40]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v59.h, v198.l
	v_mov_b16_e32 v59.l, v58.l
	v_and_b32_e32 v60, 0xffff0000, v198
	v_and_b32_e32 v61, 0xffff0000, v199
	v_mov_b16_e64 v62.h, v199.l
	v_mov_b16_e32 v62.l, v58.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v59, v59, v59
	v_dual_sub_f32 v60, v60, v60 :: v_dual_and_b32 v67, 0xffff0000, v194
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v74, 0xffff0000, v197
	v_and_b32_e32 v63, 0xffff0000, v200
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v59, v59
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v64.h, v200.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v97.l, v60.h
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v64.l, v58.l
	v_and_b32_e32 v65, 0xffff0000, v201
	v_mov_b16_e64 v66.h, v201.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v97, 1, v97
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v66.l, v58.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v97, v60, v97, 0x7fff
	v_mov_b16_e32 v60.l, v59.h
	v_mov_b16_e32 v60.h, v58.l
	v_and_b32_e32 v60, 1, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v60, v59, v60, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v59, v61, v61
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v61.h, v58.l
	v_mov_b16_e32 v61.l, v59.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v59, v59
	v_and_b32_e32 v61, 1, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v61, v59, v61, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v59, v62, v62
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v62.h, v58.l
	v_mov_b16_e32 v62.l, v59.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s11, v59, v59
	v_and_b32_e32 v62, 1, v62
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v62, v59, v62, 0x7fff
	v_cndmask_b16 v59.l, 0x7fff, v60.h, s2
	v_cndmask_b16 v60.h, 0x7fff, v61.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v61, v63, v63
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v59.h, 0x7fff, v97.h, vcc_lo
	v_cndmask_b16 v60.l, 0x7fff, v62.h, s11
	v_mov_b16_e32 v62.h, v58.l
	v_mov_b16_e32 v63.h, v58.l
	v_mov_b16_e32 v62.l, v61.h
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	v_mov_b16_e32 v97.h, v58.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v62, 1, v62
	v_add3_u32 v62, v61, v62, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v61, v64, v64
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v64.h, v58.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v63.l, v61.h
	v_cmp_o_f32_e64 s2, v61, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v63, 1, v63
	v_add3_u32 v63, v61, v63, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v61, v65, v65
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v65.h, v58.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v64.l, v61.h
	v_and_b32_e32 v64, 1, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v61, v61
	v_add3_u32 v64, v61, v64, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v61, v66, v66
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v66.h, v58.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v65.l, v61.h
	v_cmp_o_f32_e64 s11, v61, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v65, 1, v65
	v_add3_u32 v65, v61, v65, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v61, v67, v67
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v67.h, v58.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v62.l, 0x7fff, v65.h, s11
	v_mov_b16_e32 v66.l, v61.h
	v_mov_b16_e32 v65.h, v58.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v66, 1, v66
	v_cmp_o_f32_e64 s13, v61, v61
	v_add3_u32 v66, v61, v66, 0x7fff
	v_cndmask_b16 v61.h, 0x7fff, v62.h, vcc_lo
	v_cndmask_b16 v62.h, 0x7fff, v64.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v64, v68, v68
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v61.l, 0x7fff, v63.h, s2
	v_cndmask_b16 v63.h, 0x7fff, v66.h, s13
	v_mov_b16_e32 v66.h, v58.l
	v_mov_b16_e32 v68.h, v58.l
	v_mov_b16_e32 v65.l, v64.h
	v_cmp_o_f32_e32 vcc_lo, v64, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v65, 1, v65
	v_add3_u32 v65, v64, v65, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v64, v69, v69
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v69.h, v58.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v63.l, 0x7fff, v65.h, vcc_lo
	v_mov_b16_e32 v66.l, v64.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v64, v64
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v66, v64, v66, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v64, v70, v70 :: v_dual_sub_f32 v65, v71, v71
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v70.h, v58.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v71, 0xffff0000, v188
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v67.l, v64.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v64, v64
	v_mov_b16_e32 v66.l, v65.h
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v67, v64, v67, 0x7fff
	v_cndmask_b16 v64.h, 0x7fff, v66.h, s2
	v_mov_b16_e32 v66.h, v58.l
	v_cndmask_b16 v64.l, 0x7fff, v67.h, s3
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v67, 0xffff0000, v186
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v66, v65, v66, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v72, v72
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v72.h, v188.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v68.l, v65.h
	v_cmp_o_f32_e64 s2, v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v68, 1, v68
	v_add3_u32 v68, v65, v68, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v65, v74, v74 :: v_dual_and_b32 v74, 0xffff0000, v189
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v68.l, v58.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v69.l, v65.h
	v_cmp_o_f32_e64 s11, v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v69, 1, v69
	v_add3_u32 v69, v65, v69, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v73, v73
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v73.h, v189.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v70.l, v65.h
	v_and_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s13, v65, v65
	v_add3_u32 v70, v65, v70, 0x7fff
	v_cndmask_b16 v65.h, 0x7fff, v66.h, vcc_lo
	v_cndmask_b16 v65.l, 0x7fff, v68.h, s2
	v_cndmask_b16 v66.h, 0x7fff, v69.h, s11
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v68.h, v186.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v66.l, 0x7fff, v70.h, s13
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v69, 0xffff0000, v187
	v_mov_b16_e64 v70.h, v187.l
	v_mov_b16_e32 v70.l, v58.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[59:66], v[130:137], v[41:48]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v59.h, v190.l
	v_mov_b16_e32 v59.l, v58.l
	v_and_b32_e32 v60, 0xffff0000, v190
	v_and_b32_e32 v61, 0xffff0000, v191
	v_mov_b16_e64 v62.h, v191.l
	v_mov_b16_e32 v62.l, v58.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v59, v59, v59 :: v_dual_sub_f32 v60, v60, v60
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v63, 0xffff0000, v192
	v_mov_b16_e64 v64.h, v192.l
	v_mov_b16_e32 v64.l, v58.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v59, v59
	v_mov_b16_e32 v97.l, v60.h
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v65, 0xffff0000, v193
	v_mov_b16_e64 v66.h, v193.l
	v_mov_b16_e32 v66.l, v58.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v97, 1, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v97, v60, v97, 0x7fff
	v_mov_b16_e32 v60.l, v59.h
	v_mov_b16_e32 v60.h, v58.l
	v_and_b32_e32 v60, 1, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v60, v59, v60, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v59, v61, v61
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v61.h, v58.l
	v_mov_b16_e32 v61.l, v59.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v59, v59
	v_and_b32_e32 v61, 1, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v61, v59, v61, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v59, v62, v62
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v62.h, v58.l
	v_mov_b16_e32 v62.l, v59.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s11, v59, v59
	v_and_b32_e32 v62, 1, v62
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v62, v59, v62, 0x7fff
	v_cndmask_b16 v59.l, 0x7fff, v60.h, s2
	v_cndmask_b16 v60.h, 0x7fff, v61.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v61, v63, v63
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v59.h, 0x7fff, v97.h, vcc_lo
	v_cndmask_b16 v60.l, 0x7fff, v62.h, s11
	v_mov_b16_e32 v62.h, v58.l
	v_mov_b16_e32 v63.h, v58.l
	v_mov_b16_e32 v62.l, v61.h
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	v_mov_b16_e32 v97.h, v58.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v62, 1, v62
	v_add3_u32 v62, v61, v62, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v61, v64, v64
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v64.h, v58.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v63.l, v61.h
	v_cmp_o_f32_e64 s2, v61, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v63, 1, v63
	v_add3_u32 v63, v61, v63, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v61, v65, v65
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v65.h, v58.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v64.l, v61.h
	v_cmp_o_f32_e64 s3, v61, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v64, 1, v64
	v_add3_u32 v64, v61, v64, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v61, v66, v66
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v66.h, v58.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v65.l, v61.h
	v_cmp_o_f32_e64 s11, v61, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v65, 1, v65
	v_add3_u32 v65, v61, v65, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v61, v67, v67
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v67.h, v58.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v62.l, 0x7fff, v65.h, s11
	v_mov_b16_e32 v66.l, v61.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s13, v61, v61
	v_mov_b16_e32 v65.h, v58.l
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v66, v61, v66, 0x7fff
	v_cndmask_b16 v61.h, 0x7fff, v62.h, vcc_lo
	v_cndmask_b16 v62.h, 0x7fff, v64.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v64, v68, v68
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v61.l, 0x7fff, v63.h, s2
	v_cndmask_b16 v63.h, 0x7fff, v66.h, s13
	v_mov_b16_e32 v66.h, v58.l
	v_mov_b16_e32 v68.h, v58.l
	v_mov_b16_e32 v65.l, v64.h
	v_cmp_o_f32_e32 vcc_lo, v64, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v65, 1, v65
	v_add3_u32 v65, v64, v65, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v64, v69, v69
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v69.h, v58.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v63.l, 0x7fff, v65.h, vcc_lo
	v_mov_b16_e32 v66.l, v64.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v64, v64
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v64, v66, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v64, v70, v70
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v70.h, v58.l
	v_mov_b16_e32 v67.l, v64.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v64, v64
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v67, v64, v67, 0x7fff
	v_cndmask_b16 v64.h, 0x7fff, v66.h, s2
	v_mov_b16_e32 v66.h, v58.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v71, v71
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v71, 0xffff0000, v180
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v64.l, 0x7fff, v67.h, s3
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v67, 0xffff0000, v178
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v66.l, v65.h
	v_and_b32_e32 v66, 1, v66
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v65, v66, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v72, v72
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v72.h, v180.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v68.l, v65.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v65, v65
	v_and_b32_e32 v68, 1, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v68, v65, v68, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v65, v74, v74 :: v_dual_and_b32 v74, 0xffff0000, v181
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v68.l, v58.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v69.l, v65.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s11, v65, v65
	v_and_b32_e32 v69, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v69, v65, v69, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v73, v73
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v73.h, v181.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v70.l, v65.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s13, v65, v65
	v_and_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v70, v65, v70, 0x7fff
	v_cndmask_b16 v65.h, 0x7fff, v66.h, vcc_lo
	v_cndmask_b16 v65.l, 0x7fff, v68.h, s2
	v_cndmask_b16 v66.h, 0x7fff, v69.h, s11
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v68.h, v178.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v66.l, 0x7fff, v70.h, s13
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v69, 0xffff0000, v179
	v_mov_b16_e64 v70.h, v179.l
	v_mov_b16_e32 v70.l, v58.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[59:66], v[130:137], v[33:40]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v60, 0xffff0000, v182
	v_mov_b16_e64 v59.h, v182.l
	v_mov_b16_e32 v59.l, v58.l
	v_and_b32_e32 v61, 0xffff0000, v183
	v_mov_b16_e64 v62.h, v183.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v60, v60, v60
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v62.l, v58.l
	v_and_b32_e32 v63, 0xffff0000, v184
	v_mov_b16_e64 v64.h, v184.l
	v_mov_b16_e32 v64.l, v58.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v97.l, v60.h
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v65, 0xffff0000, v185
	v_mov_b16_e64 v66.h, v185.l
	v_mov_b16_e32 v66.l, v58.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v97, 1, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v97, v60, v97, 0x7fff
	v_mov_b16_e32 v60.h, v58.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v59, v59, v59
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v60.l, v59.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v60, 1, v60
	v_cmp_o_f32_e64 s2, v59, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v60, v59, v60, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v59, v61, v61
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v61.h, v58.l
	v_mov_b16_e32 v61.l, v59.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v59, v59
	v_and_b32_e32 v61, 1, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v61, v59, v61, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v59, v62, v62
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v62.h, v58.l
	v_mov_b16_e32 v62.l, v59.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s11, v59, v59
	v_and_b32_e32 v62, 1, v62
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v62, v59, v62, 0x7fff
	v_cndmask_b16 v59.l, 0x7fff, v60.h, s2
	v_cndmask_b16 v60.h, 0x7fff, v61.h, s3
	v_cndmask_b16 v59.h, 0x7fff, v97.h, vcc_lo
	v_mov_b16_e32 v97.h, v58.l
	v_cndmask_b16 v60.l, 0x7fff, v62.h, s11
	v_mov_b16_e32 v62.h, v58.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v61, v63, v63
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v63.h, v58.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v62.l, v61.h
	v_and_b32_e32 v62, 1, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	v_add3_u32 v62, v61, v62, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v61, v64, v64
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v64.h, v58.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v63.l, v61.h
	v_cmp_o_f32_e64 s2, v61, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v63, 1, v63
	v_add3_u32 v63, v61, v63, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v61, v65, v65
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v65.h, v58.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v64.l, v61.h
	v_cmp_o_f32_e64 s3, v61, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v64, 1, v64
	v_add3_u32 v64, v61, v64, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v61, v66, v66
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v66.h, v58.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v65.l, v61.h
	v_cmp_o_f32_e64 s11, v61, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v65, 1, v65
	v_add3_u32 v65, v61, v65, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v61, v67, v67
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v67.h, v58.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v62.l, 0x7fff, v65.h, s11
	v_mov_b16_e32 v66.l, v61.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s13, v61, v61
	v_mov_b16_e32 v65.h, v58.l
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v66, v61, v66, 0x7fff
	v_cndmask_b16 v61.h, 0x7fff, v62.h, vcc_lo
	v_cndmask_b16 v62.h, 0x7fff, v64.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v64, v68, v68
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v61.l, 0x7fff, v63.h, s2
	v_cndmask_b16 v63.h, 0x7fff, v66.h, s13
	v_mov_b16_e32 v66.h, v58.l
	v_mov_b16_e32 v68.h, v58.l
	v_mov_b16_e32 v65.l, v64.h
	v_cmp_o_f32_e32 vcc_lo, v64, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v65, 1, v65
	v_add3_u32 v65, v64, v65, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v64, v69, v69
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v69.h, v58.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v63.l, 0x7fff, v65.h, vcc_lo
	v_mov_b16_e32 v66.l, v64.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v64, v64
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v66, v64, v66, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v64, v70, v70
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v70.h, v58.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v71, v71
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v71, 0xffff0000, v172
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v67.l, v64.h
	v_cmp_o_f32_e64 s3, v64, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v66.l, v65.h
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v67, v64, v67, 0x7fff
	v_cndmask_b16 v64.h, 0x7fff, v66.h, s2
	v_mov_b16_e32 v66.h, v58.l
	v_cndmask_b16 v64.l, 0x7fff, v67.h, s3
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v67, 0xffff0000, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v66, v65, v66, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v72, v72
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v72.h, v172.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v68.l, v65.h
	v_cmp_o_f32_e64 s2, v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v68, 1, v68
	v_add3_u32 v68, v65, v68, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v74, v74
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v68.l, v58.l
	v_mov_b16_e64 v74.h, v173.l
	v_mov_b16_e32 v74.l, v58.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v69.l, v65.h
	v_cmp_o_f32_e64 s11, v65, v65
	v_and_b32_e32 v69, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v69, v65, v69, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v73, v73
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v73, 0xffff0000, v173
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v70.l, v65.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s13, v65, v65
	v_and_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v70, v65, v70, 0x7fff
	v_cndmask_b16 v65.h, 0x7fff, v66.h, vcc_lo
	v_cndmask_b16 v65.l, 0x7fff, v68.h, s2
	v_cndmask_b16 v66.h, 0x7fff, v69.h, s11
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v68.h, v170.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v66.l, 0x7fff, v70.h, s13
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v69, 0xffff0000, v171
	v_mov_b16_e64 v70.h, v171.l
	v_mov_b16_e32 v70.l, v58.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[59:66], v[122:129], v[41:48]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v60, 0xffff0000, v174
	v_mov_b16_e64 v59.h, v174.l
	v_mov_b16_e32 v59.l, v58.l
	v_and_b32_e32 v61, 0xffff0000, v175
	v_mov_b16_e64 v62.h, v175.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v60, v60, v60
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v62.l, v58.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v59, v59, v59
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v63, 0xffff0000, v176
	v_mov_b16_e64 v64.h, v176.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v97.l, v60.h
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	v_cmp_o_f32_e64 s2, v59, v59
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v64.l, v58.l
	v_and_b32_e32 v65, 0xffff0000, v177
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v97, 1, v97
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v66.h, v177.l
	v_mov_b16_e32 v66.l, v58.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v97, v60, v97, 0x7fff
	v_mov_b16_e32 v60.l, v59.h
	v_mov_b16_e32 v60.h, v58.l
	v_and_b32_e32 v60, 1, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v60, v59, v60, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v59, v61, v61
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v61.h, v58.l
	v_mov_b16_e32 v61.l, v59.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v59, v59
	v_and_b32_e32 v61, 1, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v61, v59, v61, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v59, v62, v62
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v62.h, v58.l
	v_mov_b16_e32 v62.l, v59.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s11, v59, v59
	v_and_b32_e32 v62, 1, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v62, v59, v62, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v59, v63, v63
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v63.h, v58.l
	v_cndmask_b16 v60.l, 0x7fff, v62.h, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v63.l, v59.h
	v_cmp_o_f32_e64 s13, v59, v59
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v62, v65, v65
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v65.h, v58.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v63, 1, v63
	v_add3_u32 v63, v59, v63, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v59, v64, v64
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v64.h, v58.l
	v_mov_b16_e32 v63.l, v62.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v64.l, v59.h
	v_cmp_o_f32_e64 s14, v59, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v64, 1, v64
	v_add3_u32 v64, v59, v64, 0x7fff
	v_cndmask_b16 v59.l, 0x7fff, v60.h, s2
	v_cndmask_b16 v60.h, 0x7fff, v61.h, s3
	v_cndmask_b16 v61.h, 0x7fff, v63.h, s13
	v_mov_b16_e32 v63.h, v58.l
	v_cndmask_b16 v59.h, 0x7fff, v97.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v62, v62
	v_cndmask_b16 v61.l, 0x7fff, v64.h, s14
	v_mov_b16_e32 v64.h, v58.l
	v_and_b32_e32 v63, 1, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v63, v62, v63, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v62, v66, v66
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v66.h, v58.l
	v_mov_b16_e32 v64.l, v62.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v62, v62
	v_and_b32_e32 v64, 1, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v64, v62, v64, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v62, v67, v67
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v67.h, v58.l
	v_mov_b16_e32 v65.l, v62.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v62, v62
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v65, v62, v65, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v62, v68, v68
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v68.h, v58.l
	v_mov_b16_e32 v66.l, v62.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s11, v62, v62
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v66, v62, v66, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v62, v69, v69
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v69.h, v58.l
	v_cndmask_b16 v63.l, 0x7fff, v66.h, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v67.l, v62.h
	v_cmp_o_f32_e64 s13, v62, v62
	v_mov_b16_e32 v66.h, v58.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v67, 1, v67
	v_add3_u32 v67, v62, v67, 0x7fff
	v_cndmask_b16 v62.h, 0x7fff, v63.h, vcc_lo
	v_cndmask_b16 v63.h, 0x7fff, v65.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v70, v70
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v62.l, 0x7fff, v64.h, s2
	v_cndmask_b16 v64.h, 0x7fff, v67.h, s13
	v_mov_b16_e32 v67.h, v58.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v66.l, v65.h
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v65, v66, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v71, v71
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v64.l, 0x7fff, v66.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v67.l, v65.h
	v_cmp_o_f32_e64 s2, v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v67, 1, v67
	v_add3_u32 v67, v65, v67, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v72, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v68.l, v65.h
	v_cmp_o_f32_e64 s3, v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v68, 1, v68
	v_add3_u32 v68, v65, v68, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v73, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v69.l, v65.h
	v_cmp_o_f32_e64 s11, v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v69, 1, v69
	v_add3_u32 v69, v65, v69, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v74, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v66.h, 0x7fff, v69.h, s11
	v_mov_b16_e32 v58.l, v65.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s13, v65, v65
	v_and_b32_e32 v58, 1, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v58, v65, v58, 0x7fff
	v_cndmask_b16 v65.h, 0x7fff, v67.h, s2
	v_cndmask_b16 v65.l, 0x7fff, v68.h, s3
	v_cndmask_b16 v66.l, 0x7fff, v58.h, s13
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[59:66], v[122:129], v[33:40]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v59, off, off offset:264
	scratch_load_b32 v60, off, off offset:292
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s2, s68, 1
	s_or_b32 s3, s68, 2
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
	s_or_b32 s55, s68, 19
	s_or_b32 s69, s68, 20
	s_or_b32 s70, s68, 21
	s_or_b32 s71, s68, 22
	s_or_b32 s82, s68, 23
	s_or_b32 s83, s68, 24
	s_or_b32 s84, s68, 25
	s_or_b32 s85, s68, 26
	s_or_b32 s86, s68, 27
	s_or_b32 s87, s68, 28
	s_or_b32 s88, s68, 29
	s_or_b32 s90, s68, 30
	s_or_b32 s92, s68, 31
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s68, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v230, v229 :: v_dual_add_nc_u32 v69, s35, v55
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s2, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v232, v229
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s3, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v234, v229
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s11, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v236, v229
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s13, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v231, v229
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s103, -1, 0
	s_cmp_lt_i32 s14, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v233, v229
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s15, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v235, v229
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s102, -1, 0
	s_cmp_lt_i32 s16, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v105, v229
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s17, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v106, v230
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s101, -1, 0
	s_cmp_lt_i32 s18, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v108, v232
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s19, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v110, v234
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s100, -1, 0
	s_cmp_lt_i32 s20, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v112, v236
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s21, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v107, v231
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s99, -1, 0
	s_cmp_lt_i32 s22, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v109, v233
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s23, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v111, v235
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s98, -1, 0
	s_cmp_lt_i32 s24, s26
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s25, s26
	s_cselect_b32 s97, -1, 0
	s_cmp_lt_i32 s42, s26
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s43, s26
	s_cselect_b32 s96, -1, 0
	s_cmp_lt_i32 s55, s26
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s69, s26
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s70, s26
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s71, s26
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s82, s26
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s83, s26
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s84, s26
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s85, s26
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s86, s26
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s87, s26
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s88, s26
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s90, s26
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s92, s26
	s_cselect_b32 s43, -1, 0
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_add_i32 s55, s68, s67
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s47
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_mul_i32 s2, s55, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v58, s2, v0, 1
	v_add_lshl_u32 v61, s2, v80, 1
	v_add_lshl_u32 v63, s2, v242, 1
	v_add_lshl_u32 v65, s2, v245, 1
	v_add_lshl_u32 v67, s2, v53, 1
	v_add_lshl_u32 v69, s2, v69, 1
	v_add_lshl_u32 v62, s2, v238, 1
	v_add_lshl_u32 v64, s2, v78, 1
	v_add_lshl_u32 v66, s2, v49, 1
	v_add_lshl_u32 v68, s2, v25, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v59, s2, v59, 1
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s46
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v60, s2, v60, 1
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	s_clause 0x1
	buffer_load_u16 v113, v58, s[48:51], 0 offen
	buffer_load_u16 v114, v59, s[48:51], 0 offen
	scratch_load_b32 v58, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s103
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v59, s2, v239, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v58, s2, v58, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s102
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v115, v58, s[48:51], 0 offen
	v_add_lshl_u32 v58, s2, v247, 1
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s101
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v116, v58, s[48:51], 0 offen
	v_add_lshl_u32 v58, s2, v75, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s100
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	s_clause 0x1
	buffer_load_u16 v117, v58, s[48:51], 0 offen
	buffer_load_u16 v118, v59, s[48:51], 0 offen
	v_add_lshl_u32 v58, s2, v254, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s99
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v59, s2, v9, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s98
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v119, v58, s[48:51], 0 offen
	v_add_lshl_u32 v58, s2, v214, 1
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s97
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v120, v58, s[48:51], 0 offen
	v_add_lshl_u32 v58, s2, v219, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s96
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	s_clause 0x1
	buffer_load_u16 v121, v58, s[48:51], 0 offen
	buffer_load_u16 v122, v59, s[48:51], 0 offen
	v_add_lshl_u32 v58, s2, v19, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s94
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v59, s2, v31, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s93
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v123, v58, s[48:51], 0 offen
	v_add_lshl_u32 v58, s2, v23, 1
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s91
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v124, v58, s[48:51], 0 offen
	v_add_lshl_u32 v58, s2, v27, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s89
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	s_clause 0x1
	buffer_load_u16 v125, v58, s[48:51], 0 offen
	buffer_load_u16 v126, v59, s[48:51], 0 offen
	v_add_lshl_u32 v58, s2, v51, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s87
	.loc	1 663 37                        ; attention_backward.py:663:37
	scratch_load_b32 v59, off, off offset:276 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s85
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v127, v58, s[48:51], 0 offen
	v_add_lshl_u32 v58, s2, v55, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s81
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v128, v58, s[48:51], 0 offen
	scratch_load_b32 v58, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v59, s2, v59, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v58, s2, v58, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s80
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s79
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v60, 0x80000000, v60, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s77
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v61, 0x80000000, v61, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s76
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s75
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s78
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v64, 0x80000000, v64, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s74
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	s_clause 0x7
	buffer_load_u16 v137, v64, s[48:51], 0 offen
	buffer_load_u16 v155, v60, s[48:51], 0 offen
	buffer_load_u16 v156, v59, s[48:51], 0 offen
	buffer_load_u16 v157, v58, s[48:51], 0 offen
	buffer_load_u16 v58, v65, s[48:51], 0 offen
	buffer_load_u16 v59, v63, s[48:51], 0 offen
	buffer_load_u16 v60, v62, s[48:51], 0 offen
	buffer_load_u16 v61, v61, s[48:51], 0 offen
	v_add_lshl_u32 v62, s2, v4, 1
	v_add_lshl_u32 v63, s2, v14, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s54
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v64, s2, v29, 1
	v_add_lshl_u32 v65, s2, v21, 1
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s73
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s42
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v64, 0x80000000, v64, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s72
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s69
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s70
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s71
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s43
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	s_clause 0x7
	buffer_load_u16 v133, v68, s[48:51], 0 offen
	buffer_load_u16 v134, v65, s[48:51], 0 offen
	buffer_load_u16 v135, v63, s[48:51], 0 offen
	buffer_load_u16 v136, v62, s[48:51], 0 offen
	buffer_load_u16 v129, v69, s[48:51], 0 offen
	buffer_load_u16 v130, v67, s[48:51], 0 offen
	buffer_load_u16 v131, v66, s[48:51], 0 offen
	buffer_load_u16 v132, v64, s[48:51], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_and_not1_b32 vcc_lo, exec_lo, s59
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_store_b16 v203, v113
	ds_store_b16 v203, v117 offset:1024
	ds_store_b16 v203, v121 offset:2048
	ds_store_b16 v203, v125 offset:3072
	s_waitcnt vmcnt(12)
	ds_store_b16 v204, v157
	s_waitcnt vmcnt(8)
	ds_store_b16 v204, v61 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b16 v204, v136 offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b16 v204, v132 offset:3072
	ds_store_b16 v205, v114
	ds_store_b16 v205, v118 offset:1024
	ds_store_b16 v205, v122 offset:2048
	ds_store_b16 v205, v126 offset:3072
	ds_store_b16 v206, v156
	ds_store_b16 v206, v60 offset:1024
	ds_store_b16 v206, v135 offset:2048
	ds_store_b16 v206, v131 offset:3072
	ds_store_b16 v207, v115
	ds_store_b16 v207, v119 offset:1024
	ds_store_b16 v207, v123 offset:2048
	ds_store_b16 v207, v127 offset:3072
	ds_store_b16 v208, v155
	ds_store_b16 v208, v59 offset:1024
	ds_store_b16 v208, v134 offset:2048
	ds_store_b16 v208, v130 offset:3072
	ds_store_b16 v209, v116
	ds_store_b16 v209, v120 offset:1024
	ds_store_b16 v209, v124 offset:2048
	ds_store_b16 v209, v128 offset:3072
	ds_store_b16 v210, v137
	ds_store_b16 v210, v58 offset:1024
	ds_store_b16 v210, v133 offset:2048
	ds_store_b16 v210, v129 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 36-byte Folded Reload
	scratch_load_b32 v62, off, off offset:272
	scratch_load_b128 v[97:100], off, off
	scratch_load_b128 v[101:104], off, off offset:16
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v65, 0, v62
	ds_load_b128 v[66:69], v65
	ds_load_b128 v[70:73], v8
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v62, s68, v57
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s3, s26, v62
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v62, s31, v62
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s95, s0, s3
	s_and_b32 s92, s1, s3
	s_and_b32 s90, s4, s3
	s_and_b32 s88, s5, s3
	s_and_b32 s86, s6, s3
	s_and_b32 s84, s7, s3
	s_and_b32 s83, s8, s3
	s_and_b32 s82, s9, s3
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[97:104], v[66:73], v[105:112]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[97:100], off, off offset:32
	scratch_load_b128 v[101:104], off, off offset:48
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[66:69], v11
	ds_load_b128 v[70:73], v12
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[97:104], v[66:73], v[105:112]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[97:100], off, off offset:64
	scratch_load_b128 v[101:104], off, off offset:80
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[66:69], v13
	ds_load_b128 v[70:73], v16
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[97:104], v[66:73], v[105:112]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[97:100], off, off offset:96
	scratch_load_b128 v[101:104], off, off offset:112
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[66:69], v17
	ds_load_b128 v[70:73], v18
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[97:104], v[66:73], v[105:112]
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_or_b32_e32 v63, 2, v213
	v_cmp_le_i32_e32 vcc_lo, v213, v62
	s_and_not1_b32 s19, s95, exec_lo
	s_and_not1_b32 s20, s92, exec_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_le_i32_e64 s2, v63, v62
	v_or_b32_e32 v63, 4, v213
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s18, s95, vcc_lo
	s_and_b32 s18, s18, exec_lo
	s_and_b32 s2, s92, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s11, v63, v62
	v_or_b32_e32 v63, 6, v213
	s_and_b32 s2, s2, exec_lo
	s_or_b32 s95, s19, s18
	s_or_b32 s92, s20, s2
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s11, s90, s11
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s13, v63, v62
	v_or_b32_e32 v63, 8, v213
	s_and_not1_b32 s2, s90, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s18, s88, exec_lo
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s13, s88, s13
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s14, v63, v62
	v_or_b32_e32 v63, 10, v213
	s_and_b32 s13, s13, exec_lo
	s_or_b32 s90, s2, s11
	s_or_b32 s88, s18, s13
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s14, s86, s14
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s15, v63, v62
	v_or_b32_e32 v63, 12, v213
	s_and_not1_b32 s2, s86, exec_lo
	s_and_b32 s11, s14, exec_lo
	s_and_not1_b32 s13, s84, exec_lo
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s15, s84, s15
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s16, v63, v62
	v_or_b32_e32 v63, 14, v213
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s86, s2, s11
	s_or_b32 s84, s13, s14
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s16, s83, s16
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s17, v63, v62
	s_and_not1_b32 s2, s83, exec_lo
	s_and_b32 s11, s16, exec_lo
	s_and_not1_b32 s13, s82, exec_lo
	s_or_b32 s83, s2, s11
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s17, s82, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s82, s13, s14
.LBB0_10:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 677 17 is_stmt 1              ; attention_backward.py:677:17
	s_and_not1_b32 vcc_lo, exec_lo, s58
	s_cbranch_vccnz .LBB0_7
; %bb.11:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v63, s29, v62
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v62, s30, v62
	v_or_b32_e32 v64, 2, v213
	v_or_b32_e32 v66, 4, v213
	v_or_b32_e32 v67, 6, v213
	v_or_b32_e32 v68, 8, v213
	v_or_b32_e32 v69, 10, v213
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v213, v63
	v_cmp_ge_i32_e64 s2, v64, v63
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s18, v213, v62
	v_cmp_le_i32_e64 s19, v64, v62
	v_or_b32_e32 v70, 12, v213
	v_or_b32_e32 v71, 14, v213
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s11, v66, v63
	v_cmp_ge_i32_e64 s13, v67, v63
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s20, v66, v62
	v_cmp_le_i32_e64 s21, v67, v62
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s14, v68, v63
	v_cmp_ge_i32_e64 s15, v69, v63
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s22, v68, v62
	v_cmp_le_i32_e64 s23, v69, v62
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s18, vcc_lo, s18
	s_and_b32 s2, s2, s19
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s16, v70, v63
	v_cmp_ge_i32_e64 s17, v71, v63
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s24, v70, v62
	v_cmp_le_i32_e64 s25, v71, v62
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s18, s18, s95
	s_and_b32 s2, s2, s92
	s_and_b32 s11, s11, s20
	s_and_b32 s13, s13, s21
	s_and_b32 s11, s11, s90
	s_and_b32 s13, s13, s88
	s_and_b32 s14, s14, s22
	s_and_b32 s15, s15, s23
	s_and_not1_b32 s19, s95, exec_lo
	s_and_b32 s18, s18, exec_lo
	s_and_not1_b32 s20, s92, exec_lo
	s_and_b32 s2, s2, exec_lo
	s_and_b32 s14, s14, s86
	s_and_b32 s15, s15, s84
	s_and_b32 s16, s16, s24
	s_and_b32 s17, s17, s25
	s_or_b32 s95, s19, s18
	s_or_b32 s92, s20, s2
	s_and_not1_b32 s2, s90, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s18, s88, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s83
	s_and_b32 s17, s17, s82
	s_or_b32 s90, s2, s11
	s_or_b32 s88, s18, s13
	s_and_not1_b32 s2, s86, exec_lo
	s_and_b32 s11, s14, exec_lo
	s_and_not1_b32 s13, s84, exec_lo
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s86, s2, s11
	s_or_b32 s84, s13, s14
	s_and_not1_b32 s2, s83, exec_lo
	s_and_b32 s11, s16, exec_lo
	s_and_not1_b32 s13, s82, exec_lo
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s83, s2, s11
	s_or_b32 s82, s13, s14
	s_branch .LBB0_7
.LBB0_12:                               ; %Flow375
	.loc	1 0 21                          ; attention_backward.py:0:21
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v57, off, off offset:300
	scratch_load_b32 v52, off, off offset:304
	scratch_load_b32 v53, off, off offset:308
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
.LBB0_14:                               ; %._crit_edge181
	.loc	1 550 20 is_stmt 1              ; attention_backward.py:550:20
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, v52, v53
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v16, s35, v57
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s57, v57
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s41, s37, 0xffff
	s_mov_b32 s43, 0x31027000
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v14, 2, v1
	v_or_b32_e32 v13, 4, v1
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s27, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s15, s35, v1
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v17, v16, v1
	v_add_nc_u32_e32 v18, v16, v14
	v_add_nc_u32_e32 v19, v16, v13
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s16, s35, v14
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v15, 6, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v17, v17, s33, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s17, s35, v13
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v18, v18, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v12, 8, v1
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, vcc_lo, s15
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v19, v19, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v11, 10, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, vcc_lo, s16
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v20, v16, v15
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v10, 12, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, vcc_lo, s17
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v21, v16, v12
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s18, s35, v15
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_mov_b32 s40, s36
	v_cndmask_b32_e64 v19, 0x80000000, v19, s15
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v22, v16, v11
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s19, s35, v12
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v89, v17, s[40:43], 0 offen
	v_add_lshl_u32 v17, v20, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v9, 14, v1
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
	v_or_b32_e32 v8, 32, v1
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, vcc_lo, s18
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s21, s35, v10
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	v_add_lshl_u32 v19, v22, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v7, 34, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, vcc_lo, s19
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v24, v16, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v23, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v6, 36, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, vcc_lo, s20
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v25, v16, v8
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s22, s35, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, vcc_lo, s21
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
	v_or_b32_e32 v5, 38, v1
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v27, v16, v6
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s24, s35, v7
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v18, v25, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v4, 40, v1
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, vcc_lo, s22
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s25, s35, v6
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v94, v19, s[40:43], 0 offen
	buffer_store_b32 v95, v20, s[40:43], 0 offen
	v_add_lshl_u32 v19, v26, s33, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v21, s34, v57
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v3, 42, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, vcc_lo, s23
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v28, v16, v5
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v27, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v2, 44, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, vcc_lo, s24
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v29, v16, v4
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v0, 46, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s26, s35, v5
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, vcc_lo, s25
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
	v_add_nc_u32_e32 v16, v16, v0
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, vcc_lo, s26
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s14, s56, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s29, s35, v2
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v82, v19, s[40:43], 0 offen
	buffer_store_b32 v83, v20, s[40:43], 0 offen
	v_add_lshl_u32 v19, v30, s33, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, vcc_lo, s27
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s30, s35, v0
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v31, s33, 2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v1, v21, v1, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s12, s56, v13
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, vcc_lo, s28
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v16, v16, s33, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, vcc_lo, s29
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v13, v21, v13, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s14, vcc_lo, s14
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, vcc_lo, s30
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s14
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s12, vcc_lo, s12
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
	buffer_store_b32 v41, v1, s[40:43], 0 offen
	v_add_lshl_u32 v1, v21, v15, 2
	v_add_lshl_u32 v12, v21, v12, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, vcc_lo, s13
	s_and_b32 s12, vcc_lo, s12
	s_and_b32 s11, vcc_lo, s11
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v14, 0x80000000, v14, s13
	v_cndmask_b32_e64 v1, 0x80000000, v1, s12
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
	buffer_store_b32 v44, v1, s[40:43], 0 offen
	buffer_store_b32 v45, v12, s[40:43], 0 offen
	v_add_lshl_u32 v1, v21, v9, 2
	v_add_lshl_u32 v10, v21, v10, 2
	v_add_lshl_u32 v8, v21, v8, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s10, vcc_lo, s10
	s_and_b32 s8, vcc_lo, s8
	s_and_b32 s9, vcc_lo, s9
	s_and_b32 s7, vcc_lo, s7
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v11, 0x80000000, v11, s10
	v_cndmask_b32_e64 v1, 0x80000000, v1, s8
	v_cndmask_b32_e64 v10, 0x80000000, v10, s9
	v_cndmask_b32_e64 v8, 0x80000000, v8, s7
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s4, s56, v5
	v_cmp_gt_i32_e64 s6, s56, v7
	v_cmp_gt_i32_e64 s3, s56, v4
	v_cmp_gt_i32_e64 s5, s56, v6
	v_cmp_gt_i32_e64 s2, s56, v3
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_clause 0x1
	buffer_store_b32 v46, v11, s[40:43], 0 offen
	buffer_store_b32 v47, v10, s[40:43], 0 offen
	v_add_lshl_u32 v7, v21, v7, 2
	s_clause 0x1
	buffer_store_b32 v48, v1, s[40:43], 0 offen
	buffer_store_b32 v33, v8, s[40:43], 0 offen
	v_add_lshl_u32 v1, v21, v5, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s1, s56, v2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v6, v21, v6, 2
	v_add_lshl_u32 v4, v21, v4, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s0, s56, v0
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v3, v21, v3, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, vcc_lo, s6
	s_and_b32 s4, vcc_lo, s4
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v2, v21, v2, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, vcc_lo, s5
	s_and_b32 s3, vcc_lo, s3
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v0, v21, v0, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s6
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s2, vcc_lo, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s5
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s1, vcc_lo, s1
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 572 22                        ; attention_backward.py:572:22
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
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 316
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 104
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 316
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18664
; TotalNumSgprs: 106
; NumVgprs: 256
; ScratchSize: 316
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 316
    .sgpr_count:     106
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 78
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
