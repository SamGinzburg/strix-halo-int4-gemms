	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	v_and_b32_e32 v65, 15, v0
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
	buffer_load_u16 v3, v3, s[16:19], 0 offen
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
	v_cndmask_b32_e64 v7, 0x80000000, v7, s10
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s10, s5, s12
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v10, s35, v9
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v8, 1, v9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s10
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s10, s47, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v1, s35, v10
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v10, 1, v10
	v_cndmask_b32_e64 v8, 0x80000000, v8, s10
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s10, s7, s12
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v9, s35, v1
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v1, 1, v1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s10
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s10, s46, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v13, s35, v9
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v9, 1, v9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s10
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s10, s8, s12
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v14, s35, v13
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v13, 1, v13
	v_cndmask_b32_e64 v9, 0x80000000, v9, s10
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s10, s45, s12
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v15, s35, v14
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v14, 1, v14
	v_cndmask_b32_e64 v13, 0x80000000, v13, s10
	s_clause 0x4
	buffer_load_u16 v8, v8, s[16:19], 0 offen
	buffer_load_u16 v10, v10, s[16:19], 0 offen
	buffer_load_u16 v16, v1, s[16:19], 0 offen
	buffer_load_u16 v9, v9, s[16:19], 0 offen
	buffer_load_u16 v13, v13, s[16:19], 0 offen
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
	buffer_load_u16 v7, v7, s[16:19], 0 offen
	buffer_load_u16 v17, v1, s[16:19], 0 offen
	buffer_load_u16 v18, v2, s[16:19], 0 offen
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
	v_add_nc_u32_e32 v174, 0, v1
	.loc	1 542 35                        ; attention_backward.py:542:35
	s_lshl_b32 s17, s10, 3
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v2, 0x90, v1
	v_xor_b32_e32 v19, 0x120, v1
	v_xor_b32_e32 v20, 0x1b0, v1
	v_xor_b32_e32 v21, 0x240, v1
	v_xor_b32_e32 v22, 0x2d0, v1
	v_xor_b32_e32 v23, 0x360, v1
	v_xor_b32_e32 v1, 0x3f0, v1
	.loc	1 549 23                        ; attention_backward.py:549:23
	s_cmp_lt_i32 s16, s17
	.loc	1 543 26                        ; attention_backward.py:543:26
	s_mul_i32 s17, s3, s17
	.loc	1 549 23                        ; attention_backward.py:549:23
	s_cselect_b32 s36, -1, 0
	.loc	1 545 17                        ; attention_backward.py:545:17
	s_add_i32 s17, s17, s16
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v175, 0, v2
	v_add_nc_u32_e32 v181, 0, v1
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mad_u64_u32 v[1:2], null, s17, s56, v[0:1]
	.loc	1 565 17                        ; attention_backward.py:565:17
	s_mul_i32 s10, s3, s10
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_bfe_i32 s2, s2, 0x1c0000
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v176, 0, v19
	.loc	1 568 17                        ; attention_backward.py:568:17
	s_add_i32 s2, s10, s2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s10, s56, v0
	.loc	1 568 17                        ; attention_backward.py:568:17
	s_mul_i32 s2, s2, s56
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v19, s56, v1
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_add_lshl_u32 v2, s2, v0, 1
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v177, 0, v20
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s13, s10
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v178, 0, v21
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v27, s56, v19
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v20, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, vcc_lo, s10
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v179, 0, v22
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v21, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s50, s10
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v30, s56, v27
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v22, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s4, s10
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v180, 0, v23
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v23, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s49, s10
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v33, s56, v30
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v24, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s6, s10
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e64 v25, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s48, s10
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v36, s56, v33
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v26, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s5, s10
	.loc	1 549 22                        ; attention_backward.py:549:22
	s_and_b32 s2, s36, s10
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v28, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s47, s10
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v39, s56, v36
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v29, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s7, s10
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_and_b32 s17, s39, 0xffff
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v31, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s46, s10
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v40, s56, v39
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v32, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s8, s10
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_mov_b32 s16, s38
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v34, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s45, s10
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v35, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s9, s10
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v37, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s44, s10
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v38, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s11, s10
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v2, 0x80000000, v2, s13
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	v_cndmask_b32_e64 v40, 0x80000000, v40, s2
	.loc	1 587 22                        ; attention_backward.py:587:22
	s_add_i32 s2, s26, 31
	s_mov_b32 s13, 0
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(15)
	ds_store_b16 v174, v11
	s_waitcnt vmcnt(9)
	ds_store_b16 v174, v8 offset:1024
	ds_store_b16 v175, v12
	s_waitcnt vmcnt(8)
	ds_store_b16 v175, v10 offset:1024
	ds_store_b16 v176, v3
	s_waitcnt vmcnt(7)
	ds_store_b16 v176, v16 offset:1024
	ds_store_b16 v177, v4
	s_waitcnt vmcnt(6)
	ds_store_b16 v177, v9 offset:1024
	ds_store_b16 v178, v5
	s_waitcnt vmcnt(5)
	ds_store_b16 v178, v13 offset:1024
	ds_store_b16 v179, v6
	s_waitcnt vmcnt(4)
	ds_store_b16 v179, v14 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v180, v7
	s_waitcnt vmcnt(2)
	ds_store_b16 v180, v17 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v181, v18
	s_waitcnt vmcnt(0)
	ds_store_b16 v181, v15 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_clause 0xf
	buffer_load_u16 v10, v20, s[20:23], 0 offen
	buffer_load_u16 v20, v21, s[20:23], 0 offen
	buffer_load_u16 v21, v22, s[20:23], 0 offen
	buffer_load_u16 v22, v23, s[20:23], 0 offen
	buffer_load_u16 v23, v24, s[20:23], 0 offen
	buffer_load_u16 v24, v25, s[20:23], 0 offen
	buffer_load_u16 v25, v26, s[20:23], 0 offen
	buffer_load_u16 v26, v28, s[20:23], 0 offen
	buffer_load_u16 v28, v29, s[20:23], 0 offen
	buffer_load_u16 v29, v31, s[20:23], 0 offen
	buffer_load_u16 v31, v32, s[20:23], 0 offen
	buffer_load_u16 v32, v34, s[20:23], 0 offen
	buffer_load_u16 v34, v35, s[20:23], 0 offen
	buffer_load_u16 v35, v37, s[20:23], 0 offen
	buffer_load_u16 v37, v38, s[20:23], 0 offen
	buffer_load_u16 v38, v2, s[20:23], 0 offen
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_clause 0x7
	buffer_load_u8 v16, v1, s[16:19], 0 offen
	buffer_load_u8 v17, v19, s[16:19], 0 offen
	buffer_load_u8 v18, v27, s[16:19], 0 offen
	buffer_load_u8 v12, v30, s[16:19], 0 offen
	buffer_load_u8 v13, v33, s[16:19], 0 offen
	buffer_load_u8 v14, v36, s[16:19], 0 offen
	buffer_load_u8 v15, v39, s[16:19], 0 offen
	buffer_load_u8 v11, v40, s[16:19], 0 offen
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v1, 4, v0
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_ashr_i32 s16, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_lshr_b32 s16, s16, 27
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_and_b32_e32 v1, 0x70, v1
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_add_i32 s16, s2, s16
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_hi_u32 s2, s42, s43
	.loc	1 587 20                        ; attention_backward.py:587:20
	s_and_b32 s60, s16, 0xffffffe0
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_bfe_u32 s16, s28, 0x10008
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshl_or_b32 v1, v65, 7, v1
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
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v15.h, v10.l
	v_mov_b16_e32 v16.h, v20.l
	v_mov_b16_e32 v17.h, v21.l
	v_mov_b16_e32 v18.h, v22.l
	v_mov_b16_e32 v19.h, v23.l
	v_mov_b16_e32 v20.h, v24.l
	v_mov_b16_e32 v21.h, v25.l
	v_mov_b16_e32 v22.h, v26.l
	v_mov_b16_e32 v23.h, v28.l
	v_mov_b16_e32 v24.h, v29.l
	v_mov_b16_e32 v25.h, v31.l
	v_mov_b16_e32 v26.h, v32.l
	v_mov_b16_e32 v14.h, v34.l
	v_mov_b16_e32 v12.h, v35.l
	v_mov_b16_e32 v13.h, v37.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v11.h, v38.l
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
	ds_load_b128 v[27:30], v2
	ds_load_b128 v[31:34], v3
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_mul_i32 s16, s2, s15
	s_xor_b32 s17, s40, s41
	s_sub_i32 s16, s42, s16
	s_add_i32 s18, s2, 1
	s_sub_i32 s19, s16, s15
	s_cmp_ge_u32 s16, s15
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v39.h, 0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s2, s18, s2
	s_cselect_b32 s16, s19, s16
	s_add_i32 s18, s2, 1
	s_cmp_ge_u32 s16, s15
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v19.l, v16.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v39.l, 4, v16.l
	v_lshrrev_b16 v40.l, 4, v17.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v40.h, v39.h
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_cselect_b32 s2, s18, s2
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v20.l, v17.l, 15
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_xor_b32 s2, s2, s17
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v21.l, v18.l, 15
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[27:30], off   ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[31:34], off offset:16 ; 16-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[27:30], v4
	ds_load_b128 v[31:34], v5
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_sub_i32 s28, s2, s17
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v19.l
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v40, 0, v40, s4
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v38, 15, v15
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v22.l, v12.l, 15
	v_and_b16 v23.l, v13.l, 15
	v_and_b16 v24.l, v14.l, 15
	v_and_b16 v25.l, v15.l, 15
	v_and_b16 v26.l, v11.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v41.l, 4, v18.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v41.h, v39.h
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v42.l, 4, v12.l
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v42.h, v39.h
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v43.l, 4, v13.l
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v43.h, v39.h
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e64 v41, 0, v41, s6
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v44.l, 4, v14.l
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v42, 0, v42, s5
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v44.h, v39.h
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[27:30], off offset:32 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[31:34], off offset:48 ; 16-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[27:30], v6
	ds_load_b128 v[31:34], v7
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e64 v43, 0, v43, s7
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v47, -16, v42
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v45.l, 4, v15.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v45.h, v39.h
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e64 v44, 0, v44, s8
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v48, -16, v43
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v46.l, 4, v11.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v46.h, v39.h
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e64 v45, 0, v45, s9
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v49, -16, v44
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v15.l, v39.h
	v_mov_b16_e32 v19.l, v39.h
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v46, 0, v46, s11
	s_load_b128 s[36:39], s[0:1], 0x50
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v66, v0, 4, 1
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cmp_lt_i32 s28, 1
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[27:30], off offset:64
	scratch_store_b128 off, v[31:34], off offset:80
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[27:30], v8
	ds_load_b128 v[31:34], v9
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[27:30], off offset:96 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[31:34], off offset:112 ; 16-byte Folded Spill
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_and_b32_e32 v27, 15, v16
	v_and_b32_e32 v28, 15, v17
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v16.l, v39.h
	v_mov_b16_e32 v17.l, v39.h
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v33, -16, v27
	v_or_b32_e32 v34, -16, v28
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v27, v27, v33, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v20.l
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v20.l, v39.h
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v28, v28, v34, s2
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v34, 0, v39, vcc_lo
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v33, 15, v11
	v_and_b32_e32 v32, 15, v14
	v_and_b32_e32 v31, 15, v13
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v21.l
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v14.l, v39.h
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v28, v28
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v21.l, v39.h
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v37, -16, v31
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v30, 15, v12
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v12.l, v39.h
	v_mov_b16_e32 v13.l, v39.h
	v_mov_b16_e32 v11.l, v39.h
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v15, v27, v15
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v36, -16, v30
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v29, 15, v18
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v18.l, v39.h
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v17, v28, v17
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v27, v15, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 557 50 is_stmt 1              ; attention_backward.py:557:50
	v_or_b32_e32 v35, -16, v29
	.loc	1 557 25 is_stmt 0              ; attention_backward.py:557:25
	v_dual_cndmask_b32 v29, v29, v35 :: v_dual_and_b32 v10, 32, v0
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v22.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v35, -16, v32
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v22.l, v39.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_lshrrev_b32_e32 v67, 1, v10
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v29, v29
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v30, v30, v36, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v23.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v36, -16, v38
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v23.l, v39.h
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v19, v29, v19
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v31, v31, v37, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v24.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v37, -16, v33
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v24.l, v39.h
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v21, v30, v21
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v32, v32, v35, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v25.l
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v25.l, v39.h
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cmp_o_f32_e64 s4, v19, v19
	.loc	1 575 27 is_stmt 0              ; attention_backward.py:575:27
	v_mul_f32_e32 v23, v31, v23
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 557 25 is_stmt 1              ; attention_backward.py:557:25
	v_cndmask_b32_e32 v35, v38, v36, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v26.l
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v36, -16, v34
	v_or_b32_e32 v38, -16, v41
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v26.l, v39.h
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v35, v35
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v33, v33, v37, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v34
	.loc	1 558 52 is_stmt 0              ; attention_backward.py:558:52
	v_or_b32_e32 v37, -16, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_dual_mul_f32 v25, v32, v25 :: v_dual_mul_f32 v28, v35, v14
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v34, v34, v36, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v40
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v36, -16, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_mul_f32_e32 v30, v33, v13
	v_cvt_f32_i32_e32 v34, v34
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v37, v40, v37, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v41
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v40, -16, v46
	.loc	1 575 26 is_stmt 1              ; attention_backward.py:575:26
	v_cmp_o_f32_e64 s5, v30, v30
	.loc	1 575 27 is_stmt 0              ; attention_backward.py:575:27
	v_mul_f32_e32 v16, v34, v16
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 558 26 is_stmt 1              ; attention_backward.py:558:26
	v_cndmask_b32_e32 v38, v41, v38, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 575 26 is_stmt 1              ; attention_backward.py:575:26
	v_bfe_u32 v14, v16, 16, 1
	.loc	1 575 27 is_stmt 0              ; attention_backward.py:575:27
	v_mul_f32_e32 v18, v37, v18
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cmp_o_f32_e64 s2, v16, v16
	.loc	1 558 26 is_stmt 1              ; attention_backward.py:558:26
	v_cndmask_b32_e32 v41, v42, v47, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v43
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_add3_u32 v13, v16, v14, 0x7fff
	v_bfe_u32 v14, v17, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v39, v41
	.loc	1 558 26 is_stmt 1              ; attention_backward.py:558:26
	v_cndmask_b32_e32 v42, v43, v48, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v44
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_mul_f32_e32 v20, v38, v20
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_add3_u32 v14, v17, v14, 0x7fff
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_dual_mul_f32 v22, v39, v22 :: v_dual_cndmask_b32 v43, v44, v49
	.loc	1 558 35 is_stmt 1              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v45
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v41, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v16, v22, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v42, v43
	.loc	1 558 26 is_stmt 1              ; attention_backward.py:558:26
	v_cndmask_b32_e32 v36, v45, v36, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 575 26 is_stmt 1              ; attention_backward.py:575:26
	v_add3_u32 v16, v22, v16, 0x7fff
	.loc	1 575 27 is_stmt 0              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v36, v36
	.loc	1 558 26 is_stmt 1              ; attention_backward.py:558:26
	v_cndmask_b32_e32 v40, v46, v40, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v26, v42, v26
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v29, v36, v12
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_add3_u32 v12, v15, v27, 0x7fff
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v24, v41, v24
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_bfe_u32 v15, v21, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v27, v40, v11
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v11.l, 0x7fff, v12.h, vcc_lo
	v_bfe_u32 v12, v18, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s2
	v_bfe_u32 v13, v19, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_cmp_o_f32_e64 s2, v18, v18
	v_add3_u32 v12, v18, v12, 0x7fff
	v_add3_u32 v15, v21, v15, 0x7fff
	v_add3_u32 v13, v19, v13, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v14.h, vcc_lo
	v_bfe_u32 v14, v20, 16, 1
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s2
	v_cmp_o_f32_e64 s2, v21, v21
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s4
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_add3_u32 v14, v20, v14, 0x7fff
	v_cmp_o_f32_e64 s4, v22, v22
	v_bfe_u32 v17, v23, 16, 1
	v_cndmask_b16 v14.l, 0x7fff, v15.h, s2
	v_bfe_u32 v15, v24, 16, 1
	v_cndmask_b16 v13.h, 0x7fff, v14.h, vcc_lo
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s4
	v_bfe_u32 v16, v25, 16, 1
	v_add3_u32 v17, v23, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	v_add3_u32 v15, v24, v15, 0x7fff
	v_cmp_o_f32_e64 s2, v24, v24
	v_add3_u32 v16, v25, v16, 0x7fff
	v_cmp_o_f32_e64 s4, v25, v25
	v_bfe_u32 v18, v26, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v28, 16, 1
	v_bfe_u32 v19, v29, 16, 1
	v_bfe_u32 v20, v30, 16, 1
	v_bfe_u32 v21, v27, 16, 1
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s2
	v_cndmask_b16 v16.l, 0x7fff, v16.h, s4
	v_add3_u32 v18, v26, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_add3_u32 v17, v28, v17, 0x7fff
	v_cmp_o_f32_e64 s2, v28, v28
	v_add3_u32 v19, v29, v19, 0x7fff
	v_cmp_o_f32_e64 s4, v29, v29
	v_add3_u32 v20, v30, v20, 0x7fff
	v_add3_u32 v21, v27, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v27, v27
	v_cndmask_b16 v16.h, 0x7fff, v18.h, vcc_lo
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s2
	v_cndmask_b16 v17.h, 0x7fff, v19.h, s4
	v_cndmask_b16 v18.l, 0x7fff, v20.h, s5
	v_cndmask_b16 v18.h, 0x7fff, v21.h, s6
	.loc	1 715 36 is_stmt 1              ; attention_backward.py:715:36
	ds_store_b16 v174, v11
	ds_store_b16 v174, v15 offset:1024
	ds_store_b16_d16_hi v175, v11
	ds_store_b16_d16_hi v175, v15 offset:1024
	ds_store_b16 v176, v12
	ds_store_b16 v176, v16 offset:1024
	ds_store_b16_d16_hi v177, v12
	ds_store_b16_d16_hi v177, v16 offset:1024
	ds_store_b16 v178, v13
	ds_store_b16 v178, v17 offset:1024
	ds_store_b16_d16_hi v179, v13
	ds_store_b16_d16_hi v179, v17 offset:1024
	ds_store_b16 v180, v14
	ds_store_b16 v180, v18 offset:1024
	ds_store_b16_d16_hi v181, v14
	ds_store_b16_d16_hi v181, v18 offset:1024
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
	v_or_b32_e32 v184, s57, v66
	s_ashr_i32 s1, s2, 31
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_sub_i32 s0, s57, s31
	s_xor_b32 s2, s14, s1
	s_max_i32 s0, s0, 0
	s_sub_i32 s2, s2, s1
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v12, 2, v184
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_and_b32 s0, s0, 0x7fffffe0
	s_mul_i32 s1, s2, s25
	s_max_u32 s0, s13, s0
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_sub_i32 s3, s3, s1
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_and_b32 s1, s59, exec_lo
	.loc	1 514 23 is_stmt 1              ; attention_backward.py:514:23
	v_or_b32_e32 v13, 4, v184
	v_or_b32_e32 v14, 6, v184
	v_or_b32_e32 v15, 8, v184
	v_or_b32_e32 v16, 10, v184
	v_or_b32_e32 v17, 12, v184
	v_or_b32_e32 v18, 14, v184
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s1, s27, v12
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v12, s35, v0
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v19, s56, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s4, s27, v13
	v_cmp_gt_i32_e64 s5, s27, v14
	v_cmp_gt_i32_e64 s6, s27, v15
	scratch_store_b32 off, v12, off offset:192 ; 4-byte Folded Spill
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v12, s35, v12
	scratch_store_b32 off, v19, off offset:228 ; 4-byte Folded Spill
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v13, s56, v19
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s7, s27, v16
	v_cmp_gt_i32_e64 s8, s27, v17
	v_cmp_gt_i32_e64 s9, s27, v18
	.loc	1 715 36                        ; attention_backward.py:715:36
	ds_load_b128 v[18:21], v9
	ds_load_b128 v[14:17], v8
	scratch_store_b32 off, v12, off offset:232 ; 4-byte Folded Spill
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v12, s35, v12
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[14:17], off offset:128
	scratch_store_b128 off, v[18:21], off offset:144
	.loc	1 715 36                        ; attention_backward.py:715:36
	ds_load_b128 v[18:21], v7
	ds_load_b128 v[14:17], v6
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v6, s35, v12
	scratch_store_b32 off, v13, off offset:236 ; 4-byte Folded Spill
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v13, s56, v13
	s_waitcnt lgkmcnt(0)
	s_clause 0x2                            ; 36-byte Folded Spill
	scratch_store_b128 off, v[14:17], off offset:160
	scratch_store_b128 off, v[18:21], off offset:176
	scratch_store_b32 off, v12, off offset:240
	v_add_nc_u32_e32 v7, s56, v13
	scratch_store_b32 off, v13, off offset:244 ; 4-byte Folded Spill
	.loc	1 715 36                        ; attention_backward.py:715:36
	ds_load_b128 v[16:19], v5
	ds_load_b128 v[12:15], v4
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v4, s35, v6
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[12:15], off offset:196
	scratch_store_b128 off, v[16:19], off offset:212
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v5, s56, v7
	.loc	1 715 36                        ; attention_backward.py:715:36
	ds_load_b128 v[16:19], v3
	ds_load_b128 v[12:15], v2
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v2, s35, v4
	v_lshl_or_b32 v204, v10, 6, v1
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_and_b32_e32 v11, 16, v0
	.loc	1 545 17 is_stmt 1              ; attention_backward.py:545:17
	v_add_nc_u32_e32 v3, s56, v5
	v_dual_mov_b32 v97, 0 :: v_dual_lshlrev_b32 v8, 1, v65
	v_dual_mov_b32 v94, v2 :: v_dual_add_nc_u32 v1, s35, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v214, v3
	v_add_nc_u32_e32 v2, s56, v3
	v_dual_mov_b32 v42, v97 :: v_dual_add_nc_u32 v3, s35, v1
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[12:15], off offset:256
	scratch_store_b128 off, v[16:19], off offset:272
	v_mov_b32_e32 v95, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v66, off offset:292
	scratch_store_b32 off, v6, off offset:248
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v6, s35, v3
	v_dual_mov_b32 v46, v97 :: v_dual_mov_b32 v215, v3
	v_dual_mov_b32 v205, v4 :: v_dual_mov_b32 v34, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v44, v97 :: v_dual_add_nc_u32 v9, s35, v6
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v43, v97
	v_mov_b32_e32 v45, v97
	v_dual_mov_b32 v90, v9 :: v_dual_add_nc_u32 v13, s35, v9
	scratch_store_b32 off, v7, off offset:252 ; 4-byte Folded Spill
	v_dual_mov_b32 v36, v97 :: v_dual_lshlrev_b32 v9, 2, v11
	v_dual_mov_b32 v91, v13 :: v_dual_add_nc_u32 v4, s56, v2
	v_dual_mov_b32 v40, v97 :: v_dual_add_nc_u32 v13, s35, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_or3_b32 v217, v8, v9, v10
	v_mov_b32_e32 v47, v97
	v_add_nc_u32_e32 v7, s56, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v58, v97 :: v_dual_add_nc_u32 v9, s35, v13
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v60, v97
	v_add_nc_u32_e32 v12, s56, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v207, s35, v9
	v_mov_b32_e32 v35, v97
	v_mov_b32_e32 v62, v97
	v_dual_mov_b32 v39, v97 :: v_dual_mov_b32 v220, v12
	v_add_nc_u32_e32 v12, s56, v12
	v_add_nc_u32_e32 v224, s35, v207
	v_mov_b32_e32 v64, v97
	v_mov_b32_e32 v59, v97
	v_mov_b32_e32 v54, v97
	v_mov_b32_e32 v222, v12
	v_add_nc_u32_e32 v12, s56, v12
	v_add_nc_u32_e32 v227, s35, v224
	v_mov_b32_e32 v49, 0
	v_mov_b32_e32 v53, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v219, v7 :: v_dual_add_nc_u32 v206, s56, v12
	v_add_nc_u32_e32 v232, s35, v227
	v_dual_mov_b32 v48, v97 :: v_dual_lshlrev_b32 v7, 3, v0
	v_mov_b32_e32 v92, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v208, s56, v206
	v_add_nc_u32_e32 v237, s35, v232
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v38, v97 :: v_dual_and_b32 v7, 48, v7
	v_mov_b32_e32 v89, v1
	v_add_nc_u32_e32 v225, s56, v208
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v242, s35, v237
	v_xor_b32_e32 v1, 16, v204
	v_lshl_or_b32 v218, v65, 6, v7
	v_dual_mov_b32 v213, v5 :: v_dual_add_nc_u32 v228, s56, v225
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v247, s35, v242
	v_xor_b32_e32 v2, 32, v204
	v_xor_b32_e32 v3, 48, v204
	v_xor_b32_e32 v5, 0x50, v204
	v_add_nc_u32_e32 v233, s56, v228
	v_add_nc_u32_e32 v249, s35, v247
	v_xor_b32_e32 v11, 0x70, v204
	v_mov_b32_e32 v223, v12
	v_mov_b32_e32 v216, v4
	v_add_nc_u32_e32 v238, s56, v233
	v_add_nc_u32_e32 v251, s35, v249
	v_xor_b32_e32 v4, 64, v204
	v_add3_u32 v221, 0, v10, v8
	v_xor_b32_e32 v7, 0x90, v217
	v_add_nc_u32_e32 v243, s56, v238
	v_add_nc_u32_e32 v253, s35, v251
	v_xor_b32_e32 v8, 0x120, v217
	v_dual_mov_b32 v93, v9 :: v_dual_mov_b32 v96, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v248, s56, v243
	v_add_nc_u32_e32 v255, s35, v253
	v_xor_b32_e32 v6, 0x60, v204
	v_xor_b32_e32 v9, 0x1b0, v217
	v_xor_b32_e32 v10, 16, v218
	v_add_nc_u32_e32 v250, s56, v248
	v_add_nc_u32_e32 v183, s35, v255
	v_xor_b32_e32 v12, 32, v218
	v_xor_b32_e32 v13, 48, v218
	v_dual_mov_b32 v63, v97 :: v_dual_add_nc_u32 v236, 0, v1
	v_add_nc_u32_e32 v252, s56, v250
	v_add_nc_u32_e32 v185, s35, v183
	.loc	1 662 35                        ; attention_backward.py:662:35
	s_mul_i32 s2, s2, s24
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s65, s28, s3
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_cselect_b32 s63, s0, s13
	v_add_nc_u32_e32 v254, s56, v252
	v_add_nc_u32_e32 v187, s35, v185
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s0, s27, v184
	s_add_i32 s65, s65, s2
	v_dual_mov_b32 v37, v97 :: v_dual_add_nc_u32 v226, 0, v7
	v_add_nc_u32_e32 v182, s56, v254
	v_add_nc_u32_e32 v189, s35, v187
	v_dual_mov_b32 v50, v97 :: v_dual_add_nc_u32 v229, 0, v8
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v230, 0, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v173, s56, v182
	v_add_nc_u32_e32 v191, s35, v189
	v_dual_mov_b32 v52, v97 :: v_dual_add_nc_u32 v231, 0, v10
	v_dual_mov_b32 v61, v97 :: v_dual_add_nc_u32 v234, 0, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v186, s56, v173
	v_dual_mov_b32 v56, v97 :: v_dual_add_nc_u32 v235, 0, v13
	v_add_nc_u32_e32 v239, 0, v2
	v_dual_mov_b32 v51, v97 :: v_dual_add_nc_u32 v240, 0, v3
	v_add_nc_u32_e32 v188, s56, v186
	v_add_nc_u32_e32 v241, 0, v4
	v_dual_mov_b32 v55, v97 :: v_dual_add_nc_u32 v244, 0, v5
	v_add_nc_u32_e32 v245, 0, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v190, s56, v188
	v_add_nc_u32_e32 v246, 0, v11
	v_add_nc_u32_e32 v2, s35, v191
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v4, v67, v65
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_mul_f32 s64, s61, 0x3fb8aa3b
	v_add_nc_u32_e32 v1, s56, v190
	s_cmp_lt_i32 s63, s60
	s_mov_b32 s62, 0
	s_cselect_b32 s66, -1, 0
	s_and_b32 s49, s49, 0xffff
	v_add_nc_u32_e32 v3, s56, v1
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_and_b32 s53, s47, 0xffff
	s_mov_b32 s52, s46
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v65, off offset:288
	scratch_store_b32 off, v67, off offset:296
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
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v68, off, off offset:228
	scratch_load_b32 v69, off, off offset:236
	scratch_load_b32 v73, off, off offset:244
	scratch_load_b32 v74, off, off offset:252
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s2, s43, s56
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, vcc_hi
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v66, s2, v0, 1
	v_add_lshl_u32 v75, s2, v213, 1
	v_add_lshl_u32 v76, s2, v214, 1
	v_add_lshl_u32 v77, s2, v95, 1
	s_mov_b32 s46, s50
	s_mov_b32 s47, s51
	v_add_lshl_u32 v78, s2, v206, 1
	v_add_lshl_u32 v79, s2, v208, 1
	v_add_lshl_u32 v80, s2, v225, 1
	v_add_lshl_u32 v103, s2, v228, 1
	v_add_lshl_u32 v104, s2, v233, 1
	v_add_lshl_u32 v105, s2, v238, 1
	v_add_lshl_u32 v106, s2, v243, 1
	v_add_lshl_u32 v107, s2, v248, 1
	v_add_lshl_u32 v108, s2, v250, 1
	v_add_lshl_u32 v109, s2, v252, 1
	v_add_lshl_u32 v110, s2, v254, 1
	v_add_lshl_u32 v111, s2, v182, 1
	v_add_lshl_u32 v112, s2, v173, 1
	v_add_lshl_u32 v113, s2, v186, 1
	v_add_lshl_u32 v114, s2, v188, 1
	v_add_lshl_u32 v115, s2, v190, 1
	v_add_nc_u32_e32 v118, s56, v3
	v_add_lshl_u32 v116, s2, v1, 1
	v_add_lshl_u32 v117, s2, v3, 1
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_add_lshl_u32 v119, s43, v4, 2
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s43, s51
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v118, s2, v118, 1
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s68, s68, 32
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_cndmask_b32_e64 v119, 0x80000000, v119, s3
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v68, s2, v68, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v69, s2, v69, 1
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s104
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v73, s2, v73, 1
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s103
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v74, s2, v74, 1
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s102
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s100
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s99
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s98
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s97
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	s_clause 0x7
	buffer_load_u16 v102, v66, s[44:47], 0 offen
	buffer_load_u16 v101, v68, s[44:47], 0 offen
	buffer_load_u16 v100, v69, s[44:47], 0 offen
	buffer_load_u16 v99, v73, s[44:47], 0 offen
	buffer_load_u16 v98, v74, s[44:47], 0 offen
	buffer_load_u16 v69, v75, s[44:47], 0 offen
	buffer_load_u16 v68, v76, s[44:47], 0 offen
	buffer_load_u16 v66, v77, s[44:47], 0 offen
	v_add_lshl_u32 v73, s2, v216, 1
	v_add_lshl_u32 v74, s2, v219, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s94
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v75, s2, v220, 1
	v_add_lshl_u32 v76, s2, v222, 1
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s89
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v77, s2, v223, 1
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s87
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s86
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s85
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s84
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s83
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s82
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s81
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_u16 v73, v73, s[44:47], 0 offen
	buffer_load_u16 v74, v74, s[44:47], 0 offen
	buffer_load_u16 v75, v75, s[44:47], 0 offen
	buffer_load_u16 v76, v76, s[44:47], 0 offen
	buffer_load_u16 v77, v77, s[44:47], 0 offen
	buffer_load_u16 v78, v78, s[44:47], 0 offen
	buffer_load_u16 v79, v79, s[44:47], 0 offen
	buffer_load_u16 v80, v80, s[44:47], 0 offen
	v_cndmask_b32_e32 v103, 0x80000000, v103, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s80
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v104, 0x80000000, v104, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s79
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v105, 0x80000000, v105, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s78
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v106, 0x80000000, v106, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s77
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v107, 0x80000000, v107, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s76
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v108, 0x80000000, v108, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s75
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v109, 0x80000000, v109, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s74
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v110, 0x80000000, v110, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s73
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_u16 v103, v103, s[44:47], 0 offen
	buffer_load_u16 v104, v104, s[44:47], 0 offen
	buffer_load_u16 v105, v105, s[44:47], 0 offen
	buffer_load_u16 v106, v106, s[44:47], 0 offen
	buffer_load_u16 v107, v107, s[44:47], 0 offen
	buffer_load_u16 v108, v108, s[44:47], 0 offen
	buffer_load_u16 v109, v109, s[44:47], 0 offen
	buffer_load_u16 v110, v110, s[44:47], 0 offen
	v_cndmask_b32_e32 v111, 0x80000000, v111, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s72
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v112, 0x80000000, v112, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s71
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v113, 0x80000000, v113, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s70
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v114, 0x80000000, v114, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s69
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v115, 0x80000000, v115, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s55
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s55, s51
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v116, 0x80000000, v116, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s54
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s54, s50
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v117, 0x80000000, v117, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s42
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s42, s50
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v118, 0x80000000, v118, vcc_lo
	s_clause 0x7
	buffer_load_u16 v111, v111, s[44:47], 0 offen
	buffer_load_u16 v112, v112, s[44:47], 0 offen
	buffer_load_u16 v113, v113, s[44:47], 0 offen
	buffer_load_u16 v114, v114, s[44:47], 0 offen
	buffer_load_u16 v115, v115, s[44:47], 0 offen
	buffer_load_u16 v116, v116, s[44:47], 0 offen
	buffer_load_u16 v117, v117, s[44:47], 0 offen
	buffer_load_u16 v118, v118, s[44:47], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v154, v119, s[52:55], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v155, v119, s[40:43], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_i32 s68, s60
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(33)
	ds_store_b16 v174, v102
	s_waitcnt vmcnt(32)
	ds_store_b16 v174, v101 offset:128
	s_waitcnt vmcnt(31)
	ds_store_b16 v174, v100 offset:256
	s_waitcnt vmcnt(30)
	ds_store_b16 v174, v99 offset:384
	s_waitcnt vmcnt(29)
	ds_store_b16 v174, v98 offset:512
	s_waitcnt vmcnt(28)
	ds_store_b16 v174, v69 offset:640
	s_waitcnt vmcnt(27)
	ds_store_b16 v174, v68 offset:768
	s_waitcnt vmcnt(26)
	ds_store_b16 v174, v66 offset:896
	s_waitcnt vmcnt(25)
	ds_store_b16 v174, v73 offset:1024
	s_waitcnt vmcnt(24)
	ds_store_b16 v174, v74 offset:1152
	s_waitcnt vmcnt(23)
	ds_store_b16 v174, v75 offset:1280
	s_waitcnt vmcnt(22)
	ds_store_b16 v174, v76 offset:1408
	s_waitcnt vmcnt(21)
	ds_store_b16 v174, v77 offset:1536
	s_waitcnt vmcnt(20)
	ds_store_b16 v174, v78 offset:1664
	s_waitcnt vmcnt(19)
	ds_store_b16 v174, v79 offset:1792
	s_waitcnt vmcnt(18)
	ds_store_b16 v174, v80 offset:1920
	s_waitcnt vmcnt(17)
	ds_store_b16 v174, v103 offset:2048
	s_waitcnt vmcnt(16)
	ds_store_b16 v174, v104 offset:2176
	s_waitcnt vmcnt(15)
	ds_store_b16 v174, v105 offset:2304
	s_waitcnt vmcnt(14)
	ds_store_b16 v174, v106 offset:2432
	s_waitcnt vmcnt(13)
	ds_store_b16 v174, v107 offset:2560
	s_waitcnt vmcnt(12)
	ds_store_b16 v174, v108 offset:2688
	s_waitcnt vmcnt(11)
	ds_store_b16 v174, v109 offset:2816
	s_waitcnt vmcnt(10)
	ds_store_b16 v174, v110 offset:2944
	s_waitcnt vmcnt(9)
	ds_store_b16 v174, v111 offset:3072
	s_waitcnt vmcnt(8)
	ds_store_b16 v174, v112 offset:3200
	s_waitcnt vmcnt(7)
	ds_store_b16 v174, v113 offset:3328
	s_waitcnt vmcnt(6)
	ds_store_b16 v174, v114 offset:3456
	s_waitcnt vmcnt(5)
	ds_store_b16 v174, v115 offset:3584
	s_waitcnt vmcnt(4)
	ds_store_b16 v174, v116 offset:3712
	s_waitcnt vmcnt(3)
	ds_store_b16 v174, v117 offset:3840
	s_waitcnt vmcnt(2)
	ds_store_b16 v174, v118 offset:3968
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16_hi v132, v221 offset:640
	ds_load_u16_d16_hi v133, v221 offset:896
	ds_load_u16_d16_hi v109, v221 offset:960
	ds_load_u16_d16_hi v108, v221 offset:704
	ds_load_u16_d16_hi v136, v221 offset:1664
	ds_load_u16_d16_hi v137, v221 offset:1920
	ds_load_u16_d16_hi v113, v221 offset:1984
	ds_load_u16_d16_hi v112, v221 offset:1728
	ds_load_u16_d16_hi v114, v221 offset:2176
	ds_load_u16_d16_hi v115, v221 offset:2432
	ds_load_u16_d16_hi v123, v221 offset:2496
	ds_load_u16_d16_hi v122, v221 offset:2240
	ds_load_u16_d16_hi v116, v221 offset:2688
	ds_load_u16_d16_hi v117, v221 offset:2944
	ds_load_u16_d16_hi v125, v221 offset:3008
	ds_load_u16_d16_hi v124, v221 offset:2752
	ds_load_u16_d16_hi v118, v221 offset:3200
	ds_load_u16_d16_hi v119, v221 offset:3456
	ds_load_u16_d16_hi v127, v221 offset:3520
	ds_load_u16_d16_hi v126, v221 offset:3264
	ds_load_u16_d16_hi v120, v221 offset:3712
	ds_load_u16_d16_hi v121, v221 offset:3968
	ds_load_u16_d16_hi v129, v221 offset:4032
	ds_load_u16_d16_hi v128, v221 offset:3776
	ds_load_u16_d16_hi v134, v221 offset:1152
	ds_load_u16_d16_hi v135, v221 offset:1408
	ds_load_u16_d16_hi v111, v221 offset:1472
	ds_load_u16_d16_hi v110, v221 offset:1216
	ds_load_u16_d16_hi v130, v221 offset:128
	ds_load_u16_d16_hi v131, v221 offset:384
	ds_load_u16_d16_hi v107, v221 offset:448
	ds_load_u16_d16_hi v106, v221 offset:192
	ds_load_u16_d16_hi v195, v221
	ds_load_u16_d16_hi v194, v221 offset:256
	ds_load_u16_d16_hi v27, v221 offset:320
	ds_load_u16_d16_hi v28, v221 offset:64
	ds_load_u16_d16_hi v193, v221 offset:512
	ds_load_u16_d16_hi v192, v221 offset:768
	ds_load_u16_d16_hi v25, v221 offset:832
	ds_load_u16_d16_hi v26, v221 offset:576
	ds_load_u16_d16_hi v31, v221 offset:1280
	ds_load_u16_d16_hi v23, v221 offset:1344
	ds_load_u16_d16_hi v32, v221 offset:1024
	ds_load_u16_d16_hi v24, v221 offset:1088
	ds_load_u16_d16_hi v21, v221 offset:1856
	ds_load_u16_d16_hi v29, v221 offset:1792
	ds_load_u16_d16_hi v30, v221 offset:1536
	ds_load_u16_d16_hi v22, v221 offset:1600
	ds_load_u16_d16_hi v11, v221 offset:2368
	ds_load_u16_d16_hi v19, v221 offset:2304
	ds_load_u16_d16_hi v20, v221 offset:2048
	ds_load_u16_d16_hi v12, v221 offset:2112
	ds_load_u16_d16_hi v9, v221 offset:2880
	ds_load_u16_d16_hi v17, v221 offset:2816
	ds_load_u16_d16_hi v18, v221 offset:2560
	ds_load_u16_d16_hi v10, v221 offset:2624
	ds_load_u16_d16_hi v7, v221 offset:3392
	ds_load_u16_d16_hi v15, v221 offset:3328
	ds_load_u16_d16_hi v16, v221 offset:3072
	ds_load_u16_d16_hi v8, v221 offset:3136
	ds_load_u16_d16_hi v5, v221 offset:3904
	ds_load_u16_d16_hi v13, v221 offset:3840
	ds_load_u16_d16_hi v14, v221 offset:3584
	ds_load_u16_d16_hi v6, v221 offset:3648
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v174, v102
	ds_store_b16 v174, v73 offset:1024
	ds_store_b16 v174, v103 offset:2048
	ds_store_b16 v174, v111 offset:3072
	ds_store_b16 v175, v101
	ds_store_b16 v175, v74 offset:1024
	ds_store_b16 v175, v104 offset:2048
	ds_store_b16 v175, v112 offset:3072
	ds_store_b16 v176, v100
	ds_store_b16 v176, v75 offset:1024
	ds_store_b16 v176, v105 offset:2048
	ds_store_b16 v176, v113 offset:3072
	ds_store_b16 v177, v99
	ds_store_b16 v177, v76 offset:1024
	ds_store_b16 v177, v106 offset:2048
	ds_store_b16 v177, v114 offset:3072
	ds_store_b16 v178, v98
	ds_store_b16 v178, v77 offset:1024
	ds_store_b16 v178, v107 offset:2048
	ds_store_b16 v178, v115 offset:3072
	ds_store_b16 v179, v69
	ds_store_b16 v179, v78 offset:1024
	ds_store_b16 v179, v108 offset:2048
	ds_store_b16 v179, v116 offset:3072
	ds_store_b16 v180, v68
	ds_store_b16 v180, v79 offset:1024
	ds_store_b16 v180, v109 offset:2048
	ds_store_b16 v180, v117 offset:3072
	ds_store_b16 v181, v66
	ds_store_b16 v181, v80 offset:1024
	ds_store_b16 v181, v110 offset:2048
	ds_store_b16 v181, v118 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[73:76], off, off offset:256
	scratch_load_b128 v[77:80], off, off offset:272
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[146:149], v65
	ds_load_b128 v[150:153], v236
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(3)
	v_fma_f32 v65, s64, v138, -v154
	v_fma_f32 v66, s64, v139, -v154
	v_fma_f32 v69, s64, v140, -v154
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v98, v97
	v_mov_b32_e32 v99, v97
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v69, v69
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v100, v97
	v_mov_b32_e32 v101, v97
	v_mov_b32_e32 v102, v97
	v_mov_b32_e32 v103, v97
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v68, 0, v65, s101
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v104, v97
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v66, 0, v66, s96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v196, 0, v69, s95
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v197, 0, v218
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v105, v104
	v_mov_b32_e32 v104, v103
	v_mov_b32_e32 v103, v102
	v_mov_b32_e32 v102, v101
	v_mov_b32_e32 v101, v100
	v_mov_b32_e32 v100, v99
	v_mov_b32_e32 v99, v98
	v_mov_b32_e32 v98, v97
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[98:105], v[73:80], v[146:153], v[98:105]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[73:76], off, off offset:196
	scratch_load_b128 v[77:80], off, off offset:212
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[146:149], v239
	ds_load_b128 v[150:153], v240
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[98:105], v[73:80], v[146:153], v[98:105]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[73:76], off, off offset:160
	scratch_load_b128 v[77:80], off, off offset:176
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[146:149], v241
	ds_load_b128 v[150:153], v244
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[98:105], v[73:80], v[146:153], v[98:105]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[73:76], off, off offset:128
	scratch_load_b128 v[77:80], off, off offset:144
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[146:149], v245
	ds_load_b128 v[150:153], v246
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[98:105], v[73:80], v[146:153], v[98:105]
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v75, s64, v143, -v154
	v_fma_f32 v73, s64, v141, -v154
	v_fma_f32 v76, s64, v144, -v154
	v_fma_f32 v74, s64, v142, -v154
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v78, v98, v155
	v_sub_f32_e32 v79, v99, v155
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v75, v75
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v80, v100, v155
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_sub_f32 v100, v103, v155 :: v_dual_mul_f32 v65, v68, v78
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v76, v76
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_dual_sub_f32 v98, v101, v155 :: v_dual_mul_f32 v69, v196, v80
	v_sub_f32_e32 v101, v104, v155
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v65, s61, v65
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v77, s64, v145, -v154
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v199, 0, v75, s91
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v69, s61, v69
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v99, v102, v155
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v78, v65, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v75, v199, v100
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cmp_o_f32_e64 s3, v69, v69
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v200, 0, v76, s90
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v65, v65, v78, 0x7fff
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v78, v66, v79
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v77, v77
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v102, v105, v155
	.loc	1 720 30 is_stmt 0              ; attention_backward.py:720:30
	v_mul_f32_e32 v76, v200, v101
	.loc	1 721 37 is_stmt 1              ; attention_backward.py:721:37
	v_cndmask_b16 v67.h, 0x7fff, v65.h, vcc_lo
	.loc	1 721 38 is_stmt 0              ; attention_backward.py:721:38
	v_dual_mul_f32 v78, s61, v78 :: v_dual_add_nc_u32 v65, 0, v217
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v75, s61, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v79, v78, 16, 1
	v_cmp_o_f32_e64 s2, v78, v78
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v201, 0, v77, s88
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v76, s61, v76
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_cmp_o_f32_e64 s14, v75, v75
	v_add3_u32 v78, v78, v79, 0x7fff
	v_bfe_u32 v79, v69, 16, 1
	.loc	1 720 30 is_stmt 1              ; attention_backward.py:720:30
	v_mul_f32_e32 v77, v201, v102
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cmp_o_f32_e64 s15, v76, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v79, v69, v79, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v69, v73
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v77, s61, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_cmp_o_f32_e64 s16, v77, v77
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v198, 0, v69, s93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v69, v198, v98
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v69, s61, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v73, v69, 16, 1
	v_cmp_o_f32_e64 s11, v69, v69
	v_add3_u32 v73, v69, v73, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v69, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v69, 0, v69, s92
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v74, v69, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v74, s61, v74
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v80, v74, 16, 1
	v_cmp_o_f32_e64 s13, v74, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v74, v74, v80, 0x7fff
	v_bfe_u32 v80, v75, 16, 1
	v_cndmask_b16 v70.h, 0x7fff, v74.h, s13
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v75, v75, v80, 0x7fff
	v_bfe_u32 v80, v76, 16, 1
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	ds_store_b16_d16_hi v65, v67
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v67.h, 0x7fff, v78.h, s2
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v65, v70 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v70.h, 0x7fff, v75.h, s14
	v_add3_u32 v76, v76, v80, 0x7fff
	v_bfe_u32 v80, v77, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v226, v67
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v67.h, 0x7fff, v79.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v226, v70 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v70.h, 0x7fff, v76.h, s15
	v_add3_u32 v77, v77, v80, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s2, v69, v69
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v229, v67
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v67.h, 0x7fff, v73.h, s11
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v229, v70 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v70.h, 0x7fff, v77.h, s16
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v230, v67
	ds_store_b16_d16_hi v230, v70 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[149:152], v197
	ds_load_b128 v[153:156], v231
	ds_load_b128 v[98:101], v234
	ds_load_b128 v[102:105], v235
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v174, v5
	ds_store_b16 v174, v6 offset:128
	ds_store_b16 v174, v7 offset:256
	ds_store_b16 v174, v8 offset:384
	ds_store_b16 v174, v9 offset:512
	ds_store_b16 v174, v10 offset:640
	ds_store_b16 v174, v11 offset:768
	ds_store_b16 v174, v72 offset:896
	ds_store_b16 v174, v12 offset:1024
	ds_store_b16 v174, v13 offset:1152
	ds_store_b16 v174, v14 offset:1280
	ds_store_b16 v174, v15 offset:1408
	ds_store_b16 v174, v16 offset:1536
	ds_store_b16 v174, v17 offset:1664
	ds_store_b16 v174, v18 offset:1792
	ds_store_b16 v174, v71 offset:1920
	ds_store_b16 v174, v19 offset:2048
	ds_store_b16 v174, v20 offset:2176
	ds_store_b16 v174, v21 offset:2304
	ds_store_b16 v174, v22 offset:2432
	ds_store_b16 v174, v23 offset:2560
	ds_store_b16 v174, v24 offset:2688
	ds_store_b16 v174, v25 offset:2816
	ds_store_b16 v174, v70 offset:2944
	ds_store_b16 v174, v26 offset:3072
	ds_store_b16 v174, v27 offset:3200
	ds_store_b16 v174, v28 offset:3328
	ds_store_b16 v174, v29 offset:3456
	ds_store_b16 v174, v30 offset:3584
	ds_store_b16 v174, v31 offset:3712
	ds_store_b16 v174, v32 offset:3840
	ds_store_b16 v174, v67 offset:3968
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v159, v221 offset:512
	ds_load_u16_d16 v160, v221 offset:768
	ds_load_u16_d16 v161, v221 offset:1024
	ds_load_u16_d16 v164, v221 offset:1792
	ds_load_u16_d16 v162, v221 offset:1280
	ds_load_u16_d16 v169, v221 offset:1088
	ds_load_u16_d16 v168, v221 offset:832
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16_hi v169, v221 offset:1216
	ds_load_u16_d16 v158, v221 offset:256
	ds_load_u16_d16 v157, v221
	ds_load_u16_d16 v163, v221 offset:1536
	ds_load_u16_d16_hi v159, v221 offset:640
	ds_load_u16_d16_hi v160, v221 offset:896
	ds_load_u16_d16_hi v161, v221 offset:1152
	ds_load_u16_d16 v170, v221 offset:1344
	ds_load_u16_d16 v141, v221 offset:2816
	ds_load_u16_d16 v142, v221 offset:3072
	ds_load_u16_d16 v148, v221 offset:2624
	ds_load_u16_d16 v147, v221 offset:2368
	ds_load_u16_d16 v138, v221 offset:2048
	ds_load_u16_d16 v139, v221 offset:2304
	ds_load_u16_d16 v140, v221 offset:2560
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v67, v68, 16, 1
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v148, v221 offset:2752
	ds_load_u16_d16_hi v163, v221 offset:1664
	ds_load_u16_d16_hi v164, v221 offset:1920
	ds_load_u16_d16_hi v162, v221 offset:1408
	ds_load_u16_d16 v165, v221 offset:64
	ds_load_u16_d16_hi v158, v221 offset:384
	ds_load_u16_d16 v167, v221 offset:576
	ds_load_u16_d16 v166, v221 offset:320
	ds_load_u16_d16_hi v157, v221 offset:128
	ds_load_u16_d16 v171, v221 offset:1600
	ds_load_u16_d16 v146, v221 offset:2112
	ds_load_u16_d16 v172, v221 offset:1856
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v67, v68, v67, 0x7fff
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_mov_b16_e32 v67.l, 0
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v165, v221 offset:192
	ds_load_u16_d16_hi v168, v221 offset:960
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v167, v221 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v166, v221 offset:448
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v67.h, 0x7fff, v67.h, vcc_lo
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_u16_d16_hi v170, v221 offset:1472
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v171, v221 offset:1728
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v172, v221 offset:1984
	ds_load_u16_d16_hi v141, v221 offset:2944
	ds_load_u16_d16_hi v140, v221 offset:2688
	ds_load_u16_d16_hi v139, v221 offset:2432
	ds_load_u16_d16_hi v138, v221 offset:2176
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v135.l, v67.l
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v68, v68, v67
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[57:64], v[157:164], v[149:156], v[57:64]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v66, v66
	v_bfe_u32 v73, v200, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v202, v135, v135
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v70, v68, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v72, v198, 16, 1
	v_bfe_u32 v74, v201, 16, 1
	v_cmp_o_f32_e64 s11, v196, v196
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v70, v68, v70, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v68, v69, 16, 1
	v_cmp_o_f32_e64 s14, v200, v200
	v_add3_u32 v73, v200, v73, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[165:172], v[149:156], v[49:56]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_u16_d16 v153, v221 offset:3904
	ds_load_u16_d16 v149, v221 offset:2880
	ds_load_u16_d16 v143, v221 offset:3328
	ds_load_u16_d16 v150, v221 offset:3136
	ds_load_u16_d16 v144, v221 offset:3584
	ds_load_u16_d16 v145, v221 offset:3840
	ds_load_u16_d16 v152, v221 offset:3648
	ds_load_u16_d16 v151, v221 offset:3392
	ds_load_u16_d16_hi v147, v221 offset:2496
	ds_load_u16_d16_hi v146, v221 offset:2240
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v68, v69, v68, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v68.l, v67.l
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v153, v221 offset:4032
	ds_load_u16_d16_hi v142, v221 offset:3200
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v149, v221 offset:3008
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v143, v221 offset:3456
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v150, v221 offset:3264
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s2
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v144, v221 offset:3712
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v145, v221 offset:3968
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v152, v221 offset:3776
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v151, v221 offset:3520
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v69, v69, v68
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_barrier
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s13, v198, v198
	v_add3_u32 v72, v198, v72, 0x7fff
	v_cmp_o_f32_e64 s15, v201, v201
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v71, v69, 16, 1
	v_cmp_o_f32_e64 s2, v69, v69
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v74, v201, v74, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v5.l, 0x7fff, v70.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v73.h, 0x7fff, v73.h, s14
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v71, v69, v71, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v69, v66, 16, 1
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s13
	v_cndmask_b16 v74.h, 0x7fff, v74.h, s15
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v72.l, v67.l
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cndmask_b16 v6.l, 0x7fff, v71.h, s2
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_add3_u32 v69, v66, v69, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v69.l, v67.l
	v_mov_b16_e32 v73.l, v67.l
	v_mov_b16_e32 v74.l, v67.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v136.l, v67.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v69.h, 0x7fff, v69.h, s3
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v65, v68 offset:512
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v68, v199, 16, 1
	v_cmp_o_f32_e64 s3, v199, v199
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v70, v201, v74 :: v_dual_sub_f32 v201, v136, v136
	v_sub_f32_e32 v66, v66, v69
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v68, v199, v68, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v226, v69
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v68.l, v67.l
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s13, v70, v70
	v_bfe_u32 v69, v66, 16, 1
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s3
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v66, v66
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v130.l, v67.l
	v_mov_b16_e64 v131.l, v67.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v69, v66, v69, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v66, v196, 16, 1
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v132.l, v67.l
	v_mov_b16_e64 v133.l, v67.l
	v_mov_b16_e64 v134.l, v67.l
	v_mov_b16_e64 v137.l, v67.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v66, v196, v66, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v66.l, v67.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v114.l, v67.l
	v_mov_b16_e32 v115.l, v67.l
	v_mov_b16_e32 v116.l, v67.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s11
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v226, v68 offset:512
	ds_store_b16_d16_hi v229, v66
	ds_store_b16_d16_hi v229, v73 offset:512
	ds_store_b16_d16_hi v230, v72
	ds_store_b16_d16_hi v230, v74 offset:512
	ds_store_b16_d16_hi v65, v67
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[162:165], v197
	ds_load_b128 v[166:169], v231
	ds_load_b128 v[154:157], v234
	ds_load_b128 v[158:161], v235
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v65, v5
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v5.l, 0x7fff, v69.h, s3
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v65, v6 offset:512
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v65, v196, v66 :: v_dual_sub_f32 v66, v198, v72
	v_dual_sub_f32 v68, v199, v68 :: v_dual_sub_f32 v69, v200, v73
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v117.l, v67.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v71, v65, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	v_cmp_o_f32_e64 s2, v66, v66
	v_cmp_o_f32_e64 s3, v68, v68
	v_cmp_o_f32_e64 s11, v69, v69
	v_add3_u32 v71, v65, v71, 0x7fff
	v_bfe_u32 v65, v66, 16, 1
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v118.l, v67.l
	v_mov_b16_e32 v119.l, v67.l
	v_mov_b16_e32 v120.l, v67.l
	v_mov_b16_e32 v121.l, v67.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v65, v66, v65, 0x7fff
	v_bfe_u32 v66, v68, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v200, v137, v137 :: v_dual_sub_f32 v203, v134, v134
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v137.l, v29.h
	v_mov_b16_e64 v136.l, v30.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v66, v68, v66, 0x7fff
	v_bfe_u32 v68, v69, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v135.l, v31.h
	v_mov_b16_e64 v134.l, v32.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v81, v133, v133 :: v_dual_sub_f32 v82, v132, v132
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v68, v69, v68, 0x7fff
	v_bfe_u32 v69, v70, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v66.h, s3
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v226, v5
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v5.l, 0x7fff, v71.h, vcc_lo
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v133.l, v192.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v69, v70, v69, 0x7fff
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v226, v6 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v6.l, 0x7fff, v68.h, s11
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v229, v5
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v5.l, 0x7fff, v65.h, s2
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v132.l, v193.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v83, v131, v131 :: v_dual_sub_f32 v84, v130, v130
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v229, v6 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v6.l, 0x7fff, v69.h, s13
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v230, v5
	ds_store_b16 v230, v6 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[73:76], v197
	ds_load_b128 v[77:80], v231
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v131.l, v194.h
	v_mov_b16_e64 v130.l, v195.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v72, v121, v121 :: v_dual_sub_f32 v171, v119, v119
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v121.l, v13.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v170, v120, v120 :: v_dual_sub_f32 v199, v114, v114
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v120.l, v14.h
	v_mov_b16_e32 v119.l, v15.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v172, v118, v118 :: v_dual_sub_f32 v197, v116, v116
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v118.l, v16.h
	v_mov_b16_e32 v116.l, v18.h
	v_mov_b16_e32 v114.l, v20.h
	v_wmma_f32_16x16x16_bf16 v[41:48], v[130:137], v[162:169], v[41:48]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v111.l, v67.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v196, v117, v117
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v117.l, v17.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v113.l, v67.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v198, v115, v115
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v115.l, v19.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v106.l, v67.l
	v_mov_b16_e32 v107.l, v67.l
	v_mov_b16_e32 v108.l, v67.l
	v_mov_b16_e32 v109.l, v67.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[114:121], v[154:161], v[41:48]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v110.l, v67.l
	v_mov_b16_e32 v112.l, v67.l
	v_mov_b16_e32 v122.l, v67.l
	v_mov_b16_e32 v123.l, v67.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[130:137], v[73:80], v[41:48]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v124.l, v67.l
	v_mov_b16_e32 v125.l, v67.l
	v_mov_b16_e32 v126.l, v67.l
	v_mov_b16_e32 v127.l, v67.l
	v_mov_b16_e64 v128.l, v67.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v85, v113, v113
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v113.l, v21.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v86, v112, v112 :: v_dual_sub_f32 v135, v106, v106
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v112.l, v22.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v87, v111, v111
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v111.l, v23.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v88, v110, v110 :: v_dual_sub_f32 v133, v108, v108
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v110.l, v24.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v132, v109, v109 :: v_dual_sub_f32 v69, v126, v126
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v109.l, v25.h
	v_mov_b16_e32 v108.l, v26.h
	v_mov_b16_e32 v106.l, v28.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v129.l, v67.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v134, v107, v107
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v107.l, v27.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v68, v127, v127 :: v_dual_sub_f32 v71, v124, v124
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v127.l, v7.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v66, v128, v128 :: v_dual_sub_f32 v131, v122, v122
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v128.l, v6.h
	v_mov_b16_e32 v126.l, v8.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v70, v125, v125
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v125.l, v9.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v129, v129
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v129.l, v5.h
	v_mov_b16_e32 v124.l, v10.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v130, v123, v123
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v123.l, v11.h
	v_wmma_f32_16x16x16_bf16 v[33:40], v[106:113], v[162:169], v[33:40]
	v_mov_b16_e32 v122.l, v12.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v194.l, v67.l
	v_mov_b16_e64 v195.l, v67.l
	v_mov_b16_e32 v32.l, v67.l
	v_mov_b16_e32 v31.l, v67.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[122:129], v[154:161], v[33:40]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v82, v82
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v193.l, v67.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v32, v32, v32 :: v_dual_sub_f32 v31, v31, v31
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[106:113], v[73:80], v[33:40]
	ds_load_b128 v[73:76], v234
	ds_load_b128 v[77:80], v235
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v192.l, v67.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v84, v84
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v27.l, v67.l
	v_mov_b16_e32 v30.l, v67.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v83, v83
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v25.l, v67.l
	v_mov_b16_e32 v29.l, v67.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v27, v27, v27 :: v_dual_sub_f32 v30, v30, v30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v28.l, v67.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v25, v25, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_sub_f32_e32 v29, v29, v29
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v23.l, v67.l
	v_mov_b16_e32 v21.l, v67.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v28, v28, v28
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v26.l, v67.l
	v_mov_b16_e32 v24.l, v67.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v23, v23
	v_sub_f32_e32 v21, v21, v21
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[114:121], v[73:80], v[41:48]
	v_wmma_f32_16x16x16_bf16 v[33:40], v[122:129], v[73:80], v[33:40]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v76, v194, v194
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v77.h, v67.l
	v_mov_b16_e32 v75.h, v67.l
	v_mov_b16_e32 v73.l, v84.h
	v_mov_b16_e32 v73.h, v67.l
	v_mov_b16_e32 v77.l, v76.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v74, v195, v195
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v76, v76
	v_mov_b16_e32 v79.l, v32.h
	v_and_b32_e32 v73, 1, v73
	v_and_b32_e32 v77, 1, v77
	v_mov_b16_e32 v75.l, v74.h
	v_cmp_o_f32_e64 s2, v74, v74
	v_mov_b16_e32 v79.h, v67.l
	v_add3_u32 v73, v84, v73, 0x7fff
	v_add3_u32 v77, v76, v77, 0x7fff
	v_mov_b16_e32 v76.l, v82.h
	v_mov_b16_e32 v76.h, v67.l
	v_and_b32_e32 v75, 1, v75
	v_and_b32_e32 v79, 1, v79
	v_cndmask_b16 v73.h, 0x7fff, v73.h, vcc_lo
	v_mov_b16_e32 v78.h, v67.l
	v_and_b32_e32 v76, 1, v76
	v_add3_u32 v75, v74, v75, 0x7fff
	v_mov_b16_e32 v74.l, v83.h
	v_mov_b16_e32 v74.h, v67.l
	v_add3_u32 v79, v32, v79, 0x7fff
	v_add3_u32 v76, v82, v76, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v75.h, s2
	v_mov_b16_e32 v79.l, v30.h
	v_and_b32_e32 v74, 1, v74
	v_cmp_o_f32_e64 s2, v81, v81
	v_cndmask_b16 v75.h, 0x7fff, v76.h, s13
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v76, v193, v193
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v202, v202
	v_add3_u32 v74, v83, v74, 0x7fff
	v_cndmask_b16 v74.l, 0x7fff, v77.h, s11
	v_mov_b16_e32 v77.h, v67.l
	v_mov_b16_e32 v77.l, v76.h
	v_cmp_o_f32_e32 vcc_lo, v76, v76
	v_cmp_o_f32_e64 s11, v32, v32
	v_mov_b16_e64 v32.l, v202.h
	v_mov_b16_e32 v32.h, v67.l
	v_and_b32_e32 v77, 1, v77
	v_cndmask_b16 v74.h, 0x7fff, v74.h, s3
	v_cmp_o_f32_e64 s3, v203, v203
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v26, v26, v26
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v32, 1, v32
	v_add3_u32 v77, v76, v77, 0x7fff
	v_mov_b16_e32 v76.l, v81.h
	v_mov_b16_e32 v76.h, v67.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v19.l, v67.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v32, v202, v32, 0x7fff
	v_cndmask_b16 v75.l, 0x7fff, v77.h, vcc_lo
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v77, v192, v192
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v76, 1, v76
	v_mov_b16_e32 v32.l, v31.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v24, v24, v24 :: v_dual_sub_f32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v78.l, v77.h
	v_cmp_o_f32_e32 vcc_lo, v77, v77
	v_add3_u32 v76, v81, v76, 0x7fff
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v17.l, v67.l
	v_mov_b16_e32 v20.l, v67.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v78, 1, v78
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v15.l, v67.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v76.h, 0x7fff, v76.h, s2
	v_cmp_o_f32_e64 s2, v201, v201
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v17, v17, v17
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v78, v77, v78, 0x7fff
	v_mov_b16_e64 v77.l, v203.h
	v_mov_b16_e32 v77.h, v67.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v20, v20, v20
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v13.l, v67.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v76.l, 0x7fff, v78.h, vcc_lo
	v_cndmask_b16 v78.h, 0x7fff, v32.h, s13
	v_and_b32_e32 v77, 1, v77
	v_mov_b16_e32 v32.h, v67.l
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	v_cmp_o_f32_e64 s13, v29, v29
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v15, v15, v15
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v77, v203, v77, 0x7fff
	v_cndmask_b16 v77.l, 0x7fff, v79.h, s11
	v_mov_b16_e32 v79.h, v67.l
	v_and_b32_e32 v32, 1, v32
	v_cmp_o_f32_e64 s11, v200, v200
	v_cndmask_b16 v77.h, 0x7fff, v77.h, s3
	v_cmp_o_f32_e64 s3, v30, v30
	v_and_b32_e32 v79, 1, v79
	v_add3_u32 v32, v31, v32, 0x7fff
	v_mov_b16_e64 v31.l, v201.h
	v_mov_b16_e32 v31.h, v67.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v13, v13, v13
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v80, v30, v79, 0x7fff
	v_mov_b16_e64 v30.l, v200.h
	v_mov_b16_e32 v30.h, v67.l
	v_mov_b16_e32 v79.l, v29.h
	v_mov_b16_e32 v79.h, v67.l
	v_and_b32_e32 v31, 1, v31
	v_cndmask_b16 v78.l, 0x7fff, v32.h, vcc_lo
	v_and_b32_e32 v30, 1, v30
	v_cmp_o_f32_e32 vcc_lo, v135, v135
	v_and_b32_e32 v79, 1, v79
	v_add3_u32 v31, v201, v31, 0x7fff
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v22.l, v67.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v30, v200, v30, 0x7fff
	v_mov_b16_e32 v30.l, v28.h
	v_add3_u32 v81, v29, v79, 0x7fff
	v_cndmask_b16 v79.l, 0x7fff, v80.h, s3
	v_mov_b16_e64 v29.l, v135.h
	v_cndmask_b16 v80.h, 0x7fff, v30.h, s11
	v_mov_b16_e32 v29.h, v67.l
	v_mov_b16_e32 v30.h, v67.l
	v_cndmask_b16 v79.h, 0x7fff, v31.h, s2
	v_cndmask_b16 v80.l, 0x7fff, v81.h, s13
	v_cmp_o_f32_e64 s2, v28, v28
	v_and_b32_e32 v29, 1, v29
	v_and_b32_e32 v30, 1, v30
	v_cmp_o_f32_e64 s3, v134, v134
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[73:80], v[162:169], v[41:48]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v132, v132
	v_add3_u32 v29, v135, v29, 0x7fff
	v_add3_u32 v30, v28, v30, 0x7fff
	v_mov_b16_e64 v28.l, v134.h
	v_mov_b16_e32 v28.h, v67.l
	v_mov_b16_e32 v29.l, v26.h
	v_cndmask_b16 v73.h, 0x7fff, v29.h, vcc_lo
	v_mov_b16_e32 v29.h, v67.l
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_and_b32_e32 v28, 1, v28
	v_cndmask_b16 v73.l, 0x7fff, v30.h, s2
	v_cmp_o_f32_e64 s2, v133, v133
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v22, v22, v22 :: v_dual_and_b32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v28, v134, v28, 0x7fff
	v_mov_b16_e32 v28.l, v27.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v9.l, v67.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v29, v26, v29, 0x7fff
	v_mov_b16_e32 v30.l, v25.h
	v_cndmask_b16 v74.h, 0x7fff, v28.h, s3
	v_mov_b16_e32 v28.h, v67.l
	v_cmp_o_f32_e64 s3, v26, v26
	v_mov_b16_e64 v26.l, v132.h
	v_mov_b16_e32 v26.h, v67.l
	v_mov_b16_e32 v30.h, v67.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v9, v9, v9 :: v_dual_and_b32 v28, 1, v28
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v11.l, v67.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v26, 1, v26
	v_and_b32_e32 v30, 1, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v28, v27, v28, 0x7fff
	v_mov_b16_e64 v27.l, v133.h
	v_mov_b16_e32 v27.h, v67.l
	v_add3_u32 v26, v132, v26, 0x7fff
	v_mov_b16_e32 v26.l, v24.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v7.l, v67.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v25, v25
	v_and_b32_e32 v27, 1, v27
	v_cndmask_b16 v76.h, 0x7fff, v26.h, s11
	v_mov_b16_e32 v26.h, v67.l
	v_cndmask_b16 v75.l, 0x7fff, v29.h, s3
	v_cmp_o_f32_e64 s3, v87, v87
	v_add3_u32 v27, v133, v27, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v11, v11, v11 :: v_dual_and_b32 v26, 1, v26
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v30, v25, v30, 0x7fff
	v_mov_b16_e32 v25.l, v88.h
	v_cndmask_b16 v75.h, 0x7fff, v27.h, s2
	v_cmp_o_f32_e64 s2, v24, v24
	v_add3_u32 v26, v24, v26, 0x7fff
	v_mov_b16_e32 v24.l, v87.h
	v_mov_b16_e32 v24.h, v67.l
	v_mov_b16_e32 v25.h, v67.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v7, v7, v7
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v18.l, v67.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v74.l, 0x7fff, v28.h, vcc_lo
	v_and_b32_e32 v24, 1, v24
	v_and_b32_e32 v25, 1, v25
	v_cmp_o_f32_e32 vcc_lo, v88, v88
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v18, v18
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v5.l, v67.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v24, v87, v24, 0x7fff
	v_mov_b16_e32 v24.l, v22.h
	v_add3_u32 v25, v88, v25, 0x7fff
	v_mov_b16_e32 v27.l, v23.h
	v_mov_b16_e32 v27.h, v67.l
	v_cndmask_b16 v78.h, 0x7fff, v24.h, s3
	v_mov_b16_e32 v24.h, v67.l
	v_cndmask_b16 v77.h, 0x7fff, v25.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v5, v5, v5
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v16.l, v67.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v24, 1, v24
	v_and_b32_e32 v27, 1, v27
	v_cmp_o_f32_e64 s11, v23, v23
	v_cndmask_b16 v77.l, 0x7fff, v26.h, s2
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v16, v16, v16
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v24, v22, v24, 0x7fff
	v_mov_b16_e32 v22.l, v85.h
	v_mov_b16_e32 v22.h, v67.l
	v_add3_u32 v27, v23, v27, 0x7fff
	v_mov_b16_e32 v23.l, v86.h
	v_mov_b16_e32 v23.h, v67.l
	v_cmp_o_f32_e64 s2, v85, v85
	v_and_b32_e32 v22, 1, v22
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v14.l, v67.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v76.l, 0x7fff, v30.h, s13
	v_and_b32_e32 v23, 1, v23
	v_cmp_o_f32_e64 s13, v86, v86
	v_add3_u32 v22, v85, v22, 0x7fff
	v_mov_b16_e32 v22.l, v20.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v14, v14, v14
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v23, v86, v23, 0x7fff
	v_mov_b16_e32 v23.l, v19.h
	v_cndmask_b16 v80.h, 0x7fff, v22.h, s2
	v_mov_b16_e32 v22.h, v67.l
	v_cmp_o_f32_e64 s2, v20, v20
	v_cndmask_b16 v79.h, 0x7fff, v23.h, s13
	v_mov_b16_e32 v23.h, v67.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v8.l, v67.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v22, 1, v22
	v_mov_b16_e32 v25.l, v21.h
	v_mov_b16_e32 v25.h, v67.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v8, v8, v8 :: v_dual_and_b32 v23, 1, v23
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v22, v20, v22, 0x7fff
	v_mov_b16_e64 v20.l, v198.h
	v_mov_b16_e32 v20.h, v67.l
	v_cndmask_b16 v78.l, 0x7fff, v27.h, s11
	v_add3_u32 v23, v19, v23, 0x7fff
	v_cmp_o_f32_e64 s11, v19, v19
	v_mov_b16_e32 v23.l, v17.h
	v_and_b32_e32 v20, 1, v20
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v12.l, v67.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v25, 1, v25
	v_cmp_o_f32_e64 s3, v21, v21
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v10.l, v67.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v20, v198, v20, 0x7fff
	v_cndmask_b16 v20.l, 0x7fff, v23.h, s11
	v_mov_b16_e32 v23.h, v67.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v12, v12, v12
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v25, v21, v25, 0x7fff
	v_mov_b16_e64 v21.l, v199.h
	v_mov_b16_e32 v21.h, v67.l
	v_and_b32_e32 v23, 1, v23
	v_cmp_o_f32_e64 s11, v17, v17
	v_cndmask_b16 v19.l, 0x7fff, v22.h, s2
	v_mov_b16_e32 v22.l, v18.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v10, v10, v10 :: v_dual_and_b32 v21, 1, v21
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v23, v17, v23, 0x7fff
	v_mov_b16_e64 v17.l, v172.h
	v_mov_b16_e32 v17.h, v67.l
	v_mov_b16_e32 v22.h, v67.l
	v_cndmask_b16 v79.l, 0x7fff, v24.h, vcc_lo
	v_add3_u32 v21, v199, v21, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v199, v199
	v_and_b32_e32 v17, 1, v17
	v_and_b32_e32 v22, 1, v22
	v_mov_b16_e64 v21.l, v197.h
	v_cmp_o_f32_e64 s13, v172, v172
	v_cndmask_b16 v19.h, 0x7fff, v21.h, vcc_lo
	v_mov_b16_e32 v21.h, v67.l
	v_add3_u32 v17, v172, v17, 0x7fff
	v_add3_u32 v22, v18, v22, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s11
	v_mov_b16_e32 v17.l, v16.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v6.l, v67.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v21, 1, v21
	v_cndmask_b16 v23.h, 0x7fff, v17.h, s13
	v_mov_b16_e32 v17.h, v67.l
	v_cmp_o_f32_e32 vcc_lo, v197, v197
	v_mov_b16_e32 v24.l, v14.h
	v_mov_b16_e32 v24.h, v67.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v6, v6, v6
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v21, v197, v21, 0x7fff
	v_and_b32_e32 v17, 1, v17
	v_cmp_o_f32_e64 s2, v18, v18
	v_and_b32_e32 v24, 1, v24
	v_mov_b16_e64 v18.l, v196.h
	v_cndmask_b16 v21.h, 0x7fff, v21.h, vcc_lo
	v_add3_u32 v17, v16, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_mov_b16_e64 v16.l, v171.h
	v_mov_b16_e32 v16.h, v67.l
	v_mov_b16_e32 v18.h, v67.l
	v_add3_u32 v26, v14, v24, 0x7fff
	v_cmp_o_f32_e64 s13, v14, v14
	v_mov_b16_e32 v14.l, v72.h
	v_and_b32_e32 v16, 1, v16
	v_mov_b16_e32 v14.h, v67.l
	v_cndmask_b16 v80.l, 0x7fff, v25.h, s3
	v_cmp_o_f32_e64 s3, v198, v198
	v_and_b32_e32 v18, 1, v18
	v_cndmask_b16 v21.l, 0x7fff, v22.h, s2
	v_add3_u32 v16, v171, v16, 0x7fff
	v_cmp_o_f32_e64 s2, v171, v171
	v_and_b32_e32 v14, 1, v14
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s3
	v_add3_u32 v18, v196, v18, 0x7fff
	v_cmp_o_f32_e64 s3, v196, v196
	v_cndmask_b16 v23.l, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v24.h, 0x7fff, v16.h, s2
	v_add3_u32 v14, v72, v14, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v72, v72
	v_mov_b16_e32 v16.l, v13.h
	v_mov_b16_e32 v16.h, v67.l
	v_cndmask_b16 v22.h, 0x7fff, v18.h, s3
	v_mov_b16_e32 v18.l, v15.h
	v_mov_b16_e32 v18.h, v67.l
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s13
	v_and_b32_e32 v16, 1, v16
	v_cndmask_b16 v26.h, 0x7fff, v14.h, vcc_lo
	v_mov_b16_e32 v14.l, v12.h
	v_mov_b16_e32 v14.h, v67.l
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v16, v13, v16, 0x7fff
	v_cmp_o_f32_e64 s2, v13, v13
	v_cmp_o_f32_e64 s3, v15, v15
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v18, v15, v18, 0x7fff
	v_mov_b16_e64 v15.l, v170.h
	v_mov_b16_e32 v15.h, v67.l
	v_cndmask_b16 v26.l, 0x7fff, v16.h, s2
	v_add3_u32 v14, v12, v14, 0x7fff
	v_cmp_o_f32_e64 s2, v12, v12
	v_mov_b16_e64 v13.l, v131.h
	v_mov_b16_e32 v13.h, v67.l
	v_and_b32_e32 v15, 1, v15
	v_mov_b16_e32 v14.l, v11.h
	v_cndmask_b16 v12.l, 0x7fff, v14.h, s2
	v_mov_b16_e32 v14.h, v67.l
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v15, v170, v15, 0x7fff
	v_cmp_o_f32_e64 s11, v170, v170
	v_cmp_o_f32_e32 vcc_lo, v131, v131
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v13, v131, v13, 0x7fff
	v_cmp_o_f32_e64 s2, v11, v11
	v_cndmask_b16 v25.h, 0x7fff, v15.h, s11
	v_mov_b16_e32 v15.l, v10.h
	v_add3_u32 v14, v11, v14, 0x7fff
	v_mov_b16_e32 v11.l, v71.h
	v_mov_b16_e32 v11.h, v67.l
	v_mov_b16_e32 v15.h, v67.l
	v_cndmask_b16 v12.h, 0x7fff, v13.h, vcc_lo
	v_mov_b16_e64 v13.l, v130.h
	v_mov_b16_e32 v13.h, v67.l
	v_and_b32_e32 v11, 1, v11
	v_and_b32_e32 v15, 1, v15
	v_cndmask_b16 v24.l, 0x7fff, v18.h, s3
	v_cmp_o_f32_e64 s3, v71, v71
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v11, v71, v11, 0x7fff
	v_add3_u32 v15, v10, v15, 0x7fff
	v_cmp_o_f32_e64 s11, v10, v10
	v_mov_b16_e32 v10.l, v70.h
	v_mov_b16_e32 v10.h, v67.l
	v_add3_u32 v13, v130, v13, 0x7fff
	v_cndmask_b16 v13.l, 0x7fff, v14.h, s2
	v_cndmask_b16 v14.h, 0x7fff, v11.h, s3
	v_mov_b16_e32 v11.l, v8.h
	v_and_b32_e32 v10, 1, v10
	v_mov_b16_e32 v11.h, v67.l
	v_cmp_o_f32_e64 s13, v70, v70
	v_cndmask_b16 v14.l, 0x7fff, v15.h, s11
	v_cmp_o_f32_e64 s3, v8, v8
	v_add3_u32 v10, v70, v10, 0x7fff
	v_and_b32_e32 v11, 1, v11
	v_mov_b16_e32 v10.l, v9.h
	v_cmp_o_f32_e32 vcc_lo, v130, v130
	v_cmp_o_f32_e64 s11, v68, v68
	v_cndmask_b16 v15.h, 0x7fff, v10.h, s13
	v_mov_b16_e32 v10.h, v67.l
	v_add3_u32 v11, v8, v11, 0x7fff
	v_mov_b16_e32 v8.l, v68.h
	v_mov_b16_e32 v8.h, v67.l
	v_cndmask_b16 v13.h, 0x7fff, v13.h, vcc_lo
	v_and_b32_e32 v10, 1, v10
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_mov_b16_e32 v16.l, v7.h
	v_and_b32_e32 v8, 1, v8
	v_mov_b16_e32 v16.h, v67.l
	v_add3_u32 v10, v9, v10, 0x7fff
	v_mov_b16_e32 v9.l, v69.h
	v_mov_b16_e32 v9.h, v67.l
	v_add3_u32 v8, v68, v8, 0x7fff
	v_mov_b16_e32 v8.l, v6.h
	v_cmp_o_f32_e64 s2, v69, v69
	v_and_b32_e32 v16, 1, v16
	v_and_b32_e32 v9, 1, v9
	v_cndmask_b16 v17.h, 0x7fff, v8.h, s11
	v_mov_b16_e32 v8.h, v67.l
	v_cmp_o_f32_e64 s13, v7, v7
	v_add3_u32 v18, v7, v16, 0x7fff
	v_add3_u32 v9, v69, v9, 0x7fff
	v_mov_b16_e32 v7.l, v66.h
	v_and_b32_e32 v8, 1, v8
	v_mov_b16_e32 v7.h, v67.l
	v_mov_b16_e32 v9.l, v5.h
	v_cndmask_b16 v16.h, 0x7fff, v9.h, s2
	v_cmp_o_f32_e64 s2, v6, v6
	v_add3_u32 v8, v6, v8, 0x7fff
	v_mov_b16_e32 v6.l, v65.h
	v_mov_b16_e32 v6.h, v67.l
	v_mov_b16_e32 v9.h, v67.l
	v_and_b32_e32 v7, 1, v7
	v_cndmask_b16 v15.l, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v16.l, 0x7fff, v11.h, s3
	v_and_b32_e32 v6, 1, v6
	v_and_b32_e32 v9, 1, v9
	v_add3_u32 v7, v66, v7, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	v_cmp_o_f32_e64 s3, v65, v65
	v_add3_u32 v6, v65, v6, 0x7fff
	v_add3_u32 v9, v5, v9, 0x7fff
	v_cmp_o_f32_e64 s11, v5, v5
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[73:80], v[162:169], v[33:40]
	v_wmma_f32_16x16x16_bf16 v[41:48], v[19:26], v[154:161], v[41:48]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v17.l, 0x7fff, v18.h, s13
	v_cndmask_b16 v18.h, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v18.l, 0x7fff, v8.h, s2
	v_cndmask_b16 v19.h, 0x7fff, v6.h, s3
	v_cndmask_b16 v19.l, 0x7fff, v9.h, s11
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[57:64], v[138:145], v[98:105], v[57:64]
	v_wmma_f32_16x16x16_bf16 v[49:56], v[146:153], v[98:105], v[49:56]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[12:19], v[154:161], v[33:40]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v6, off, off offset:192
	scratch_load_b32 v7, off, off offset:232
	scratch_load_b32 v8, off, off offset:240
	scratch_load_b32 v9, off, off offset:248
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
	s_or_b32 s46, s68, 19
	s_or_b32 s47, s68, 20
	s_or_b32 s54, s68, 21
	s_or_b32 s55, s68, 22
	s_or_b32 s69, s68, 23
	s_or_b32 s70, s68, 24
	s_or_b32 s71, s68, 25
	s_or_b32 s88, s68, 26
	s_or_b32 s90, s68, 27
	s_or_b32 s91, s68, 28
	s_or_b32 s92, s68, 29
	s_or_b32 s93, s68, 30
	s_or_b32 s95, s68, 31
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s68, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v99, v97 :: v_dual_add_nc_u32 v68, s35, v2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 vcc_hi, -1, 0
	s_cmp_lt_i32 s2, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v104, v97
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s104, -1, 0
	s_cmp_lt_i32 s3, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v100, v97
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
	s_cselect_b32 s100, -1, 0
	s_cmp_lt_i32 s14, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v98, v97
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s99, -1, 0
	s_cmp_lt_i32 s15, s26
	s_cselect_b32 s98, -1, 0
	s_cmp_lt_i32 s16, s26
	s_cselect_b32 s97, -1, 0
	s_cmp_lt_i32 s17, s26
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s18, s26
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s19, s26
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s20, s26
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
	s_cmp_lt_i32 s88, s26
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s90, s26
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
	s_and_b32 vcc_lo, s12, vcc_hi
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_mul_i32 s2, s43, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v5, s2, v0, 1
	v_add_lshl_u32 v10, s2, v205, 1
	v_add_lshl_u32 v11, s2, v94, 1
	v_add_lshl_u32 v12, s2, v89, 1
	v_add_lshl_u32 v14, s2, v90, 1
	v_add_lshl_u32 v13, s2, v96, 1
	v_add_lshl_u32 v15, s2, v91, 1
	v_add_lshl_u32 v16, s2, v92, 1
	v_add_lshl_u32 v17, s2, v93, 1
	v_add_lshl_u32 v18, s2, v207, 1
	v_add_lshl_u32 v19, s2, v224, 1
	v_add_lshl_u32 v20, s2, v232, 1
	v_add_lshl_u32 v21, s2, v237, 1
	v_add_lshl_u32 v22, s2, v242, 1
	v_add_lshl_u32 v23, s2, v247, 1
	v_add_lshl_u32 v24, s2, v249, 1
	v_add_lshl_u32 v25, s2, v251, 1
	v_add_lshl_u32 v26, s2, v255, 1
	v_add_lshl_u32 v27, s2, v183, 1
	v_add_lshl_u32 v28, s2, v185, 1
	v_add_lshl_u32 v29, s2, v187, 1
	v_add_lshl_u32 v30, s2, v189, 1
	v_add_lshl_u32 v31, s2, v191, 1
	v_add_lshl_u32 v32, s2, v2, 1
	v_add_lshl_u32 v67, s2, v253, 1
	v_add_lshl_u32 v68, s2, v68, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v6, s2, v6, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v7, s2, v7, 1
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s104
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v8, s2, v8, 1
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s103
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v9, s2, v9, 1
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s102
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s100
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s99
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s98
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s97
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v65, 0x80000000, v12, vcc_lo
	v_add_lshl_u32 v12, s2, v215, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s94
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s89
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x6
	buffer_load_u16 v5, v5, s[48:51], 0 offen
	buffer_load_u16 v6, v6, s[48:51], 0 offen
	buffer_load_u16 v7, v7, s[48:51], 0 offen
	buffer_load_u16 v8, v8, s[48:51], 0 offen
	buffer_load_u16 v9, v9, s[48:51], 0 offen
	buffer_load_u16 v10, v10, s[48:51], 0 offen
	buffer_load_u16 v11, v11, s[48:51], 0 offen
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s87
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s86
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s85
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s84
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s83
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s82
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v66, 0x80000000, v19, vcc_lo
	v_add_lshl_u32 v19, s2, v227, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s81
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x6
	buffer_load_u16 v12, v12, s[48:51], 0 offen
	buffer_load_u16 v13, v13, s[48:51], 0 offen
	buffer_load_u16 v14, v14, s[48:51], 0 offen
	buffer_load_u16 v15, v15, s[48:51], 0 offen
	buffer_load_u16 v16, v16, s[48:51], 0 offen
	buffer_load_u16 v17, v17, s[48:51], 0 offen
	buffer_load_u16 v18, v18, s[48:51], 0 offen
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s80
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s79
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s78
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s77
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s76
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s75
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s73
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s72
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x6
	buffer_load_u16 v19, v19, s[48:51], 0 offen
	buffer_load_u16 v20, v20, s[48:51], 0 offen
	buffer_load_u16 v21, v21, s[48:51], 0 offen
	buffer_load_u16 v22, v22, s[48:51], 0 offen
	buffer_load_u16 v23, v23, s[48:51], 0 offen
	buffer_load_u16 v24, v24, s[48:51], 0 offen
	buffer_load_u16 v25, v25, s[48:51], 0 offen
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s71
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s70
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v29, 0x80000000, v29, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s69
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s55
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s54
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s74
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x5
	buffer_load_u16 v26, v26, s[48:51], 0 offen
	buffer_load_u16 v27, v27, s[48:51], 0 offen
	buffer_load_u16 v28, v28, s[48:51], 0 offen
	buffer_load_u16 v29, v29, s[48:51], 0 offen
	buffer_load_u16 v30, v30, s[48:51], 0 offen
	buffer_load_u16 v31, v31, s[48:51], 0 offen
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s42
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	s_clause 0x4
	buffer_load_u16 v32, v32, s[48:51], 0 offen
	buffer_load_u16 v72, v65, s[48:51], 0 offen
	buffer_load_u16 v71, v66, s[48:51], 0 offen
	buffer_load_u16 v70, v67, s[48:51], 0 offen
	buffer_load_u16 v67, v68, s[48:51], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v65, 0, v204
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v66, s68, v4
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v101, v97
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_and_not1_b32 vcc_lo, exec_lo, s59
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(31)
	ds_store_b16 v174, v5
	s_waitcnt vmcnt(24)
	ds_store_b16 v174, v12 offset:1024
	s_waitcnt vmcnt(17)
	ds_store_b16 v174, v19 offset:2048
	s_waitcnt vmcnt(10)
	ds_store_b16 v174, v26 offset:3072
	ds_store_b16 v175, v6
	ds_store_b16 v175, v13 offset:1024
	ds_store_b16 v175, v20 offset:2048
	s_waitcnt vmcnt(9)
	ds_store_b16 v175, v27 offset:3072
	ds_store_b16 v176, v7
	ds_store_b16 v176, v14 offset:1024
	ds_store_b16 v176, v21 offset:2048
	s_waitcnt vmcnt(8)
	ds_store_b16 v176, v28 offset:3072
	ds_store_b16 v177, v8
	ds_store_b16 v177, v15 offset:1024
	ds_store_b16 v177, v22 offset:2048
	s_waitcnt vmcnt(7)
	ds_store_b16 v177, v29 offset:3072
	ds_store_b16 v178, v9
	ds_store_b16 v178, v16 offset:1024
	ds_store_b16 v178, v23 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b16 v178, v30 offset:3072
	ds_store_b16 v179, v10
	ds_store_b16 v179, v17 offset:1024
	ds_store_b16 v179, v24 offset:2048
	s_waitcnt vmcnt(5)
	ds_store_b16 v179, v31 offset:3072
	ds_store_b16 v180, v11
	ds_store_b16 v180, v18 offset:1024
	ds_store_b16 v180, v25 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v180, v32 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v181, v72
	s_waitcnt vmcnt(2)
	ds_store_b16 v181, v71 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v181, v70 offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b16 v181, v67 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[73:76], off, off
	scratch_load_b128 v[77:80], off, off offset:16
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[105:108], v65
	ds_load_b128 v[109:112], v236
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s3, s26, v66
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v145, v104 :: v_dual_add_nc_u32 v66, s31, v66
	v_dual_mov_b32 v144, v103 :: v_dual_mov_b32 v143, v102
	v_dual_mov_b32 v142, v101 :: v_dual_mov_b32 v141, v100
	v_dual_mov_b32 v140, v99 :: v_dual_mov_b32 v139, v98
	v_mov_b32_e32 v138, v97
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s101, s0, s3
	s_and_b32 s96, s1, s3
	s_and_b32 s95, s4, s3
	s_and_b32 s93, s5, s3
	s_and_b32 s92, s6, s3
	s_and_b32 s91, s7, s3
	s_and_b32 s90, s8, s3
	s_and_b32 s88, s9, s3
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[138:145], v[73:80], v[105:112], v[138:145]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[73:76], off, off offset:32
	scratch_load_b128 v[77:80], off, off offset:48
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[98:101], v239
	ds_load_b128 v[102:105], v240
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[138:145], v[73:80], v[98:105], v[138:145]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[73:76], off, off offset:64
	scratch_load_b128 v[77:80], off, off offset:80
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[98:101], v241
	ds_load_b128 v[102:105], v244
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[138:145], v[73:80], v[98:105], v[138:145]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[73:76], off, off offset:96
	scratch_load_b128 v[77:80], off, off offset:112
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[98:101], v245
	ds_load_b128 v[102:105], v246
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[138:145], v[73:80], v[98:105], v[138:145]
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_or_b32_e32 v68, 2, v184
	v_cmp_le_i32_e32 vcc_lo, v184, v66
	s_and_not1_b32 s19, s101, exec_lo
	s_and_not1_b32 s20, s96, exec_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_le_i32_e64 s2, v68, v66
	v_or_b32_e32 v68, 4, v184
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s18, s101, vcc_lo
	s_and_b32 s18, s18, exec_lo
	s_and_b32 s2, s96, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s11, v68, v66
	v_or_b32_e32 v68, 6, v184
	s_and_b32 s2, s2, exec_lo
	s_or_b32 s101, s19, s18
	s_or_b32 s96, s20, s2
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s11, s95, s11
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s13, v68, v66
	v_or_b32_e32 v68, 8, v184
	s_and_not1_b32 s2, s95, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s18, s93, exec_lo
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s13, s93, s13
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s14, v68, v66
	v_or_b32_e32 v68, 10, v184
	s_and_b32 s13, s13, exec_lo
	s_or_b32 s95, s2, s11
	s_or_b32 s93, s18, s13
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s14, s92, s14
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s15, v68, v66
	v_or_b32_e32 v68, 12, v184
	s_and_not1_b32 s2, s92, exec_lo
	s_and_b32 s11, s14, exec_lo
	s_and_not1_b32 s13, s91, exec_lo
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s15, s91, s15
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s16, v68, v66
	v_or_b32_e32 v68, 14, v184
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s92, s2, s11
	s_or_b32 s91, s13, s14
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s16, s90, s16
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s17, v68, v66
	s_and_not1_b32 s2, s90, exec_lo
	s_and_b32 s11, s16, exec_lo
	s_and_not1_b32 s13, s88, exec_lo
	s_or_b32 s90, s2, s11
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s17, s88, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s88, s13, s14
.LBB0_10:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 677 17 is_stmt 1              ; attention_backward.py:677:17
	s_and_not1_b32 vcc_lo, exec_lo, s58
	s_cbranch_vccnz .LBB0_7
; %bb.11:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v68, s29, v66
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v66, s30, v66
	v_or_b32_e32 v69, 2, v184
	v_or_b32_e32 v73, 4, v184
	v_or_b32_e32 v74, 6, v184
	v_or_b32_e32 v75, 8, v184
	v_or_b32_e32 v76, 10, v184
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v184, v68
	v_cmp_ge_i32_e64 s2, v69, v68
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s18, v184, v66
	v_cmp_le_i32_e64 s19, v69, v66
	v_or_b32_e32 v77, 12, v184
	v_or_b32_e32 v78, 14, v184
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s11, v73, v68
	v_cmp_ge_i32_e64 s13, v74, v68
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s20, v73, v66
	v_cmp_le_i32_e64 s21, v74, v66
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s14, v75, v68
	v_cmp_ge_i32_e64 s15, v76, v68
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s22, v75, v66
	v_cmp_le_i32_e64 s23, v76, v66
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s18, vcc_lo, s18
	s_and_b32 s2, s2, s19
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s16, v77, v68
	v_cmp_ge_i32_e64 s17, v78, v68
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s24, v77, v66
	v_cmp_le_i32_e64 s25, v78, v66
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s18, s18, s101
	s_and_b32 s2, s2, s96
	s_and_b32 s11, s11, s20
	s_and_b32 s13, s13, s21
	s_and_b32 s11, s11, s95
	s_and_b32 s13, s13, s93
	s_and_b32 s14, s14, s22
	s_and_b32 s15, s15, s23
	s_and_not1_b32 s19, s101, exec_lo
	s_and_b32 s18, s18, exec_lo
	s_and_not1_b32 s20, s96, exec_lo
	s_and_b32 s2, s2, exec_lo
	s_and_b32 s14, s14, s92
	s_and_b32 s15, s15, s91
	s_and_b32 s16, s16, s24
	s_and_b32 s17, s17, s25
	s_or_b32 s101, s19, s18
	s_or_b32 s96, s20, s2
	s_and_not1_b32 s2, s95, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s18, s93, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s90
	s_and_b32 s17, s17, s88
	s_or_b32 s95, s2, s11
	s_or_b32 s93, s18, s13
	s_and_not1_b32 s2, s92, exec_lo
	s_and_b32 s11, s14, exec_lo
	s_and_not1_b32 s13, s91, exec_lo
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s92, s2, s11
	s_or_b32 s91, s13, s14
	s_and_not1_b32 s2, s90, exec_lo
	s_and_b32 s11, s16, exec_lo
	s_and_not1_b32 s13, s88, exec_lo
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s90, s2, s11
	s_or_b32 s88, s13, s14
	s_branch .LBB0_7
.LBB0_12:                               ; %Flow321
	.loc	1 0 21                          ; attention_backward.py:0:21
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v65, off, off offset:288
	scratch_load_b32 v66, off, off offset:292
	scratch_load_b32 v67, off, off offset:296
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
	v_mov_b32_e32 v56, v40
	v_mov_b32_e32 v55, v40
	v_mov_b32_e32 v54, v40
	v_mov_b32_e32 v53, v40
	v_mov_b32_e32 v52, v40
	v_mov_b32_e32 v51, v40
	v_mov_b32_e32 v50, v40
	v_mov_b32_e32 v49, v40
	v_mov_b32_e32 v64, v40
	v_mov_b32_e32 v63, v40
	v_mov_b32_e32 v62, v40
	v_mov_b32_e32 v61, v40
	v_mov_b32_e32 v60, v40
	v_mov_b32_e32 v59, v40
	v_mov_b32_e32 v58, v40
	v_mov_b32_e32 v57, v40
.LBB0_14:                               ; %._crit_edge181
	.loc	1 550 20 is_stmt 1              ; attention_backward.py:550:20
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, v66, v67
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v16, s35, v65
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s57, v65
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
	buffer_store_b32 v57, v17, s[40:43], 0 offen
	v_add_lshl_u32 v17, v20, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v9, 14, v1
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v23, v16, v10
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s20, s35, v11
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v58, v18, s[40:43], 0 offen
	buffer_store_b32 v59, v19, s[40:43], 0 offen
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
	buffer_store_b32 v60, v17, s[40:43], 0 offen
	buffer_store_b32 v61, v18, s[40:43], 0 offen
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
	buffer_store_b32 v62, v19, s[40:43], 0 offen
	buffer_store_b32 v63, v20, s[40:43], 0 offen
	v_add_lshl_u32 v19, v26, s33, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v21, s34, v65
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
	buffer_store_b32 v64, v17, s[40:43], 0 offen
	buffer_store_b32 v49, v18, s[40:43], 0 offen
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
	buffer_store_b32 v50, v19, s[40:43], 0 offen
	buffer_store_b32 v51, v20, s[40:43], 0 offen
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
	buffer_store_b32 v52, v17, s[40:43], 0 offen
	buffer_store_b32 v53, v18, s[40:43], 0 offen
	buffer_store_b32 v54, v19, s[40:43], 0 offen
	buffer_store_b32 v55, v20, s[40:43], 0 offen
	buffer_store_b32 v56, v16, s[40:43], 0 offen
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
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 304
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18240
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 304
    .sgpr_count:     107
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
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
