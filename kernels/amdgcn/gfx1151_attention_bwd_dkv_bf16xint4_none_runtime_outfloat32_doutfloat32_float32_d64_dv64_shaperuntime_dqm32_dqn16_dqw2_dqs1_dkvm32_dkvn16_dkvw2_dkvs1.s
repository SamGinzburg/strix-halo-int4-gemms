	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	.loc	1 534 24 prologue_end           ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v23, 1, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v97, 15, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v19, 0x1b0, v23
	v_xor_b32_e32 v20, 0x240, v23
	v_xor_b32_e32 v21, 0x2d0, v23
	v_xor_b32_e32 v22, 0x360, v23
	v_add_nc_u32_e32 v212, 0, v23
	v_add_nc_u32_e32 v215, 0, v19
	v_add_nc_u32_e32 v216, 0, v20
	v_add_nc_u32_e32 v217, 0, v21
	v_add_nc_u32_e32 v218, 0, v22
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
	v_xor_b32_e32 v1, 0x90, v23
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_ashr_i32 s16, s10, 31
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v2, 0x120, v23
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_lshr_b32 s16, s16, 28
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v23, 0x3f0, v23
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_add_i32 s10, s10, s16
	.loc	1 541 32                        ; attention_backward.py:541:32
	s_ashr_i32 s16, s57, 1
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_ashr_i32 s10, s10, 4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v213, 0, v1
	.loc	1 542 35                        ; attention_backward.py:542:35
	s_lshl_b32 s17, s10, 3
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v214, 0, v2
	.loc	1 549 23                        ; attention_backward.py:549:23
	s_cmp_lt_i32 s16, s17
	.loc	1 543 26                        ; attention_backward.py:543:26
	s_mul_i32 s17, s3, s17
	.loc	1 549 23                        ; attention_backward.py:549:23
	s_cselect_b32 s36, -1, 0
	.loc	1 545 17                        ; attention_backward.py:545:17
	s_add_i32 s17, s17, s16
	.loc	1 565 17                        ; attention_backward.py:565:17
	s_mul_i32 s10, s3, s10
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mad_u64_u32 v[1:2], null, s17, s56, v[0:1]
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_bfe_i32 s2, s2, 0x1c0000
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v219, 0, v23
	.loc	1 568 17                        ; attention_backward.py:568:17
	s_add_i32 s2, s10, s2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s10, s56, v0
	.loc	1 568 17                        ; attention_backward.py:568:17
	s_mul_i32 s2, s2, s56
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s21, 0xffff
	v_add_lshl_u32 v2, s2, v0, 1
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v19, s56, v1
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s13, s10
	.loc	1 549 22                        ; attention_backward.py:549:22
	s_and_b32 s2, s36, s10
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_and_b32 s17, s39, 0xffff
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v20, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, vcc_lo, s10
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v27, s56, v19
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v21, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s50, s10
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_mov_b32 s16, s38
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v22, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s4, s10
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v30, s56, v27
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v23, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s49, s10
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v24, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s6, s10
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v33, s56, v30
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v25, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s48, s10
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v26, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s5, s10
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v36, s56, v33
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v28, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s47, s10
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v29, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s7, s10
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v39, s56, v36
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v31, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s46, s10
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v32, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s8, s10
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v40, s56, v39
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v34, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s45, s10
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v35, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s9, s10
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v37, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s44, s10
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v38, 0x80000000, v2, s13
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s11, s10
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v40, 0x80000000, v40, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v2, 0x80000000, v2, s13
	.loc	1 587 22                        ; attention_backward.py:587:22
	s_add_i32 s2, s26, 31
	s_mov_b32 s13, 0
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(15)
	ds_store_b16 v212, v11
	s_waitcnt vmcnt(9)
	ds_store_b16 v212, v8 offset:1024
	ds_store_b16 v213, v12
	s_waitcnt vmcnt(8)
	ds_store_b16 v213, v10 offset:1024
	ds_store_b16 v214, v3
	s_waitcnt vmcnt(7)
	ds_store_b16 v214, v16 offset:1024
	ds_store_b16 v215, v4
	s_waitcnt vmcnt(6)
	ds_store_b16 v215, v9 offset:1024
	ds_store_b16 v216, v5
	s_waitcnt vmcnt(5)
	ds_store_b16 v216, v13 offset:1024
	ds_store_b16 v217, v6
	s_waitcnt vmcnt(4)
	ds_store_b16 v217, v14 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v218, v7
	s_waitcnt vmcnt(2)
	ds_store_b16 v218, v17 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v219, v18
	s_waitcnt vmcnt(0)
	ds_store_b16 v219, v15 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_clause 0xf
	buffer_load_u16 v20, v20, s[20:23], 0 offen
	buffer_load_u16 v21, v21, s[20:23], 0 offen
	buffer_load_u16 v22, v22, s[20:23], 0 offen
	buffer_load_u16 v23, v23, s[20:23], 0 offen
	buffer_load_u16 v24, v24, s[20:23], 0 offen
	buffer_load_u16 v25, v25, s[20:23], 0 offen
	buffer_load_u16 v26, v26, s[20:23], 0 offen
	buffer_load_u16 v28, v28, s[20:23], 0 offen
	buffer_load_u16 v29, v29, s[20:23], 0 offen
	buffer_load_u16 v31, v31, s[20:23], 0 offen
	buffer_load_u16 v32, v32, s[20:23], 0 offen
	buffer_load_u16 v34, v34, s[20:23], 0 offen
	buffer_load_u16 v35, v35, s[20:23], 0 offen
	buffer_load_u16 v37, v37, s[20:23], 0 offen
	buffer_load_u16 v38, v38, s[20:23], 0 offen
	buffer_load_u16 v41, v2, s[20:23], 0 offen
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
	v_lshl_or_b32 v2, v97, 7, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v1, 16, v2
	v_xor_b32_e32 v5, 32, v2
	v_xor_b32_e32 v6, 48, v2
	v_xor_b32_e32 v7, 64, v2
	v_xor_b32_e32 v8, 0x50, v2
	v_xor_b32_e32 v9, 0x60, v2
	v_xor_b32_e32 v10, 0x70, v2
	v_add_nc_u32_e32 v3, 0, v2
	v_add_nc_u32_e32 v4, 0, v1
	v_add_nc_u32_e32 v5, 0, v5
	v_add_nc_u32_e32 v6, 0, v6
	v_add_nc_u32_e32 v7, 0, v7
	v_add_nc_u32_e32 v8, 0, v8
	v_add_nc_u32_e32 v9, 0, v9
	v_add_nc_u32_e32 v10, 0, v10
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v15.h, v20.l
	v_mov_b16_e32 v16.h, v21.l
	v_mov_b16_e32 v17.h, v22.l
	v_mov_b16_e32 v18.h, v23.l
	v_mov_b16_e32 v19.h, v24.l
	v_mov_b16_e32 v20.h, v25.l
	v_mov_b16_e32 v21.h, v26.l
	v_mov_b16_e32 v22.h, v28.l
	v_mov_b16_e32 v23.h, v29.l
	v_mov_b16_e32 v24.h, v31.l
	v_mov_b16_e32 v25.h, v32.l
	v_mov_b16_e32 v26.h, v34.l
	v_mov_b16_e32 v14.h, v35.l
	v_mov_b16_e32 v12.h, v37.l
	v_mov_b16_e32 v13.h, v38.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v11.h, v41.l
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
	ds_load_b128 v[27:30], v3
	ds_load_b128 v[31:34], v4
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_mul_i32 s16, s2, s15
	s_xor_b32 s17, s40, s41
	s_sub_i32 s16, s42, s16
	s_add_i32 s18, s2, 1
	s_sub_i32 s19, s16, s15
	s_cmp_ge_u32 s16, s15
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v19.l, v16.l, 15
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s2, s18, s2
	s_cselect_b32 s16, s19, s16
	s_add_i32 s18, s2, 1
	s_cmp_ge_u32 s16, s15
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v38, 15, v15
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s2, s18, s2
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v20.l, v17.l, 15
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_xor_b32 s2, s2, s17
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v21.l, v18.l, 15
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_sub_i32 s28, s2, s17
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v19.l
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v39.l, 4, v16.l
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[27:30], off   ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[31:34], off offset:16 ; 16-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[27:30], v5
	ds_load_b128 v[31:34], v6
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v39.h, 0
	.loc	1 550 20 is_stmt 1              ; attention_backward.py:550:20
	v_and_b32_e32 v1, 32, v0
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v22.l, v12.l, 15
	v_and_b16 v23.l, v13.l, 15
	v_and_b16 v24.l, v14.l, 15
	v_and_b16 v25.l, v15.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v41.l, 4, v18.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v41.h, v39.h
	.loc	1 554 72 is_stmt 1              ; attention_backward.py:554:72
	v_and_b16 v26.l, v11.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v40.l, 4, v17.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v40.h, v39.h
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v43.l, 4, v13.l
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e64 v41, 0, v41, s6
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v43.h, v39.h
	.loc	1 556 28 is_stmt 0              ; attention_backward.py:556:28
	v_lshrrev_b16 v42.l, 4, v12.l
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e64 v40, 0, v40, s4
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v42.h, v39.h
	.loc	1 556 28 is_stmt 0              ; attention_backward.py:556:28
	v_lshrrev_b16 v45.l, 4, v15.l
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e64 v43, 0, v43, s7
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[27:30], off offset:32 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[31:34], off offset:48 ; 16-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[27:30], v7
	ds_load_b128 v[31:34], v8
	.loc	1 556 26 is_stmt 1              ; attention_backward.py:556:26
	v_mov_b16_e32 v45.h, v39.h
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v42, 0, v42, s5
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v48, -16, v43
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v44.l, 4, v14.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v44.h, v39.h
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e64 v45, 0, v45, s9
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v47, -16, v42
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v46.l, 4, v11.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v46.h, v39.h
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e64 v44, 0, v44, s8
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v15.l, v39.h
	v_mov_b16_e32 v19.l, v39.h
	s_load_b128 s[36:39], s[0:1], 0x50
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v46, 0, v46, s11
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v49, -16, v44
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v50, v0, 4, 1
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cmp_lt_i32 s28, 1
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[27:30], off offset:64
	scratch_store_b128 off, v[31:34], off offset:80
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[27:30], v9
	ds_load_b128 v[31:34], v10
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[27:30], off offset:96 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[31:34], off offset:112 ; 16-byte Folded Spill
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_and_b32_e32 v31, 15, v13
	v_and_b32_e32 v32, 15, v14
	v_and_b32_e32 v27, 15, v16
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v16.l, v39.h
	v_mov_b16_e32 v14.l, v39.h
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v37, -16, v31
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v30, 15, v12
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v33, -16, v27
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v12.l, v39.h
	v_mov_b16_e32 v13.l, v39.h
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v36, -16, v30
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v29, 15, v18
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v27, v27, v33, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v20.l
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v18.l, v39.h
	v_mov_b16_e32 v20.l, v39.h
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v35, -16, v29
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v28, 15, v17
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v27, v27
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v17.l, v39.h
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_barrier
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v34, -16, v28
	.loc	1 557 25 is_stmt 0              ; attention_backward.py:557:25
	v_cndmask_b32_e64 v28, v28, v34, s2
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e32 v34, 0, v39, vcc_lo
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v21.l
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v21.l, v39.h
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_lshrrev_b32_e32 v98, 1, v1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v28, v28
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v29, v29, v35, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v22.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v35, -16, v32
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v22.l, v39.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
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
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v31, v31, v37, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v24.l
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v24.l, v39.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v32, v32, v35, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v25.l
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v25.l, v39.h
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v35, v38, v36, vcc_lo
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v38, -16, v41
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v33, 15, v11
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v26.l
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v36, -16, v34
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v35, v35
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v11.l, v39.h
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v37, -16, v33
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v26.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v33, v33, v37, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v34
	.loc	1 558 52 is_stmt 0              ; attention_backward.py:558:52
	v_or_b32_e32 v37, -16, v40
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v34, v34, v36, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v40
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v36, -16, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v34, v34
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v37, v40, v37, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v41
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v40, -16, v46
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_dual_mul_f32 v15, v27, v15 :: v_dual_mul_f32 v16, v34, v16
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v38, v41, v38, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 575 26 is_stmt 1              ; attention_backward.py:575:26
	v_bfe_u32 v27, v15, 16, 1
	v_cmp_o_f32_e64 s2, v16, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 575 27 is_stmt 0              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 558 26 is_stmt 1              ; attention_backward.py:558:26
	v_cndmask_b32_e32 v41, v42, v47, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v43
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_dual_mul_f32 v19, v29, v19 :: v_dual_mul_f32 v20, v38, v20
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v42, v43, v48, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v44
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v37, v37
	v_mul_f32_e32 v17, v28, v17
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_cmp_o_f32_e64 s4, v19, v19
	.loc	1 558 26 is_stmt 1              ; attention_backward.py:558:26
	v_cndmask_b32_e32 v43, v44, v49, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v45
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_mul_f32_e32 v18, v37, v18
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v36, v45, v36, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v46
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v39, v41
	v_mul_f32_e32 v21, v30, v21
	v_cvt_f32_i32_e32 v41, v42
	v_cvt_f32_i32_e32 v36, v36
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v40, v46, v40, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v28, v35, v14
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v14, v16, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v29, v36, v12
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_add3_u32 v12, v15, v27, 0x7fff
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v30, v33, v13
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_add3_u32 v13, v16, v14, 0x7fff
	v_bfe_u32 v14, v17, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v27, v40, v11
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v11.l, 0x7fff, v12.h, vcc_lo
	v_bfe_u32 v12, v18, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v22, v39, v22
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s2
	v_bfe_u32 v13, v19, 16, 1
	v_add3_u32 v14, v17, v14, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_add3_u32 v12, v18, v12, 0x7fff
	v_cmp_o_f32_e64 s2, v18, v18
	v_bfe_u32 v15, v21, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_dual_mul_f32 v23, v31, v23 :: v_dual_mul_f32 v24, v41, v24
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_add3_u32 v13, v19, v13, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v14.h, vcc_lo
	v_bfe_u32 v14, v20, 16, 1
	v_bfe_u32 v16, v22, 16, 1
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s2
	v_add3_u32 v15, v21, v15, 0x7fff
	v_cmp_o_f32_e64 s2, v21, v21
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v42, v43
	v_mul_f32_e32 v25, v32, v25
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s4
	v_add3_u32 v14, v20, v14, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_add3_u32 v16, v22, v16, 0x7fff
	v_cmp_o_f32_e64 s4, v22, v22
	v_bfe_u32 v17, v23, 16, 1
	v_cndmask_b16 v14.l, 0x7fff, v15.h, s2
	v_bfe_u32 v15, v24, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v26, v42, v26
	.loc	1 575 26                        ; attention_backward.py:575:26
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
	v_cmp_o_f32_e64 s5, v30, v30
	v_add3_u32 v21, v27, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v27, v27
	v_cndmask_b16 v16.h, 0x7fff, v18.h, vcc_lo
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s2
	v_cndmask_b16 v17.h, 0x7fff, v19.h, s4
	v_cndmask_b16 v18.l, 0x7fff, v20.h, s5
	v_cndmask_b16 v18.h, 0x7fff, v21.h, s6
	.loc	1 715 36 is_stmt 1              ; attention_backward.py:715:36
	ds_store_b16 v212, v11
	ds_store_b16 v212, v15 offset:1024
	ds_store_b16_d16_hi v213, v11
	ds_store_b16_d16_hi v213, v15 offset:1024
	ds_store_b16 v214, v12
	ds_store_b16 v214, v16 offset:1024
	ds_store_b16_d16_hi v215, v12
	ds_store_b16_d16_hi v215, v16 offset:1024
	ds_store_b16 v216, v13
	ds_store_b16 v216, v17 offset:1024
	ds_store_b16_d16_hi v217, v13
	ds_store_b16_d16_hi v217, v17 offset:1024
	ds_store_b16 v218, v14
	ds_store_b16 v218, v18 offset:1024
	ds_store_b16_d16_hi v219, v14
	ds_store_b16_d16_hi v219, v18 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cbranch_scc1 .LBB0_13
; %bb.3:                                ; %.lr.ph117
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	s_xor_b32 s2, s3, s25
	s_clause 0x3
	s_load_b32 s61, s[0:1], 0x80
	s_load_b64 s[40:41], s[0:1], 0x48
	s_load_b128 s[44:47], s[0:1], 0x38
	s_load_b64 s[48:49], s[0:1], 0x0
	.loc	1 514 23 is_stmt 1              ; attention_backward.py:514:23
	v_or_b32_e32 v222, s57, v50
	s_ashr_i32 s1, s2, 31
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_sub_i32 s0, s57, s31
	s_xor_b32 s2, s14, s1
	s_max_i32 s0, s0, 0
	s_sub_i32 s2, s2, s1
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v12, 2, v222
	v_or_b32_e32 v13, 4, v222
	v_or_b32_e32 v14, 6, v222
	v_or_b32_e32 v15, 8, v222
	v_or_b32_e32 v16, 10, v222
	v_or_b32_e32 v17, 12, v222
	v_or_b32_e32 v18, 14, v222
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_and_b32 s0, s0, 0x7fffffe0
	s_mul_i32 s1, s2, s25
	s_max_u32 s0, s13, s0
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_sub_i32 s3, s3, s1
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_and_b32 s1, s59, exec_lo
	.loc	1 517 21 is_stmt 1              ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s1, s27, v12
	v_cmp_gt_i32_e64 s4, s27, v13
	v_cmp_gt_i32_e64 s5, s27, v14
	v_cmp_gt_i32_e64 s6, s27, v15
	v_cmp_gt_i32_e64 s7, s27, v16
	v_cmp_gt_i32_e64 s8, s27, v17
	v_cmp_gt_i32_e64 s9, s27, v18
	.loc	1 715 36                        ; attention_backward.py:715:36
	ds_load_b128 v[16:19], v10
	ds_load_b128 v[12:15], v9
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_and_b32_e32 v11, 16, v0
	v_lshlrev_b32_e32 v34, 1, v97
	.loc	1 535 17 is_stmt 1              ; attention_backward.py:535:17
	v_add_nc_u32_e32 v39, s35, v0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[12:15], off offset:128
	scratch_store_b128 off, v[16:19], off offset:144
	.loc	1 715 36                        ; attention_backward.py:715:36
	ds_load_b128 v[16:19], v8
	ds_load_b128 v[12:15], v7
	v_lshlrev_b32_e32 v11, 2, v11
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v41, s56, v0
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v43, s35, v39
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[12:15], off offset:160
	scratch_store_b128 off, v[16:19], off offset:176
	.loc	1 715 36                        ; attention_backward.py:715:36
	ds_load_b128 v[16:19], v6
	ds_load_b128 v[12:15], v5
	ds_load_b128 v[7:10], v4
	ds_load_b128 v[3:6], v3
	v_or3_b32 v42, v34, v11, v1
	v_add3_u32 v243, 0, v1, v34
	s_waitcnt lgkmcnt(2)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[12:15], off offset:192
	scratch_store_b128 off, v[16:19], off offset:208
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[3:6], off offset:224
	scratch_store_b128 off, v[7:10], off offset:240
	v_lshl_or_b32 v10, v1, 6, v2
	v_mul_u32_u24_e32 v18, 0x110, v97
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v41, off offset:268
	scratch_store_b32 off, v42, off offset:272
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v41, s56, v41
	v_xor_b32_e32 v3, 32, v10
	v_lshl_or_b32 v40, v1, 7, v18
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v10, off offset:256
	scratch_store_b32 off, v39, off offset:264
	scratch_store_b32 off, v43, off offset:276
	v_add_nc_u32_e32 v45, s56, v41
	v_xor_b32_e32 v4, 48, v10
	v_add_nc_u32_e32 v3, 0, v3
	v_xor_b32_e32 v2, 16, v10
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v43, s35, v43
	scratch_store_b32 off, v45, off offset:288 ; 4-byte Folded Spill
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v45, s56, v45
	v_xor_b32_e32 v5, 64, v10
	v_xor_b32_e32 v6, 0x50, v10
	scratch_store_b32 off, v3, off offset:300 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v4
	v_add_nc_u32_e32 v34, s56, v45
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v45, off offset:312
	scratch_store_b32 off, v41, off offset:280
	scratch_store_b32 off, v43, off offset:284
	scratch_store_b32 off, v40, off offset:260
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v43, s35, v43
	v_add_nc_u32_e32 v2, 0, v2
	v_xor_b32_e32 v9, 0x60, v10
	v_add_nc_u32_e32 v4, 0, v6
	scratch_store_b32 off, v3, off offset:304 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:292
	scratch_store_b32 off, v43, off offset:296
	v_add_nc_u32_e32 v2, s35, v43
	v_lshl_add_u32 v7, v1, 1, 0
	v_lshlrev_b32_e32 v8, 2, v0
	v_xor_b32_e32 v10, 0x70, v10
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:308
	scratch_store_b32 off, v2, off offset:328
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v3, s56, v34
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:316
	scratch_store_b32 off, v50, off offset:524
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v4, 0, v9
	v_lshl_add_u32 v231, v97, 2, v7
	v_xor_b32_e32 v7, 0x110, v8
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v2, s35, v2
	scratch_store_b32 off, v3, off offset:364 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s56, v3
	scratch_store_b32 off, v4, off offset:320 ; 4-byte Folded Spill
	v_dual_mov_b32 v75, v9 :: v_dual_add_nc_u32 v4, 0, v10
	v_xor_b32_e32 v12, 0x220, v8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:324
	scratch_store_b32 off, v2, off offset:360
	v_dual_mov_b32 v77, v9 :: v_dual_add_nc_u32 v4, 0, v7
	v_xor_b32_e32 v13, 0x330, v8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v34, off offset:332
	scratch_store_b32 off, v3, off offset:396
	v_add_nc_u32_e32 v3, s56, v3
	scratch_store_b32 off, v4, off offset:336 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v12
	v_xor_b32_e32 v14, 0x440, v8
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v2, s35, v2
	scratch_store_b32 off, v3, off offset:428 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s56, v3
	scratch_store_b32 off, v4, off offset:340 ; 4-byte Folded Spill
	v_dual_mov_b32 v79, v9 :: v_dual_add_nc_u32 v4, 0, v13
	v_xor_b32_e32 v15, 0x550, v8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:344
	scratch_store_b32 off, v2, off offset:392
	v_add_nc_u32_e32 v4, 0, v14
	v_xor_b32_e32 v16, 0x660, v8
	scratch_store_b32 off, v3, off offset:460 ; 4-byte Folded Spill
	v_dual_mov_b32 v90, v9 :: v_dual_add_nc_u32 v3, s56, v3
	scratch_store_b32 off, v4, off offset:348 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v15
	v_xor_b32_e32 v17, 0x770, v8
	scratch_store_b32 off, v3, off offset:492 ; 4-byte Folded Spill
	v_dual_mov_b32 v92, v9 :: v_dual_add_nc_u32 v3, s56, v3
	scratch_store_b32 off, v4, off offset:352 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v16
	v_add_nc_u32_e32 v2, s35, v2
	v_xor_b32_e32 v19, 0x880, v8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:356
	scratch_store_b32 off, v2, off offset:424
	v_add_nc_u32_e32 v4, 0, v17
	v_xor_b32_e32 v20, 0x990, v8
	scratch_store_b32 off, v3, off offset:500 ; 4-byte Folded Spill
	v_dual_mov_b32 v94, v9 :: v_dual_add_nc_u32 v3, s56, v3
	scratch_store_b32 off, v4, off offset:368 ; 4-byte Folded Spill
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v4, 0, v19
	v_xor_b32_e32 v21, 0xaa0, v8
	scratch_store_b32 off, v3, off offset:508 ; 4-byte Folded Spill
	v_dual_mov_b32 v96, v9 :: v_dual_add_nc_u32 v3, s56, v3
	scratch_store_b32 off, v4, off offset:372 ; 4-byte Folded Spill
	v_dual_mov_b32 v91, v9 :: v_dual_add_nc_u32 v4, 0, v20
	v_add_nc_u32_e32 v2, s35, v2
	v_xor_b32_e32 v22, 0xbb0, v8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:376
	scratch_store_b32 off, v2, off offset:456
	v_dual_mov_b32 v95, v9 :: v_dual_add_nc_u32 v4, 0, v21
	v_xor_b32_e32 v18, 0xcc0, v8
	v_xor_b32_e32 v23, 0xdd0, v8
	v_mov_b32_e32 v81, 0
	scratch_store_b32 off, v4, off offset:380 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v22
	v_dual_mov_b32 v93, v9 :: v_dual_add_nc_u32 v2, s35, v2
	v_xor_b32_e32 v24, 0xee0, v8
	v_mov_b32_e32 v83, v9
	scratch_store_b32 off, v4, off offset:384 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v18
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:388
	scratch_store_b32 off, v2, off offset:488
	v_dual_mov_b32 v87, v9 :: v_dual_add_nc_u32 v4, 0, v23
	v_xor_b32_e32 v8, 0xff0, v8
	v_xor_b32_e32 v25, 16, v40
	v_dual_mov_b32 v85, v9 :: v_dual_add_nc_u32 v2, s35, v2
	scratch_store_b32 off, v4, off offset:400 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v24
	v_xor_b32_e32 v50, 32, v40
	v_xor_b32_e32 v46, 48, v40
	v_xor_b32_e32 v48, 64, v40
	v_xor_b32_e32 v54, 0x50, v40
	scratch_store_b32 off, v4, off offset:404 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:408
	scratch_store_b32 off, v2, off offset:496
	v_add_nc_u32_e32 v4, 0, v25
	v_add_nc_u32_e32 v2, s35, v2
	v_xor_b32_e32 v49, 0x60, v40
	v_xor_b32_e32 v51, 0x70, v40
	v_xor_b32_e32 v47, 0x80, v40
	scratch_store_b32 off, v4, off offset:412 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v50
	v_xor_b32_e32 v33, 0x90, v40
	v_xor_b32_e32 v36, 0xa0, v40
	v_xor_b32_e32 v37, 0xb0, v40
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:516
	scratch_store_b32 off, v4, off offset:416
	v_add_nc_u32_e32 v4, 0, v46
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:420
	scratch_store_b32 off, v2, off offset:504
	v_add_nc_u32_e32 v4, 0, v48
	v_add_nc_u32_e32 v2, s35, v2
	v_dual_mov_b32 v82, v9 :: v_dual_add_nc_u32 v3, s56, v3
	v_xor_b32_e32 v38, 0xc0, v40
	scratch_store_b32 off, v4, off offset:432 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v54
	v_dual_mov_b32 v56, v3 :: v_dual_add_nc_u32 v3, s56, v3
	v_mov_b32_e32 v84, v9
	v_xor_b32_e32 v11, 0xd0, v40
	scratch_store_b32 off, v4, off offset:436 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v49
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:440
	scratch_store_b32 off, v2, off offset:512
	v_add_nc_u32_e32 v4, 0, v51
	v_add_nc_u32_e32 v2, s35, v2
	v_dual_mov_b32 v30, v3 :: v_dual_add_nc_u32 v3, s56, v3
	v_mov_b32_e32 v86, v9
	scratch_store_b32 off, v4, off offset:444 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v47
	v_xor_b32_e32 v39, 0xe0, v40
	v_dual_mov_b32 v55, v2 :: v_dual_add_nc_u32 v2, s35, v2
	v_lshlrev_b32_e32 v35, 3, v0
	scratch_store_b32 off, v4, off offset:448 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v33
	v_dual_mov_b32 v60, v3 :: v_dual_add_nc_u32 v3, s56, v3
	v_mov_b32_e32 v88, v9
	v_xor_b32_e32 v40, 0xf0, v40
	scratch_store_b32 off, v4, off offset:452 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v36
	v_mov_b32_e32 v32, v2
	v_dual_mov_b32 v29, v3 :: v_dual_add_nc_u32 v2, s35, v2
	v_add_nc_u32_e32 v3, s56, v3
	scratch_store_b32 off, v4, off offset:464 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v37
	v_and_b32_e32 v35, 48, v35
	v_dual_mov_b32 v59, v2 :: v_dual_add_nc_u32 v2, s35, v2
	v_mov_b32_e32 v62, v3
	scratch_store_b32 off, v4, off offset:468 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v38
	v_lshl_or_b32 v44, v97, 6, v35
	v_mov_b32_e32 v31, v2
	v_add_nc_u32_e32 v3, s56, v3
	v_xor_b32_e32 v35, 0x90, v42
	scratch_store_b32 off, v4, off offset:472 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v11
	v_xor_b32_e32 v1, 16, v44
	v_xor_b32_e32 v41, 0x120, v42
	v_xor_b32_e32 v42, 0x1b0, v42
	.loc	1 662 35                        ; attention_backward.py:662:35
	s_mul_i32 s2, s2, s24
	scratch_store_b32 off, v4, off offset:476 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v39
	v_add_nc_u32_e32 v54, 0, v1
	v_xor_b32_e32 v1, 48, v44
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s65, s28, s3
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_cselect_b32 s63, s0, s13
	scratch_store_b32 off, v4, off offset:480 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v40
	v_add_nc_u32_e32 v58, 0, v1
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s0, s27, v222
	s_add_i32 s65, s65, s2
	v_add_nc_u32_e32 v49, 0, v35
	scratch_store_b32 off, v4, off offset:484 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, s35, v2
	v_xor_b32_e32 v2, 32, v44
	v_add_nc_u32_e32 v50, 0, v41
	v_dual_mov_b32 v228, v44 :: v_dual_add_nc_u32 v51, 0, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v61, v4 :: v_dual_add_nc_u32 v4, s35, v4
	v_add_nc_u32_e32 v57, 0, v2
	v_dual_mov_b32 v27, v3 :: v_dual_add_nc_u32 v2, s56, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v74, v9 :: v_dual_add_nc_u32 v1, s35, v4
	v_mov_b32_e32 v28, v4
	v_mov_b32_e32 v64, v2
	v_add_nc_u32_e32 v2, s56, v2
	v_mov_b32_e32 v76, v9
	v_mov_b32_e32 v63, v1
	v_dual_mov_b32 v78, v9 :: v_dual_add_nc_u32 v1, s35, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v53, v2 :: v_dual_add_nc_u32 v2, s56, v2
	v_mov_b32_e32 v80, v9
	v_dual_mov_b32 v52, v1 :: v_dual_add_nc_u32 v1, s35, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v66, v2
	v_add_nc_u32_e32 v2, s56, v2
	v_mov_b32_e32 v34, v9
	v_mov_b32_e32 v65, v1
	v_add_nc_u32_e32 v1, s35, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v35, v9 :: v_dual_add_nc_u32 v68, s56, v2
	v_mov_b32_e32 v36, v9
	v_dual_mov_b32 v26, v2 :: v_dual_add_nc_u32 v67, s35, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v229, v1 :: v_dual_add_nc_u32 v70, s56, v68
	v_mov_b32_e32 v37, v9
	v_dual_mov_b32 v38, v9 :: v_dual_add_nc_u32 v69, s35, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v39, v9 :: v_dual_add_nc_u32 v72, s56, v70
	v_mov_b32_e32 v40, v9
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v247, v98, v97
	v_add_nc_u32_e32 v71, s35, v69
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_mul_f32 s64, s61, 0x3fb8aa3b
	v_add_nc_u32_e32 v233, s56, v72
	s_cmp_lt_i32 s63, s60
	s_mov_b32 s62, 0
	v_add_nc_u32_e32 v230, s35, v71
	s_cselect_b32 s66, -1, 0
	v_add_nc_u32_e32 v236, s56, v233
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s51, 0x31027000
	v_add_nc_u32_e32 v234, s35, v230
	s_mov_b32 s50, 0x7ffffffe
	v_add_nc_u32_e32 v244, s56, v236
	s_and_b32 s53, s47, 0xffff
	s_mov_b32 s52, s46
	v_add_nc_u32_e32 v237, s35, v234
	s_and_b32 s41, s41, 0xffff
	v_add_nc_u32_e32 v239, s56, v244
	s_and_b32 s45, s45, 0xffff
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v97, off offset:520
	scratch_store_b32 off, v98, off offset:528
	v_add_nc_u32_e32 v232, s35, v237
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
	s_clause 0xc                            ; 52-byte Folded Reload
	scratch_load_b32 v2, off, off offset:268
	scratch_load_b32 v3, off, off offset:280
	scratch_load_b32 v4, off, off offset:288
	scratch_load_b32 v5, off, off offset:312
	scratch_load_b32 v6, off, off offset:332
	scratch_load_b32 v7, off, off offset:364
	scratch_load_b32 v8, off, off offset:396
	scratch_load_b32 v10, off, off offset:428
	scratch_load_b32 v11, off, off offset:460
	scratch_load_b32 v12, off, off offset:492
	scratch_load_b32 v13, off, off offset:500
	scratch_load_b32 v14, off, off offset:508
	scratch_load_b32 v15, off, off offset:516
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s2, s43, s56
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, vcc_hi
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v1, s2, v0, 2
	v_add_lshl_u32 v16, s2, v56, 2
	v_add_lshl_u32 v17, s2, v30, 2
	v_add_lshl_u32 v18, s2, v60, 2
	v_add_lshl_u32 v19, s2, v29, 2
	v_add_lshl_u32 v20, s2, v62, 2
	v_add_lshl_u32 v21, s2, v27, 2
	v_add_lshl_u32 v22, s2, v64, 2
	v_add_lshl_u32 v23, s2, v53, 2
	v_add_lshl_u32 v24, s2, v66, 2
	v_add_lshl_u32 v25, s2, v26, 2
	v_add_lshl_u32 v41, s2, v68, 2
	v_add_lshl_u32 v42, s2, v70, 2
	v_add_lshl_u32 v43, s2, v72, 2
	v_add_lshl_u32 v44, s2, v233, 2
	v_add_lshl_u32 v45, s2, v236, 2
	v_add_nc_u32_e32 v48, s56, v239
	v_add_lshl_u32 v46, s2, v244, 2
	v_add_lshl_u32 v47, s2, v239, 2
	s_mov_b32 s46, s50
	s_mov_b32 s47, s51
	v_add_lshl_u32 v48, s2, v48, 2
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_add_lshl_u32 v97, s43, v247, 2
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s43, s51
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v98, 0x400, v231
	v_add_nc_u32_e32 v99, 0x800, v231
	v_add_nc_u32_e32 v100, 0xc00, v231
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_cndmask_b32_e64 v97, 0x80000000, v97, s3
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v101, 0x1000, v231
	v_add_nc_u32_e32 v102, 0x1400, v231
	v_add_nc_u32_e32 v103, 0x1800, v231
	v_add_nc_u32_e32 v104, 0x1c00, v231
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s68, s68, 32
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v254, 0, v228
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(12)
	v_add_lshl_u32 v2, s2, v2, 2
	s_waitcnt vmcnt(11)
	v_add_lshl_u32 v3, s2, v3, 2
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s104
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(10)
	v_add_lshl_u32 v4, s2, v4, 2
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s103
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(9)
	v_add_lshl_u32 v5, s2, v5, 2
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s102
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v6, s2, v6, 2
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s101
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v7, s2, v7, 2
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s100
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v8, s2, v8, 2
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s99
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v10, s2, v10, 2
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s98
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v11, s2, v11, 2
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s97
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v12, s2, v12, 2
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s96
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v13, s2, v13, 2
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s95
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v14, s2, v14, 2
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s94
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v15, s2, v15, 2
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s93
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_b32 v1, v1, s[44:47], 0 offen
	buffer_load_b32 v2, v2, s[44:47], 0 offen
	buffer_load_b32 v3, v3, s[44:47], 0 offen
	buffer_load_b32 v4, v4, s[44:47], 0 offen
	buffer_load_b32 v5, v5, s[44:47], 0 offen
	buffer_load_b32 v6, v6, s[44:47], 0 offen
	buffer_load_b32 v7, v7, s[44:47], 0 offen
	buffer_load_b32 v8, v8, s[44:47], 0 offen
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s92
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s91
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s90
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s89
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_b32 v10, v10, s[44:47], 0 offen
	buffer_load_b32 v11, v11, s[44:47], 0 offen
	buffer_load_b32 v12, v12, s[44:47], 0 offen
	buffer_load_b32 v13, v13, s[44:47], 0 offen
	buffer_load_b32 v14, v14, s[44:47], 0 offen
	buffer_load_b32 v15, v15, s[44:47], 0 offen
	buffer_load_b32 v16, v16, s[44:47], 0 offen
	buffer_load_b32 v17, v17, s[44:47], 0 offen
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s88
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s87
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s86
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s85
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s84
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s83
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s82
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s81
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_b32 v18, v18, s[44:47], 0 offen
	buffer_load_b32 v19, v19, s[44:47], 0 offen
	buffer_load_b32 v20, v20, s[44:47], 0 offen
	buffer_load_b32 v21, v21, s[44:47], 0 offen
	buffer_load_b32 v22, v22, s[44:47], 0 offen
	buffer_load_b32 v23, v23, s[44:47], 0 offen
	buffer_load_b32 v24, v24, s[44:47], 0 offen
	buffer_load_b32 v25, v25, s[44:47], 0 offen
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s80
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s79
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s78
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s77
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s55
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s55, s51
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s54
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s54, s50
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s42
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s42, s50
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	s_clause 0x7
	buffer_load_b32 v41, v41, s[44:47], 0 offen
	buffer_load_b32 v42, v42, s[44:47], 0 offen
	buffer_load_b32 v43, v43, s[44:47], 0 offen
	buffer_load_b32 v44, v44, s[44:47], 0 offen
	buffer_load_b32 v45, v45, s[44:47], 0 offen
	buffer_load_b32 v46, v46, s[44:47], 0 offen
	buffer_load_b32 v47, v47, s[44:47], 0 offen
	buffer_load_b32 v48, v48, s[44:47], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v118, v97, s[52:55], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v117, v97, s[40:43], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_lshlrev_b32_e32 v97, 1, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_i32 s68, s60
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v97, v212, v97
	s_waitcnt vmcnt(32)
	ds_store_2addr_stride64_b32 v97, v1, v2 offset1:1
	s_waitcnt vmcnt(30)
	ds_store_2addr_stride64_b32 v97, v3, v4 offset0:2 offset1:3
	s_waitcnt vmcnt(28)
	ds_store_2addr_stride64_b32 v97, v5, v6 offset0:4 offset1:5
	s_waitcnt vmcnt(26)
	ds_store_2addr_stride64_b32 v97, v7, v8 offset0:6 offset1:7
	s_waitcnt vmcnt(24)
	ds_store_2addr_stride64_b32 v97, v10, v11 offset0:8 offset1:9
	s_waitcnt vmcnt(22)
	ds_store_2addr_stride64_b32 v97, v12, v13 offset0:10 offset1:11
	s_waitcnt vmcnt(20)
	ds_store_2addr_stride64_b32 v97, v14, v15 offset0:12 offset1:13
	s_waitcnt vmcnt(18)
	ds_store_2addr_stride64_b32 v97, v16, v17 offset0:14 offset1:15
	s_waitcnt vmcnt(16)
	ds_store_2addr_stride64_b32 v97, v18, v19 offset0:16 offset1:17
	s_waitcnt vmcnt(14)
	ds_store_2addr_stride64_b32 v97, v20, v21 offset0:18 offset1:19
	s_waitcnt vmcnt(12)
	ds_store_2addr_stride64_b32 v97, v22, v23 offset0:20 offset1:21
	s_waitcnt vmcnt(10)
	ds_store_2addr_stride64_b32 v97, v24, v25 offset0:22 offset1:23
	s_waitcnt vmcnt(8)
	ds_store_2addr_stride64_b32 v97, v41, v42 offset0:24 offset1:25
	s_waitcnt vmcnt(6)
	ds_store_2addr_stride64_b32 v97, v43, v44 offset0:26 offset1:27
	s_waitcnt vmcnt(4)
	ds_store_2addr_stride64_b32 v97, v45, v46 offset0:28 offset1:29
	s_waitcnt vmcnt(2)
	ds_store_2addr_stride64_b32 v97, v47, v48 offset0:30 offset1:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[162:163], v98 offset1:32
	ds_load_2addr_b32 v[178:179], v98 offset0:64 offset1:96
	ds_load_2addr_b32 v[164:165], v98 offset0:128 offset1:160
	ds_load_2addr_b32 v[180:181], v98 offset0:192 offset1:224
	ds_load_2addr_b32 v[166:167], v99 offset1:32
	ds_load_2addr_b32 v[182:183], v99 offset0:64 offset1:96
	ds_load_2addr_b32 v[168:169], v99 offset0:128 offset1:160
	ds_load_2addr_b32 v[184:185], v99 offset0:192 offset1:224
	ds_load_2addr_b32 v[170:171], v100 offset1:32
	ds_load_2addr_b32 v[186:187], v100 offset0:64 offset1:96
	ds_load_2addr_b32 v[172:173], v100 offset0:128 offset1:160
	ds_load_2addr_b32 v[188:189], v100 offset0:192 offset1:224
	ds_load_2addr_b32 v[160:161], v101 offset1:32
	ds_load_2addr_b32 v[190:191], v101 offset0:64 offset1:96
	ds_load_2addr_b32 v[158:159], v101 offset0:128 offset1:160
	ds_load_2addr_b32 v[192:193], v101 offset0:192 offset1:224
	ds_load_2addr_b32 v[156:157], v102 offset1:32
	ds_load_2addr_b32 v[194:195], v102 offset0:64 offset1:96
	ds_load_2addr_b32 v[154:155], v102 offset0:128 offset1:160
	ds_load_2addr_b32 v[196:197], v102 offset0:192 offset1:224
	ds_load_2addr_b32 v[152:153], v103 offset1:32
	ds_load_2addr_b32 v[198:199], v103 offset0:64 offset1:96
	ds_load_2addr_b32 v[150:151], v103 offset0:128 offset1:160
	ds_load_2addr_b32 v[200:201], v103 offset0:192 offset1:224
	ds_load_2addr_b32 v[148:149], v104 offset1:32
	ds_load_2addr_b32 v[202:203], v104 offset0:64 offset1:96
	ds_load_2addr_b32 v[146:147], v104 offset0:128 offset1:160
	ds_load_2addr_b32 v[204:205], v104 offset0:192 offset1:224
	ds_load_2addr_b32 v[174:175], v231 offset1:32
	ds_load_2addr_b32 v[206:207], v231 offset0:64 offset1:96
	ds_load_2addr_b32 v[176:177], v231 offset0:128 offset1:160
	ds_load_2addr_b32 v[208:209], v231 offset0:192 offset1:224
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b32 v97, v1, v18 offset1:16
	scratch_load_b32 v1, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v2, v19 offset1:16
	scratch_load_b32 v1, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v3, v20 offset1:16
	scratch_load_b32 v1, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v4, v21 offset1:16
	scratch_load_b32 v1, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v5, v22 offset1:16
	scratch_load_b32 v1, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v6, v23 offset1:16
	scratch_load_b32 v1, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v7, v24 offset1:16
	scratch_load_b32 v1, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v8, v25 offset1:16
	scratch_load_b32 v1, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v10, v41 offset1:16
	scratch_load_b32 v1, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v11, v42 offset1:16
	scratch_load_b32 v1, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v12, v43 offset1:16
	scratch_load_b32 v1, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v13, v44 offset1:16
	scratch_load_b32 v1, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v14, v45 offset1:16
	scratch_load_b32 v1, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v15, v46 offset1:16
	scratch_load_b32 v1, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v16, v47 offset1:16
	scratch_load_b32 v1, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v17, v48 offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:260
	scratch_load_b32 v5, off, off offset:412
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v1, 0, v1
	s_waitcnt vmcnt(0)
	ds_load_b128 v[5:8], v5
	ds_load_b128 v[1:4], v1
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s13, v5, v5
	v_cmp_o_f32_e64 s14, v6, v6
	v_cmp_o_f32_e64 s15, v7, v7
	v_cmp_o_f32_e64 s16, v8, v8
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v10, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cmp_o_f32_e64 s2, v2, v2
	v_cmp_o_f32_e64 s3, v3, v3
	v_cmp_o_f32_e64 s11, v4, v4
	v_add3_u32 v10, v1, v10, 0x7fff
	v_bfe_u32 v1, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v11, v2, v1, 0x7fff
	v_bfe_u32 v1, v3, 16, 1
	v_add3_u32 v12, v3, v1, 0x7fff
	v_bfe_u32 v1, v4, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v13, v4, v1, 0x7fff
	v_bfe_u32 v1, v5, 16, 1
	v_add3_u32 v14, v5, v1, 0x7fff
	v_bfe_u32 v1, v6, 16, 1
	scratch_load_b32 v5, off, off offset:420 ; 4-byte Folded Reload
	v_add3_u32 v15, v6, v1, 0x7fff
	v_bfe_u32 v1, v7, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v16, v7, v1, 0x7fff
	v_bfe_u32 v1, v8, 16, 1
	v_add3_u32 v17, v8, v1, 0x7fff
	scratch_load_b32 v1, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[5:8], v5
	s_waitcnt vmcnt(0)
	ds_load_b128 v[1:4], v1
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s24, v8, v8
	v_cmp_o_f32_e64 s21, v5, v5
	v_cmp_o_f32_e64 s22, v6, v6
	v_cmp_o_f32_e64 s23, v7, v7
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v18, v1, 16, 1
	v_cmp_o_f32_e64 s17, v1, v1
	v_cmp_o_f32_e64 s20, v4, v4
	v_cmp_o_f32_e64 s18, v2, v2
	v_cmp_o_f32_e64 s19, v3, v3
	v_add3_u32 v18, v1, v18, 0x7fff
	v_bfe_u32 v1, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v19, v2, v1, 0x7fff
	v_bfe_u32 v1, v3, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v12.h, s3
	v_cndmask_b16 v2.h, 0x7fff, v13.h, s11
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v12, v9
	v_mov_b32_e32 v13, v9
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v20, v3, v1, 0x7fff
	v_bfe_u32 v1, v4, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v14.h, s13
	v_cndmask_b16 v3.h, 0x7fff, v15.h, s14
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v14, v9
	v_mov_b32_e32 v15, v9
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v21, v4, v1, 0x7fff
	v_bfe_u32 v1, v5, 16, 1
	v_cndmask_b16 v4.l, 0x7fff, v16.h, s15
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v16, v9
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v4.h, 0x7fff, v17.h, s16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v22, v5, v1, 0x7fff
	v_bfe_u32 v1, v6, 16, 1
	v_cndmask_b16 v5.l, 0x7fff, v18.h, s17
	v_cndmask_b16 v5.h, 0x7fff, v19.h, s18
	v_add3_u32 v23, v6, v1, 0x7fff
	v_bfe_u32 v1, v7, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v20.h, s19
	v_cndmask_b16 v6.h, 0x7fff, v21.h, s20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v24, v7, v1, 0x7fff
	v_bfe_u32 v1, v8, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v22.h, s21
	v_cndmask_b16 v7.h, 0x7fff, v23.h, s22
	v_add3_u32 v8, v8, v1, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v1.h, 0x7fff, v11.h, s2
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v10, v9
	v_mov_b32_e32 v11, v9
	v_dual_mov_b32 v104, v16 :: v_dual_mov_b32 v103, v15
	v_dual_mov_b32 v102, v14 :: v_dual_mov_b32 v101, v13
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v100, v12 :: v_dual_mov_b32 v99, v11
	v_dual_mov_b32 v98, v10 :: v_dual_mov_b32 v97, v9
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[10:13], off, off offset:224
	scratch_load_b128 v[14:17], off, off offset:240
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v8.l, 0x7fff, v24.h, s23
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s24
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[10:17], v[1:8], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:432
	scratch_load_b32 v5, off, off offset:436
	s_waitcnt vmcnt(1)
	ds_load_b128 v[1:4], v1
	s_waitcnt vmcnt(0)
	ds_load_b128 v[5:8], v5
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v10, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s13, v5, v5
	v_cmp_o_f32_e64 s2, v2, v2
	v_cmp_o_f32_e64 s3, v3, v3
	v_add3_u32 v10, v1, v10, 0x7fff
	v_bfe_u32 v1, v2, 16, 1
	v_cmp_o_f32_e64 s11, v4, v4
	v_cmp_o_f32_e64 s14, v6, v6
	v_cmp_o_f32_e64 s15, v7, v7
	v_cmp_o_f32_e64 s16, v8, v8
	v_add3_u32 v11, v2, v1, 0x7fff
	v_bfe_u32 v1, v3, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v12, v3, v1, 0x7fff
	v_bfe_u32 v1, v4, 16, 1
	v_add3_u32 v13, v4, v1, 0x7fff
	v_bfe_u32 v1, v5, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v14, v5, v1, 0x7fff
	v_bfe_u32 v1, v6, 16, 1
	scratch_load_b32 v5, off, off offset:444 ; 4-byte Folded Reload
	v_add3_u32 v15, v6, v1, 0x7fff
	v_bfe_u32 v1, v7, 16, 1
	v_add3_u32 v16, v7, v1, 0x7fff
	v_bfe_u32 v1, v8, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v17, v8, v1, 0x7fff
	scratch_load_b32 v1, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[5:8], v5
	s_waitcnt vmcnt(0)
	ds_load_b128 v[1:4], v1
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s24, v8, v8
	v_cmp_o_f32_e64 s21, v5, v5
	v_cmp_o_f32_e64 s22, v6, v6
	v_cmp_o_f32_e64 s23, v7, v7
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v18, v1, 16, 1
	v_cmp_o_f32_e64 s17, v1, v1
	v_cmp_o_f32_e64 s18, v2, v2
	v_cmp_o_f32_e64 s19, v3, v3
	v_cmp_o_f32_e64 s20, v4, v4
	v_add3_u32 v18, v1, v18, 0x7fff
	v_bfe_u32 v1, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v19, v2, v1, 0x7fff
	v_bfe_u32 v1, v3, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v12.h, s3
	v_cndmask_b16 v2.h, 0x7fff, v13.h, s11
	v_add3_u32 v20, v3, v1, 0x7fff
	v_bfe_u32 v1, v4, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v14.h, s13
	v_cndmask_b16 v3.h, 0x7fff, v15.h, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v21, v4, v1, 0x7fff
	v_bfe_u32 v1, v5, 16, 1
	v_cndmask_b16 v4.l, 0x7fff, v16.h, s15
	v_cndmask_b16 v4.h, 0x7fff, v17.h, s16
	v_add3_u32 v22, v5, v1, 0x7fff
	v_bfe_u32 v1, v6, 16, 1
	v_cndmask_b16 v5.l, 0x7fff, v18.h, s17
	v_cndmask_b16 v5.h, 0x7fff, v19.h, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v23, v6, v1, 0x7fff
	v_bfe_u32 v1, v7, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v20.h, s19
	v_cndmask_b16 v6.h, 0x7fff, v21.h, s20
	v_add3_u32 v24, v7, v1, 0x7fff
	v_bfe_u32 v1, v8, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v22.h, s21
	v_cndmask_b16 v7.h, 0x7fff, v23.h, s22
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v8, v8, v1, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v1.h, 0x7fff, v11.h, s2
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[10:13], off, off offset:192
	scratch_load_b128 v[14:17], off, off offset:208
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v8.l, 0x7fff, v24.h, s23
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s24
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[10:17], v[1:8], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:448
	scratch_load_b32 v5, off, off offset:452
	s_waitcnt vmcnt(1)
	ds_load_b128 v[1:4], v1
	s_waitcnt vmcnt(0)
	ds_load_b128 v[5:8], v5
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v10, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s13, v5, v5
	v_cmp_o_f32_e64 s2, v2, v2
	v_cmp_o_f32_e64 s3, v3, v3
	v_add3_u32 v10, v1, v10, 0x7fff
	v_bfe_u32 v1, v2, 16, 1
	v_cmp_o_f32_e64 s11, v4, v4
	v_cmp_o_f32_e64 s14, v6, v6
	v_cmp_o_f32_e64 s15, v7, v7
	v_cmp_o_f32_e64 s16, v8, v8
	v_add3_u32 v11, v2, v1, 0x7fff
	v_bfe_u32 v1, v3, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v12, v3, v1, 0x7fff
	v_bfe_u32 v1, v4, 16, 1
	v_add3_u32 v13, v4, v1, 0x7fff
	v_bfe_u32 v1, v5, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v14, v5, v1, 0x7fff
	v_bfe_u32 v1, v6, 16, 1
	scratch_load_b32 v5, off, off offset:468 ; 4-byte Folded Reload
	v_add3_u32 v15, v6, v1, 0x7fff
	v_bfe_u32 v1, v7, 16, 1
	v_add3_u32 v16, v7, v1, 0x7fff
	v_bfe_u32 v1, v8, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v17, v8, v1, 0x7fff
	scratch_load_b32 v1, off, off offset:464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[5:8], v5
	s_waitcnt vmcnt(0)
	ds_load_b128 v[1:4], v1
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s21, v5, v5
	v_cmp_o_f32_e64 s22, v6, v6
	v_cmp_o_f32_e64 s23, v7, v7
	v_cmp_o_f32_e64 s24, v8, v8
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v18, v1, 16, 1
	v_cmp_o_f32_e64 s17, v1, v1
	v_cmp_o_f32_e64 s18, v2, v2
	v_cmp_o_f32_e64 s19, v3, v3
	v_cmp_o_f32_e64 s20, v4, v4
	v_add3_u32 v18, v1, v18, 0x7fff
	v_bfe_u32 v1, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v19, v2, v1, 0x7fff
	v_bfe_u32 v1, v3, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v12.h, s3
	v_cndmask_b16 v2.h, 0x7fff, v13.h, s11
	v_add3_u32 v20, v3, v1, 0x7fff
	v_bfe_u32 v1, v4, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v14.h, s13
	v_cndmask_b16 v3.h, 0x7fff, v15.h, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v21, v4, v1, 0x7fff
	v_bfe_u32 v1, v5, 16, 1
	v_cndmask_b16 v4.l, 0x7fff, v16.h, s15
	v_cndmask_b16 v4.h, 0x7fff, v17.h, s16
	v_add3_u32 v22, v5, v1, 0x7fff
	v_bfe_u32 v1, v6, 16, 1
	v_cndmask_b16 v5.l, 0x7fff, v18.h, s17
	v_cndmask_b16 v5.h, 0x7fff, v19.h, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v23, v6, v1, 0x7fff
	v_bfe_u32 v1, v7, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v20.h, s19
	v_cndmask_b16 v6.h, 0x7fff, v21.h, s20
	v_add3_u32 v24, v7, v1, 0x7fff
	v_bfe_u32 v1, v8, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v22.h, s21
	v_cndmask_b16 v7.h, 0x7fff, v23.h, s22
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v25, v8, v1, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v1.h, 0x7fff, v11.h, s2
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[10:13], off, off offset:160
	scratch_load_b128 v[14:17], off, off offset:176
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v8.l, 0x7fff, v24.h, s23
	v_cndmask_b16 v8.h, 0x7fff, v25.h, s24
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[10:17], v[1:8], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:472
	scratch_load_b32 v5, off, off offset:476
	s_waitcnt vmcnt(1)
	ds_load_b128 v[1:4], v1
	s_waitcnt vmcnt(0)
	ds_load_b128 v[5:8], v5
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v10, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s13, v5, v5
	v_cmp_o_f32_e64 s2, v2, v2
	v_cmp_o_f32_e64 s3, v3, v3
	v_add3_u32 v10, v1, v10, 0x7fff
	v_bfe_u32 v1, v2, 16, 1
	v_cmp_o_f32_e64 s11, v4, v4
	v_cmp_o_f32_e64 s14, v6, v6
	v_cmp_o_f32_e64 s15, v7, v7
	v_cmp_o_f32_e64 s16, v8, v8
	v_add3_u32 v11, v2, v1, 0x7fff
	v_bfe_u32 v1, v3, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v12, v3, v1, 0x7fff
	v_bfe_u32 v1, v4, 16, 1
	v_add3_u32 v13, v4, v1, 0x7fff
	v_bfe_u32 v1, v5, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v14, v5, v1, 0x7fff
	v_bfe_u32 v1, v6, 16, 1
	scratch_load_b32 v5, off, off offset:484 ; 4-byte Folded Reload
	v_add3_u32 v15, v6, v1, 0x7fff
	v_bfe_u32 v1, v7, 16, 1
	v_add3_u32 v16, v7, v1, 0x7fff
	v_bfe_u32 v1, v8, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v17, v8, v1, 0x7fff
	scratch_load_b32 v1, off, off offset:480 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[5:8], v5
	s_waitcnt vmcnt(0)
	ds_load_b128 v[1:4], v1
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s21, v5, v5
	v_cmp_o_f32_e64 s22, v6, v6
	v_cmp_o_f32_e64 s23, v7, v7
	v_cmp_o_f32_e64 s24, v8, v8
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v18, v1, 16, 1
	v_cmp_o_f32_e64 s17, v1, v1
	v_cmp_o_f32_e64 s18, v2, v2
	v_cmp_o_f32_e64 s19, v3, v3
	v_cmp_o_f32_e64 s20, v4, v4
	v_add3_u32 v18, v1, v18, 0x7fff
	v_bfe_u32 v1, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v19, v2, v1, 0x7fff
	v_bfe_u32 v1, v3, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v12.h, s3
	v_cndmask_b16 v2.h, 0x7fff, v13.h, s11
	v_add3_u32 v20, v3, v1, 0x7fff
	v_bfe_u32 v1, v4, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v14.h, s13
	v_cndmask_b16 v3.h, 0x7fff, v15.h, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v21, v4, v1, 0x7fff
	v_bfe_u32 v1, v5, 16, 1
	v_cndmask_b16 v4.l, 0x7fff, v16.h, s15
	v_cndmask_b16 v4.h, 0x7fff, v17.h, s16
	v_add3_u32 v22, v5, v1, 0x7fff
	v_bfe_u32 v1, v6, 16, 1
	v_cndmask_b16 v5.l, 0x7fff, v18.h, s17
	v_cndmask_b16 v5.h, 0x7fff, v19.h, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v23, v6, v1, 0x7fff
	v_bfe_u32 v1, v7, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v20.h, s19
	v_cndmask_b16 v6.h, 0x7fff, v21.h, s20
	v_add3_u32 v24, v7, v1, 0x7fff
	v_bfe_u32 v1, v8, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v22.h, s21
	v_cndmask_b16 v7.h, 0x7fff, v23.h, s22
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v25, v8, v1, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v1.h, 0x7fff, v11.h, s2
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[10:13], off, off offset:128
	scratch_load_b128 v[14:17], off, off offset:144
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v8.l, 0x7fff, v24.h, s23
	v_cndmask_b16 v8.h, 0x7fff, v25.h, s24
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[10:17], v[1:8], v[97:104]
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v1, s64, v105, -v118
	v_fma_f32 v7, s64, v111, -v118
	v_fma_f32 v2, s64, v106, -v118
	v_fma_f32 v3, s64, v107, -v118
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v10, v97, v117
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v1, v1
	.loc	1 703 34 is_stmt 0              ; attention_backward.py:703:34
	v_fma_f32 v4, s64, v108, -v118
	.loc	1 720 47 is_stmt 1              ; attention_backward.py:720:47
	v_sub_f32_e32 v13, v100, v117
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v5, s64, v109, -v118
	v_fma_f32 v6, s64, v110, -v118
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v15, v102, v117
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v8, s64, v112, -v118
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v97, v171, 16, 1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v111, 0, v1, s76
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v14, v101, v117
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v97, v171, v97, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v1, v111, v10
	.loc	1 720 47 is_stmt 0              ; attention_backward.py:720:47
	v_sub_f32_e32 v11, v98, v117
	.loc	1 721 38 is_stmt 1              ; attention_backward.py:721:38
	v_mul_f32_e32 v1, s61, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v10, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_add3_u32 v10, v1, v10, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v1, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v225, 0, v1, s75
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_dual_sub_f32 v12, v99, v117 :: v_dual_mul_f32 v1, v225, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v1, s61, v1
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v2, v1, 16, 1
	v_cmp_o_f32_e64 s2, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v11, v1, v2, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v1, v3
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v245, 0, v1, s74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_dual_sub_f32 v16, v103, v117 :: v_dual_mul_f32 v1, v245, v12
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v1, s61, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v2, v1, 16, 1
	v_cmp_o_f32_e64 s3, v1, v1
	v_add3_u32 v3, v1, v2, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v1, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v221, 0, v1, s73
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v1, v221, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v1, s61, v1
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v2, v1, 16, 1
	v_cmp_o_f32_e64 s11, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v4, v1, v2, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v1, v5
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v1, 0, v1, s72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v2, v1, v14
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v2, s61, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v5, v2, 16, 1
	v_cmp_o_f32_e64 s13, v2, v2
	v_add3_u32 v5, v2, v5, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v2, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v246, 0, v2, s71
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_dual_sub_f32 v17, v104, v117 :: v_dual_mul_f32 v2, v246, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v2, s61, v2
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v6, v2, 16, 1
	v_cmp_o_f32_e64 s14, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v6, v2, v6, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v2, v7
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v210, 0, v2, s70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v2, v210, v16
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v2, s61, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v7, v2, 16, 1
	v_cmp_o_f32_e64 s15, v2, v2
	v_add3_u32 v7, v2, v7, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v2, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v211, 0, v2, s69
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v2, v211, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v2, s61, v2
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v8, v2, 16, 1
	v_cmp_o_f32_e64 s16, v2, v2
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v8, v2, v8, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v5.h, s13
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	scratch_load_b32 v5, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v2.l, 0x7fff, v10.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v111, v111
	v_cmp_o_f32_e64 s13, v221, v221
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v250, 0, v5
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v5, v210, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v250, v2
	ds_store_b16_d16_hi v250, v2 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v2.l, 0x7fff, v11.h, s2
	v_cndmask_b16 v2.h, 0x7fff, v6.h, s14
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s2, v225, v225
	v_bfe_u32 v6, v211, 16, 1
	v_add3_u32 v5, v210, v5, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v49, v2
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v2.l, 0x7fff, v3.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v49, v2 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v2.h, 0x7fff, v7.h, s15
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s14, v210, v210
	v_add3_u32 v6, v211, v6, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v50, v2
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s11
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v50, v2 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v2.h, 0x7fff, v8.h, s16
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v51, v2
	ds_store_b16_d16_hi v51, v2 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[117:120], v254
	ds_load_b128 v[121:124], v54
	ds_load_b128 v[98:101], v57
	ds_load_b128 v[102:105], v58
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v212, v113
	ds_store_b16 v212, v114 offset:128
	ds_store_b16 v212, v115 offset:256
	ds_store_b16 v212, v116 offset:384
	ds_store_b16 v212, v125 offset:512
	ds_store_b16 v212, v126 offset:640
	ds_store_b16 v212, v127 offset:768
	ds_store_b16 v212, v253 offset:896
	ds_store_b16 v212, v128 offset:1024
	ds_store_b16 v212, v129 offset:1152
	ds_store_b16 v212, v130 offset:1280
	ds_store_b16 v212, v131 offset:1408
	ds_store_b16 v212, v132 offset:1536
	ds_store_b16 v212, v133 offset:1664
	ds_store_b16 v212, v134 offset:1792
	ds_store_b16 v212, v242 offset:1920
	ds_store_b16 v212, v135 offset:2048
	ds_store_b16 v212, v136 offset:2176
	ds_store_b16 v212, v137 offset:2304
	ds_store_b16 v212, v138 offset:2432
	ds_store_b16 v212, v139 offset:2560
	ds_store_b16 v212, v140 offset:2688
	ds_store_b16 v212, v141 offset:2816
	ds_store_b16 v212, v252 offset:2944
	ds_store_b16 v212, v142 offset:3072
	ds_store_b16 v212, v143 offset:3200
	ds_store_b16 v212, v144 offset:3328
	ds_store_b16 v212, v145 offset:3456
	ds_store_b16 v212, v240 offset:3584
	ds_store_b16 v212, v248 offset:3712
	ds_store_b16 v212, v249 offset:3840
	ds_store_b16 v212, v241 offset:3968
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v127, v243 offset:512
	ds_load_u16_d16 v128, v243 offset:768
	ds_load_u16_d16 v129, v243 offset:1024
	ds_load_u16_d16 v132, v243 offset:1792
	ds_load_u16_d16 v130, v243 offset:1280
	ds_load_u16_d16 v137, v243 offset:1088
	ds_load_u16_d16 v136, v243 offset:832
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16_hi v137, v243 offset:1216
	ds_load_u16_d16 v126, v243 offset:256
	ds_load_u16_d16 v125, v243
	ds_load_u16_d16 v131, v243 offset:1536
	ds_load_u16_d16_hi v127, v243 offset:640
	ds_load_u16_d16_hi v128, v243 offset:896
	ds_load_u16_d16_hi v129, v243 offset:1152
	ds_load_u16_d16 v138, v243 offset:1344
	ds_load_u16_d16 v109, v243 offset:2816
	ds_load_u16_d16 v110, v243 offset:3072
	ds_load_u16_d16 v116, v243 offset:2624
	ds_load_u16_d16 v115, v243 offset:2368
	ds_load_u16_d16 v106, v243 offset:2048
	ds_load_u16_d16 v107, v243 offset:2304
	ds_load_u16_d16 v108, v243 offset:2560
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v116, v243 offset:2752
	ds_load_u16_d16_hi v131, v243 offset:1664
	ds_load_u16_d16_hi v132, v243 offset:1920
	ds_load_u16_d16_hi v130, v243 offset:1408
	ds_load_u16_d16 v133, v243 offset:64
	ds_load_u16_d16_hi v126, v243 offset:384
	ds_load_u16_d16 v135, v243 offset:576
	ds_load_u16_d16 v134, v243 offset:320
	ds_load_u16_d16_hi v125, v243 offset:128
	ds_load_u16_d16 v139, v243 offset:1600
	ds_load_u16_d16 v114, v243 offset:2112
	ds_load_u16_d16 v140, v243 offset:1856
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v2, v111, 16, 1
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v133, v243 offset:192
	ds_load_u16_d16_hi v136, v243 offset:960
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v135, v243 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v134, v243 offset:448
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v2, v111, v2, 0x7fff
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_u16_d16_hi v138, v243 offset:1472
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v139, v243 offset:1728
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v140, v243 offset:1984
	ds_load_u16_d16_hi v109, v243 offset:2944
	ds_load_u16_d16_hi v108, v243 offset:2688
	ds_load_u16_d16_hi v107, v243 offset:2432
	ds_load_u16_d16_hi v106, v243 offset:2176
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_mov_b16_e64 v240.l, 0
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v240.h, 0x7fff, v2.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[89:96], v[125:132], v[117:124], v[89:96]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cmp_o_f32_e64 s11, v245, v245
	v_cmp_o_f32_e64 s15, v211, v211
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v2, v111, v240
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s14
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v8, v208, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v7.l, v240.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s15
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v3, v2, 16, 1
	v_cmp_o_f32_e64 s3, v2, v2
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v8, v208, v8, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v5.l, v240.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[133:140], v[117:124], v[81:88]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v122, v2, v3, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v2, v1, 16, 1
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_u16_d16 v121, v243 offset:3904
	ds_load_u16_d16 v117, v243 offset:2880
	ds_load_u16_d16 v111, v243 offset:3328
	ds_load_u16_d16 v118, v243 offset:3136
	ds_load_u16_d16 v112, v243 offset:3584
	ds_load_u16_d16 v113, v243 offset:3840
	ds_load_u16_d16 v120, v243 offset:3648
	ds_load_u16_d16 v119, v243 offset:3392
	ds_load_u16_d16_hi v115, v243 offset:2496
	ds_load_u16_d16_hi v114, v243 offset:2240
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v121, v243 offset:4032
	ds_load_u16_d16_hi v110, v243 offset:3200
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v117, v243 offset:3008
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v111, v243 offset:3456
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v118, v243 offset:3264
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v2, v1, v2, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v2.l, v240.l
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v112, v243 offset:3712
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v113, v243 offset:3968
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v120, v243 offset:3776
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v119, v243 offset:3520
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v2.h, 0x7fff, v2.h, vcc_lo
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_barrier
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v6.l, v240.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v15.l, v240.l
	v_mov_b16_e64 v10.l, v240.l
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v1, v1, v2
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v11.l, v240.l
	v_mov_b16_e64 v12.l, v240.l
	v_mov_b16_e64 v13.l, v240.l
	v_mov_b16_e64 v14.l, v240.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v3, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v16.l, v240.l
	v_mov_b16_e64 v17.l, v240.l
	v_mov_b16_e64 v139.l, v240.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v138, v1, v3, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v1, v225, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v138.l, v240.l
	v_mov_b16_e64 v140.l, v240.l
	v_mov_b16_e64 v141.l, v240.l
	v_mov_b16_e64 v145.l, v240.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v1, v225, v1, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v1.l, v240.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v142.l, v240.l
	v_mov_b16_e64 v144.l, v240.l
	v_mov_b16_e64 v143.l, v240.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s2
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v250, v2 offset:512
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v2, v246, 16, 1
	v_cmp_o_f32_e64 s2, v246, v246
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v41.l, v240.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v49, v1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v43.l, v240.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v2, v246, v2, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v2.l, v240.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v44.l, v240.l
	v_mov_b16_e64 v45.l, v240.l
	v_mov_b16_e64 v47.l, v240.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s2
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v3, v225, v1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v249.l, v240.l
	v_mov_b16_e64 v42.l, v240.l
	v_mov_b16_e64 v46.l, v240.l
	v_mov_b16_e64 v241.l, v240.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v1, v3, 16, 1
	v_cmp_o_f32_e64 s2, v3, v3
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v225.l, v240.l
	v_mov_b16_e64 v48.l, v240.l
	v_mov_b16_e64 v242.l, v240.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v4, v3, v1, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v1, v245, 16, 1
	v_bfe_u32 v3, v221, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v227.l, v240.l
	v_mov_b16_e64 v235.l, v240.l
	v_mov_b16_e64 v251.l, v240.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v1, v245, v1, 0x7fff
	v_add3_u32 v3, v221, v3, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v1.l, 0x7fff, v122.h, s3
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e64 v3.l, v240.l
	.loc	1 732 54 is_stmt 1              ; attention_backward.py:732:54
	v_mov_b16_e64 v253.l, v240.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v7.h, 0x7fff, v1.h, s11
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s13
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v250, v240
	ds_store_b16_d16_hi v49, v2 offset:512
	ds_store_b16_d16_hi v50, v7
	ds_store_b16_d16_hi v50, v5 offset:512
	ds_store_b16_d16_hi v51, v3
	ds_store_b16_d16_hi v51, v6 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[130:133], v254
	ds_load_b128 v[134:137], v54
	ds_load_b128 v[122:125], v57
	ds_load_b128 v[126:129], v58
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v1.h, 0x7fff, v138.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v250, v1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v1.l, 0x7fff, v4.h, s2
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v4, v206, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v206, v206
	v_cmp_o_f32_e64 s2, v208, v208
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v3, v221, v3
	v_sub_f32_e32 v5, v210, v5
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v4, v206, v4, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v2, v246, v2
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v11.h, 0x7fff, v8.h, s2
	v_bfe_u32 v8, v192, 16, 1
	v_cmp_o_f32_e64 s2, v192, v192
	v_cndmask_b16 v10.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v178, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v178, v178
	v_add3_u32 v8, v192, v8, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v2, v2
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v250, v1 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v4, v178, v4, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s11, v5, v5
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v139.h, 0x7fff, v8.h, s2
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s2, v3, v3
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v8, v169, 16, 1
	v_cndmask_b16 v12.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v180, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v180, v180
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v224, v206, v10
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v8, v169, v8, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v238, v178, v12
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v4, v180, v4, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v250.l, v240.l
	v_mov_b16_e64 v8.l, v240.l
	v_mov_b16_e64 v210.l, v240.l
	v_mov_b16_e64 v246.l, v240.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v13.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v182, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v182, v182
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v252.l, v240.l
	v_mov_b16_e64 v248.l, v240.l
	v_mov_b16_e64 v97.l, v240.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v4, v182, v4, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v221.l, v240.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[89:96], v[106:113], v[98:105], v[89:96]
	v_wmma_f32_16x16x16_bf16 v[81:88], v[114:121], v[98:105], v[81:88]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v14.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v184, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v184, v184
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v220, v182, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v4, v184, v4, 0x7fff
	v_cndmask_b16 v15.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v186, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v186, v186
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v6, v211, v6
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v211.l, v240.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v4, v186, v4, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s13, v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v16.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v188, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v188, v188
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v255, v186, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v4, v188, v4, 0x7fff
	v_cndmask_b16 v17.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v190, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v190, v190
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v226, v188, v17
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v4, v190, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v138.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v194, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v194, v194
	v_add3_u32 v4, v194, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v140.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v196, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v196, v196
	v_add3_u32 v4, v196, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v141.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v198, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v198, v198
	v_add3_u32 v4, v198, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v142.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v200, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v200, v200
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v198, v198, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v4, v200, v4, 0x7fff
	v_cndmask_b16 v143.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v202, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v202, v202
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v4, v202, v4, 0x7fff
	v_cndmask_b16 v144.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v204, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v204, v204
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v4, v204, v4, 0x7fff
	v_cndmask_b16 v145.h, 0x7fff, v4.h, vcc_lo
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v4, v245, v7
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v245.l, v240.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v182, v204, v145
	.loc	1 728 34 is_stmt 1              ; attention_backward.py:728:34
	v_bfe_u32 v7, v4, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v7, v4, v7, 0x7fff
	v_bfe_u32 v4, v3, 16, 1
	v_add3_u32 v4, v3, v4, 0x7fff
	v_bfe_u32 v3, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v3, v2, v3, 0x7fff
	v_bfe_u32 v2, v5, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v2, v5, v2, 0x7fff
	v_bfe_u32 v5, v6, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v49, v1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v1.l, 0x7fff, v7.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v49, v1 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s11
	v_add3_u32 v5, v6, v5, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v174, v174
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v50, v1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v1.l, 0x7fff, v4.h, s2
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v50, v1 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v1.h, 0x7fff, v5.h, s13
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v51, v1
	ds_store_b16_d16_hi v51, v1 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v1, v174, 16, 1
	v_bfe_u32 v2, v162, 16, 1
	v_bfe_u32 v3, v164, 16, 1
	v_bfe_u32 v4, v166, 16, 1
	v_bfe_u32 v5, v168, 16, 1
	v_add3_u32 v1, v174, v1, 0x7fff
	v_add3_u32 v2, v162, v2, 0x7fff
	v_cmp_o_f32_e64 s2, v162, v162
	v_add3_u32 v3, v164, v3, 0x7fff
	v_cmp_o_f32_e64 s3, v164, v164
	v_cndmask_b16 v251.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v176, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v176, v176
	v_add3_u32 v4, v166, v4, 0x7fff
	v_cmp_o_f32_e64 s11, v166, v166
	v_add3_u32 v5, v168, v5, 0x7fff
	v_add3_u32 v1, v176, v1, 0x7fff
	v_cmp_o_f32_e64 s13, v168, v168
	v_cndmask_b16 v235.h, 0x7fff, v2.h, s2
	v_cndmask_b16 v253.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v252.h, 0x7fff, v4.h, s11
	v_cndmask_b16 v227.h, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v249.h, 0x7fff, v5.h, s13
	v_bfe_u32 v1, v170, 16, 1
	v_bfe_u32 v2, v172, 16, 1
	v_bfe_u32 v3, v160, 16, 1
	v_bfe_u32 v4, v158, 16, 1
	v_bfe_u32 v5, v156, 16, 1
	v_add3_u32 v1, v170, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v170, v170
	v_add3_u32 v2, v172, v2, 0x7fff
	v_cmp_o_f32_e64 s2, v172, v172
	v_add3_u32 v3, v160, v3, 0x7fff
	v_cmp_o_f32_e64 s3, v160, v160
	v_add3_u32 v4, v158, v4, 0x7fff
	v_cmp_o_f32_e64 s11, v158, v158
	v_add3_u32 v5, v156, v5, 0x7fff
	v_cmp_o_f32_e64 s13, v156, v156
	v_cndmask_b16 v250.h, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v248.h, 0x7fff, v2.h, s2
	v_cndmask_b16 v246.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v245.h, 0x7fff, v4.h, s11
	v_cndmask_b16 v242.h, 0x7fff, v5.h, s13
	v_bfe_u32 v1, v154, 16, 1
	v_bfe_u32 v2, v152, 16, 1
	v_bfe_u32 v3, v150, 16, 1
	v_bfe_u32 v4, v148, 16, 1
	v_bfe_u32 v5, v146, 16, 1
	v_add3_u32 v1, v154, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v154, v154
	v_add3_u32 v2, v152, v2, 0x7fff
	v_cmp_o_f32_e64 s2, v152, v152
	v_add3_u32 v3, v150, v3, 0x7fff
	v_cmp_o_f32_e64 s3, v150, v150
	v_add3_u32 v4, v148, v4, 0x7fff
	v_cmp_o_f32_e64 s11, v148, v148
	v_add3_u32 v5, v146, v5, 0x7fff
	v_cmp_o_f32_e64 s13, v146, v146
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[18:21], v254
	ds_load_b128 v[22:25], v54
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v241.h, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v225.h, 0x7fff, v2.h, s2
	v_cndmask_b16 v221.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v211.h, 0x7fff, v4.h, s11
	v_cndmask_b16 v210.h, 0x7fff, v5.h, s13
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v17.l, v248.h
	v_mov_b16_e64 v16.l, v250.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v184, v15
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v15.l, v249.h
	v_mov_b16_e64 v14.l, v252.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v180, v13
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v13.l, v253.h
	v_mov_b16_e64 v12.l, v235.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v6, v208, v11
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v11.l, v227.h
	v_mov_b16_e64 v10.l, v251.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s11, v169, v169
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v145.l, v210.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v184, v202, v144
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v144.l, v211.h
	v_wmma_f32_16x16x16_bf16 v[73:80], v[10:17], v[130:137], v[73:80]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v188, v200, v143
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v143.l, v221.h
	v_mov_b16_e64 v142.l, v225.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v194, v194, v140
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v140.l, v242.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v200, v192, v139
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v139.l, v245.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v202, v190, v138
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v138.l, v246.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v3, v207, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s11
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v196, v196, v141
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v141.l, v241.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v207, v207
	v_add3_u32 v3, v207, v3, 0x7fff
	v_bfe_u32 v4, v209, 16, 1
	v_cmp_o_f32_e64 s2, v209, v209
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[138:145], v[122:129], v[73:80]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v5, v177, 16, 1
	v_bfe_u32 v190, v161, 16, 1
	v_add3_u32 v4, v209, v4, 0x7fff
	v_bfe_u32 v192, v157, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[10:17], v[18:25], v[73:80]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v10.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v179, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v179, v179
	v_cndmask_b16 v11.h, 0x7fff, v4.h, s2
	v_bfe_u32 v4, v193, 16, 1
	v_cmp_o_f32_e64 s2, v193, v193
	v_add3_u32 v3, v179, v3, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v11.l, v240.l
	v_mov_b16_e64 v13.l, v240.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v4, v193, v4, 0x7fff
	v_add3_u32 v5, v177, v5, 0x7fff
	v_cndmask_b16 v12.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v181, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v181, v181
	v_cndmask_b16 v42.h, 0x7fff, v4.h, s2
	v_cmp_o_f32_e64 s2, v177, v177
	v_bfe_u32 v4, v175, 16, 1
	v_add3_u32 v3, v181, v3, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v10.l, v240.l
	v_mov_b16_e64 v15.l, v240.l
	v_mov_b16_e64 v17.l, v240.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v4, v175, v4, 0x7fff
	v_cndmask_b16 v13.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v183, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v183, v183
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v186, v193, v42
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v190, v161, v190, 0x7fff
	v_add3_u32 v193, v157, v192, 0x7fff
	v_add3_u32 v3, v183, v3, 0x7fff
	v_cmp_o_f32_e64 s11, v157, v157
	v_bfe_u32 v192, v155, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v223, v207, v10
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v14.l, v240.l
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v14.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v185, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v185, v185
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v16.l, v240.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v7, v167, 16, 1
	v_cmp_o_f32_e64 s13, v171, v171
	v_add3_u32 v3, v185, v3, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v12.l, v240.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v208, v183, v14
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v7, v167, v7, 0x7fff
	v_cmp_o_f32_e64 s3, v167, v167
	v_cndmask_b16 v15.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v187, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v187, v187
	v_cndmask_b16 v97.h, 0x7fff, v97.h, s13
	v_cmp_o_f32_e64 s13, v155, v155
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v207, v185, v15
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v187, v3, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v254, v179, v12
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s3
	v_cmp_o_f32_e64 s3, v159, v159
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v15.l, v8.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v16.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v189, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v189, v189
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v14.l, v7.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v190.l, v240.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v206, v187, v16
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v3, v189, v3, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v16.l, v97.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v7.l, v240.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v17.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v191, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v191, v191
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v204, v189, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v191, v3, 0x7fff
	v_bfe_u32 v189, v173, 16, 1
	v_cndmask_b16 v41.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v195, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v195, v195
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_add3_u32 v189, v173, v189, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v189.l, v240.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v187, v191, v41
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v3, v195, v3, 0x7fff
	v_bfe_u32 v191, v159, 16, 1
	v_cndmask_b16 v43.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v197, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v197, v197
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v191, v159, v191, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v191.l, v240.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v185, v195, v43
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v3, v197, v3, 0x7fff
	v_add3_u32 v195, v155, v192, 0x7fff
	v_cndmask_b16 v191.h, 0x7fff, v191.h, s3
	v_cmp_o_f32_e64 s3, v149, v149
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v192.l, v240.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v44.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v199, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v199, v199
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v42.l, v191.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v183, v197, v44
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v199, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v45.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v201, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v201, v201
	v_add3_u32 v3, v201, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v46.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v203, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v203, v203
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v180, v201, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v203, v3, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v201.l, v240.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v47.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v205, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v205, v205
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v179, v203, v47
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v205, v3, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v203.l, v240.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v48.h, 0x7fff, v3.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v3, v209, v11
	v_sub_f32_e32 v209, v181, v13
	v_sub_f32_e32 v181, v199, v45
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v199.h, 0x7fff, v5.h, s2
	v_bfe_u32 v5, v165, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v175, v175
	v_cmp_o_f32_e64 s2, v165, v165
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v178, v205, v48
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v205, v147, 16, 1
	v_add3_u32 v5, v165, v5, 0x7fff
	v_cndmask_b16 v201.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v163, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v163, v163
	v_add3_u32 v205, v147, v205, 0x7fff
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s2
	v_cmp_o_f32_e64 s2, v161, v161
	v_add3_u32 v4, v163, v4, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v11.l, v199.h
	v_mov_b16_e64 v10.l, v201.h
	v_mov_b16_e32 v13.l, v5.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v192.h, 0x7fff, v190.h, s2
	v_cndmask_b16 v190.h, 0x7fff, v193.h, s11
	v_bfe_u32 v193, v153, 16, 1
	v_cndmask_b16 v4.h, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v173, v173
	v_cmp_o_f32_e64 s2, v151, v151
	v_cmp_o_f32_e64 s11, v147, v147
	v_add3_u32 v197, v153, v193, 0x7fff
	v_bfe_u32 v193, v151, 16, 1
	v_cndmask_b16 v203.h, 0x7fff, v189.h, vcc_lo
	v_cndmask_b16 v189.h, 0x7fff, v195.h, s13
	v_cmp_o_f32_e32 vcc_lo, v153, v153
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v12.l, v4.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v195, v151, v193, 0x7fff
	v_bfe_u32 v193, v149, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v17.l, v203.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v240.h, 0x7fff, v205.h, s11
	v_cndmask_b16 v197.h, 0x7fff, v197.h, vcc_lo
	v_cndmask_b16 v195.h, 0x7fff, v195.h, s2
	v_add3_u32 v193, v149, v193, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[10:17], v[130:137], v[33:40]
	v_mov_b16_e64 v48.l, v240.h
	v_mov_b16_e64 v45.l, v197.h
	v_mov_b16_e64 v46.l, v195.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v193.h, 0x7fff, v193.h, s3
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v44.l, v189.h
	v_mov_b16_e64 v43.l, v190.h
	v_mov_b16_e64 v41.l, v192.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v6, v6
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v47.l, v193.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v197.l, v240.l
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v238, v238
	v_cmp_o_f32_e64 s2, v224, v224
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v193.l, v240.l
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[41:48], v[122:129], v[33:40]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v199.l, v240.l
	v_mov_b16_e64 v4.l, v240.l
	v_mov_b16_e64 v5.l, v240.l
	v_mov_b16_e64 v195.l, v240.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[10:17], v[18:25], v[33:40]
	ds_load_b128 v[10:13], v57
	ds_load_b128 v[14:17], v58
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v4, v163, v4 :: v_dual_sub_f32 v5, v165, v5
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[138:145], v[10:17], v[73:80]
	v_wmma_f32_16x16x16_bf16 v[33:40], v[41:48], v[10:17], v[33:40]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v12, v176, v227
	v_dual_sub_f32 v10, v174, v251 :: v_dual_sub_f32 v15, v168, v249
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v13, v12, 16, 1
	v_cmp_o_f32_e64 s3, v12, v12
	v_bfe_u32 v11, v10, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_bfe_u32 v16, v15, 16, 1
	v_add3_u32 v13, v12, v13, 0x7fff
	v_bfe_u32 v12, v6, 16, 1
	v_add3_u32 v11, v10, v11, 0x7fff
	v_bfe_u32 v10, v224, 16, 1
	v_add3_u32 v16, v15, v16, 0x7fff
	v_cndmask_b16 v11.l, 0x7fff, v13.h, s3
	v_add3_u32 v12, v6, v12, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v6, v162, v235
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v10, v224, v10, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v11.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s11
	v_bfe_u32 v14, v6, 16, 1
	v_cmp_o_f32_e64 s13, v6, v6
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s2
	v_cmp_o_f32_e64 s2, v2, v2
	v_cmp_o_f32_e64 s11, v220, v220
	v_add3_u32 v14, v6, v14, 0x7fff
	v_bfe_u32 v6, v238, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v12.l, 0x7fff, v14.h, s13
	v_add3_u32 v6, v238, v6, 0x7fff
	v_cmp_o_f32_e64 s13, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v12.h, 0x7fff, v6.h, s14
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v6, v164, v253
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v15.l, 0x7fff, v16.h, s13
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v16, v172, v248
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v226, v226
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_bfe_u32 v13, v6, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_bfe_u32 v17, v16, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v13, v6, v13, 0x7fff
	v_bfe_u32 v6, v2, 16, 1
	v_add3_u32 v17, v16, v17, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v13.l, 0x7fff, v13.h, vcc_lo
	v_add3_u32 v6, v2, v6, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v166, v252
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v13.h, 0x7fff, v6.h, s2
	v_bfe_u32 v14, v2, 16, 1
	v_cmp_o_f32_e64 s3, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v14, v2, v14, 0x7fff
	v_bfe_u32 v2, v220, 16, 1
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v2, v220, v2, 0x7fff
	v_cmp_o_f32_e64 s3, v255, v255
	v_cndmask_b16 v14.h, 0x7fff, v2.h, s11
	v_bfe_u32 v2, v1, 16, 1
	v_cmp_o_f32_e64 s11, v16, v16
	v_bfe_u32 v16, v226, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v2, v1, v2, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v170, v250
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v18, v226, v16, 0x7fff
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s11
	v_cmp_o_f32_e64 s11, v3, v3
	v_cndmask_b16 v15.h, 0x7fff, v2.h, vcc_lo
	v_bfe_u32 v6, v1, 16, 1
	v_cmp_o_f32_e64 s2, v1, v1
	v_cndmask_b16 v17.h, 0x7fff, v18.h, s13
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v177, v199
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v6, v1, v6, 0x7fff
	v_bfe_u32 v1, v255, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v6.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v1, v255, v1, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v6, v167, v7 :: v_dual_sub_f32 v7, v169, v8
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v223, v223
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v8, v171, v97
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v16.h, 0x7fff, v1.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v175, v201
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v2, v2
	v_cmp_o_f32_e64 s13, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[10:17], v[130:137], v[73:80]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v11, v1, 16, 1
	v_bfe_u32 v12, v2, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v173, v203
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v11, v1, v11, 0x7fff
	v_bfe_u32 v1, v223, 16, 1
	v_add3_u32 v12, v2, v12, 0x7fff
	v_bfe_u32 v2, v3, 16, 1
	v_add3_u32 v1, v223, v1, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v11.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v2, v3, v2, 0x7fff
	v_bfe_u32 v3, v4, 16, 1
	v_bfe_u32 v11, v5, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_cndmask_b16 v2.l, 0x7fff, v12.h, s3
	v_cmp_o_f32_e64 s3, v5, v5
	v_add3_u32 v3, v4, v3, 0x7fff
	v_bfe_u32 v4, v254, 16, 1
	v_add3_u32 v11, v5, v11, 0x7fff
	v_bfe_u32 v12, v6, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s2
	v_cmp_o_f32_e64 s2, v254, v254
	v_add3_u32 v4, v254, v4, 0x7fff
	v_cndmask_b16 v4.l, 0x7fff, v11.h, s3
	v_bfe_u32 v11, v7, 16, 1
	v_add3_u32 v12, v6, v12, 0x7fff
	v_bfe_u32 v6, v208, 16, 1
	v_bfe_u32 v5, v209, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s2
	v_add3_u32 v11, v7, v11, 0x7fff
	v_cmp_o_f32_e64 s2, v7, v7
	v_add3_u32 v6, v208, v6, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s11
	v_add3_u32 v5, v209, v5, 0x7fff
	v_cmp_o_f32_e64 s11, v209, v209
	v_cmp_o_f32_e32 vcc_lo, v208, v208
	v_cndmask_b16 v6.l, 0x7fff, v11.h, s2
	v_bfe_u32 v11, v8, 16, 1
	v_bfe_u32 v7, v207, 16, 1
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s11
	v_cndmask_b16 v5.l, 0x7fff, v12.h, s13
	v_cndmask_b16 v5.h, 0x7fff, v6.h, vcc_lo
	v_add3_u32 v11, v8, v11, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	v_bfe_u32 v12, v10, 16, 1
	v_add3_u32 v7, v207, v7, 0x7fff
	v_bfe_u32 v8, v206, 16, 1
	v_cmp_o_f32_e64 s11, v10, v10
	v_cndmask_b16 v7.l, 0x7fff, v11.h, vcc_lo
	v_add3_u32 v12, v10, v12, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v146, v210
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v10, v204, 16, 1
	v_cmp_o_f32_e64 s3, v207, v207
	v_add3_u32 v8, v206, v8, 0x7fff
	v_cmp_o_f32_e64 s2, v206, v206
	v_cmp_o_f32_e64 s13, v204, v204
	v_add3_u32 v10, v204, v10, 0x7fff
	v_cndmask_b16 v6.h, 0x7fff, v7.h, s3
	v_cndmask_b16 v8.l, 0x7fff, v12.h, s11
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s2
	v_cmp_o_f32_e64 s2, v202, v202
	v_cndmask_b16 v8.h, 0x7fff, v10.h, s13
	v_cmp_o_f32_e64 s11, v200, v200
	v_bfe_u32 v12, v11, 16, 1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[1:8], v[130:137], v[33:40]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v3, v158, v245
	v_sub_f32_e32 v1, v160, v246
	v_sub_f32_e32 v5, v156, v242
	v_sub_f32_e32 v7, v152, v225
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v12, v11, v12, 0x7fff
	v_bfe_u32 v4, v3, 16, 1
	v_bfe_u32 v2, v1, 16, 1
	v_bfe_u32 v6, v5, 16, 1
	v_cmp_o_f32_e64 s3, v3, v3
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_add3_u32 v4, v3, v4, 0x7fff
	v_bfe_u32 v3, v200, 16, 1
	v_add3_u32 v2, v1, v2, 0x7fff
	v_bfe_u32 v1, v202, 16, 1
	v_add3_u32 v6, v5, v6, 0x7fff
	v_cmp_o_f32_e64 s13, v5, v5
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v5, v154, v241
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v200, v3, 0x7fff
	v_add3_u32 v1, v202, v1, 0x7fff
	v_bfe_u32 v8, v7, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s13
	v_bfe_u32 v6, v5, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s3
	v_bfe_u32 v4, v194, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v2.h, vcc_lo
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s2
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s11
	v_add3_u32 v6, v5, v6, 0x7fff
	v_cmp_o_f32_e64 s2, v5, v5
	v_bfe_u32 v5, v196, 16, 1
	v_add3_u32 v8, v7, v8, 0x7fff
	v_cmp_o_f32_e64 s11, v7, v7
	v_bfe_u32 v7, v198, 16, 1
	v_add3_u32 v4, v194, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v194, v194
	v_add3_u32 v5, v196, v5, 0x7fff
	v_cmp_o_f32_e64 s3, v196, v196
	v_add3_u32 v7, v198, v7, 0x7fff
	v_cmp_o_f32_e64 s13, v198, v198
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v6, v150, v221
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v3.h, 0x7fff, v4.h, vcc_lo
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s3
	v_cndmask_b16 v5.h, 0x7fff, v7.h, s13
	v_cndmask_b16 v5.l, 0x7fff, v8.h, s11
	v_bfe_u32 v7, v6, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v8, v148, v211
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_cmp_o_f32_e64 s2, v188, v188
	v_cmp_o_f32_e64 s11, v184, v184
	v_add3_u32 v7, v6, v7, 0x7fff
	v_bfe_u32 v6, v188, 16, 1
	v_bfe_u32 v10, v8, 16, 1
	v_cmp_o_f32_e64 s3, v8, v8
	v_cmp_o_f32_e64 s13, v11, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v6, v188, v6, 0x7fff
	v_add3_u32 v10, v8, v10, 0x7fff
	v_bfe_u32 v8, v184, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v7.h, vcc_lo
	v_bfe_u32 v7, v182, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v182, v182
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s2
	v_add3_u32 v8, v184, v8, 0x7fff
	v_cndmask_b16 v8.l, 0x7fff, v12.h, s13
	v_add3_u32 v11, v182, v7, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v10.h, s3
	v_cmp_o_f32_e64 s2, v187, v187
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s11
	v_cmp_o_f32_e64 s11, v186, v186
	v_cndmask_b16 v8.h, 0x7fff, v11.h, vcc_lo
	v_cmp_o_f32_e64 s13, v181, v181
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[1:8], v[122:129], v[73:80]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v161, v192
	v_dual_sub_f32 v3, v157, v190 :: v_dual_sub_f32 v2, v159, v191
	v_sub_f32_e32 v5, v153, v197
	v_sub_f32_e32 v4, v155, v189
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v10, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_bfe_u32 v11, v2, 16, 1
	v_cmp_o_f32_e64 s3, v2, v2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v6, v151, v195
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v10, v1, v10, 0x7fff
	v_bfe_u32 v1, v187, 16, 1
	v_add3_u32 v11, v2, v11, 0x7fff
	v_bfe_u32 v2, v186, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v7, v149, v193 :: v_dual_sub_f32 v8, v147, v240
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v1, v187, v1, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v3, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_add3_u32 v2, v186, v2, 0x7fff
	v_cndmask_b16 v2.l, 0x7fff, v11.h, s3
	v_bfe_u32 v11, v4, 16, 1
	v_add3_u32 v10, v3, v10, 0x7fff
	v_bfe_u32 v3, v185, 16, 1
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s11
	v_cmp_o_f32_e64 s11, v5, v5
	v_add3_u32 v11, v4, v11, 0x7fff
	v_cmp_o_f32_e64 s3, v4, v4
	v_add3_u32 v3, v185, v3, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v5, 16, 1
	v_bfe_u32 v4, v183, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v183, v183
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s2
	v_cmp_o_f32_e64 s2, v185, v185
	v_add3_u32 v10, v5, v10, 0x7fff
	v_bfe_u32 v5, v181, 16, 1
	v_add3_u32 v4, v183, v4, 0x7fff
	v_cndmask_b16 v4.l, 0x7fff, v11.h, s3
	v_bfe_u32 v11, v7, 16, 1
	v_cmp_o_f32_e64 s3, v7, v7
	v_add3_u32 v5, v181, v5, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v10.h, s11
	v_bfe_u32 v10, v6, 16, 1
	v_cndmask_b16 v4.h, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_add3_u32 v11, v7, v11, 0x7fff
	v_bfe_u32 v7, v179, 16, 1
	v_add3_u32 v10, v6, v10, 0x7fff
	v_bfe_u32 v6, v180, 16, 1
	v_cmp_o_f32_e64 s11, v8, v8
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s2
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s13
	v_cmp_o_f32_e64 s2, v180, v180
	v_add3_u32 v6, v180, v6, 0x7fff
	v_cndmask_b16 v6.l, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v8, 16, 1
	v_add3_u32 v7, v179, v7, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v179, v179
	v_cmp_o_f32_e64 s13, v178, v178
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s2
	v_add3_u32 v10, v8, v10, 0x7fff
	v_bfe_u32 v8, v178, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v11.h, s3
	v_cndmask_b16 v7.h, 0x7fff, v7.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v8, v178, v8, 0x7fff
	v_cndmask_b16 v8.l, 0x7fff, v10.h, s11
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s13
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[1:8], v[122:129], v[33:40]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v2, off, off offset:264
	scratch_load_b32 v3, off, off offset:276
	scratch_load_b32 v4, off, off offset:284
	scratch_load_b32 v5, off, off offset:296
	scratch_load_b32 v6, off, off offset:328
	scratch_load_b32 v7, off, off offset:360
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
	s_or_b32 s72, s68, 26
	s_or_b32 s73, s68, 27
	s_or_b32 s74, s68, 28
	s_or_b32 s75, s68, 29
	s_or_b32 s76, s68, 30
	s_or_b32 vcc_lo, s68, 31
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s68, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v15, v9
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 vcc_hi, -1, 0
	s_cmp_lt_i32 s2, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v14, v9
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s104, -1, 0
	s_cmp_lt_i32 s3, s26
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v16, v9
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s103, -1, 0
	s_cmp_lt_i32 s11, s26
	s_cselect_b32 s102, -1, 0
	s_cmp_lt_i32 s13, s26
	s_cselect_b32 s101, -1, 0
	s_cmp_lt_i32 s14, s26
	s_cselect_b32 s100, -1, 0
	s_cmp_lt_i32 s15, s26
	s_cselect_b32 s99, -1, 0
	s_cmp_lt_i32 s16, s26
	s_cselect_b32 s98, -1, 0
	s_cmp_lt_i32 s17, s26
	s_cselect_b32 s97, -1, 0
	s_cmp_lt_i32 s18, s26
	s_cselect_b32 s96, -1, 0
	s_cmp_lt_i32 s19, s26
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s20, s26
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s21, s26
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s22, s26
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s23, s26
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s24, s26
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s25, s26
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s42, s26
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s43, s26
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s46, s26
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s47, s26
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s54, s26
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s55, s26
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s69, s26
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s70, s26
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s71, s26
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s72, s26
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s73, s26
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s74, s26
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s75, s26
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s76, s26
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 vcc_lo, s26
	s_cselect_b32 s42, -1, 0
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_add_i32 s43, s68, s67
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, vcc_hi
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_mul_i32 s2, s43, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v1, s2, v0, 1
	v_add_lshl_u32 v8, s2, v55, 1
	v_add_lshl_u32 v10, s2, v65, 1
	v_add_lshl_u32 v11, s2, v67, 1
	v_add_lshl_u32 v12, s2, v69, 1
	v_add_lshl_u32 v13, s2, v71, 1
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v2, s2, v2, 1
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v3, s2, v3, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s104
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v4, s2, v4, 1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s103
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v5, s2, v5, 1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s102
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v6, s2, v6, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s101
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v7, s2, v7, 1
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s100
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s99
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	s_clause 0x6
	buffer_load_u16 v113, v1, s[48:51], 0 offen
	buffer_load_u16 v114, v2, s[48:51], 0 offen
	buffer_load_u16 v115, v3, s[48:51], 0 offen
	buffer_load_u16 v116, v4, s[48:51], 0 offen
	buffer_load_u16 v125, v5, s[48:51], 0 offen
	buffer_load_u16 v126, v6, s[48:51], 0 offen
	buffer_load_u16 v127, v7, s[48:51], 0 offen
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v1, off, off offset:392
	scratch_load_b32 v2, off, off offset:424
	scratch_load_b32 v3, off, off offset:456
	scratch_load_b32 v4, off, off offset:488
	scratch_load_b32 v5, off, off offset:496
	scratch_load_b32 v6, off, off offset:504
	scratch_load_b32 v7, off, off offset:512
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s98
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v1, s2, v1, 1
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v2, s2, v2, 1
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v3, s2, v3, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v4, s2, v4, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v5, s2, v5, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s97
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v6, s2, v6, 1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s96
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v7, s2, v7, 1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s95
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s94
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s93
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s92
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s91
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x6
	buffer_load_u16 v128, v2, s[48:51], 0 offen
	buffer_load_u16 v129, v3, s[48:51], 0 offen
	buffer_load_u16 v130, v4, s[48:51], 0 offen
	buffer_load_u16 v131, v5, s[48:51], 0 offen
	buffer_load_u16 v132, v6, s[48:51], 0 offen
	buffer_load_u16 v133, v7, s[48:51], 0 offen
	buffer_load_u16 v134, v8, s[48:51], 0 offen
	v_add_lshl_u32 v2, s2, v32, 1
	v_add_lshl_u32 v3, s2, v59, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s90
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v4, s2, v31, 1
	v_add_lshl_u32 v5, s2, v61, 1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s89
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v6, s2, v28, 1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s88
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v7, s2, v63, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s87
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v8, s2, v52, 1
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s86
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s85
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s84
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s83
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s81
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s80
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x6
	buffer_load_u16 v135, v3, s[48:51], 0 offen
	buffer_load_u16 v136, v4, s[48:51], 0 offen
	buffer_load_u16 v137, v5, s[48:51], 0 offen
	buffer_load_u16 v138, v6, s[48:51], 0 offen
	buffer_load_u16 v139, v7, s[48:51], 0 offen
	buffer_load_u16 v140, v8, s[48:51], 0 offen
	buffer_load_u16 v141, v10, s[48:51], 0 offen
	v_add_lshl_u32 v3, s2, v230, 1
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s79
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v4, s2, v234, 1
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s78
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v5, s2, v237, 1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s77
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v10, v9
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s55
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	s_clause 0x5
	buffer_load_u16 v142, v11, s[48:51], 0 offen
	buffer_load_u16 v143, v12, s[48:51], 0 offen
	buffer_load_u16 v144, v13, s[48:51], 0 offen
	buffer_load_u16 v145, v3, s[48:51], 0 offen
	buffer_load_u16 v240, v4, s[48:51], 0 offen
	buffer_load_u16 v248, v5, s[48:51], 0 offen
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v12, v9 :: v_dual_add_nc_u32 v5, s35, v232
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v3, s2, v232, 1
	v_add_lshl_u32 v4, s2, v229, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s54
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v5, s2, v5, 1
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v11, v9
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s82
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v13, v9 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s12, s42
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v112, v16 :: v_dual_mov_b32 v111, v15
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	s_clause 0x4
	buffer_load_u16 v249, v3, s[48:51], 0 offen
	buffer_load_u16 v253, v1, s[48:51], 0 offen
	buffer_load_u16 v242, v2, s[48:51], 0 offen
	buffer_load_u16 v252, v4, s[48:51], 0 offen
	buffer_load_u16 v241, v5, s[48:51], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v212, v113
	s_waitcnt vmcnt(24)
	ds_store_b16 v212, v128 offset:1024
	s_waitcnt vmcnt(17)
	ds_store_b16 v212, v135 offset:2048
	s_waitcnt vmcnt(10)
	ds_store_b16 v212, v142 offset:3072
	ds_store_b16 v213, v114
	ds_store_b16 v213, v129 offset:1024
	ds_store_b16 v213, v136 offset:2048
	s_waitcnt vmcnt(9)
	ds_store_b16 v213, v143 offset:3072
	ds_store_b16 v214, v115
	ds_store_b16 v214, v130 offset:1024
	ds_store_b16 v214, v137 offset:2048
	s_waitcnt vmcnt(8)
	ds_store_b16 v214, v144 offset:3072
	ds_store_b16 v215, v116
	ds_store_b16 v215, v131 offset:1024
	ds_store_b16 v215, v138 offset:2048
	s_waitcnt vmcnt(7)
	ds_store_b16 v215, v145 offset:3072
	ds_store_b16 v216, v125
	ds_store_b16 v216, v132 offset:1024
	ds_store_b16 v216, v139 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b16 v216, v240 offset:3072
	ds_store_b16 v217, v126
	ds_store_b16 v217, v133 offset:1024
	ds_store_b16 v217, v140 offset:2048
	s_waitcnt vmcnt(5)
	ds_store_b16 v217, v248 offset:3072
	ds_store_b16 v218, v127
	ds_store_b16 v218, v134 offset:1024
	ds_store_b16 v218, v141 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v218, v249 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v219, v253
	s_waitcnt vmcnt(2)
	ds_store_b16 v219, v242 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v219, v252 offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b16 v219, v241 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_and_not1_b32 vcc_lo, exec_lo, s59
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v110, v14 :: v_dual_mov_b32 v109, v13
	v_dual_mov_b32 v108, v12 :: v_dual_mov_b32 v107, v11
	v_dual_mov_b32 v106, v10 :: v_dual_mov_b32 v105, v9
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, 0, v1
	ds_load_b128 v[117:120], v1
	scratch_load_b32 v1, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[121:124], v1
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off
	scratch_load_b128 v[5:8], off, off offset:16
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[1:8], v[117:124], v[105:112]
	.loc	1 663 37                        ; attention_backward.py:663:37
	scratch_load_b32 v1, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[117:120], v1
	scratch_load_b32 v1, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[121:124], v1
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:32
	scratch_load_b128 v[5:8], off, off offset:48
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[1:8], v[117:124], v[105:112]
	.loc	1 663 37                        ; attention_backward.py:663:37
	scratch_load_b32 v1, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[117:120], v1
	scratch_load_b32 v1, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[121:124], v1
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:64
	scratch_load_b128 v[5:8], off, off offset:80
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[1:8], v[117:124], v[105:112]
	.loc	1 663 37                        ; attention_backward.py:663:37
	scratch_load_b32 v1, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[117:120], v1
	scratch_load_b32 v1, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[121:124], v1
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:96
	scratch_load_b128 v[5:8], off, off offset:112
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[1:8], v[117:124], v[105:112]
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s68, v247
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s3, s26, v1
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v1, s31, v1
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s76, s0, s3
	s_and_b32 s75, s1, s3
	s_and_b32 s74, s4, s3
	s_and_b32 s73, s5, s3
	s_and_b32 s72, s6, s3
	s_and_b32 s71, s7, s3
	s_and_b32 s70, s8, s3
	s_and_b32 s69, s9, s3
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_or_b32_e32 v2, 2, v222
	v_cmp_le_i32_e32 vcc_lo, v222, v1
	s_and_not1_b32 s19, s76, exec_lo
	s_and_not1_b32 s20, s75, exec_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_le_i32_e64 s2, v2, v1
	v_or_b32_e32 v2, 4, v222
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s18, s76, vcc_lo
	s_and_b32 s18, s18, exec_lo
	s_and_b32 s2, s75, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s11, v2, v1
	v_or_b32_e32 v2, 6, v222
	s_and_b32 s2, s2, exec_lo
	s_or_b32 s76, s19, s18
	s_or_b32 s75, s20, s2
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s11, s74, s11
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s13, v2, v1
	v_or_b32_e32 v2, 8, v222
	s_and_not1_b32 s2, s74, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s18, s73, exec_lo
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s13, s73, s13
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s14, v2, v1
	v_or_b32_e32 v2, 10, v222
	s_and_b32 s13, s13, exec_lo
	s_or_b32 s74, s2, s11
	s_or_b32 s73, s18, s13
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s14, s72, s14
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s15, v2, v1
	v_or_b32_e32 v2, 12, v222
	s_and_not1_b32 s2, s72, exec_lo
	s_and_b32 s11, s14, exec_lo
	s_and_not1_b32 s13, s71, exec_lo
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s15, s71, s15
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s16, v2, v1
	v_or_b32_e32 v2, 14, v222
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s72, s2, s11
	s_or_b32 s71, s13, s14
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s16, s70, s16
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s17, v2, v1
	s_and_not1_b32 s2, s70, exec_lo
	s_and_b32 s11, s16, exec_lo
	s_and_not1_b32 s13, s69, exec_lo
	s_or_b32 s70, s2, s11
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s17, s69, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s69, s13, s14
.LBB0_10:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 677 17 is_stmt 1              ; attention_backward.py:677:17
	s_and_not1_b32 vcc_lo, exec_lo, s58
	s_cbranch_vccnz .LBB0_7
; %bb.11:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v2, s29, v1
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v1, s30, v1
	v_or_b32_e32 v3, 2, v222
	v_or_b32_e32 v4, 4, v222
	v_or_b32_e32 v5, 6, v222
	v_or_b32_e32 v6, 8, v222
	v_or_b32_e32 v7, 10, v222
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v222, v2
	v_cmp_ge_i32_e64 s2, v3, v2
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s18, v222, v1
	v_cmp_le_i32_e64 s19, v3, v1
	v_or_b32_e32 v8, 12, v222
	v_or_b32_e32 v10, 14, v222
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s11, v4, v2
	v_cmp_ge_i32_e64 s13, v5, v2
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s20, v4, v1
	v_cmp_le_i32_e64 s21, v5, v1
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s14, v6, v2
	v_cmp_ge_i32_e64 s15, v7, v2
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s22, v6, v1
	v_cmp_le_i32_e64 s23, v7, v1
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s18, vcc_lo, s18
	s_and_b32 s2, s2, s19
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s16, v8, v2
	v_cmp_ge_i32_e64 s17, v10, v2
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s24, v8, v1
	v_cmp_le_i32_e64 s25, v10, v1
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s18, s18, s76
	s_and_b32 s2, s2, s75
	s_and_b32 s11, s11, s20
	s_and_b32 s13, s13, s21
	s_and_b32 s11, s11, s74
	s_and_b32 s13, s13, s73
	s_and_b32 s14, s14, s22
	s_and_b32 s15, s15, s23
	s_and_not1_b32 s19, s76, exec_lo
	s_and_b32 s18, s18, exec_lo
	s_and_not1_b32 s20, s75, exec_lo
	s_and_b32 s2, s2, exec_lo
	s_and_b32 s14, s14, s72
	s_and_b32 s15, s15, s71
	s_and_b32 s16, s16, s24
	s_and_b32 s17, s17, s25
	s_or_b32 s76, s19, s18
	s_or_b32 s75, s20, s2
	s_and_not1_b32 s2, s74, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s18, s73, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s70
	s_and_b32 s17, s17, s69
	s_or_b32 s74, s2, s11
	s_or_b32 s73, s18, s13
	s_and_not1_b32 s2, s72, exec_lo
	s_and_b32 s11, s14, exec_lo
	s_and_not1_b32 s13, s71, exec_lo
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s72, s2, s11
	s_or_b32 s71, s13, s14
	s_and_not1_b32 s2, s70, exec_lo
	s_and_b32 s11, s16, exec_lo
	s_and_not1_b32 s13, s69, exec_lo
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s70, s2, s11
	s_or_b32 s69, s13, s14
	s_branch .LBB0_7
.LBB0_12:                               ; %Flow483
	.loc	1 0 21                          ; attention_backward.py:0:21
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v97, off, off offset:520
	scratch_load_b32 v50, off, off offset:524
	scratch_load_b32 v98, off, off offset:528
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
.LBB0_14:                               ; %._crit_edge118
	.loc	1 550 20 is_stmt 1              ; attention_backward.py:550:20
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, v50, v98
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v16, s35, v97
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s57, v97
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
	v_add_nc_u32_e32 v21, s34, v97
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
	buffer_store_b32 v73, v1, s[40:43], 0 offen
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
	buffer_store_b32 v74, v14, s[40:43], 0 offen
	buffer_store_b32 v75, v13, s[40:43], 0 offen
	v_add_lshl_u32 v11, v21, v11, 2
	s_clause 0x1
	buffer_store_b32 v76, v1, s[40:43], 0 offen
	buffer_store_b32 v77, v12, s[40:43], 0 offen
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
	buffer_store_b32 v78, v11, s[40:43], 0 offen
	buffer_store_b32 v79, v10, s[40:43], 0 offen
	v_add_lshl_u32 v7, v21, v7, 2
	s_clause 0x1
	buffer_store_b32 v80, v1, s[40:43], 0 offen
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
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 536
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 536
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 24672
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 536
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 536
    .sgpr_count:     107
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 133
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
