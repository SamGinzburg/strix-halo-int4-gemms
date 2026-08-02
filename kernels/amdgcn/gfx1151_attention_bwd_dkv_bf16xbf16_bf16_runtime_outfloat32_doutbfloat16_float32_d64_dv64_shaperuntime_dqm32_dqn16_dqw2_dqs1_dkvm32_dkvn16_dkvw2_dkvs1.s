	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[20:23], s[0:1], 0x94
	s_load_b128 s[8:11], s[0:1], 0x64
	s_load_b32 s33, s[0:1], 0x7c
.Ltmp0:
	.loc	1 514 33 prologue_end           ; attention_backward.py:514:33
	v_and_b32_e32 v41, 15, v0
	s_load_b32 s35, s[0:1], 0x74
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	s_cselect_b32 s49, -1, 0
	s_cmp_eq_u32 s4, 1
	s_load_b128 s[4:7], s[0:1], 0x8
	s_cselect_b32 s50, -1, 0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_abs_i32 s16, s9
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_abs_i32 s13, s3
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cvt_f32_u32 s12, s16
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s31, s2, 4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_rcp_iflag_f32_e32 v1, s12
	v_readfirstlane_b32 s12, v1
	s_mul_f32 s12, s12, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_u32_f32 s24, s12
	s_sub_i32 s12, 0, s16
	s_mul_i32 s12, s12, s24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s12, s24, s12
	s_add_i32 s24, s24, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_mul_hi_u32 s12, s13, s24
	s_mul_i32 s14, s12, s16
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s2, s13, s14
	s_add_i32 s13, s12, 1
	s_sub_i32 s14, s2, s16
	s_cmp_ge_u32 s2, s16
	s_cselect_b32 s12, s13, s12
	s_cselect_b32 s2, s14, s2
	s_add_i32 s13, s12, 1
	s_cmp_ge_u32 s2, s16
	s_cselect_b32 s30, s13, s12
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_ashr_i32 s17, s8, 31
	s_ashr_i32 s18, s9, 31
	s_abs_i32 s19, s8
	.loc	1 514 23                        ; attention_backward.py:514:23
	s_or_b32 s2, s31, 1
	s_or_b32 s12, s31, 2
	s_or_b32 s13, s31, 3
	s_or_b32 s14, s31, 4
	s_or_b32 s15, s31, 5
	s_or_b32 s25, s31, 6
	s_or_b32 s26, s31, 7
	s_or_b32 s27, s31, 8
	s_or_b32 s28, s31, 9
	s_or_b32 s29, s31, 10
	s_or_b32 s34, s31, 11
	s_or_b32 s47, s31, 12
	s_or_b32 s48, s31, 13
	s_or_b32 s51, s31, 14
	s_or_b32 s52, s31, 15
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cmp_lt_i32 s31, s11
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s2, s11
	.loc	1 533 24                        ; attention_backward.py:533:24
	s_mul_i32 s2, s3, s11
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s12, s11
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s12, s4
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s13, s11
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s4, s33, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s14, s11
	s_mov_b32 s14, 0x7ffffffe
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s15, s11
	s_mov_b32 s15, 0x31027000
	s_cselect_b32 s41, -1, 0
	s_cmp_lt_i32 s25, s11
	s_cselect_b32 s40, -1, 0
	s_cmp_lt_i32 s26, s11
	s_cselect_b32 s39, -1, 0
	s_cmp_lt_i32 s27, s11
	s_cselect_b32 s38, -1, 0
	s_cmp_lt_i32 s28, s11
	s_cselect_b32 s37, -1, 0
	s_cmp_lt_i32 s29, s11
	s_cselect_b32 s36, -1, 0
	s_cmp_lt_i32 s34, s11
	s_cselect_b32 s29, -1, 0
	s_cmp_lt_i32 s47, s11
	s_cselect_b32 s28, -1, 0
	s_cmp_lt_i32 s48, s11
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s51, s11
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s52, s11
	s_cselect_b32 s27, -1, 0
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_add_i32 s48, s2, s31
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_cmp_gt_i32_e64 s2, s35, v0
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_mul_i32 s34, s48, s35
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_mul_i32 s48, s48, s33
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v1, s34, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v17, s48, v0
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s46, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_and_b32 s13, s5, 0xffff
	.loc	1 587 22                        ; attention_backward.py:587:22
	s_add_i32 s5, s10, 31
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
	buffer_load_u16 v1, v1, s[12:15], 0 offen
	buffer_load_u16 v2, v2, s[12:15], 0 offen
	buffer_load_u16 v3, v3, s[12:15], 0 offen
	buffer_load_u16 v4, v4, s[12:15], 0 offen
	buffer_load_u16 v5, v5, s[12:15], 0 offen
	buffer_load_u16 v6, v6, s[12:15], 0 offen
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
	s_and_b32 vcc_lo, s29, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v16, 1, v15
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s28, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_lshl_u32 v15, v15, s35, 1
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s25, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_clause 0x4
	buffer_load_u16 v9, v9, s[12:15], 0 offen
	buffer_load_u16 v10, v10, s[12:15], 0 offen
	buffer_load_u16 v11, v11, s[12:15], 0 offen
	buffer_load_u16 v12, v12, s[12:15], 0 offen
	buffer_load_u16 v13, v13, s[12:15], 0 offen
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s26, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s27, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s46, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s45, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_add_nc_u32 v207, 0, v19
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_clause 0x4
	buffer_load_u16 v14, v14, s[12:15], 0 offen
	buffer_load_u16 v7, v7, s[12:15], 0 offen
	buffer_load_u16 v16, v16, s[12:15], 0 offen
	buffer_load_u16 v8, v8, s[12:15], 0 offen
	buffer_load_u16 v15, v15, s[12:15], 0 offen
	v_xor_b32_e32 v21, 0x90, v19
	v_xor_b32_e32 v23, 0x1b0, v19
	v_xor_b32_e32 v25, 0x240, v19
	v_xor_b32_e32 v22, 0x120, v19
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s44, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v208, 0, v21
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v21, s33, v28
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v26, 0x2d0, v19
	v_add_nc_u32_e32 v211, 0, v25
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v25, 0x80000000, v20, vcc_lo
	v_lshlrev_b32_e32 v20, 1, v28
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v210, 0, v23
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v23, 1, v24
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v27, 0x360, v19
	v_xor_b32_e32 v19, 0x3f0, v19
	v_add_nc_u32_e32 v209, 0, v22
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v22, s33, v21
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s43, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v23, 0x80000000, v23 :: v_dual_add_nc_u32 v212, 0, v26
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s42, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v213, 0, v27
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v21, 1, v21
	v_cndmask_b32_e32 v27, 0x80000000, v20, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s41, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v214, 0, v19
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v19, s33, v22
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v21, 0x80000000, v21 :: v_dual_lshlrev_b32 v20, 1, v22
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s40, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s13, s7, 0xffff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v24, s33, v19
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v28, 0x80000000, v20 :: v_dual_lshlrev_b32 v19, 1, v19
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s39, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_mov_b32 s12, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v26, s33, v24
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v29, 0x80000000, v19 :: v_dual_lshlrev_b32 v24, 1, v24
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s38, s4
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_ashr_i32 s7, s5, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v22, s33, v26
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_lshlrev_b32 v19, 1, v26
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s37, s4
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_lshr_b32 s7, s7, 27
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
	s_and_b32 vcc_lo, s29, s4
	s_mov_b32 s6, 0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v19, s33, v26
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v26, 1, v26
	v_cndmask_b32_e32 v32, 0x80000000, v20, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s28, s4
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_hi_u32 s5, s19, s24
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v31, s33, v19
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v19, 1, v19
	v_cndmask_b32_e32 v33, 0x80000000, v26, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s25, s4
	.loc	1 587 20                        ; attention_backward.py:587:20
	s_and_b32 s51, s7, 0xffffffe0
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v20, 1, v31
	v_add_lshl_u32 v26, v31, s33, 1
	v_cndmask_b32_e32 v31, 0x80000000, v19, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s26, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(15)
	ds_store_b16 v207, v1
	s_waitcnt vmcnt(9)
	ds_store_b16 v207, v9 offset:1024
	ds_store_b16 v208, v2
	s_waitcnt vmcnt(8)
	ds_store_b16 v208, v10 offset:1024
	ds_store_b16 v209, v3
	s_waitcnt vmcnt(7)
	ds_store_b16 v209, v11 offset:1024
	ds_store_b16 v210, v4
	s_waitcnt vmcnt(6)
	ds_store_b16 v210, v12 offset:1024
	ds_store_b16 v211, v5
	s_waitcnt vmcnt(5)
	ds_store_b16 v211, v13 offset:1024
	ds_store_b16 v212, v6
	s_waitcnt vmcnt(4)
	ds_store_b16 v212, v14 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v213, v7
	s_waitcnt vmcnt(2)
	ds_store_b16 v213, v16 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v214, v8
	s_waitcnt vmcnt(0)
	ds_store_b16 v214, v15 offset:1024
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v34, 0x80000000, v20, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s27, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt lgkmcnt(0)
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v35, 0x80000000, v26, vcc_lo
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_barrier
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_clause 0xf
	buffer_load_u16 v20, v17, s[12:15], 0 offen
	buffer_load_u16 v19, v18, s[12:15], 0 offen
	buffer_load_u16 v18, v25, s[12:15], 0 offen
	buffer_load_u16 v17, v23, s[12:15], 0 offen
	buffer_load_u16 v16, v27, s[12:15], 0 offen
	buffer_load_u16 v15, v21, s[12:15], 0 offen
	buffer_load_u16 v14, v28, s[12:15], 0 offen
	buffer_load_u16 v13, v29, s[12:15], 0 offen
	buffer_load_u16 v28, v24, s[12:15], 0 offen
	buffer_load_u16 v27, v30, s[12:15], 0 offen
	buffer_load_u16 v26, v22, s[12:15], 0 offen
	buffer_load_u16 v25, v32, s[12:15], 0 offen
	buffer_load_u16 v24, v33, s[12:15], 0 offen
	buffer_load_u16 v23, v31, s[12:15], 0 offen
	buffer_load_u16 v22, v34, s[12:15], 0 offen
	buffer_load_u16 v21, v35, s[12:15], 0 offen
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_and_b32_e32 v2, 7, v0
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_bfe_u32 s7, s20, 0x10008
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v1, 4, v2
	v_lshl_or_b32 v4, v41, 7, v1
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
	s_add_i32 s6, s31, s21
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_add_i32 s12, s22, s23
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s6, s6, s23
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_sub_i32 s12, s31, s12
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s6, s6, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 592 17                        ; attention_backward.py:592:17
	s_min_i32 s6, s10, s6
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
	s_max_i32 s7, s12, 0
	.loc	1 600 17                        ; attention_backward.py:600:17
	s_and_b32 s12, s6, 0xffffffe0
	.loc	1 597 45                        ; attention_backward.py:597:45
	s_and_b32 s6, s7, 0x7fffffe0
	.loc	1 598 24                        ; attention_backward.py:598:24
	s_min_i32 s51, s51, s12
.LBB0_2:
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[29:32], v5
	ds_load_b128 v[33:36], v6
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_mul_i32 s7, s5, s16
	s_load_b128 s[36:39], s[0:1], 0x50
	s_sub_i32 s7, s19, s7
	s_xor_b32 s12, s17, s18
	s_add_i32 s13, s5, 1
	s_sub_i32 s14, s7, s16
	s_cmp_ge_u32 s7, s16
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v217, s31, v41
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s5, s13, s5
	s_cselect_b32 s7, s14, s7
	s_add_i32 s13, s5, 1
	s_cmp_ge_u32 s7, s16
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_and_b32_e32 v3, 32, v0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s5, s13, s5
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[29:32], off
	scratch_store_b128 off, v[33:36], off offset:16
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[29:32], v7
	ds_load_b128 v[33:36], v8
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_xor_b32 s5, s5, s12
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	v_lshrrev_b32_e32 v97, 1, v3
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_sub_i32 s20, s5, s12
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s5, s11, v217
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cmp_lt_i32 s20, 1
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[29:32], off offset:32 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[33:36], off offset:48 ; 16-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[29:32], v9
	ds_load_b128 v[33:36], v10
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
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	v_and_b32_e32 v29, 16, v0
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b16 v207, v20
	s_waitcnt vmcnt(7)
	ds_store_b16 v207, v28 offset:1024
	ds_store_b16 v208, v19
	s_waitcnt vmcnt(6)
	ds_store_b16 v208, v27 offset:1024
	ds_store_b16 v209, v18
	s_waitcnt vmcnt(5)
	ds_store_b16 v209, v26 offset:1024
	ds_store_b16 v210, v17
	s_waitcnt vmcnt(4)
	ds_store_b16 v210, v25 offset:1024
	ds_store_b16 v211, v16
	s_waitcnt vmcnt(3)
	ds_store_b16 v211, v24 offset:1024
	ds_store_b16 v212, v15
	s_waitcnt vmcnt(2)
	ds_store_b16 v212, v23 offset:1024
	ds_store_b16 v213, v14
	s_waitcnt vmcnt(1)
	ds_store_b16 v213, v22 offset:1024
	ds_store_b16 v214, v13
	s_waitcnt vmcnt(0)
	ds_store_b16 v214, v21 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cbranch_scc1 .LBB0_13
; %bb.3:                                ; %.lr.ph180
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[15:18], v12
	ds_load_b128 v[11:14], v11
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x80
	s_load_b32 s7, s[0:1], 0x90
	s_xor_b32 s40, s3, s9
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_lshrrev_b32_e32 v218, 4, v0
	s_clause 0x1
	s_load_b256 s[12:19], s[0:1], 0x30
	s_load_b64 s[28:29], s[0:1], 0x0
	s_ashr_i32 s1, s40, 31
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_sub_i32 s0, s31, s23
	s_xor_b32 s30, s30, s1
	v_lshl_or_b32 v37, v3, 6, v4
	s_max_i32 s0, s0, 0
	s_sub_i32 s1, s30, s1
	s_and_b32 s0, s0, 0x7fffffe0
	s_mul_i32 s9, s1, s9
	s_max_u32 s0, s6, s0
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_sub_i32 s3, s3, s9
	.loc	1 662 35 is_stmt 1              ; attention_backward.py:662:35
	s_mul_i32 s52, s1, s8
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_and_b32 s8, s50, exec_lo
	s_cselect_b32 s53, s0, s6
	v_dual_mov_b32 v73, 0 :: v_dual_lshlrev_b32 v38, 3, v41
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[11:14], off offset:128
	scratch_store_b128 off, v[15:18], off offset:144
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[13:16], v10
	ds_load_b128 v[9:12], v9
	v_mul_lo_u32 v4, s27, v218
	s_cmp_lt_i32 s53, s51
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	s_cselect_b32 s56, -1, 0
	s_lshl_b32 s0, s27, 2
	.loc	1 683 27                        ; attention_backward.py:683:27
	s_mul_i32 s25, s1, s25
	s_lshl_b32 s1, s27, 3
	s_lshl_b32 s6, s27, 4
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s54, s20, s3
	s_mul_i32 s3, s27, 12
	s_mul_i32 s8, s27, 24
	s_mul_i32 s9, s27, 28
	v_lshrrev_b32_e32 v17, 5, v3
	v_and_b32_e32 v20, 24, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v41, off offset:552
	scratch_store_b32 off, v97, off offset:560
	v_mov_b16_e64 v248.l, 0
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_mul_f32 s55, s24, 0x3fb8aa3b
	s_mov_b32 s11, 0
	s_and_b32 s29, s29, 0xffff
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[9:12], off offset:160
	scratch_store_b128 off, v[13:16], off offset:176
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[11:14], v8
	ds_load_b128 v[7:10], v7
	v_dual_mov_b32 v65, 0 :: v_dual_and_b32 v16, 2, v0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s41, s19, 0xffff
	s_mov_b32 s40, s18
	s_and_b32 s45, s15, 0xffff
	s_mov_b32 s44, s14
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[7:10], off offset:192
	scratch_store_b128 off, v[11:14], off offset:208
	ds_load_b128 v[9:12], v6
	ds_load_b128 v[5:8], v5
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[5:8], off offset:224
	scratch_store_b128 off, v[9:12], off offset:240
	v_mul_lo_u32 v5, s7, v217
	v_cndmask_b32_e64 v7, 0x90, 0, vcc_lo
	s_mul_i32 s7, s27, 20
	v_lshrrev_b32_e32 v9, 2, v29
	v_lshrrev_b32_e32 v11, 4, v3
	v_lshrrev_b32_e32 v10, 1, v29
	v_xor_b32_e32 v7, v7, v38
	v_dual_mov_b32 v239, 0 :: v_dual_add_nc_u32 v6, v5, v4
	v_add3_u32 v8, v4, s6, v5
	v_add3_u32 v12, v4, s7, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v7, v7, v9
	v_or3_b32 v22, v9, v11, v38
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v6, off offset:256
	scratch_store_b32 off, v38, off offset:272
	scratch_store_b32 off, v37, off offset:520
	v_add3_u32 v6, v4, s0, v5
	scratch_store_b32 off, v12, off offset:280 ; 4-byte Folded Spill
	v_add3_u32 v12, v4, s8, v5
	v_mov_b32_e32 v75, v239
	v_dual_mov_b32 v74, v239 :: v_dual_lshlrev_b32 v15, 5, v0
	scratch_store_b32 off, v6, off offset:260 ; 4-byte Folded Spill
	v_add3_u32 v6, v4, s1, v5
	v_dual_mov_b32 v76, v239 :: v_dual_lshlrev_b32 v9, 3, v0
	v_mov_b32_e32 v77, v239
	v_dual_mov_b32 v78, v239 :: v_dual_and_b32 v15, 0x180, v15
	scratch_store_b32 off, v6, off offset:264 ; 4-byte Folded Spill
	v_add3_u32 v6, v4, s3, v5
	v_add3_u32 v4, v4, s9, v5
	scratch_store_b32 off, v8, off offset:276 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v8, 2, v0
	v_and_b32_e32 v9, 48, v9
	scratch_store_b32 off, v6, off offset:268 ; 4-byte Folded Spill
	v_dual_mov_b32 v79, v239 :: v_dual_and_b32 v6, 14, v0
	v_mov_b32_e32 v80, v239
	v_xor_b32_e32 v5, 0x240, v7
	v_mov_b32_e32 v66, v239
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_u32_u24_e32 v6, 0x48, v6
	v_mov_b32_e32 v67, v239
	v_mov_b32_e32 v68, v239
	v_mov_b32_e32 v96, v239
	v_mov_b32_e32 v69, v239
	v_and_or_b32 v6, v8, 4, v6
	v_dual_mov_b32 v71, v239 :: v_dual_and_b32 v8, 52, v8
	v_mov_b32_e32 v95, v239
	v_mov_b32_e32 v86, v239
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or3_b32 v21, v6, v10, v11
	v_or3_b32 v8, v17, v16, v8
	v_lshlrev_b32_e32 v17, 1, v20
	v_lshrrev_b32_e32 v20, 1, v20
	scratch_store_b32 off, v7, off offset:284 ; 4-byte Folded Spill
	v_xor_b32_e32 v6, 0x360, v7
	v_or3_b32 v25, v8, v15, v10
	v_xor_b32_e32 v15, v9, v17
	scratch_store_b32 off, v12, off offset:288 ; 4-byte Folded Spill
	v_xor_b32_e32 v12, 32, v21
	v_xor_b32_e32 v13, 48, v21
	v_xor_b32_e32 v14, 64, v21
	v_lshl_or_b32 v27, v0, 6, v15
	v_lshl_or_b32 v15, v2, 6, v9
	v_lshl_or_b32 v2, v2, 7, v20
	scratch_store_b32 off, v4, off offset:292 ; 4-byte Folded Spill
	v_xor_b32_e32 v4, 0x120, v7
	v_xor_b32_e32 v7, 16, v21
	v_xor_b32_e32 v18, 0x50, v21
	v_xor_b32_e32 v19, 0x60, v21
	v_xor_b32_e32 v16, 0x70, v21
	v_xor_b32_e32 v8, 0x120, v22
	v_xor_b32_e32 v10, 0x1b0, v22
	v_bfe_i32 v17, v0, 3, 1
	v_lshl_or_b32 v9, v41, 6, v9
	scratch_store_b32 off, v21, off offset:296 ; 4-byte Folded Spill
	v_xor_b32_e32 v21, 0x90, v22
	v_or3_b32 v39, v2, v1, v11
	scratch_store_b32 off, v22, off offset:300 ; 4-byte Folded Spill
	v_cndmask_b32_e64 v22, 0x420, 0, vcc_lo
	v_xor_b32_e32 v2, 16, v9
	v_xor_b32_e32 v11, 32, v9
	v_mov_b32_e32 v70, v239
	v_mov_b32_e32 v82, v239
	v_and_or_b32 v17, 0x210, v17, v22
	v_xor_b32_e32 v35, 64, v39
	v_xor_b32_e32 v32, 16, v39
	v_mov_b32_e32 v88, v239
	v_xor_b32_e32 v33, 32, v39
	v_xor_b32_e32 v30, v17, v15
	v_lshlrev_b32_e32 v15, 1, v41
	v_lshlrev_b32_e32 v17, 2, v29
	scratch_store_b32 off, v25, off offset:304 ; 4-byte Folded Spill
	v_mov_b32_e32 v72, v239
	v_xor_b32_e32 v28, 16, v30
	v_add3_u32 v238, 0, v3, v15
	v_or3_b32 v31, v15, v17, v3
	v_add_nc_u32_e32 v3, 0, v4
	scratch_store_b32 off, v30, off offset:312 ; 4-byte Folded Spill
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v4, s33, v0
	scratch_store_b32 off, v27, off offset:308 ; 4-byte Folded Spill
	v_mov_b32_e32 v90, v239
	scratch_store_b32 off, v3, off offset:328 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v5
	scratch_store_b32 off, v31, off offset:316 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v5, 0, v8
	scratch_store_b32 off, v4, off offset:376 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, s33, v4
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v3, off offset:332
	scratch_store_b32 off, v29, off offset:556
	scratch_store_b32 off, v5, off offset:380
	v_add_nc_u32_e32 v3, 0, v6
	scratch_store_b32 off, v9, off offset:320 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v5, 0, v10
	v_xor_b32_e32 v1, 0x1b0, v31
	v_mov_b32_e32 v81, 0
	scratch_store_b32 off, v3, off offset:336 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v7
	v_add_nc_u32_e32 v7, s33, v4
	v_add_nc_u32_e32 v47, 0, v1
	v_dual_mov_b32 v92, v239 :: v_dual_add_nc_u32 v1, 0, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:340
	scratch_store_b32 off, v39, off offset:324
	v_add_nc_u32_e32 v3, 0, v12
	scratch_store_b32 off, v7, off offset:400 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v7, s33, v7
	v_mov_b32_e32 v87, v239
	v_mov_b32_e32 v94, v239
	scratch_store_b32 off, v3, off offset:344 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v13
	scratch_store_b32 off, v7, off offset:408 ; 4-byte Folded Spill
	v_dual_mov_b32 v84, v239 :: v_dual_add_nc_u32 v7, s33, v7
	v_xor_b32_e32 v17, 32, v30
	scratch_store_b32 off, v3, off offset:348 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v14
	v_add_nc_u32_e32 v2, s33, v7
	scratch_store_b32 off, v7, off offset:416 ; 4-byte Folded Spill
	v_mov_b32_e32 v89, 0
	v_xor_b32_e32 v20, 48, v30
	scratch_store_b32 off, v3, off offset:352 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v18
	scratch_store_b32 off, v2, off offset:428 ; 4-byte Folded Spill
	v_dual_mov_b32 v93, v239 :: v_dual_add_nc_u32 v2, s33, v2
	v_xor_b32_e32 v29, 0x90, v31
	scratch_store_b32 off, v3, off offset:356 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v19
	scratch_store_b32 off, v2, off offset:444 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s33, v2
	v_xor_b32_e32 v30, 0x120, v31
	v_xor_b32_e32 v31, 48, v9
	scratch_store_b32 off, v3, off offset:360 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v16
	v_add_nc_u32_e32 v7, s33, v2
	v_mov_b32_e32 v83, v239
	v_mov_b32_e32 v85, v239
	v_add_nc_u32_e32 v61, 0, v35
	scratch_store_b32 off, v3, off offset:364 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v21
	scratch_store_b32 off, v7, off offset:460 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v7, s33, v7
	v_xor_b32_e32 v34, 48, v39
	v_xor_b32_e32 v36, 0x50, v39
	.loc	1 535 17                        ; attention_backward.py:535:17
	scratch_store_b32 off, v3, off offset:368 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s35, v0
	scratch_store_b32 off, v7, off offset:468 ; 4-byte Folded Spill
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v7, s33, v7
	v_xor_b32_e32 v15, 0x60, v39
	v_add_nc_u32_e32 v55, 0, v32
	scratch_store_b32 off, v3, off offset:372 ; 4-byte Folded Spill
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v3, s35, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off offset:384
	scratch_store_b32 off, v7, off offset:476
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v7, s33, v7
	v_add_nc_u32_e32 v5, 0, v28
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v6, s35, v3
	scratch_store_b32 off, v3, off offset:388 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v28, 0, v36
	scratch_store_b32 off, v7, off offset:484 ; 4-byte Folded Spill
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v7, s33, v7
	scratch_store_b32 off, v6, off offset:396 ; 4-byte Folded Spill
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v6, s35, v6
	scratch_store_b32 off, v4, off offset:392 ; 4-byte Folded Spill
	v_xor_b32_e32 v23, 16, v25
	scratch_store_b32 off, v7, off offset:492 ; 4-byte Folded Spill
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v7, s33, v7
	scratch_store_b32 off, v6, off offset:404 ; 4-byte Folded Spill
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v6, s35, v6
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:420
	scratch_store_b32 off, v6, off offset:412
	v_add_nc_u32_e32 v1, s35, v6
	v_add_nc_u32_e32 v6, 0, v11
	scratch_store_b32 off, v7, off offset:500 ; 4-byte Folded Spill
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v7, s33, v7
	v_xor_b32_e32 v24, 32, v25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:424
	scratch_store_b32 off, v6, off offset:432
	v_add_nc_u32_e32 v6, 0, v31
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v7, off offset:508 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v7, s33, v7
	v_xor_b32_e32 v22, 48, v25
	scratch_store_b32 off, v6, off offset:436 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, s35, v1
	scratch_store_b32 off, v1, off offset:440 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x70, v39
	scratch_store_b32 off, v7, off offset:516 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v7, s33, v7
	scratch_store_b32 off, v6, off offset:448 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, s35, v6
	scratch_store_b32 off, v2, off offset:452 ; 4-byte Folded Spill
	v_xor_b32_e32 v2, 0x90, v38
	v_add_nc_u32_e32 v32, 0, v1
	v_xor_b32_e32 v1, 0x120, v38
	scratch_store_b32 off, v6, off offset:456 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, s35, v6
	v_add_nc_u32_e32 v35, 0, v2
	v_xor_b32_e32 v2, 0x1b0, v38
	v_add_nc_u32_e32 v36, 0, v1
	v_xor_b32_e32 v1, 0x240, v38
	scratch_store_b32 off, v6, off offset:464 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, s35, v6
	v_add_nc_u32_e32 v39, 0, v2
	v_xor_b32_e32 v2, 0x2d0, v38
	v_add_nc_u32_e32 v42, 0, v1
	v_xor_b32_e32 v1, 0x360, v38
	scratch_store_b32 off, v6, off offset:472 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, s35, v6
	v_add_nc_u32_e32 v43, 0, v2
	v_xor_b32_e32 v2, 0x3f0, v38
	scratch_store_b32 off, v7, off offset:528 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v7, s33, v7
	scratch_store_b32 off, v6, off offset:480 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, s35, v6
	v_add_nc_u32_e32 v49, 0, v2
	v_xor_b32_e32 v2, 32, v37
	v_add_nc_u32_e32 v46, 0, v1
	v_xor_b32_e32 v1, 16, v37
	scratch_store_b32 off, v6, off offset:488 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, s35, v6
	v_add_nc_u32_e32 v53, 0, v2
	v_xor_b32_e32 v2, 64, v37
	v_add_nc_u32_e32 v50, 0, v1
	v_xor_b32_e32 v1, 48, v37
	v_xor_b32_e32 v25, 16, v27
	v_add_nc_u32_e32 v45, 0, v30
	v_add_nc_u32_e32 v57, 0, v2
	v_xor_b32_e32 v2, 0x60, v37
	v_add_nc_u32_e32 v56, 0, v1
	v_xor_b32_e32 v1, 0x50, v37
	v_add_nc_u32_e32 v58, 0, v33
	v_add_nc_u32_e32 v59, 0, v34
	v_add_nc_u32_e32 v63, 0, v2
	v_add_nc_u32_e32 v2, s33, v7
	scratch_store_b32 off, v6, off offset:496 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, s35, v6
	v_add_nc_u32_e32 v60, 0, v1
	v_xor_b32_e32 v1, 0x70, v37
	scratch_store_b32 off, v2, off offset:544 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s33, v2
	scratch_store_b32 off, v6, off offset:504 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, s35, v6
	v_add_nc_u32_e32 v64, 0, v1
	v_xor_b32_e32 v26, 32, v27
	v_mov_b32_e32 v52, v2
	v_add_nc_u32_e32 v2, s33, v2
	scratch_store_b32 off, v6, off offset:512 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, s35, v6
	v_xor_b32_e32 v27, 48, v27
	v_add_nc_u32_e32 v215, 0, v24
	v_dual_mov_b32 v221, v2 :: v_dual_add_nc_u32 v2, s33, v2
	scratch_store_b32 off, v6, off offset:524 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, s35, v6
	v_add_nc_u32_e32 v254, 0, v23
	v_dual_mov_b32 v51, v2 :: v_dual_add_nc_u32 v206, 0, v22
	v_add_nc_u32_e32 v2, s33, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v1, s35, v6
	scratch_store_b32 off, v6, off offset:532 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v224, 0, v25
	v_add_nc_u32_e32 v3, 0, v26
	v_mov_b32_e32 v233, v2
	scratch_store_b32 off, v1, off offset:540 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v7, off offset:536 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s33, v2
	v_dual_mov_b32 v91, v239 :: v_dual_add_nc_u32 v4, 0, v27
	scratch_store_b32 off, v1, off offset:548 ; 4-byte Folded Spill
	v_dual_mov_b32 v62, v2 :: v_dual_add_nc_u32 v1, s35, v1
	v_add_nc_u32_e32 v2, s33, v2
	v_add_nc_u32_e32 v8, 0, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v220, v1 :: v_dual_add_nc_u32 v9, 0, v20
	v_dual_mov_b32 v30, v2 :: v_dual_add_nc_u32 v1, s35, v1
	v_add_nc_u32_e32 v2, s33, v2
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v41, v97, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v48, v1 :: v_dual_add_nc_u32 v1, s35, v1
	v_add_nc_u32_e32 v33, s33, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v223, v2 :: v_dual_mov_b32 v222, v1
	v_add_nc_u32_e32 v1, s35, v1
	v_dual_mov_b32 v54, v1 :: v_dual_add_nc_u32 v37, s33, v33
	v_add_nc_u32_e32 v1, s35, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v40, s33, v37
	v_dual_mov_b32 v234, v1 :: v_dual_add_nc_u32 v1, s35, v1
	v_add_nc_u32_e32 v44, 0, v29
	v_add_nc_u32_e32 v29, 0, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v235, s33, v40
	v_add_nc_u32_e32 v31, s35, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v219, v1 :: v_dual_add_nc_u32 v34, s35, v31
	v_add_nc_u32_e32 v38, s35, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v247, s35, v38
	s_branch .LBB0_5
.LBB0_4:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_add_i32 s11, s11, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s11, s20
	s_cbranch_scc0 .LBB0_12
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s56
	s_cbranch_vccnz .LBB0_4
; %bb.6:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_add_i32 s0, s11, s54
	s_mov_b32 s59, s53
	.loc	1 662 35                        ; attention_backward.py:662:35
	s_add_i32 s57, s0, s52
	.loc	1 684 27                        ; attention_backward.py:684:27
	s_mul_i32 s58, s0, s26
	.loc	1 662 34                        ; attention_backward.py:662:34
	s_mul_i32 s57, s57, s10
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_add_i32 s58, s58, s25
	s_branch .LBB0_8
.LBB0_7:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v1, off, off offset:276
	scratch_load_b32 v2, off, off offset:256
	scratch_load_b32 v6, off, off offset:280
	scratch_load_b32 v7, off, off offset:260
	scratch_load_b32 v10, off, off offset:288
	scratch_load_b32 v11, off, off offset:264
	scratch_load_b32 v12, off, off offset:292
	scratch_load_b32 v13, off, off offset:268
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_mul_i32 s0, s59, s27
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_mov_b32 s14, s30
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_add_i32 s0, s58, s0
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_mov_b32 s15, s31
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e64 v114.h, v192.l
	v_mov_b16_e64 v115.h, v191.l
	v_mov_b16_e64 v116.h, v190.l
	v_mov_b16_e32 v117.h, v113.l
	v_mov_b16_e64 v118.h, v133.l
	v_mov_b16_e64 v119.h, v132.l
	v_mov_b16_e64 v120.h, v131.l
	v_mov_b16_e64 v121.h, v130.l
	v_mov_b16_e64 v122.h, v186.l
	v_mov_b16_e64 v123.h, v136.l
	v_mov_b16_e64 v124.h, v135.l
	v_mov_b16_e64 v125.h, v134.l
	v_mov_b16_e64 v126.h, v189.l
	v_mov_b16_e64 v127.h, v188.l
	v_mov_b16_e64 v128.h, v187.l
	v_mov_b16_e64 v129.h, v145.l
	.loc	1 697 25 is_stmt 1              ; attention_backward.py:697:25
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v241, v239
	v_mov_b32_e32 v243, v239
	v_mov_b32_e32 v245, v239
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v1, s0, v1, 1
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v2, s0, v2, 1
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v6, s0, v6, 1
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v7, s0, v7, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v10, s0, v10, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v11, s0, v11, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v12, s0, v12, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v13, s0, v13, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s94
	v_cndmask_b32_e64 v2, 0x80000000, v2, s93
	v_cndmask_b32_e64 v6, 0x80000000, v6, s92
	v_cndmask_b32_e64 v7, 0x80000000, v7, s91
	v_cndmask_b32_e64 v10, 0x80000000, v10, s90
	v_cndmask_b32_e64 v11, 0x80000000, v11, s89
	v_cndmask_b32_e64 v12, 0x80000000, v12, s88
	v_cndmask_b32_e64 v13, 0x80000000, v13, s87
	s_clause 0x7
	buffer_load_u16 v1, v1, s[12:15], 0 offen
	buffer_load_u16 v2, v2, s[12:15], 0 offen
	buffer_load_u16 v6, v6, s[12:15], 0 offen
	buffer_load_u16 v7, v7, s[12:15], 0 offen
	buffer_load_u16 v10, v10, s[12:15], 0 offen
	buffer_load_u16 v11, v11, s[12:15], 0 offen
	buffer_load_u16 v12, v12, s[12:15], 0 offen
	buffer_load_u16 v13, v13, s[12:15], 0 offen
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_waitcnt vmcnt(7)
	v_cndmask_b16 v1.h, 0xff80, v1.l, s94
	s_waitcnt vmcnt(6)
	v_cndmask_b16 v1.l, 0xff80, v2.l, s93
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v2.h, 0xff80, v6.l, s92
	.loc	1 696 35                        ; attention_backward.py:696:35
	scratch_load_b32 v6, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v2.l, 0xff80, v7.l, s91
	s_waitcnt vmcnt(4)
	v_cndmask_b16 v7.h, 0xff80, v10.l, s90
	v_mov_b16_e64 v248.h, v1.l
	s_waitcnt vmcnt(3)
	v_cndmask_b16 v7.l, 0xff80, v11.l, s89
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v10.h, 0xff80, v12.l, s88
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v10.l, 0xff80, v13.l, s87
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s0, 0xff800000, v248
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_mov_b16_e64 v248.h, v2.l
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_and_b32 s0, s93, s0
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v6, 0, v6
	ds_store_b32 v6, v1
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_mov_b16_e64 v1.l, v248.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v1
	.loc	1 696 35                        ; attention_backward.py:696:35
	scratch_load_b32 v1, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_and_b32 s3, s94, vcc_lo
	.loc	1 697 34 is_stmt 0              ; attention_backward.py:697:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v248
	.loc	1 691 36 is_stmt 1              ; attention_backward.py:691:36
	v_mov_b16_e64 v248.h, v7.l
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	ds_store_b32 v1, v2
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_mov_b16_e64 v2.l, v248.l
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v1, 0, 1, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 697 34 is_stmt 0              ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v2
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v2, 0, 1, s0
	v_lshlrev_b16 v1.l, 8, v1.l
	s_and_b32 s0, s92, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_or_b16 v1.l, v2.l, v1.l
	v_cndmask_b32_e64 v2, 0, 1, s0
	s_and_b32 s0, s91, vcc_lo
	v_cndmask_b32_e64 v6, 0, 1, s0
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s0, 0xff800000, v248
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_lshlrev_b16 v1.h, 8, v2.l
	.loc	1 696 35 is_stmt 1              ; attention_backward.py:696:35
	scratch_load_b32 v2, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_mov_b16_e64 v248.h, v10.l
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_and_b32 s0, s89, s0
	v_or_b16 v1.h, v6.l, v1.h
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	ds_store_b32 v2, v7
	scratch_load_b32 v2, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_mov_b16_e64 v7.l, v248.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v7
	.loc	1 697 25 is_stmt 0              ; attention_backward.py:697:25
	s_and_b32 s3, s90, vcc_lo
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v248
	.loc	1 696 35 is_stmt 1              ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	ds_store_b32 v2, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v2, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_mov_b16_e64 v10.l, v248.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v10
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_add_lshl_u32 v10, s46, v41, 2
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, 0, v2
	.loc	1 691 36                        ; attention_backward.py:691:36
	ds_load_u16 v194, v2
	scratch_load_b32 v2, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v240, v239
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_waitcnt vmcnt(0)
	ds_load_u16 v195, v2
	scratch_load_b32 v2, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u16 v196, v2
	scratch_load_b32 v2, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v242, v239
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_waitcnt vmcnt(0)
	ds_load_u16 v197, v2
	scratch_load_b32 v2, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u16 v198, v2
	scratch_load_b32 v2, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v244, v239
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_waitcnt vmcnt(0)
	ds_load_u16 v199, v2
	scratch_load_b32 v2, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u16 v200, v2
	scratch_load_b32 v2, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v246, v239
	v_dual_mov_b32 v97, v239 :: v_dual_add_nc_u32 v22, s33, v235
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_waitcnt vmcnt(0)
	ds_load_u16 v201, v2
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v2, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, 0, v2
	ds_store_b16 v2, v1
	v_cndmask_b32_e64 v2, 0, 1, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v1.l, v2.l
	v_cndmask_b32_e64 v2, 0, 1, s0
	s_and_b32 s0, s88, s1
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s1, s46, s33
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s46, s30
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_lshlrev_b16 v1.l, 8, v1.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v17, s1, v221, 1
	v_add_lshl_u32 v18, s1, v233, 1
	v_add_lshl_u32 v19, s1, v30, 1
	v_add_lshl_u32 v20, s1, v33, 1
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_or_b16 v1.l, v2.l, v1.l
	v_cndmask_b32_e64 v2, 0, 1, s0
	s_and_b32 s0, s87, vcc_lo
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v21, s1, v40, 1
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v6, 0, 1, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s86
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_lshlrev_b16 v2.l, 8, v2.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v22, s1, v22, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_or_b16 v2.l, v6.l, v2.l
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v6, s59, v41
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s59, s59, 32
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s10, v6
	.loc	1 697 25                        ; attention_backward.py:697:25
	scratch_load_b32 v6, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v6, v1
	scratch_load_b32 v6, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v6, v1
	scratch_load_b32 v1, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v1, v2
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v2, off, off offset:392 ; 4-byte Folded Reload
	v_add_lshl_u32 v1, s1, v0, 1
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v7, off, off offset:444
	scratch_load_b32 v12, off, off offset:476
	scratch_load_b32 v16, off, off offset:544
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s47
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s47, s31
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v15, off, off offset:528
	scratch_load_b32 v13, off, off offset:492
	scratch_load_b32 v6, off, off offset:416
	scratch_load_b32 v11, off, off offset:460
	scratch_load_b32 v14, off, off offset:508
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v2, s1, v2, 1
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v7, s1, v7, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	s_clause 0x1
	buffer_load_u16 v137, v1, s[44:47], 0 offen
	buffer_load_u16 v138, v2, s[44:47], 0 offen
	scratch_load_b32 v1, off, off offset:408 ; 4-byte Folded Reload
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s72
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v2, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(10)
	v_add_lshl_u32 v12, s1, v12, 1
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v13, s1, v13, 1
	v_add_lshl_u32 v15, s1, v15, 1
	v_add_lshl_u32 v16, s1, v16, 1
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v6, s1, v6, 1
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v11, s1, v11, 1
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v14, s1, v14, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s1, v1, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s1, v2, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s73
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v139, v1, s[44:47], 0 offen
	scratch_load_b32 v1, off, off offset:428 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s1, v1, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s74
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v140, v1, s[44:47], 0 offen
	scratch_load_b32 v1, off, off offset:452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s1, v1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s83
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	s_clause 0x1
	buffer_load_u16 v141, v1, s[44:47], 0 offen
	buffer_load_u16 v142, v2, s[44:47], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:484
	scratch_load_b32 v2, off, off offset:536
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s75
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s1, v1, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s1, v2, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s76
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v143, v1, s[44:47], 0 offen
	scratch_load_b32 v1, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s1, v1, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s77
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v144, v1, s[44:47], 0 offen
	scratch_load_b32 v1, off, off offset:516 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s1, v1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s84
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	s_clause 0x1
	buffer_load_u16 v178, v1, s[44:47], 0 offen
	buffer_load_u16 v179, v2, s[44:47], 0 offen
	v_add_lshl_u32 v1, s1, v52, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s78
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v2, s1, v223, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s79
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v180, v1, s[44:47], 0 offen
	v_add_lshl_u32 v1, s1, v51, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s80
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v181, v1, s[44:47], 0 offen
	v_add_lshl_u32 v1, s1, v62, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s85
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	s_clause 0x1
	buffer_load_u16 v182, v1, s[44:47], 0 offen
	buffer_load_u16 v183, v2, s[44:47], 0 offen
	v_add_lshl_u32 v1, s1, v37, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s81
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v2, off, off offset:400 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s82
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v184, v1, s[44:47], 0 offen
	v_add_lshl_u32 v1, s1, v235, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s19
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s19, s31
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v185, v1, s[44:47], 0 offen
	scratch_load_b32 v1, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v2, s1, v2, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s1, v1, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s42
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s42, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s43
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s43, s31
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s60
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s61
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s62
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s63
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s65
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v15, 0x80000000, v15, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s66
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s67
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s68
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v18, 0x80000000, v18, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s69
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s70
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v20, 0x80000000, v20, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s71
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v21, 0x80000000, v21, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s18
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s18, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	s_clause 0xf
	buffer_load_u16 v249, v7, s[44:47], 0 offen
	buffer_load_u16 v253, v6, s[44:47], 0 offen
	buffer_load_u16 v216, v2, s[44:47], 0 offen
	buffer_load_u16 v6, v1, s[44:47], 0 offen
	buffer_load_u16 v236, v14, s[44:47], 0 offen
	buffer_load_u16 v250, v13, s[44:47], 0 offen
	buffer_load_u16 v1, v12, s[44:47], 0 offen
	buffer_load_u16 v7, v11, s[44:47], 0 offen
	buffer_load_u16 v237, v18, s[44:47], 0 offen
	buffer_load_u16 v251, v17, s[44:47], 0 offen
	buffer_load_u16 v2, v16, s[44:47], 0 offen
	buffer_load_u16 v18, v15, s[44:47], 0 offen
	buffer_load_u16 v252, v22, s[44:47], 0 offen
	buffer_load_u16 v255, v21, s[44:47], 0 offen
	buffer_load_u16 v15, v20, s[44:47], 0 offen
	buffer_load_u16 v19, v19, s[44:47], 0 offen
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_lshlrev_b32_e32 v17, 16, v194
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_mov_b32 v99, v241
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v12, v10, s[40:43], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v13, v10, s[16:19], 0 offen
	.loc	1 697 25                        ; attention_backward.py:697:25
	scratch_load_b32 v10, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v98, v240
	v_mov_b32_e32 v100, v242
	v_mov_b32_e32 v102, v244
	v_mov_b32_e32 v104, v246
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_i32 s59, s51
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v101, v243
	v_mov_b32_e32 v103, v245
	.loc	1 696 35                        ; attention_backward.py:696:35
	v_mul_f32_e32 v17, 0x3fb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 696 25 is_stmt 0              ; attention_backward.py:696:25
	v_fmac_f32_e32 v17, s55, v105
	.loc	1 732 34 is_stmt 1              ; attention_backward.py:732:34
	s_waitcnt vmcnt(18)
	v_mov_b16_e64 v140.h, v249.l
	s_waitcnt vmcnt(17)
	v_mov_b16_e64 v139.h, v253.l
	s_waitcnt vmcnt(16)
	v_mov_b16_e64 v138.h, v216.l
	s_waitcnt vmcnt(15)
	v_mov_b16_e64 v137.h, v6.l
	s_waitcnt vmcnt(14)
	v_mov_b16_e64 v144.h, v236.l
	s_waitcnt vmcnt(13)
	v_mov_b16_e64 v143.h, v250.l
	s_waitcnt vmcnt(12)
	v_mov_b16_e64 v142.h, v1.l
	s_waitcnt vmcnt(11)
	v_mov_b16_e64 v141.h, v7.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e64 v181.h, v237.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e64 v180.h, v251.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v179.h, v2.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v178.h, v18.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v185.h, v252.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v184.h, v255.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v183.h, v15.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v182.h, v19.l
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_dual_sub_f32 v17, v17, v13 :: v_dual_add_nc_u32 v10, 0, v10
	.loc	1 697 25                        ; attention_backward.py:697:25
	ds_load_u8_d16_hi v1, v10
	ds_load_u8_d16_hi v2, v10 offset:64
	ds_load_u8_d16_hi v6, v254
	ds_load_u8_d16_hi v7, v254 offset:64
	ds_load_u8_d16 v10, v215
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v10, v215 offset:64
	ds_load_u8_d16 v11, v206
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v11, v206 offset:64
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v14, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v17, v17
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_and_b16 v1.h, 1, v1.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v1.h
	v_and_b16 v1.h, 1, v2.h
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v17, 0, v17, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e64 s0, 1, v1.h
	v_and_b16 v1.h, 1, v6.h
	v_cmp_eq_u16_e64 s1, 1, v1.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v14, 0, v14
	ds_store_b128 v14, v[137:140]
	ds_store_b128 v224, v[141:144]
	ds_store_b128 v3, v[178:181]
	ds_store_b128 v4, v[182:185]
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v16, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v16, 0, v16
	ds_load_b128 v[174:177], v16
	ds_load_b128 v[166:169], v16 offset:2048
	ds_load_b128 v[170:173], v5
	ds_load_b128 v[162:165], v5 offset:2048
	ds_load_b128 v[158:161], v8
	ds_load_b128 v[150:153], v8 offset:2048
	ds_load_b128 v[154:157], v9
	ds_load_b128 v[146:149], v9 offset:2048
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v207, v137
	ds_store_b16 v207, v141 offset:1024
	ds_store_b16 v207, v178 offset:2048
	ds_store_b16 v207, v182 offset:3072
	ds_store_b16 v208, v6
	ds_store_b16 v208, v7 offset:1024
	ds_store_b16 v208, v18 offset:2048
	ds_store_b16 v208, v19 offset:3072
	ds_store_b16 v209, v138
	ds_store_b16 v209, v142 offset:1024
	ds_store_b16 v209, v179 offset:2048
	ds_store_b16 v209, v183 offset:3072
	ds_store_b16 v210, v216
	ds_store_b16 v210, v1 offset:1024
	ds_store_b16 v210, v2 offset:2048
	ds_store_b16 v210, v15 offset:3072
	ds_store_b16 v211, v139
	ds_store_b16 v211, v143 offset:1024
	ds_store_b16 v211, v180 offset:2048
	ds_store_b16 v211, v184 offset:3072
	ds_store_b16 v212, v253
	ds_store_b16 v212, v250 offset:1024
	ds_store_b16 v212, v251 offset:2048
	ds_store_b16 v212, v255 offset:3072
	ds_store_b16 v213, v140
	ds_store_b16 v213, v144 offset:1024
	ds_store_b16 v213, v181 offset:2048
	ds_store_b16 v213, v185 offset:3072
	ds_store_b16 v214, v249
	ds_store_b16 v214, v236 offset:1024
	ds_store_b16 v214, v237 offset:2048
	ds_store_b16 v214, v252 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[20:23], off, off offset:224
	scratch_load_b128 v[24:27], off, off offset:240
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[225:228], v193
	ds_load_b128 v[229:232], v50
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_lshlrev_b32_e32 v193, 16, v201
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 696 35                        ; attention_backward.py:696:35
	v_mul_f32_e32 v193, 0x3fb8aa3b, v193
	.loc	1 696 25 is_stmt 0              ; attention_backward.py:696:25
	v_fmac_f32_e32 v193, s55, v112
	.loc	1 715 36 is_stmt 1              ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[20:27], v[225:232], v[97:104]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[20:23], off, off offset:192
	scratch_load_b128 v[24:27], off, off offset:208
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[225:228], v53
	ds_load_b128 v[229:232], v56
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[20:27], v[225:232], v[97:104]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[20:23], off, off offset:160
	scratch_load_b128 v[24:27], off, off offset:176
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[225:228], v57
	ds_load_b128 v[229:232], v60
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[20:27], v[225:232], v[97:104]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[20:23], off, off offset:128
	scratch_load_b128 v[24:27], off, off offset:144
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[225:228], v63
	ds_load_b128 v[229:232], v64
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[20:27], v[225:232], v[97:104]
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_lshlrev_b32_e32 v20, 16, v195
	v_lshlrev_b32_e32 v23, 16, v198
	v_lshlrev_b32_e32 v24, 16, v199
	v_lshlrev_b32_e32 v21, 16, v196
	v_lshlrev_b32_e32 v25, 16, v200
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v97, v97, v12
	.loc	1 696 35                        ; attention_backward.py:696:35
	v_dual_mul_f32 v23, 0x3fb8aa3b, v23 :: v_dual_mul_f32 v20, 0x3fb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v24, 0x3fb8aa3b, v24 :: v_dual_mul_f32 v21, 0x3fb8aa3b, v21
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_lshlrev_b32_e32 v22, 16, v197
	.loc	1 696 25                        ; attention_backward.py:696:25
	v_dual_fmac_f32 v23, s55, v109 :: v_dual_fmac_f32 v20, s55, v106
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v99, v99, v12
	.loc	1 696 35                        ; attention_backward.py:696:35
	v_mul_f32_e32 v25, 0x3fb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 696 25 is_stmt 0              ; attention_backward.py:696:25
	v_dual_fmac_f32 v21, s55, v107 :: v_dual_mul_f32 v22, 0x3fb8aa3b, v22
	.loc	1 703 34 is_stmt 1              ; attention_backward.py:703:34
	v_sub_f32_e32 v20, v20, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 696 25                        ; attention_backward.py:696:25
	v_dual_fmac_f32 v24, s55, v110 :: v_dual_fmac_f32 v25, s55, v111
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_dual_sub_f32 v98, v98, v12 :: v_dual_mul_f32 v97, v17, v97
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v20, v20
	.loc	1 696 25                        ; attention_backward.py:696:25
	v_fmac_f32_e32 v22, s55, v108
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v102, v102, v12
	v_sub_f32_e32 v103, v103, v12
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v23, v23, v13
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v97, s24, v97
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v22, v22, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v23, v23
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v20, 0, v20, s1
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v101, v101, v12
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cmp_o_f32_e32 vcc_lo, v97, v97
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v98, v20, v98
	.loc	1 720 47 is_stmt 0              ; attention_backward.py:720:47
	v_sub_f32_e32 v105, v100, v12
	v_sub_f32_e32 v12, v104, v12
	.loc	1 721 37 is_stmt 1              ; attention_backward.py:721:37
	v_bfe_u32 v100, v97, 16, 1
	.loc	1 721 38 is_stmt 0              ; attention_backward.py:721:38
	v_mul_f32_e32 v98, s24, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v97, v97, v100, 0x7fff
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v100, 0, v23, s0
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cmp_o_f32_e64 s1, v98, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v1.h, 0x7fff, v97.h, vcc_lo
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v23, v100, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v23, s24, v23
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v101, v23, 16, 1
	v_cmp_o_f32_e64 s0, v23, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v23, v23, v101, 0x7fff
	v_bfe_u32 v101, v98, 16, 1
	v_cndmask_b16 v2.h, 0x7fff, v23.h, s0
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	scratch_load_b32 v23, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v98, v98, v101, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, 0, v23
	ds_store_b16_d16_hi v23, v1
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v1.h, 0x7fff, v98.h, s1
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v23, v2 offset:512
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_and_b16 v2.h, 1, v10.l
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v23, v24, v13
	v_sub_f32_e32 v24, v25, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v2.h
	v_and_b16 v2.h, 1, v11.l
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e64 s0, 1, v2.h
	v_and_b16 v2.h, 1, v7.h
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v22, 0, v22, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e64 s1, 1, v2.h
	v_and_b16 v2.h, 1, v10.h
	v_cmp_eq_u16_e64 s3, 1, v2.h
	v_and_b16 v2.h, 1, v11.h
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v10, 0, v24, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e64 s6, 1, v2.h
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v24, v10, v103
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v23, v23
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s8, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v24, s24, v24
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_cmp_o_f32_e64 s3, v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v23, 0, v23, s1
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v21, v21, v13
	v_sub_f32_e32 v13, v193, v13
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s7, v23, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v21, v21
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v11, 0, v13, s6
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_dual_mul_f32 v12, v11, v12 :: v_dual_cndmask_b32 v21, 0, v21
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s9, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_dual_mul_f32 v12, s24, v12 :: v_dual_mul_f32 v25, v21, v99
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v13, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v25, s24, v25
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cmp_o_f32_e64 s6, v12, v12
	v_add3_u32 v12, v12, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v97, v25, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_add3_u32 v25, v25, v97, 0x7fff
	.loc	1 720 30 is_stmt 1              ; attention_backward.py:720:30
	v_mul_f32_e32 v97, v22, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v97, s24, v97
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v98, v97, 16, 1
	v_cmp_o_f32_e64 s0, v97, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v97, v97, v98, 0x7fff
	.loc	1 720 30 is_stmt 1              ; attention_backward.py:720:30
	v_mul_f32_e32 v98, v23, v102
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v98, s24, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v99, v98, 16, 1
	v_cmp_o_f32_e64 s1, v98, v98
	v_add3_u32 v98, v98, v99, 0x7fff
	v_bfe_u32 v99, v24, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v2.h, 0x7fff, v98.h, s1
	v_add3_u32 v24, v24, v99, 0x7fff
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	ds_store_b16_d16_hi v44, v1
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v1.h, 0x7fff, v25.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v44, v2 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v2.h, 0x7fff, v24.h, s3
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v24, v23, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v45, v1
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v1.h, 0x7fff, v97.h, s0
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v25, v10, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v45, v2 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v2.h, 0x7fff, v12.h, s6
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v47, v1
	ds_store_b16_d16_hi v47, v2 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v12, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v97, v11, 16, 1
	v_cmp_o_f32_e64 s0, v20, v20
	v_cmp_o_f32_e64 s1, v21, v21
	v_cmp_o_f32_e64 s3, v22, v22
	v_cmp_o_f32_e64 s6, v100, v100
	v_add3_u32 v24, v23, v24, 0x7fff
	v_add3_u32 v25, v10, v25, 0x7fff
	v_add3_u32 v97, v11, v97, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v24.l, v248.l
	v_mov_b16_e64 v25.l, v248.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s7
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s8
	v_cndmask_b16 v97.h, 0x7fff, v97.h, s9
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v97.l, v248.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v10, v10, v25
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s7, v10, v10
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v12, 0, v12
	ds_load_b128 v[190:193], v12
	scratch_load_b32 v12, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[194:197], v12
	scratch_load_b32 v12, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[106:109], v12
	scratch_load_b32 v12, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[110:113], v12
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v12, v17, 16, 1
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v14, v[114:117]
	ds_store_b128 v224, v[118:121]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v12, v17, v12, 0x7fff
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_store_b128 v3, v[122:125]
	ds_store_b128 v4, v[126:129]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[118:121], v5
	ds_load_b128 v[114:117], v16
	ds_load_b128 v[122:125], v16 offset:2048
	ds_load_b128 v[126:129], v5 offset:2048
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v248.h, 0x7fff, v12.h, vcc_lo
	v_bfe_u32 v14, v21, 16, 1
	v_bfe_u32 v16, v22, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v12, v17, v248
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v17, v100, 16, 1
	v_add3_u32 v14, v21, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v16, v22, v16, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v14.l, v248.l
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v13, v12, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_add3_u32 v17, v100, v17, 0x7fff
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s1
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s3
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v12, v12, v13, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v13, v20, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[114:121], v[190:197], v[89:96]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s6
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[122:129], v[190:197], v[81:88]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v1.h, 0x7fff, v12.h, vcc_lo
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[118:121], v9
	ds_load_b128 v[114:117], v8
	ds_load_b128 v[122:125], v8 offset:2048
	ds_load_b128 v[126:129], v9 offset:2048
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v12, off, off offset:324 ; 4-byte Folded Reload
	v_add3_u32 v13, v20, v13, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v13.l, v248.l
	v_mov_b16_e64 v16.l, v248.l
	v_mov_b16_e64 v17.l, v248.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s0
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[89:96], v[114:121], v[106:113], v[89:96]
	v_wmma_f32_16x16x16_bf16 v[81:88], v[122:129], v[106:113], v[81:88]
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v12, 0, v12
	ds_store_b16_d16_hi v12, v248
	ds_store_b16_d16_hi v55, v13
	ds_store_b16_d16_hi v58, v14
	ds_store_b16_d16_hi v59, v16
	ds_store_b16_d16_hi v61, v17
	ds_store_b16_d16_hi v28, v24
	ds_store_b16_d16_hi v29, v25
	ds_store_b16_d16_hi v32, v97
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v26, off, off offset:272 ; 4-byte Folded Reload
	ds_load_b64 v[101:102], v35
	ds_load_b64 v[103:104], v43
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v174.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e64 v138.h, v101.l
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e64 v140.h, v103.l
	v_mov_b16_e64 v144.h, v104.l
	v_mov_b16_e64 v142.h, v102.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v105, 0, v26
	ds_load_b64 v[202:203], v36
	ds_load_b64 v[196:197], v39
	ds_load_b64 v[204:205], v105
	ds_load_b64 v[98:99], v46
	ds_load_b64 v[198:199], v49
	ds_load_b64 v[200:201], v42
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16_d16_hi v12, v1
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_dual_sub_f32 v12, v20, v13 :: v_dual_sub_f32 v13, v21, v14
	v_sub_f32_e32 v14, v22, v16
	v_dual_sub_f32 v16, v100, v17 :: v_dual_sub_f32 v17, v23, v24
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v20, v12, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	v_cmp_o_f32_e64 s0, v13, v13
	v_cmp_o_f32_e64 s1, v14, v14
	v_cmp_o_f32_e64 s3, v16, v16
	v_add3_u32 v12, v12, v20, 0x7fff
	v_bfe_u32 v20, v13, 16, 1
	v_cmp_o_f32_e64 s6, v17, v17
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v101.l, v204.h
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v11, v11, v97
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cndmask_b16 v1.h, 0x7fff, v12.h, vcc_lo
	v_add3_u32 v13, v13, v20, 0x7fff
	v_bfe_u32 v20, v14, 16, 1
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v139.h, v196.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s8, v11, v11
	ds_store_b16_d16_hi v55, v1
	v_cndmask_b16 v1.h, 0x7fff, v13.h, s0
	v_add3_u32 v14, v14, v20, 0x7fff
	v_bfe_u32 v20, v16, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v143.h, v197.l
	v_mov_b16_e64 v196.l, v202.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16_d16_hi v58, v1
	v_cndmask_b16 v1.h, 0x7fff, v14.h, s1
	v_add3_u32 v16, v16, v20, 0x7fff
	v_bfe_u32 v20, v17, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v197.l, v203.h
	v_mov_b16_e64 v103.l, v200.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16_d16_hi v59, v1
	v_cndmask_b16 v1.h, 0x7fff, v16.h, s3
	v_add3_u32 v17, v17, v20, 0x7fff
	v_bfe_u32 v20, v10, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v141.h, v198.l
	v_mov_b16_e64 v145.h, v199.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16_d16_hi v61, v1
	v_cndmask_b16 v1.h, 0x7fff, v17.h, s6
	v_add3_u32 v10, v10, v20, 0x7fff
	v_bfe_u32 v20, v11, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v198.l, v98.h
	v_mov_b16_e64 v199.l, v99.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16_d16_hi v28, v1
	v_cndmask_b16 v1.h, 0x7fff, v10.h, s7
	v_add3_u32 v11, v11, v20, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v145.l, v99.l
	v_dual_mov_b32 v99, v196 :: v_dual_mov_b32 v100, v103
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16_d16_hi v29, v1
	v_cndmask_b16 v1.h, 0x7fff, v11.h, s8
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v104.l, v201.h
	v_mov_b16_e64 v102.l, v205.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v97, 0xffff0000, v163
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16_d16_hi v32, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[135:136], v43
	ds_load_b64 v[133:134], v35
	ds_load_b64 v[130:131], v36
	ds_load_b64 v[186:187], v39
	ds_load_b64 v[192:193], v105
	ds_load_b64 v[190:191], v46
	ds_load_b64 v[188:189], v49
	ds_load_b64 v[194:195], v42
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v207, v137
	ds_store_b16 v207, v138 offset:256
	ds_store_b16 v207, v139 offset:512
	ds_store_b16 v207, v140 offset:768
	ds_store_b16 v207, v141 offset:1024
	ds_store_b16 v207, v142 offset:1280
	ds_store_b16 v207, v143 offset:1536
	ds_store_b16 v207, v144 offset:1792
	ds_store_b16 v207, v178 offset:2048
	ds_store_b16 v207, v179 offset:2304
	ds_store_b16 v207, v180 offset:2560
	ds_store_b16 v207, v181 offset:2816
	ds_store_b16 v207, v182 offset:3072
	ds_store_b16 v207, v183 offset:3328
	ds_store_b16 v207, v184 offset:3584
	ds_store_b16 v207, v185 offset:3840
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v139.l, v202.l
	v_mov_b16_e64 v143.l, v203.l
	v_mov_b16_e64 v140.l, v200.l
	v_mov_b16_e64 v144.l, v201.l
	v_mov_b16_e64 v141.l, v98.l
	v_mov_b32_e32 v98, v101
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_store_b16 v207, v6 offset:128
	ds_store_b16 v207, v216 offset:384
	ds_store_b16 v207, v253 offset:640
	ds_store_b16 v207, v249 offset:896
	ds_store_b16 v207, v7 offset:1152
	ds_store_b16 v207, v1 offset:1408
	ds_store_b16 v207, v250 offset:1664
	ds_store_b16 v207, v236 offset:1920
	ds_store_b16 v207, v18 offset:2176
	ds_store_b16 v207, v2 offset:2432
	ds_store_b16 v207, v251 offset:2688
	ds_store_b16 v207, v237 offset:2944
	ds_store_b16 v207, v19 offset:3200
	ds_store_b16 v207, v15 offset:3456
	ds_store_b16 v207, v255 offset:3712
	ds_store_b16 v207, v252 offset:3968
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v20.h, v135.l
	v_mov_b16_e64 v18.h, v133.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v248, v248
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v175.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v105, v199
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v133.l, v192.h
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v101, v198
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v135.l, v194.h
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v103, v197
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_u16_d16 v180, v238 offset:512
	ds_load_u16_d16 v181, v238 offset:768
	ds_load_u16_d16 v182, v238 offset:1024
	ds_load_u16_d16 v184, v238 offset:1536
	ds_load_u16_d16 v196, v238 offset:2048
	ds_load_u16_d16 v197, v238 offset:2304
	ds_load_u16_d16 v198, v238 offset:2560
	ds_load_u16_d16 v201, v238 offset:3328
	ds_load_u16_d16 v202, v238 offset:3584
	ds_load_u16_d16 v203, v238 offset:3840
	ds_load_u16_d16 v183, v238 offset:1280
	ds_load_u16_d16 v229, v238 offset:1088
	ds_load_u16_d16 v228, v238 offset:832
	ds_load_u16_d16 v200, v238 offset:3072
	ds_load_u16_d16 v199, v238 offset:2816
	ds_load_u16_d16 v12, v238 offset:2624
	ds_load_u16_d16 v11, v238 offset:2368
	ds_load_u16_d16 v178, v238
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v229, v238 offset:1216
	ds_load_u16_d16 v179, v238 offset:256
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v12, v238 offset:2752
	ds_load_u16_d16 v185, v238 offset:1792
	ds_load_u16_d16_hi v202, v238 offset:3712
	ds_load_u16_d16_hi v203, v238 offset:3968
	ds_load_u16_d16_hi v183, v238 offset:1408
	ds_load_u16_d16 v225, v238 offset:64
	ds_load_u16_d16_hi v180, v238 offset:640
	ds_load_u16_d16_hi v181, v238 offset:896
	ds_load_u16_d16_hi v182, v238 offset:1152
	ds_load_u16_d16 v230, v238 offset:1344
	ds_load_u16_d16_hi v184, v238 offset:1664
	ds_load_u16_d16 v231, v238 offset:1600
	ds_load_u16_d16_hi v196, v238 offset:2176
	ds_load_u16_d16_hi v197, v238 offset:2432
	ds_load_u16_d16_hi v198, v238 offset:2688
	ds_load_u16_d16_hi v199, v238 offset:2944
	ds_load_u16_d16 v13, v238 offset:2880
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v178, v238 offset:128
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v179, v238 offset:384
	ds_load_u16_d16 v227, v238 offset:576
	ds_load_u16_d16 v226, v238 offset:320
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v185, v238 offset:1920
	ds_load_u16_d16 v10, v238 offset:2112
	ds_load_u16_d16 v232, v238 offset:1856
	ds_load_u16_d16_hi v200, v238 offset:3200
	ds_load_u16_d16 v14, v238 offset:3136
	ds_load_u16_d16 v17, v238 offset:3904
	ds_load_u16_d16_hi v201, v238 offset:3456
	ds_load_u16_d16 v16, v238 offset:3648
	ds_load_u16_d16 v15, v238 offset:3392
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v225, v238 offset:192
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v230, v238 offset:1472
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v231, v238 offset:1728
	ds_load_u16_d16_hi v228, v238 offset:960
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v227, v238 offset:704
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v226, v238 offset:448
	ds_load_u16_d16_hi v11, v238 offset:2496
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v10, v238 offset:2240
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v232, v238 offset:1984
	ds_load_u16_d16_hi v13, v238 offset:3008
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v14, v238 offset:3264
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v17, v238 offset:4032
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v16, v238 offset:3776
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v15, v238 offset:3520
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v138.l, v204.l
	v_mov_b16_e64 v142.l, v205.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v18.l, v192.l
	v_mov_b16_e64 v19.l, v130.l
	v_mov_b16_e64 v19.h, v186.l
	v_mov_b16_e64 v20.l, v194.l
	v_mov_b16_e64 v21.l, v190.l
	v_mov_b16_e64 v21.h, v188.l
	v_mov_b16_e64 v22.l, v193.l
	v_mov_b16_e64 v22.h, v134.l
	v_mov_b16_e64 v23.l, v131.l
	v_mov_b16_e64 v23.h, v187.l
	v_mov_b16_e64 v24.l, v195.l
	v_mov_b16_e64 v24.h, v136.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[225:232], v[138:145], v[65:72]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v25.l, v191.l
	v_mov_b16_e64 v25.h, v189.l
	v_mov_b16_e64 v186.l, v130.h
	v_mov_b16_e64 v187.l, v131.h
	v_mov_b16_e64 v188.l, v190.h
	v_mov_b16_e64 v189.l, v191.h
	v_mov_b32_e32 v132, v135
	v_mov_b32_e32 v130, v133
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v248, v248
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[10:17], v[98:105], v[65:72]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v176.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v134.l, v193.h
	v_mov_b16_e64 v136.l, v195.h
	v_mov_b32_e32 v131, v186
	v_wmma_f32_16x16x16_bf16 v[65:72], v[225:232], v[18:25], v[65:72]
	v_mov_b32_e32 v135, v187
	v_mov_b32_e32 v133, v188
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v6, v248, v248
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v177.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v137, v189
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[178:185], v[138:145], v[73:80]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[10:17], v[130:137], v[65:72]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v16, v248, v248
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v170.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[196:203], v[98:105], v[73:80]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v10, 0xffff0000, v175
	v_and_b32_e32 v11, 0xffff0000, v176
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v15.h, v248.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v17, v248, v248
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v171.l
	v_and_b32_e32 v7, 0xffff0000, v174
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[178:185], v[18:25], v[73:80]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v10, v10
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v12, 0xffff0000, v177
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v248, v248
	v_dual_sub_f32 v7, v7, v7 :: v_dual_and_b32 v20, 0xffff0000, v172
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s0, v10, v10
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v13, 0xffff0000, v170
	v_mov_b16_e64 v248.h, v172.l
	v_and_b32_e32 v14, 0xffff0000, v171
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v15.l, v7.h
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v21, 0xffff0000, v173
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[196:203], v[130:137], v[73:80]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v132.h, v248.l
	v_and_b32_e32 v15, 1, v15
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v131, 0xffff0000, v165
	v_and_b32_e32 v130, 0xffff0000, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v7, v7, v15, 0x7fff
	v_mov_b16_e64 v15.h, v248.l
	v_mov_b16_e32 v15.l, v10.h
	v_mov_b16_e32 v7.l, v1.h
	v_and_b32_e32 v15, 1, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v15, v10, v15, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v11, v11
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v11.h, v248.l
	v_mov_b16_e32 v11.l, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v10, v10
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v22, v10, v11, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v12, v12
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v11.h, v248.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v19, v248, v248
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v173.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v12.h, 0x7fff, v22.h, s1
	v_mov_b16_e32 v11.l, v10.h
	v_cmp_o_f32_e64 s3, v10, v10
	v_cmp_o_f32_e64 s1, v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v23, v10, v11, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v13, v13
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v11.h, v248.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v13.h, 0x7fff, v23.h, s3
	v_mov_b16_e32 v11.l, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s6, v10, v10
	v_cmp_o_f32_e64 s3, v16, v16
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v24, v10, v11, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v14, v14
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v11.h, v248.l
	v_cndmask_b16 v14.h, 0x7fff, v24.h, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v11.l, v10.h
	v_cmp_o_f32_e64 s7, v10, v10
	v_cmp_o_f32_e64 s6, v17, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v25, v10, v11, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v7.h, vcc_lo
	v_mov_b16_e64 v7.h, v248.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cndmask_b16 v11.h, 0x7fff, v15.h, s0
	v_cmp_o_f32_e64 s0, v2, v2
	v_cndmask_b16 v15.h, 0x7fff, v25.h, s7
	v_and_b32_e32 v7, 1, v7
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v25, 0xffff0000, v162
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v1, v1, v7, 0x7fff
	v_mov_b16_e64 v7.h, v248.l
	v_mov_b16_e32 v7.l, v2.h
	v_mov_b16_e32 v1.l, v18.h
	v_cndmask_b16 v10.l, 0x7fff, v1.h, vcc_lo
	v_mov_b16_e64 v1.h, v248.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v7, 1, v7
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_and_b32_e32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v2, v2, v7, 0x7fff
	v_mov_b16_e64 v7.h, v248.l
	v_mov_b16_e32 v7.l, v6.h
	v_add3_u32 v1, v18, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v11.l, 0x7fff, v2.h, s0
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v2, v20, v20 :: v_dual_and_b32 v7, 1, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v15.l, 0x7fff, v1.h, vcc_lo
	v_cmp_o_f32_e64 s0, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v6, v6, v7, 0x7fff
	v_mov_b16_e64 v7.h, v248.l
	v_mov_b16_e32 v7.l, v16.h
	v_mov_b16_e32 v6.l, v2.h
	v_cndmask_b16 v12.l, 0x7fff, v6.h, s1
	v_mov_b16_e64 v6.h, v248.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v7, 1, v7
	v_cmp_o_f32_e64 s1, v19, v19
	v_and_b32_e32 v6, 1, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v7, v16, v7, 0x7fff
	v_mov_b16_e64 v16.h, v248.l
	v_mov_b16_e32 v16.l, v17.h
	v_cndmask_b16 v13.l, 0x7fff, v7.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v7, v21, v21 :: v_dual_and_b32 v16, 1, v16
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v7, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v16, v17, v16, 0x7fff
	v_mov_b16_e32 v16.l, v7.h
	v_cndmask_b16 v14.l, 0x7fff, v16.h, s6
	v_mov_b16_e64 v16.h, v248.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v16, 1, v16
	v_add3_u32 v17, v7, v16, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v7, v248, v248
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v16.h, v248.l
	v_add3_u32 v6, v2, v6, 0x7fff
	v_mov_b16_e32 v2.l, v19.h
	v_mov_b16_e64 v2.h, v248.l
	v_mov_b16_e32 v16.l, v7.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v158.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v7, v7
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s3
	v_and_b32_e32 v2, 1, v2
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v18, v7, v16, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v7, v248, v248
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v159.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v2, v19, v2, 0x7fff
	v_cndmask_b16 v16.h, 0x7fff, v6.h, s0
	v_cndmask_b16 v17.l, 0x7fff, v18.h, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v248, v248
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v160.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v16.l, 0x7fff, v2.h, s1
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v19, v248, v248
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v161.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[10:17], v[138:145], v[73:80]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v12, 0xffff0000, v166
	v_and_b32_e32 v14, 0xffff0000, v167
	v_and_b32_e32 v15, 0xffff0000, v168
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v20, v248, v248
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v154.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v12, v12, v12
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v16, 0xffff0000, v169
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s7, v19, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v21, v248, v248
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v155.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v132.l, v12.h
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v6, v248, v248
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v156.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v132, 1, v132
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v248, v248
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v157.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v132, v12, v132, 0x7fff
	v_mov_b16_e64 v12.h, v248.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v248, v248
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v166.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v248, v248
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v167.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v12.l, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s0, v10, v10
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v10, v12, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v14, v14
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v14.h, v248.l
	v_mov_b16_e32 v14.l, v10.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v248, v248
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v168.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v14, 1, v14
	v_cmp_o_f32_e64 s3, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_add3_u32 v14, v10, v14, 0x7fff
	v_mov_b16_e32 v10.l, v11.h
	v_mov_b16_e64 v10.h, v248.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v13, v248, v248
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v169.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v14.l, v13.h
	v_add3_u32 v133, v11, v10, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v15, v15
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v11.h, v248.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v11.l, v10.h
	v_cmp_o_f32_e64 s6, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v15, v10, v11, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s1
	v_mov_b16_e64 v14.h, v248.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v17, v248, v248
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v10.h, 0x7fff, v132.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s0
	v_and_b32_e32 v14, 1, v14
	v_cndmask_b16 v12.h, 0x7fff, v15.h, s6
	v_mov_b16_e64 v15.h, v248.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v162.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v17, v17
	v_add3_u32 v14, v13, v14, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v13, v16, v16
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v11.l, 0x7fff, v133.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v22, v248, v248
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v163.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v12.l, 0x7fff, v14.h, vcc_lo
	v_mov_b16_e32 v15.l, v13.h
	v_cmp_o_f32_e64 s0, v13, v13
	v_cmp_o_f32_e64 s6, v22, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v15, v13, v15, 0x7fff
	v_mov_b16_e32 v13.l, v17.h
	v_mov_b16_e64 v13.h, v248.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v16, v17, v13, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v13, v25, v25
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v17.h, v248.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v17.l, v13.h
	v_cmp_o_f32_e64 s3, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v17, v13, v17, 0x7fff
	v_mov_b16_e32 v13.l, v22.h
	v_mov_b16_e64 v13.h, v248.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v14.h, 0x7fff, v17.h, s3
	v_and_b32_e32 v13, 1, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v25, v22, v13, 0x7fff
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s0
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v15, v97, v97
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v13.l, 0x7fff, v16.h, s1
	v_mov_b16_e64 v16.h, v248.l
	v_mov_b16_e64 v22.h, v248.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v248, v248
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v16.l, v15.h
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v164.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v14.l, 0x7fff, v25.h, s6
	v_mov_b16_e64 v25.h, v248.l
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v24, v248, v248
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v165.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v16, v15, v16, 0x7fff
	v_mov_b16_e32 v15.l, v23.h
	v_mov_b16_e64 v15.h, v248.l
	v_cmp_o_f32_e64 s3, v24, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v17, v23, v15, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v15, v130, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v22.l, v15.h
	v_cmp_o_f32_e64 s1, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v22, 1, v22
	v_cmp_o_f32_e64 s0, v23, v23
	v_add3_u32 v22, v15, v22, 0x7fff
	v_mov_b16_e32 v15.l, v24.h
	v_mov_b16_e64 v15.h, v248.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v23, v24, v15, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v15, v131, v131
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v24.h, v248.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v24.l, v15.h
	v_cmp_o_f32_e64 s6, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v24, 1, v24
	v_add3_u32 v24, v15, v24, 0x7fff
	v_cndmask_b16 v15.h, 0x7fff, v16.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v16, v248, v248
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v15.l, 0x7fff, v17.h, s0
	v_cmp_o_f32_e64 s0, v7, v7
	v_cndmask_b16 v17.h, 0x7fff, v24.h, s6
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v150.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v25.l, v16.h
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v25, 1, v25
	v_add3_u32 v25, v16, v25, 0x7fff
	v_cndmask_b16 v16.h, 0x7fff, v22.h, s1
	v_cndmask_b16 v16.l, 0x7fff, v23.h, s3
	v_mov_b16_e64 v22.h, v248.l
	v_cmp_o_f32_e64 s3, v18, v18
	v_cndmask_b16 v17.l, 0x7fff, v25.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[10:17], v[138:145], v[65:72]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v10, 0xffff0000, v158
	v_and_b32_e32 v11, 0xffff0000, v159
	v_and_b32_e32 v12, 0xffff0000, v160
	v_and_b32_e32 v14, 0xffff0000, v154
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v10, v10, v10 :: v_dual_and_b32 v15, 0xffff0000, v155
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_sub_f32 v14, v14, v14 :: v_dual_and_b32 v17, 0xffff0000, v157
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v22.l, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v22, v10, v22, 0x7fff
	v_mov_b16_e32 v10.l, v7.h
	v_mov_b16_e64 v10.h, v248.l
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v23, v7, v10, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v7, v11, v11
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v10.h, v248.l
	v_mov_b16_e32 v10.l, v7.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v7, v7
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v11, v7, v10, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v12, v12
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v12.h, v248.l
	v_mov_b16_e32 v7.l, v18.h
	v_mov_b16_e64 v7.h, v248.l
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s1
	v_mov_b16_e32 v12.l, v10.h
	v_cmp_o_f32_e64 s6, v10, v10
	v_cmp_o_f32_e64 s1, v14, v14
	v_and_b32_e32 v7, 1, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v7, v18, v7, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v12, v10, v12, 0x7fff
	v_mov_b16_e32 v10.l, v19.h
	v_mov_b16_e64 v10.h, v248.l
	v_cndmask_b16 v11.l, 0x7fff, v7.h, s3
	v_cmp_o_f32_e64 s3, v21, v21
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v10, 1, v10
	v_add3_u32 v18, v19, v10, 0x7fff
	v_mov_b16_e32 v18.l, v14.h
	v_cndmask_b16 v10.h, 0x7fff, v22.h, vcc_lo
	v_cndmask_b16 v10.l, 0x7fff, v23.h, s0
	v_cmp_o_f32_e64 s0, v20, v20
	v_cndmask_b16 v12.l, 0x7fff, v18.h, s7
	v_mov_b16_e64 v18.h, v248.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v18, v14, v18, 0x7fff
	v_mov_b16_e32 v14.l, v21.h
	v_mov_b16_e64 v14.h, v248.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v19, v21, v14, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v14, v15, v15
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v15.h, v248.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v21, 0xffff0000, v149
	v_and_b32_e32 v16, 0xffff0000, v156
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v15.l, v14.h
	v_cmp_o_f32_e64 s6, v14, v14
	v_and_b32_e32 v15, 1, v15
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v15, v14, v15, 0x7fff
	v_cndmask_b16 v14.l, 0x7fff, v19.h, s3
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v19, 0xffff0000, v147
	v_and_b32_e32 v13, 0xffff0000, v161
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v14.h, 0x7fff, v18.h, s1
	v_cmp_o_f32_e64 s1, v2, v2
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s6
	v_cmp_o_f32_e64 s6, v1, v1
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v7, v13, v13
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v13.h, v248.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v18, 0xffff0000, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v13.l, v7.h
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v13, v7, v13, 0x7fff
	v_mov_b16_e32 v7.l, v20.h
	v_mov_b16_e64 v7.h, v248.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v13.h, 0x7fff, v13.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_and_b32_e32 v7, 1, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v7, v20, v7, 0x7fff
	v_mov_b16_e32 v7.l, v6.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v20, 0xffff0000, v148
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v13.l, 0x7fff, v7.h, s0
	v_mov_b16_e64 v7.h, v248.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v7, 1, v7
	v_add3_u32 v7, v6, v7, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v6, v16, v16
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v16.h, v248.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v15.l, 0x7fff, v7.h, vcc_lo
	v_mov_b16_e32 v16.l, v6.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_o_f32_e64 s0, v6, v6
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v7, 0xffff0000, v150
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v7, v7, v7 :: v_dual_and_b32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v16, v6, v16, 0x7fff
	v_mov_b16_e32 v6.l, v2.h
	v_mov_b16_e64 v6.h, v248.l
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s0
	v_and_b32_e32 v6, 1, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v6, v2, v6, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v17, v17
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v17.h, v248.l
	v_cndmask_b16 v16.l, 0x7fff, v6.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v17.l, v2.h
	v_cmp_o_f32_e64 s3, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v17, v2, v17, 0x7fff
	v_mov_b16_e32 v2.l, v1.h
	v_mov_b16_e64 v2.h, v248.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s3
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v2, v1, v2, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v248, v248
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v151.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v17.l, 0x7fff, v2.h, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v248, v248
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v152.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[10:17], v[98:105], v[73:80]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v11.l, v7.h
	v_mov_b16_e64 v11.h, v248.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v10, 0xffff0000, v151
	v_and_b32_e32 v12, 0xffff0000, v152
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v2, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v6, v248, v248 :: v_dual_and_b32 v11, 1, v11
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v13, 0xffff0000, v153
	v_mov_b16_e64 v248.h, v153.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v11, v7, v11, 0x7fff
	v_mov_b16_e32 v7.l, v1.h
	v_mov_b16_e64 v7.h, v248.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v14, v248, v248
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v146.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v7, 1, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v15, v248, v248
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v147.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v7, v1, v7, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v10, v10
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v10.h, v248.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v16, v248, v248
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v148.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v10.l, v1.h
	v_cmp_o_f32_e64 s1, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v17, v248, v248
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v248.h, v149.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v22, v1, v10, 0x7fff
	v_mov_b16_e32 v1.l, v2.h
	v_mov_b16_e64 v1.h, v248.l
	v_cndmask_b16 v10.h, 0x7fff, v11.h, vcc_lo
	v_cndmask_b16 v10.l, 0x7fff, v7.h, s0
	v_cmp_o_f32_e64 s0, v6, v6
	v_mov_b16_e64 v7.h, v248.l
	v_and_b32_e32 v1, 1, v1
	v_cndmask_b16 v11.h, 0x7fff, v22.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v2, v1, 0x7fff
	v_mov_b16_e64 v2.h, v248.l
	v_cndmask_b16 v11.l, 0x7fff, v1.h, s3
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v1, v12, v12 :: v_dual_sub_f32 v12, v18, v18
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v14, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v2.l, v1.h
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s6, v12, v12
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v2, v1, v2, 0x7fff
	v_mov_b16_e32 v1.l, v6.h
	v_mov_b16_e64 v1.h, v248.l
	v_and_b32_e32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v1, v6, v1, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v6, v13, v13
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v13.l, v12.h
	v_mov_b16_e64 v13.h, v248.l
	v_mov_b16_e32 v1.l, v15.h
	v_mov_b16_e32 v7.l, v6.h
	v_cmp_o_f32_e64 s1, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v13, 1, v13
	v_and_b32_e32 v7, 1, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v7, v6, v7, 0x7fff
	v_mov_b16_e32 v6.l, v14.h
	v_mov_b16_e64 v6.h, v248.l
	v_and_b32_e32 v6, 1, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v6, v14, v6, 0x7fff
	v_add3_u32 v14, v12, v13, 0x7fff
	v_cndmask_b16 v12.h, 0x7fff, v2.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v19, v19
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v12.l, 0x7fff, v1.h, s0
	v_mov_b16_e64 v1.h, v248.l
	v_mov_b16_e64 v13.h, v248.l
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_mov_b16_e32 v13.l, v2.h
	v_cmp_o_f32_e64 s0, v2, v2
	v_and_b32_e32 v1, 1, v1
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v1, v15, v1, 0x7fff
	v_mov_b16_e32 v1.l, v16.h
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v15, v2, v13, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v20, v20
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v13.l, 0x7fff, v6.h, s3
	v_cndmask_b16 v14.l, 0x7fff, v1.h, vcc_lo
	v_mov_b16_e64 v1.h, v248.l
	v_mov_b16_e64 v6.h, v248.l
	v_mov_b16_e32 v6.l, v2.h
	v_cndmask_b16 v13.h, 0x7fff, v7.h, s1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v7, v21, v21
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v1, 1, v1
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s0
	v_and_b32_e32 v6, 1, v6
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_cmp_o_f32_e64 s0, v2, v2
	v_add3_u32 v1, v16, v1, 0x7fff
	v_mov_b16_e64 v16.h, v248.l
	v_add3_u32 v6, v2, v6, 0x7fff
	v_mov_b16_e32 v2.l, v17.h
	v_mov_b16_e64 v2.h, v248.l
	v_mov_b16_e32 v16.l, v7.h
	v_cmp_o_f32_e64 s1, v17, v17
	v_cmp_o_f32_e64 s3, v7, v7
	v_cndmask_b16 v15.l, 0x7fff, v1.h, vcc_lo
	v_and_b32_e32 v2, 1, v2
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v2, v17, v2, 0x7fff
	v_add3_u32 v17, v7, v16, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v7, v248, v248
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v16.h, v248.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s3
	v_mov_b16_e32 v16.l, v7.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s6, v7, v7
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v18, v7, v16, 0x7fff
	v_cndmask_b16 v16.h, 0x7fff, v6.h, s0
	v_cndmask_b16 v16.l, 0x7fff, v2.h, s1
	v_cndmask_b16 v17.l, 0x7fff, v18.h, s6
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[10:17], v[98:105], v[65:72]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v2, off, off offset:388
	scratch_load_b32 v6, off, off offset:412
	scratch_load_b32 v10, off, off offset:472
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s0, s59, 1
	s_or_b32 s1, s59, 2
	s_or_b32 s3, s59, 3
	s_or_b32 s6, s59, 4
	s_or_b32 s7, s59, 5
	s_or_b32 s8, s59, 6
	s_or_b32 s9, s59, 7
	s_or_b32 s14, s59, 8
	s_or_b32 s15, s59, 9
	s_or_b32 s18, s59, 10
	s_or_b32 s46, s59, 11
	s_or_b32 s63, s59, 12
	s_or_b32 s64, s59, 13
	s_or_b32 s65, s59, 14
	s_or_b32 s66, s59, 15
	s_or_b32 s67, s59, 16
	s_or_b32 s68, s59, 17
	s_or_b32 s69, s59, 18
	s_or_b32 s70, s59, 19
	s_or_b32 s71, s59, 20
	s_or_b32 s79, s59, 21
	s_or_b32 s80, s59, 22
	s_or_b32 s81, s59, 23
	s_or_b32 s82, s59, 24
	s_or_b32 s85, s59, 25
	s_or_b32 s87, s59, 26
	s_or_b32 s88, s59, 27
	s_or_b32 s89, s59, 28
	s_or_b32 s90, s59, 29
	s_or_b32 s91, s59, 30
	s_or_b32 s92, s59, 31
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s59, s10
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v241, v239
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s0, s10
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v243, v239
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s1, s10
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v245, v239
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s3, s10
	.loc	1 663 37                        ; attention_backward.py:663:37
	scratch_load_b32 v7, off, off offset:456 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s6, s10
	.loc	1 663 37                        ; attention_backward.py:663:37
	scratch_load_b32 v13, off, off offset:504 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s7, s10
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:488
	scratch_load_b32 v12, off, off offset:440
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s8, s10
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v240, v239
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s9, s10
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v242, v239
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s14, s10
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v244, v239
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s15, s10
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v246, v239
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s18, s10
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v105, v239
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s46, s10
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v112, v246
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s63, s10
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v106, v240
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s64, s10
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v108, v242
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s65, s10
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v110, v244
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s66, s10
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s67, s10
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s68, s10
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s69, s10
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s70, s10
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s71, s10
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s79, s10
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s80, s10
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s81, s10
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s82, s10
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s85, s10
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s87, s10
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s88, s10
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s89, s10
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s90, s10
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s91, s10
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s92, s10
	s_cselect_b32 s18, -1, 0
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_add_i32 s46, s59, s57
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s86
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_mul_i32 s0, s46, s35
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v1, s0, v0, 1
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v2, s0, v2, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s47
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v6, s0, v6, 1
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v10, s0, v10, 1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_u16 v114, v1, s[28:31], 0 offen
	buffer_load_u16 v115, v2, s[28:31], 0 offen
	scratch_load_b32 v1, off, off offset:404 ; 4-byte Folded Reload
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s72
	.loc	1 663 37                        ; attention_backward.py:663:37
	scratch_load_b32 v2, off, off offset:464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v7, s0, v7, 1
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v13, s0, v13, 1
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v11, s0, v11, 1
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v12, s0, v12, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s0, v1, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s0, v2, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s73
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v116, v1, s[28:31], 0 offen
	scratch_load_b32 v1, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s74
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v117, v1, s[28:31], 0 offen
	scratch_load_b32 v1, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s83
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_u16 v118, v1, s[28:31], 0 offen
	buffer_load_u16 v119, v2, s[28:31], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:480
	scratch_load_b32 v2, off, off offset:532
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s75
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s0, v1, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s0, v2, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s76
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v120, v1, s[28:31], 0 offen
	scratch_load_b32 v1, off, off offset:496 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s77
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v121, v1, s[28:31], 0 offen
	scratch_load_b32 v1, off, off offset:512 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s84
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_u16 v122, v1, s[28:31], 0 offen
	buffer_load_u16 v123, v2, s[28:31], 0 offen
	scratch_load_b32 v1, off, off offset:548 ; 4-byte Folded Reload
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s78
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v2, s0, v219, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s79
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v124, v1, s[28:31], 0 offen
	v_add_lshl_u32 v1, s0, v48, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s80
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v125, v1, s[28:31], 0 offen
	v_add_lshl_u32 v1, s0, v54, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s85
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_u16 v126, v1, s[28:31], 0 offen
	buffer_load_u16 v127, v2, s[28:31], 0 offen
	v_add_lshl_u32 v1, s0, v34, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s81
	.loc	1 663 37                        ; attention_backward.py:663:37
	scratch_load_b32 v2, off, off offset:396 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s82
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v128, v1, s[28:31], 0 offen
	v_add_lshl_u32 v1, s0, v247, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s19
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v129, v1, s[28:31], 0 offen
	scratch_load_b32 v1, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v2, s0, v2, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s42
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s43
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s61
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s62
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s63
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s60
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s64
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	s_clause 0x7
	buffer_load_u16 v113, v12, s[28:31], 0 offen
	buffer_load_u16 v190, v6, s[28:31], 0 offen
	buffer_load_u16 v191, v2, s[28:31], 0 offen
	buffer_load_u16 v192, v1, s[28:31], 0 offen
	buffer_load_u16 v130, v13, s[28:31], 0 offen
	buffer_load_u16 v131, v11, s[28:31], 0 offen
	buffer_load_u16 v132, v10, s[28:31], 0 offen
	buffer_load_u16 v133, v7, s[28:31], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:524
	scratch_load_b32 v2, off, off offset:540
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s65
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v6, s0, v234, 1
	v_add_lshl_u32 v7, s0, v220, 1
	v_add_lshl_u32 v10, s0, v31, 1
	v_add_lshl_u32 v11, s0, v38, 1
	v_add_nc_u32_e32 v13, s35, v247
	v_add_lshl_u32 v12, s0, v222, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v13, s0, v13, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s0, v1, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s0, v2, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s66
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s69
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s67
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s70
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s71
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s68
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s18
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	s_clause 0x7
	buffer_load_u16 v134, v12, s[28:31], 0 offen
	buffer_load_u16 v135, v7, s[28:31], 0 offen
	buffer_load_u16 v136, v2, s[28:31], 0 offen
	buffer_load_u16 v186, v1, s[28:31], 0 offen
	buffer_load_u16 v145, v13, s[28:31], 0 offen
	buffer_load_u16 v187, v11, s[28:31], 0 offen
	buffer_load_u16 v188, v10, s[28:31], 0 offen
	buffer_load_u16 v189, v6, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v6, 20, v218
	v_or_b32_e32 v7, 4, v218
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_store_b16 v207, v114
	ds_store_b16 v207, v118 offset:1024
	ds_store_b16 v207, v122 offset:2048
	ds_store_b16 v207, v126 offset:3072
	ds_store_b16 v208, v192
	ds_store_b16 v208, v133 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b16 v208, v186 offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b16 v208, v189 offset:3072
	ds_store_b16 v209, v115
	ds_store_b16 v209, v119 offset:1024
	ds_store_b16 v209, v123 offset:2048
	ds_store_b16 v209, v127 offset:3072
	ds_store_b16 v210, v191
	ds_store_b16 v210, v132 offset:1024
	ds_store_b16 v210, v136 offset:2048
	ds_store_b16 v210, v188 offset:3072
	ds_store_b16 v211, v116
	ds_store_b16 v211, v120 offset:1024
	ds_store_b16 v211, v124 offset:2048
	ds_store_b16 v211, v128 offset:3072
	ds_store_b16 v212, v190
	ds_store_b16 v212, v131 offset:1024
	ds_store_b16 v212, v135 offset:2048
	ds_store_b16 v212, v187 offset:3072
	ds_store_b16 v213, v117
	ds_store_b16 v213, v121 offset:1024
	ds_store_b16 v213, v125 offset:2048
	ds_store_b16 v213, v129 offset:3072
	ds_store_b16 v214, v113
	ds_store_b16 v214, v130 offset:1024
	ds_store_b16 v214, v134 offset:2048
	ds_store_b16 v214, v145 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 36-byte Folded Reload
	scratch_load_b32 v1, off, off offset:520
	scratch_load_b128 v[10:13], off, off
	scratch_load_b128 v[14:17], off, off offset:16
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v6, s59, v6
	v_or_b32_e32 v7, s59, v7
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v107, v241 :: v_dual_add_nc_u32 v98, s23, v6
	v_mov_b32_e32 v109, v243
	v_mov_b32_e32 v111, v245
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s1, s10, v6
	v_cmp_gt_i32_e64 s3, s10, v7
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v7, s23, v7
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s92, s5, s1
	s_and_b32 s91, s5, s3
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v193, 0, v1
	ds_load_b128 v[137:140], v193
	ds_load_b128 v[141:144], v50
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v1, 16, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 608 29 is_stmt 0              ; attention_backward.py:608:29
	v_or_b32_e32 v2, s59, v1
	v_or_b32_e32 v1, s59, v218
	.loc	1 609 29 is_stmt 1              ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s10, v2
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_gt_i32_e64 s0, s10, v1
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v1, s23, v1
	v_add_nc_u32_e32 v19, s23, v2
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s94, s5, vcc_lo
	s_and_b32 s93, s5, s0
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_and_not1_b32 vcc_lo, exec_lo, s50
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[10:17], v[137:144], v[105:112]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[10:13], off, off offset:32
	scratch_load_b128 v[14:17], off, off offset:48
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[137:140], v53
	ds_load_b128 v[141:144], v56
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[10:17], v[137:144], v[105:112]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[10:13], off, off offset:64
	scratch_load_b128 v[14:17], off, off offset:80
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[137:140], v57
	ds_load_b128 v[141:144], v60
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[10:17], v[137:144], v[105:112]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[10:13], off, off offset:96
	scratch_load_b128 v[14:17], off, off offset:112
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[137:140], v63
	ds_load_b128 v[141:144], v64
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[10:17], v[137:144], v[105:112]
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v10, 24, v218
	v_or_b32_e32 v11, 8, v218
	v_or_b32_e32 v12, 28, v218
	v_or_b32_e32 v13, 12, v218
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 608 29 is_stmt 0              ; attention_backward.py:608:29
	v_or_b32_e32 v10, s59, v10
	v_or_b32_e32 v11, s59, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v12, s59, v12
	v_or_b32_e32 v13, s59, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 609 29 is_stmt 1              ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s6, s10, v10
	v_cmp_gt_i32_e64 s7, s10, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s8, s10, v12
	v_cmp_gt_i32_e64 s9, s10, v13
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v15, s23, v11
	v_add_nc_u32_e32 v18, s23, v13
	v_add_nc_u32_e32 v2, s23, v10
	v_add_nc_u32_e32 v6, s23, v12
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s89, s5, s7
	s_and_b32 s87, s5, s9
	s_and_b32 s90, s5, s6
	s_and_b32 s88, s5, s8
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e32 vcc_lo, v217, v1
	v_cmp_le_i32_e64 s0, v217, v7
	v_cmp_le_i32_e64 s1, v217, v15
	v_cmp_le_i32_e64 s3, v217, v18
	v_cmp_le_i32_e64 s6, v217, v19
	v_cmp_le_i32_e64 s7, v217, v98
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s14, s93, vcc_lo
	s_and_b32 s0, s91, s0
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s8, v217, v2
	v_cmp_le_i32_e64 s9, v217, v6
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s1, s89, s1
	s_and_b32 s3, s87, s3
	s_and_not1_b32 s15, s93, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_not1_b32 s91, s91, exec_lo
	s_and_b32 s0, s0, exec_lo
	s_and_b32 s6, s94, s6
	s_and_b32 s7, s92, s7
	s_or_b32 s93, s15, s14
	s_or_b32 s91, s91, s0
	s_and_not1_b32 s0, s89, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s14, s87, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s8, s90, s8
	s_and_b32 s9, s88, s9
	s_or_b32 s89, s0, s1
	s_or_b32 s87, s14, s3
	s_and_not1_b32 s0, s94, exec_lo
	s_and_b32 s1, s6, exec_lo
	s_and_not1_b32 s3, s92, exec_lo
	s_and_b32 s6, s7, exec_lo
	s_or_b32 s94, s0, s1
	s_or_b32 s92, s3, s6
	s_and_not1_b32 s0, s90, exec_lo
	s_and_b32 s1, s8, exec_lo
	s_and_not1_b32 s3, s88, exec_lo
	s_and_b32 s6, s9, exec_lo
	s_or_b32 s90, s0, s1
	s_or_b32 s88, s3, s6
.LBB0_10:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 677 17 is_stmt 1              ; attention_backward.py:677:17
	s_and_not1_b32 vcc_lo, exec_lo, s49
	s_cbranch_vccnz .LBB0_7
; %bb.11:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v10, s21, v1
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v1, s22, v1
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v14, s21, v19
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v19, s22, v19
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v11, s21, v7
	v_subrev_nc_u32_e32 v16, s21, v98
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v7, s22, v7
	v_add_nc_u32_e32 v21, s22, v98
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v217, v10
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s0, v217, v1
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s1, v217, v14
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s3, v217, v19
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v12, s21, v15
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v15, s22, v15
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s8, vcc_lo, s0
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v217, v16
	v_cmp_ge_i32_e64 s0, v217, v11
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s6, v217, v21
	v_cmp_le_i32_e64 s7, v217, v7
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s1, s1, s3
	.loc	1 678 47 is_stmt 1              ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v13, s21, v18
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v18, s22, v18
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s9, s1, s94
	s_and_b32 s1, vcc_lo, s6
	s_and_b32 s3, s0, s7
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v217, v12
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s0, v217, v15
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v17, s21, v2
	v_subrev_nc_u32_e32 v20, s21, v6
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v1, s22, v2
	v_add_nc_u32_e32 v2, s22, v6
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s95, vcc_lo, s0
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s0, v217, v13
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s6, v217, v18
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s14, s3, s91
	s_and_b32 s15, s1, s92
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s1, v217, v17
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s3, v217, v1
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v217, v20
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s7, v217, v2
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s8, s8, s93
	s_and_b32 s0, s0, s6
	s_and_b32 s1, s1, s3
	s_and_b32 s3, s95, s89
	s_and_b32 s6, vcc_lo, s7
	s_and_b32 s0, s0, s87
	s_and_not1_b32 s7, s93, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_or_b32 s93, s7, s8
	s_and_not1_b32 s7, s89, exec_lo
	s_and_not1_b32 s8, s87, exec_lo
	s_and_b32 s0, s0, exec_lo
	s_and_b32 s1, s1, s90
	s_and_b32 s6, s6, s88
	s_or_b32 s89, s7, s3
	s_or_b32 s87, s8, s0
	s_and_not1_b32 s0, s94, exec_lo
	s_and_b32 s3, s9, exec_lo
	s_and_not1_b32 s91, s91, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_not1_b32 s7, s92, exec_lo
	s_and_b32 s8, s15, exec_lo
	s_or_b32 s94, s0, s3
	s_and_not1_b32 s0, s90, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s3, s88, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_or_b32 s91, s91, s14
	s_or_b32 s92, s7, s8
	s_or_b32 s90, s0, s1
	s_or_b32 s88, s3, s6
	s_branch .LBB0_7
.LBB0_12:                               ; %Flow419
	.loc	1 0 21                          ; attention_backward.py:0:21
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v41, off, off offset:552
	scratch_load_b32 v29, off, off offset:556
	scratch_load_b32 v97, off, off offset:560
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
	v_lshrrev_b32_e32 v0, 4, v29
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v16, s35, v41
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s41, s37, 0xffff
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, v0, v97
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
	v_mul_lo_u32 v21, s33, v41
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
	v_add_lshl_u32 v0, v0, s48, 2
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
	v_add_lshl_u32 v15, v15, s48, 2
	buffer_store_b32 v73, v0, s[40:43], 0 offen
	v_add_lshl_u32 v0, v13, s48, 2
	v_add_lshl_u32 v14, v14, s48, 2
	v_add_lshl_u32 v12, v12, s48, 2
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
	v_add_lshl_u32 v11, v11, s48, 2
	s_clause 0x1
	buffer_store_b32 v76, v0, s[40:43], 0 offen
	buffer_store_b32 v77, v12, s[40:43], 0 offen
	v_add_lshl_u32 v0, v9, s48, 2
	v_add_lshl_u32 v10, v10, s48, 2
	v_add_lshl_u32 v8, v8, s48, 2
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
	v_add_lshl_u32 v7, v7, s48, 2
	s_clause 0x1
	buffer_store_b32 v80, v0, s[40:43], 0 offen
	buffer_store_b32 v65, v8, s[40:43], 0 offen
	v_add_lshl_u32 v0, v5, s48, 2
	v_add_lshl_u32 v6, v6, s48, 2
	v_add_lshl_u32 v4, v4, s48, 2
	v_add_lshl_u32 v3, v3, s48, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s6, s5, s6
	s_and_b32 s3, s5, s3
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v2, v2, s48, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s4, s5, s4
	s_and_b32 s2, s5, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v1, v1, s48, 2
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
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 568
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
		.amdhsa_next_free_sgpr 96
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 96
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 568
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20936
; TotalNumSgprs: 98
; NumVgprs: 256
; ScratchSize: 568
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 98
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 568
    .sgpr_count:     98
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bf16_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 141
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
