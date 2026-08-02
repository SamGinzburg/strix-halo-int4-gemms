	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[44:47], s[0:1], 0x94
	s_load_b128 s[48:51], s[0:1], 0x64
	s_load_b32 s35, s[0:1], 0x7c
	s_load_b32 s73, s[0:1], 0x74
	v_mov_b32_e32 v37, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s44
	s_bitcmp1_b32 s44, 8
	s_cselect_b32 s75, -1, 0
	s_cmp_eq_u32 s4, 1
	s_load_b128 s[4:7], s[0:1], 0x8
	s_cselect_b32 s76, -1, 0
.Ltmp0:
	.loc	1 513 22 prologue_end           ; attention_backward.py:513:22
	s_abs_i32 s14, s49
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_abs_i32 s9, s3
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cvt_f32_u32 s8, s14
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s12, s2, 4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_rcp_iflag_f32_e32 v0, s8
	v_readfirstlane_b32 s8, v0
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
	s_ashr_i32 s15, s48, 31
	s_ashr_i32 s16, s49, 31
	s_abs_i32 s17, s48
	.loc	1 514 23                        ; attention_backward.py:514:23
	s_or_b32 s2, s12, 1
	s_or_b32 s8, s12, 2
	s_or_b32 s9, s12, 3
	s_or_b32 s10, s12, 4
	s_or_b32 s11, s12, 5
	s_or_b32 s19, s12, 6
	s_or_b32 s20, s12, 7
	s_or_b32 s21, s12, 8
	s_or_b32 s22, s12, 9
	s_or_b32 s23, s12, 10
	s_or_b32 s37, s12, 11
	s_or_b32 s38, s12, 12
	s_or_b32 s39, s12, 13
	s_or_b32 s40, s12, 14
	s_or_b32 s41, s12, 15
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cmp_lt_i32 s12, s51
	s_cselect_b32 s36, -1, 0
	s_cmp_lt_i32 s2, s51
	.loc	1 533 24                        ; attention_backward.py:533:24
	s_mul_i32 s2, s3, s51
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s34, -1, 0
	s_cmp_lt_i32 s8, s51
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s8, s4
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s33, -1, 0
	s_cmp_lt_i32 s9, s51
	s_cselect_b32 s31, -1, 0
	s_cmp_lt_i32 s10, s51
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s30, -1, 0
	s_cmp_lt_i32 s11, s51
	s_mov_b32 s11, 0x31027000
	s_cselect_b32 s29, -1, 0
	s_cmp_lt_i32 s19, s51
	s_cselect_b32 s28, -1, 0
	s_cmp_lt_i32 s20, s51
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s21, s51
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s22, s51
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s23, s51
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s37, s51
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s38, s51
	s_cselect_b32 s22, -1, 0
	s_cmp_lt_i32 s39, s51
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s40, s51
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s41, s51
	s_cselect_b32 s21, -1, 0
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_add_i32 s74, s2, s12
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_and_b32 s9, s5, 0xffff
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_mul_i32 s72, s74, s73
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_mul_i32 s74, s74, s35
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, s72, v37
	.loc	1 587 22                        ; attention_backward.py:587:22
	s_add_i32 s5, s50, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v1, s73, v0
	v_add_nc_u32_e32 v2, s73, v1
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_cmp_gt_i32_e64 s2, s73, v37
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v16, s74, v37
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s4, s35, v37
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v26, 1, v37
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v3, s73, v2
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s36, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v1, 1, v1
	v_lshlrev_b32_e32 v0, 1, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v17, s35, v16
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v4, s73, v3
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v16, 1, v16
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v19, 0x90, v26
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s34, s2
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v5, s73, v4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s33, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v3, 1, v3
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v6, s73, v5
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v18, s35, v17
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v20, 0x120, v26
	v_xor_b32_e32 v24, 0x2d0, v26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v7, s73, v6
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s31, s2
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v22, s35, v18
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s30, s2
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v8, s73, v7
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v5, 1, v5
	v_lshlrev_b32_e32 v4, 1, v4
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v27, s35, v22
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v18, 1, v18
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v9, s73, v8
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v22, 1, v22
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s29, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v21, 0x1b0, v26
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v10, s73, v9
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s28, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v7, 1, v7
	v_lshlrev_b32_e32 v6, 1, v6
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v11, s73, v10
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_clause 0x5
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	buffer_load_u16 v1, v1, s[8:11], 0 offen
	buffer_load_u16 v2, v2, s[8:11], 0 offen
	buffer_load_u16 v3, v3, s[8:11], 0 offen
	buffer_load_u16 v4, v4, s[8:11], 0 offen
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	v_add_nc_u32_e32 v34, 0, v19
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v19, s35, v27
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s27, s2
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v12, s73, v11
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s26, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v9, 1, v9
	v_lshlrev_b32_e32 v8, 1, v8
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v13, s73, v12
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v23, 0x240, v26
	v_xor_b32_e32 v25, 0x360, v26
	scratch_store_b32 off, v26, off offset:76 ; 4-byte Folded Spill
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s25, s2
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v14, s73, v13
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s24, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v11, 1, v11
	v_lshlrev_b32_e32 v10, 1, v10
	v_lshlrev_b32_e32 v13, 1, v13
	v_lshlrev_b32_e32 v12, 1, v12
	v_lshlrev_b32_e32 v15, 1, v14
	v_add_lshl_u32 v14, v14, s73, 1
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s23, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v39, 0, v24
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s22, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v38, 0, v23
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s19, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_clause 0x4
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s20, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s21, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	s_clause 0x4
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	buffer_load_u16 v6, v6, s[8:11], 0 offen
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s36, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v16, 0x80000000, v16 :: v_dual_lshlrev_b32 v17, 1, v17
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s34, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v42, 0, v26
	v_xor_b32_e32 v26, 0x3f0, v26
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s33, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v24, 0x80000000, v18 :: v_dual_add_nc_u32 v35, 0, v20
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v20, s35, v19
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v18, 1, v27
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s31, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v41, 0, v26
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s30, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v26, 0x80000000, v18 :: v_dual_lshlrev_b32 v19, 1, v19
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s29, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v36, 0, v21
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v21, s35, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v27, 0x80000000, v19 :: v_dual_lshlrev_b32 v18, 1, v20
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s28, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s9, s7, 0xffff
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v23, s35, v21
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v19, 1, v21
	v_cndmask_b32_e32 v21, 0x80000000, v18, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s27, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_mov_b32 s8, s6
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v34, off offset:48
	scratch_store_b32 off, v35, off offset:52
	v_cndmask_b32_e32 v28, 0x80000000, v19, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s26, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v40, 0, v25
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v25, s35, v23
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v23, 1, v23
	scratch_store_b32 off, v41, off offset:72 ; 4-byte Folded Spill
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_ashr_i32 s6, s5, 31
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(15)
	ds_store_b16 v42, v0
	s_waitcnt vmcnt(9)
	ds_store_b16 v42, v8 offset:1024
	ds_store_b16 v34, v1
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v20, s35, v25
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v19, 1, v25
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s25, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(8)
	ds_store_b16 v34, v9 offset:1024
	ds_store_b16 v35, v2
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v18, s35, v20
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v29, 0x80000000, v19 :: v_dual_lshlrev_b32 v20, 1, v20
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s24, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(7)
	ds_store_b16 v35, v10 offset:1024
	ds_store_b16 v36, v3
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v25, s35, v18
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v18, 1, v18
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s23, s4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v39, off offset:64
	scratch_store_b32 off, v40, off offset:68
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v19, s35, v25
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v25, 1, v25
	v_cndmask_b32_e32 v31, 0x80000000, v18, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s22, s4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v36, off offset:56
	scratch_store_b32 off, v38, off offset:60
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v30, s35, v19
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_lshlrev_b32 v18, 1, v19
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s19, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(6)
	ds_store_b16 v36, v11 offset:1024
	ds_store_b16 v38, v4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v19, 1, v30
	v_add_lshl_u32 v30, v30, s35, 1
	v_cndmask_b32_e32 v32, 0x80000000, v18, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s20, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(5)
	ds_store_b16 v38, v12 offset:1024
	ds_store_b16 v39, v5
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v33, 0x80000000, v19, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s21, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(4)
	ds_store_b16 v39, v13 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v40, v6
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(2)
	ds_store_b16 v40, v15 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v41, v7
	s_waitcnt vmcnt(0)
	ds_store_b16 v41, v14 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_clause 0xf
	buffer_load_u16 v19, v16, s[8:11], 0 offen
	buffer_load_u16 v18, v17, s[8:11], 0 offen
	buffer_load_u16 v17, v24, s[8:11], 0 offen
	buffer_load_u16 v16, v22, s[8:11], 0 offen
	buffer_load_u16 v15, v26, s[8:11], 0 offen
	buffer_load_u16 v14, v27, s[8:11], 0 offen
	buffer_load_u16 v13, v21, s[8:11], 0 offen
	buffer_load_u16 v12, v28, s[8:11], 0 offen
	buffer_load_u16 v36, v23, s[8:11], 0 offen
	buffer_load_u16 v35, v29, s[8:11], 0 offen
	buffer_load_u16 v34, v20, s[8:11], 0 offen
	buffer_load_u16 v24, v31, s[8:11], 0 offen
	buffer_load_u16 v23, v25, s[8:11], 0 offen
	buffer_load_u16 v22, v32, s[8:11], 0 offen
	buffer_load_u16 v21, v33, s[8:11], 0 offen
	buffer_load_u16 v20, v30, s[8:11], 0 offen
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_and_b32_e32 v1, 7, v37
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v32, 15, v37
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_lshr_b32 s7, s6, 27
	s_mov_b32 s6, 0
	s_add_i32 s7, s5, s7
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v2, 4, v1
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_hi_u32 s5, s17, s18
	.loc	1 587 20                        ; attention_backward.py:587:20
	s_and_b32 s77, s7, 0xffffffe0
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_bfe_u32 s7, s44, 0x10008
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshl_or_b32 v0, v32, 7, v2
	v_xor_b32_e32 v3, 16, v0
	v_add_nc_u32_e32 v4, 0, v0
	v_xor_b32_e32 v8, 64, v0
	v_xor_b32_e32 v9, 0x50, v0
	v_xor_b32_e32 v10, 0x60, v0
	v_add_nc_u32_e32 v5, 0, v3
	ds_load_b128 v[43:46], v4
	ds_load_b128 v[47:50], v5
	v_xor_b32_e32 v3, 32, v0
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[43:46], off offset:80 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[47:50], off offset:96 ; 16-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v3
	v_xor_b32_e32 v3, 48, v0
	v_add_nc_u32_e32 v8, 0, v8
	v_add_nc_u32_e32 v9, 0, v9
	v_xor_b32_e32 v11, 0x70, v0
	v_add_nc_u32_e32 v10, 0, v10
	v_add_nc_u32_e32 v7, 0, v3
	ds_load_b128 v[43:46], v6
	ds_load_b128 v[47:50], v7
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[43:46], off offset:112 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[47:50], off offset:128 ; 16-byte Folded Spill
	ds_load_b128 v[43:46], v8
	ds_load_b128 v[47:50], v9
	v_add_nc_u32_e32 v11, 0, v11
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[43:46], off offset:144 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[47:50], off offset:160 ; 16-byte Folded Spill
	ds_load_b128 v[43:46], v10
	ds_load_b128 v[47:50], v11
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[43:46], off offset:176 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[47:50], off offset:192 ; 16-byte Folded Spill
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s6, s12, s45
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_add_i32 s8, s46, s47
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s6, s6, s47
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_sub_i32 s8, s12, s8
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s6, s6, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 592 17                        ; attention_backward.py:592:17
	s_min_i32 s6, s50, s6
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
	s_min_i32 s77, s77, s8
.LBB0_2:
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b16 v42, v19
	s_waitcnt vmcnt(7)
	ds_store_b16 v42, v36 offset:1024
	scratch_load_b32 v19, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_i32 s7, s5, s14
	s_load_b128 s[52:55], s[0:1], 0x50
	s_sub_i32 s7, s17, s7
	s_xor_b32 s8, s15, s16
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s7, s14
	s_cmp_ge_u32 s7, s14
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v154, s12, v32
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s7, s10, s7
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s7, s14
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_and_b32_e32 v3, 32, v37
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s5, s9, s5
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_and_b32_e32 v25, 16, v37
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_xor_b32 s7, s5, s8
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s5, s51, v154
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshrrev_b32_e32 v26, 1, v3
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_sub_i32 s44, s7, s8
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt vmcnt(0)
	ds_store_b16 v19, v18
	ds_store_b16 v19, v35 offset:1024
	scratch_load_b32 v18, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cmp_lt_i32 s44, 1
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt vmcnt(0)
	ds_store_b16 v18, v17
	ds_store_b16 v18, v34 offset:1024
	scratch_load_b32 v17, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v17, v16
	ds_store_b16 v17, v24 offset:1024
	scratch_load_b32 v16, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v16, v15
	ds_store_b16 v16, v23 offset:1024
	scratch_load_b32 v15, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v15, v14
	ds_store_b16 v15, v22 offset:1024
	scratch_load_b32 v14, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v14, v13
	ds_store_b16 v14, v21 offset:1024
	scratch_load_b32 v13, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v13, v12
	ds_store_b16 v13, v20 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cbranch_scc1 .LBB0_29
; %bb.3:                                ; %.lr.ph117
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[47:50], v11
	ds_load_b128 v[43:46], v10
	v_dual_mov_b32 v73, 0 :: v_dual_lshlrev_b32 v12, 5, v37
	v_lshlrev_b32_e32 v13, 2, v37
	v_lshrrev_b32_e32 v16, 1, v25
	v_lshrrev_b32_e32 v17, 5, v3
	s_clause 0x3
	s_load_b128 s[56:59], s[0:1], 0x80
	s_load_b64 s[60:61], s[0:1], 0x0
	s_load_b256 s[36:43], s[0:1], 0x30
	s_load_b32 s0, s[0:1], 0x90
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_lshl_or_b32 v24, v3, 6, v0
	s_xor_b32 s7, s3, s49
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_sub_i32 s1, s12, s47
	s_ashr_i32 s7, s7, 31
	s_max_i32 s1, s1, 0
	s_xor_b32 s8, s13, s7
	s_and_b32 s1, s1, 0x7fffffe0
	s_sub_i32 s7, s8, s7
	s_max_u32 s1, s6, s1
	s_mul_i32 s8, s7, s49
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[43:46], off offset:216
	scratch_store_b128 off, v[47:50], off offset:232
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[47:50], v9
	ds_load_b128 v[43:46], v8
	v_lshrrev_b32_e32 v9, 4, v3
	v_lshrrev_b32_e32 v8, 2, v25
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_sub_i32 s3, s3, s8
	.loc	1 602 9 is_stmt 1               ; attention_backward.py:602:9
	s_and_b32 s8, s76, exec_lo
	s_cselect_b32 s51, s1, s6
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_mul_f32 s79, s56, 0x3fb8aa3b
	v_mul_lo_u32 v0, s0, v154
	s_cmp_lt_i32 s51, s77
	s_mov_b32 s49, 0
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s78, s44, s3
	.loc	1 662 35                        ; attention_backward.py:662:35
	s_mul_i32 s48, s7, s48
	.loc	1 683 27                        ; attention_backward.py:683:27
	s_mul_i32 s57, s7, s57
	s_cselect_b32 s80, -1, 0
	s_and_b32 s61, s61, 0xffff
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s65, s43, 0xffff
	s_mov_b32 s64, s42
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[43:46], off offset:248
	scratch_store_b128 off, v[47:50], off offset:264
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[47:50], v7
	ds_load_b128 v[43:46], v6
	v_bfe_i32 v6, v37, 3, 1
	v_cndmask_b32_e64 v7, 0x820, 0, vcc_lo
	s_and_b32 s69, s39, 0xffff
	s_mov_b32 s68, s38
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[43:46], off offset:288
	scratch_store_b128 off, v[47:50], off offset:304
	ds_load_b128 v[47:50], v5
	ds_load_b128 v[43:46], v4
	v_and_or_b32 v7, 0x410, v6, v7
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[43:46], off offset:320
	scratch_store_b128 off, v[47:50], off offset:336
	v_mov_b32_e32 v44, 0
	v_and_b32_e32 v14, 2, v37
	v_and_b32_e32 v12, 0x180, v12
	v_and_b32_e32 v15, 52, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v76, v44 :: v_dual_lshlrev_b32 v5, 7, v1
	v_mov_b32_e32 v74, v44
	v_mov_b32_e32 v75, v44
	v_mov_b32_e32 v77, v44
	v_or3_b32 v10, v15, v14, v12
	v_dual_mov_b32 v65, 0 :: v_dual_lshlrev_b32 v12, 3, v37
	v_mov_b32_e32 v71, v44
	v_or_b32_e32 v11, v5, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or3_b32 v17, v10, v16, v17
	v_and_b32_e32 v10, 24, v37
	v_dual_mov_b32 v79, v44 :: v_dual_lshlrev_b32 v18, 3, v32
	v_mov_b32_e32 v67, v44
	v_xor_b32_e32 v21, v7, v11
	v_lshrrev_b32_e32 v4, 1, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or3_b32 v19, v8, v9, v18
	v_lshlrev_b32_e32 v8, 1, v37
	v_dual_mov_b32 v80, v44 :: v_dual_lshlrev_b32 v7, 1, v32
	v_or_b32_e32 v4, v2, v4
	v_mov_b32_e32 v78, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v69, v44 :: v_dual_and_b32 v8, 0x70, v8
	v_mov_b32_e32 v89, 0
	v_or3_b32 v20, v4, v5, v9
	v_cndmask_b32_e64 v4, 0x420, 0, vcc_lo
	v_and_b32_e32 v5, 48, v12
	v_xor_b32_e32 v2, v2, v8
	v_lshlrev_b32_e32 v8, 2, v25
	v_mov_b32_e32 v68, v44
	v_and_or_b32 v4, 0x210, v6, v4
	v_lshl_or_b32 v1, v1, 6, v5
	v_lshl_or_b32 v27, v37, 7, v2
	v_or3_b32 v22, v7, v8, v3
	v_xor_b32_e32 v2, 0x220, v13
	v_xor_b32_e32 v16, 0xee0, v13
	v_xor_b32_e32 v23, v4, v1
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_lshrrev_b32_e32 v1, 4, v37
	v_mov_b32_e32 v66, v44
	v_mov_b32_e32 v91, v44
	v_mov_b32_e32 v93, v44
	v_mov_b32_e32 v95, v44
	v_or_b32_e32 v4, 4, v1
	v_or_b32_e32 v6, 8, v1
	v_or_b32_e32 v7, 12, v1
	v_or_b32_e32 v8, 16, v1
	v_or_b32_e32 v9, 20, v1
	v_mad_u64_u32 v[14:15], null, s59, v4, v[0:1]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[14:15], off offset:1028
	scratch_store_b32 off, v6, off offset:384
	v_mad_u64_u32 v[14:15], null, s59, v6, v[0:1]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[14:15], off offset:1036
	scratch_store_b32 off, v7, off offset:388
	v_mad_u64_u32 v[6:7], null, s59, v7, v[0:1]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[6:7], off offset:1044
	scratch_store_b32 off, v8, off offset:392
	v_mad_u64_u32 v[6:7], null, s59, v8, v[0:1]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[6:7], off offset:1052
	scratch_store_b32 off, v9, off offset:396
	v_mad_u64_u32 v[6:7], null, s59, v9, v[0:1]
	v_or_b32_e32 v11, 24, v1
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[6:7], off offset:1060
	scratch_store_b32 off, v11, off offset:400
	v_mad_u64_u32 v[6:7], null, s59, v11, v[0:1]
	v_or_b32_e32 v12, 28, v1
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[6:7], off offset:1068
	scratch_store_b32 off, v12, off offset:404
	v_mad_u64_u32 v[6:7], null, s59, v12, v[0:1]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[6:7], off offset:1076
	scratch_store_b32 off, v1, off offset:376
	v_mad_u64_u32 v[0:1], null, s59, v1, v[0:1]
	scratch_store_b32 off, v25, off offset:1096 ; 4-byte Folded Spill
	v_xor_b32_e32 v6, 0x550, v13
	v_xor_b32_e32 v7, 0x660, v13
	v_xor_b32_e32 v8, 0x770, v13
	v_xor_b32_e32 v9, 0x880, v13
	v_xor_b32_e32 v11, 0xaa0, v13
	scratch_store_b64 off, v[0:1], off offset:1084 ; 8-byte Folded Spill
	v_mul_u32_u24_e32 v0, 0x110, v32
	v_lshlrev_b32_e32 v1, 1, v10
	v_xor_b32_e32 v10, 0x990, v13
	v_xor_b32_e32 v12, 0xbb0, v13
	v_xor_b32_e32 v14, 0xcc0, v13
	v_lshl_or_b32 v25, v3, 7, v0
	v_lshl_add_u32 v0, v3, 1, 0
	v_xor_b32_e32 v3, 0x330, v13
	v_xor_b32_e32 v15, 0xdd0, v13
	v_mov_b32_e32 v147, v44
	v_mov_b32_e32 v149, v44
	v_lshl_add_u32 v43, v32, 2, v0
	v_xor_b32_e32 v0, v5, v1
	v_xor_b32_e32 v1, 0x110, v13
	v_lshl_or_b32 v5, v32, 6, v5
	v_mov_b32_e32 v151, v44
	v_mov_b32_e32 v153, v44
	v_lshl_or_b32 v28, v37, 6, v0
	v_xor_b32_e32 v0, 16, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v4, off offset:380 ; 4-byte Folded Spill
	v_xor_b32_e32 v4, 0x440, v13
	v_xor_b32_e32 v13, 0xff0, v13
	scratch_store_b32 off, v0, off offset:424 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:428 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v24
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:432 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:436 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x50, v24
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:440 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:444
	scratch_store_b32 off, v24, off offset:372
	v_xor_b32_e32 v0, 0x70, v24
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:448 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x90, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:452 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x120, v19
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:456
	scratch_store_b32 off, v19, off offset:352
	v_xor_b32_e32 v0, 0x1b0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v17
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:468
	scratch_store_b32 off, v17, off offset:284
	v_xor_b32_e32 v0, 48, v17
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:472 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:476 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v27
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:480 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:484 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v27
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:488 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x50, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:492 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v27
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:496
	scratch_store_b32 off, v27, off offset:412
	v_xor_b32_e32 v0, 0x70, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:500 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v21
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:504 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:508 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v21
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:512 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:516 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x50, v21
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:520 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:524 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x70, v21
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:528 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1040, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:532 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1050, v21
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:536 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1060, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:540 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1070, v21
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:544 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1010, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:548 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1020, v21
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:552
	scratch_store_b32 off, v21, off offset:360
	v_xor_b32_e32 v0, 0x1030, v21
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:556 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_dual_mov_b32 v70, v44 :: v_dual_add_nc_u32 v1, s35, v37
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:560
	scratch_store_b32 off, v1, off offset:788
	v_add_nc_u32_e32 v0, 0, v2
	v_dual_mov_b32 v72, v44 :: v_dual_add_nc_u32 v1, s35, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:564
	scratch_store_b32 off, v1, off offset:796
	v_add_nc_u32_e32 v0, 0, v3
	v_dual_mov_b32 v90, v44 :: v_dual_add_nc_u32 v1, s35, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:568
	scratch_store_b32 off, v1, off offset:804
	v_add_nc_u32_e32 v0, 0, v4
	v_dual_mov_b32 v92, v44 :: v_dual_add_nc_u32 v1, s35, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:572
	scratch_store_b32 off, v1, off offset:812
	v_add_nc_u32_e32 v0, 0, v6
	v_dual_mov_b32 v94, v44 :: v_dual_add_nc_u32 v1, s35, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:576
	scratch_store_b32 off, v1, off offset:820
	v_add_nc_u32_e32 v0, 0, v7
	v_dual_mov_b32 v96, v44 :: v_dual_add_nc_u32 v1, s35, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:580
	scratch_store_b32 off, v1, off offset:828
	v_add_nc_u32_e32 v0, 0, v8
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v1, s35, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:584
	scratch_store_b32 off, v1, off offset:836
	v_add_nc_u32_e32 v0, 0, v9
	v_dual_mov_b32 v148, v44 :: v_dual_add_nc_u32 v1, s35, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:588
	scratch_store_b32 off, v1, off offset:844
	v_add_nc_u32_e32 v0, 0, v10
	v_dual_mov_b32 v150, v44 :: v_dual_add_nc_u32 v1, s35, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:592
	scratch_store_b32 off, v1, off offset:852
	v_add_nc_u32_e32 v0, 0, v11
	v_dual_mov_b32 v152, v44 :: v_dual_add_nc_u32 v1, s35, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:596
	scratch_store_b32 off, v1, off offset:860
	v_add_nc_u32_e32 v0, 0, v12
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v1, s35, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:600
	scratch_store_b32 off, v1, off offset:868
	v_add_nc_u32_e32 v0, 0, v14
	v_add_nc_u32_e32 v1, s35, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:604
	scratch_store_b32 off, v1, off offset:876
	v_add_nc_u32_e32 v0, 0, v15
	v_add_nc_u32_e32 v1, s35, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:608
	scratch_store_b32 off, v1, off offset:884
	v_add_nc_u32_e32 v0, 0, v16
	v_add_nc_u32_e32 v1, s35, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:612
	scratch_store_b32 off, v1, off offset:892
	v_add_nc_u32_e32 v0, 0, v13
	v_add_nc_u32_e32 v1, s35, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:616
	scratch_store_b32 off, v1, off offset:900
	v_xor_b32_e32 v0, 16, v25
	v_add_nc_u32_e32 v1, s35, v1
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v1, off offset:908 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v0, off offset:620 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v25
	scratch_store_b32 off, v1, off offset:916 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v1, off offset:924 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v0, off offset:624 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v25
	scratch_store_b32 off, v1, off offset:932 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v1, off offset:940 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v0, off offset:628 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v25
	scratch_store_b32 off, v1, off offset:948 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:956
	scratch_store_b32 off, v0, off offset:632
	v_xor_b32_e32 v0, 0x50, v25
	v_add_nc_u32_e32 v1, s35, v1
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v1, off offset:964 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v0, off offset:636 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v25
	scratch_store_b32 off, v1, off offset:972 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v1, off offset:980 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v0, off offset:640 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x70, v25
	scratch_store_b32 off, v1, off offset:988 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v1, off offset:996 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v0, off offset:644 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x80, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:648 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x90, v25
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:652 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xa0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:656 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xb0, v25
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:660 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xc0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:664 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xd0, v25
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:668 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xe0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:672
	scratch_store_b32 off, v25, off offset:408
	v_xor_b32_e32 v0, 0xf0, v25
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:676 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x90, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:680 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x120, v22
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:684
	scratch_store_b32 off, v22, off offset:364
	v_xor_b32_e32 v0, 0x1b0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:688 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v5
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:692 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:696
	scratch_store_b32 off, v5, off offset:416
	v_xor_b32_e32 v0, 48, v5
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:700 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:704 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v28
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:708
	scratch_store_b32 off, v28, off offset:420
	v_xor_b32_e32 v0, 48, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:712 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v23
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:716 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:720
	scratch_store_b32 off, v23, off offset:368
	v_xor_b32_e32 v0, 48, v23
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:724 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:728 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v20
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:732 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:736 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v20
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:740 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x50, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:744 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v20
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:748
	scratch_store_b32 off, v20, off offset:356
	v_xor_b32_e32 v0, 0x70, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:752 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x90, v18
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:756 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x120, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:760 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1b0, v18
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:764 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x240, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:768 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x2d0, v18
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:772 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x360, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:776
	scratch_store_b32 off, v18, off offset:280
	v_xor_b32_e32 v0, 0x3f0, v18
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:780 ; 4-byte Folded Spill
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, s73, v37
	scratch_store_b32 off, v0, off offset:784 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s73, v0
	scratch_store_b32 off, v0, off offset:792 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s73, v0
	scratch_store_b32 off, v0, off offset:800 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s73, v0
	scratch_store_b32 off, v0, off offset:808 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s73, v0
	scratch_store_b32 off, v0, off offset:816 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s73, v0
	scratch_store_b32 off, v0, off offset:824 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s73, v0
	scratch_store_b32 off, v0, off offset:832 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s73, v0
	scratch_store_b32 off, v0, off offset:840 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s73, v0
	scratch_store_b32 off, v0, off offset:848 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s73, v0
	scratch_store_b32 off, v0, off offset:856 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s73, v0
	scratch_store_b32 off, v0, off offset:864 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s73, v0
	scratch_store_b32 off, v0, off offset:872 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s73, v0
	scratch_store_b32 off, v0, off offset:880 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s73, v0
	scratch_store_b32 off, v0, off offset:888 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s73, v0
	scratch_store_b32 off, v0, off offset:896 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s73, v0
	scratch_store_b32 off, v0, off offset:904 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s73, v0
	scratch_store_b32 off, v0, off offset:912 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s73, v0
	scratch_store_b32 off, v0, off offset:920 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s73, v0
	scratch_store_b32 off, v0, off offset:928 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s73, v0
	scratch_store_b32 off, v0, off offset:936 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s73, v0
	scratch_store_b32 off, v0, off offset:944 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s73, v0
	scratch_store_b32 off, v0, off offset:952 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s73, v0
	scratch_store_b32 off, v0, off offset:960 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s73, v0
	scratch_store_b32 off, v0, off offset:968 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s73, v0
	scratch_store_b32 off, v0, off offset:976 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s73, v0
	scratch_store_b32 off, v0, off offset:984 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s73, v0
	scratch_store_b32 off, v0, off offset:992 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s73, v0
	scratch_store_b32 off, v0, off offset:1000 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s73, v0
	scratch_store_b32 off, v1, off offset:1004 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v0, off offset:1008 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s73, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1016
	scratch_store_b32 off, v1, off offset:1012
	v_add_nc_u32_e32 v0, s35, v1
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1020
	scratch_store_b32 off, v32, off offset:1092
	scratch_store_b32 off, v26, off offset:1100
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v0, v26, v32
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1024
	scratch_store_b32 off, v37, off offset:208
	scratch_store_b32 off, v42, off offset:212
	s_branch .LBB0_5
.LBB0_4:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_add_i32 s49, s49, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s49, s44
	s_cbranch_scc0 .LBB0_28
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s80
	s_cbranch_vccnz .LBB0_4
; %bb.6:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_add_i32 s0, s49, s78
	s_mov_b32 s81, s51
	.loc	1 662 35                        ; attention_backward.py:662:35
	s_add_i32 s38, s0, s48
	.loc	1 684 27                        ; attention_backward.py:684:27
	s_mul_i32 s39, s0, s58
	.loc	1 662 34                        ; attention_backward.py:662:34
	s_mul_i32 s38, s38, s50
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_add_i32 s39, s39, s57
	s_branch .LBB0_8
.LBB0_7:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 25 is_stmt 0                ; attention_backward.py:0:25
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 689 34 is_stmt 1              ; attention_backward.py:689:34
	s_waitcnt vmcnt(0)
	v_and_b16 v0.l, 0xff, v101.h
	.loc	1 689 25 is_stmt 0              ; attention_backward.py:689:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add_nc_u32_e32 v11, 0x800, v43
	v_add_nc_u32_e32 v12, 0xc00, v43
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e32 vcc_lo, 0, v0.l
	v_and_b16 v0.l, 0xff, v101.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v13, 0x1000, v43
	v_add_nc_u32_e32 v14, 0x1400, v43
	v_add_nc_u32_e32 v15, 0x1800, v43
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s6, s100, vcc_lo
	.loc	1 689 34 is_stmt 0              ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s0, 0, v0.l
	v_and_b16 v0.l, 0xff, v98.l
	v_mov_b16_e32 v121.h, v19.l
	v_mov_b16_e64 v117.h, v136.l
	v_mov_b16_e64 v122.h, v132.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s0, s99, s0
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s1, 0, v0.l
	v_and_b16 v0.l, 0xff, v99.h
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v1, 0, 1, s0
	v_mov_b16_e64 v123.h, v130.l
	v_mov_b16_e32 v124.h, v24.l
	v_mov_b16_e32 v125.h, v23.l
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s3, 0, v0.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v0, 0, 1, s6
	v_mov_b16_e64 v126.h, v135.l
	v_mov_b16_e64 v127.h, v134.l
	v_mov_b16_e64 v128.h, v133.l
	s_and_b32 s0, s98, s3
	v_lshlrev_b16 v0.l, 8, v0.l
	v_mov_b16_e64 v129.h, v131.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_or_b16 v0.l, v1.l, v0.l
	v_cndmask_b32_e64 v1, 0, 1, s0
	s_and_b32 s0, s97, s1
	v_cndmask_b32_e64 v2, 0, 1, s0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v1.l
	scratch_load_b32 v1, off, off offset:352 ; 4-byte Folded Reload
	v_or_b16 v0.h, v2.l, v0.h
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, 0, v1
	ds_store_b16 v1, v0
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_and_b16 v0.l, 0xff, v99.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_ne_u16_e32 vcc_lo, 0, v0.l
	v_and_b16 v0.l, 0xff, v98.h
	v_cmp_ne_u16_e64 s0, 0, v0.l
	v_and_b16 v0.l, 0xff, v100.h
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s0, s93, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s1, 0, v0.l
	v_and_b16 v0.l, 0xff, v100.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v2, 0, 1, s0
	.loc	1 708 21 is_stmt 1              ; attention_backward.py:708:21
	s_mul_i32 s0, s28, s35
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s1, s96, s1
	.loc	1 689 34 is_stmt 0              ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s3, 0, v0.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v1, 0, 1, s1
	s_and_b32 s1, s95, vcc_lo
	.loc	1 712 26 is_stmt 1              ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s71
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s71, s63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_mov_b16_e32 v0.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s1
	s_and_b32 s1, s94, s3
	v_lshlrev_b16 v0.l, 8, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v0.l, v1.l, v0.l
	v_cndmask_b32_e64 v1, 0, 1, s1
	v_lshlrev_b16 v1.l, 8, v1.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v1.l, v2.l, v1.l
	scratch_load_b32 v2, off, off offset:452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v2, v0
	scratch_load_b32 v2, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v2, v0
	scratch_load_b32 v0, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v1
	s_waitcnt lgkmcnt(0)
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v1, off, off offset:788 ; 4-byte Folded Reload
	v_add_lshl_u32 v0, s0, v37, 2
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s70
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s70, s62
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 2
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_b32 v25, v0, s[68:71], 0 offen
	buffer_load_b32 v26, v1, s[68:71], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:796
	scratch_load_b32 v1, off, off offset:820
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s92
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v0, s0, v0, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s91
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v27, v0, s[68:71], 0 offen
	scratch_load_b32 v0, off, off offset:804 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s0, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s90
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v28, v0, s[68:71], 0 offen
	scratch_load_b32 v0, off, off offset:812 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s0, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s89
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_b32 v29, v0, s[68:71], 0 offen
	buffer_load_b32 v30, v1, s[68:71], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:828
	scratch_load_b32 v1, off, off offset:852
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s88
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v0, s0, v0, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s87
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v31, v0, s[68:71], 0 offen
	scratch_load_b32 v0, off, off offset:836 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s0, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s86
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v32, v0, s[68:71], 0 offen
	scratch_load_b32 v0, off, off offset:844 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s0, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s85
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_b32 v34, v0, s[68:71], 0 offen
	buffer_load_b32 v35, v1, s[68:71], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:860
	scratch_load_b32 v1, off, off offset:884
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s84
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v0, s0, v0, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s83
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v36, v0, s[68:71], 0 offen
	scratch_load_b32 v0, off, off offset:868 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s0, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s82
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v37, v0, s[68:71], 0 offen
	scratch_load_b32 v0, off, off offset:876 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s0, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s67
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s67, s63
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_b32 v38, v0, s[68:71], 0 offen
	buffer_load_b32 v39, v1, s[68:71], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:892
	scratch_load_b32 v1, off, off offset:916
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s66
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s66, s62
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v0, s0, v0, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s43
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s43, s63
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v40, v0, s[68:71], 0 offen
	scratch_load_b32 v0, off, off offset:900 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s0, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s42
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s42, s62
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v41, v0, s[68:71], 0 offen
	scratch_load_b32 v0, off, off offset:908 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s0, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_b32 v45, v0, s[68:71], 0 offen
	buffer_load_b32 v46, v1, s[68:71], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:924
	scratch_load_b32 v1, off, off offset:948
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s33
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v0, s0, v0, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s31
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v47, v0, s[68:71], 0 offen
	scratch_load_b32 v0, off, off offset:932 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s0, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v48, v0, s[68:71], 0 offen
	scratch_load_b32 v0, off, off offset:940 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s0, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s29
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_b32 v49, v0, s[68:71], 0 offen
	buffer_load_b32 v50, v1, s[68:71], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:956
	scratch_load_b32 v1, off, off offset:980
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s27
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v0, s0, v0, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s26
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v51, v0, s[68:71], 0 offen
	scratch_load_b32 v0, off, off offset:964 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s0, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s25
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v52, v0, s[68:71], 0 offen
	scratch_load_b32 v0, off, off offset:972 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s0, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s24
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_b32 v55, v0, s[68:71], 0 offen
	buffer_load_b32 v56, v1, s[68:71], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:988
	scratch_load_b32 v1, off, off offset:1012
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s23
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v0, s0, v0, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s22
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v57, v0, s[68:71], 0 offen
	scratch_load_b32 v0, off, off offset:996 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s0, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s21
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v58, v0, s[68:71], 0 offen
	scratch_load_b32 v0, off, off offset:1004 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s0, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s20
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_b32 v81, v0, s[68:71], 0 offen
	buffer_load_b32 v82, v1, s[68:71], 0 offen
	scratch_load_b32 v1, off, off offset:1020 ; 4-byte Folded Reload
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s19
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s0, v1, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s18
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v83, v0, s[68:71], 0 offen
	v_add_nc_u32_e32 v0, s35, v1
	scratch_load_b32 v1, off, off offset:1024 ; 4-byte Folded Reload
	v_add_lshl_u32 v0, s0, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_b32 v84, v0, s[68:71], 0 offen
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v0, s81, v1
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_add_lshl_u32 v1, s28, v1, 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s81, s81, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_cmp_lt_i32 s81, s77
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s50, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_cndmask_b32_e32 v0, 0x80000000, v1, vcc_lo
	buffer_load_b32 v140, v0, s[40:43], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v63, v0, s[64:67], 0 offen
	.loc	1 689 25                        ; attention_backward.py:689:25
	scratch_load_b32 v0, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, 0, v0
	ds_load_u8_d16_hi v116, v0
	ds_load_u8_d16_hi v115, v0 offset:64
	scratch_load_b32 v0, off, off offset:464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8_d16_hi v114, v0
	ds_load_u8_d16_hi v118, v0 offset:64
	scratch_load_b32 v0, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8_d16_hi v120, v0
	ds_load_u8_d16_hi v113, v0 offset:64
	scratch_load_b32 v0, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8_d16_hi v119, v0
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16 v113, v0 offset:64
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:412 ; 4-byte Folded Reload
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_and_b16 v20.h, 1, v113.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, 0, v0
	ds_store_b128 v0, v[25:28]
	scratch_load_b32 v0, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[29:32]
	scratch_load_b32 v0, off, off offset:480 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[34:37]
	scratch_load_b32 v0, off, off offset:484 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[38:41]
	scratch_load_b32 v0, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[45:48]
	scratch_load_b32 v0, off, off offset:492 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[49:52]
	scratch_load_b32 v0, off, off offset:496 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[55:58]
	scratch_load_b32 v0, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[81:84]
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, 0, v0
	ds_load_b128 v[194:197], v0
	ds_load_b128 v[0:3], v0 offset:4096
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[0:3], off     ; 16-byte Folded Spill
	scratch_load_b32 v0, off, off offset:504 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[206:209], v0
	scratch_load_b32 v0, off, off offset:508 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[202:205], v0
	scratch_load_b32 v0, off, off offset:512 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[198:201], v0
	scratch_load_b32 v0, off, off offset:516 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[174:177], v0
	scratch_load_b32 v0, off, off offset:520 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[170:173], v0
	scratch_load_b32 v0, off, off offset:524 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[166:169], v0
	scratch_load_b32 v0, off, off offset:528 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[162:165], v0
	scratch_load_b32 v0, off, off offset:532 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[190:193], v0
	scratch_load_b32 v0, off, off offset:536 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[186:189], v0
	scratch_load_b32 v0, off, off offset:540 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[182:185], v0
	scratch_load_b32 v0, off, off offset:544 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[178:181], v0
	scratch_load_b32 v0, off, off offset:548 ; 4-byte Folded Reload
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v16, 0x1c00, v43
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(0)
	ds_load_b128 v[158:161], v0
	scratch_load_b32 v0, off, off offset:552 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[0:3], v0
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[0:3], off offset:16 ; 16-byte Folded Spill
	scratch_load_b32 v0, off, off offset:556 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[0:3], v0
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[0:3], off offset:32 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:76 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v1, 0x400, v43
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, v42, v0
	ds_store_2addr_stride64_b32 v0, v25, v26 offset1:1
	ds_store_2addr_stride64_b32 v0, v27, v28 offset0:2 offset1:3
	ds_store_2addr_stride64_b32 v0, v29, v30 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v0, v31, v32 offset0:6 offset1:7
	ds_store_2addr_stride64_b32 v0, v34, v35 offset0:8 offset1:9
	ds_store_2addr_stride64_b32 v0, v36, v37 offset0:10 offset1:11
	ds_store_2addr_stride64_b32 v0, v38, v39 offset0:12 offset1:13
	ds_store_2addr_stride64_b32 v0, v40, v41 offset0:14 offset1:15
	ds_store_2addr_stride64_b32 v0, v45, v46 offset0:16 offset1:17
	ds_store_2addr_stride64_b32 v0, v47, v48 offset0:18 offset1:19
	ds_store_2addr_stride64_b32 v0, v49, v50 offset0:20 offset1:21
	ds_store_2addr_stride64_b32 v0, v51, v52 offset0:22 offset1:23
	ds_store_2addr_stride64_b32 v0, v55, v56 offset0:24 offset1:25
	ds_store_2addr_stride64_b32 v0, v57, v58 offset0:26 offset1:27
	ds_store_2addr_stride64_b32 v0, v81, v82 offset0:28 offset1:29
	ds_store_2addr_stride64_b32 v0, v83, v84 offset0:30 offset1:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[9:10], v1 offset1:32
	ds_load_2addr_b32 v[7:8], v1 offset0:64 offset1:96
	ds_load_2addr_b32 v[5:6], v1 offset0:128 offset1:160
	ds_load_2addr_b32 v[3:4], v1 offset0:192 offset1:224
	ds_load_2addr_b32 v[1:2], v11 offset1:32
	ds_load_2addr_b32 v[216:217], v11 offset0:64 offset1:96
	ds_load_2addr_b32 v[214:215], v11 offset0:128 offset1:160
	ds_load_2addr_b32 v[212:213], v11 offset0:192 offset1:224
	ds_load_2addr_b32 v[210:211], v12 offset1:32
	ds_load_2addr_b32 v[254:255], v12 offset0:64 offset1:96
	ds_load_2addr_b32 v[252:253], v12 offset0:128 offset1:160
	ds_load_2addr_b32 v[250:251], v12 offset0:192 offset1:224
	ds_load_2addr_b32 v[248:249], v13 offset1:32
	ds_load_2addr_b32 v[246:247], v13 offset0:64 offset1:96
	ds_load_2addr_b32 v[244:245], v13 offset0:128 offset1:160
	ds_load_2addr_b32 v[242:243], v13 offset0:192 offset1:224
	ds_load_2addr_b32 v[240:241], v14 offset1:32
	ds_load_2addr_b32 v[238:239], v14 offset0:64 offset1:96
	ds_load_2addr_b32 v[236:237], v14 offset0:128 offset1:160
	ds_load_2addr_b32 v[234:235], v14 offset0:192 offset1:224
	ds_load_2addr_b32 v[232:233], v15 offset1:32
	ds_load_2addr_b32 v[230:231], v15 offset0:64 offset1:96
	ds_load_2addr_b32 v[228:229], v15 offset0:128 offset1:160
	ds_load_2addr_b32 v[226:227], v15 offset0:192 offset1:224
	ds_load_2addr_b32 v[224:225], v16 offset1:32
	ds_load_2addr_b32 v[222:223], v16 offset0:64 offset1:96
	ds_load_2addr_b32 v[220:221], v16 offset0:128 offset1:160
	ds_load_2addr_b32 v[218:219], v16 offset0:192 offset1:224
	ds_load_2addr_b32 v[17:18], v43 offset1:32
	ds_load_2addr_b32 v[15:16], v43 offset0:64 offset1:96
	ds_load_2addr_b32 v[13:14], v43 offset0:128 offset1:160
	ds_load_2addr_b32 v[11:12], v43 offset0:192 offset1:224
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b32 v0, v25, v45 offset1:16
	scratch_load_b32 v0, off, off offset:560 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v45, v44
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s18, v248, v248
	v_cmp_o_f32_e64 s19, v246, v246
	v_cmp_o_f32_e64 s20, v244, v244
	v_cmp_o_f32_e64 s21, v242, v242
	v_cmp_o_f32_e64 s22, v240, v240
	v_cmp_o_f32_e64 s23, v238, v238
	v_cmp_o_f32_e64 s24, v236, v236
	v_cmp_o_f32_e64 s25, v234, v234
	v_cmp_o_f32_e64 s31, v222, v222
	v_cmp_o_f32_e64 s26, v232, v232
	v_cmp_o_f32_e64 s27, v230, v230
	v_cmp_o_f32_e64 s28, v228, v228
	v_cmp_o_f32_e64 s29, v226, v226
	v_cmp_o_f32_e64 s30, v224, v224
	v_cmp_o_f32_e64 s33, v220, v220
	v_cmp_o_f32_e64 s34, v218, v218
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v26, v46 offset1:16
	scratch_load_b32 v0, off, off offset:564 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v46, v44
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v27, v47 offset1:16
	scratch_load_b32 v0, off, off offset:568 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v47, v44
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v28, v48 offset1:16
	scratch_load_b32 v0, off, off offset:572 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v48, v44
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v29, v49 offset1:16
	scratch_load_b32 v0, off, off offset:576 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v49, v44
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v30, v50 offset1:16
	scratch_load_b32 v0, off, off offset:580 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v50, v44
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v31, v51 offset1:16
	scratch_load_b32 v0, off, off offset:584 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v51, v44
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v104, v51 :: v_dual_mov_b32 v103, v50
	v_dual_mov_b32 v102, v49 :: v_dual_mov_b32 v101, v48
	v_dual_mov_b32 v100, v47 :: v_dual_mov_b32 v99, v46
	v_dual_mov_b32 v98, v45 :: v_dual_mov_b32 v97, v44
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v32, v52 offset1:16
	scratch_load_b32 v0, off, off offset:588 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v34, v55 offset1:16
	scratch_load_b32 v0, off, off offset:592 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v35, v56 offset1:16
	scratch_load_b32 v0, off, off offset:596 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v36, v57 offset1:16
	scratch_load_b32 v0, off, off offset:600 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v37, v58 offset1:16
	scratch_load_b32 v0, off, off offset:604 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v38, v81 offset1:16
	scratch_load_b32 v0, off, off offset:608 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v39, v82 offset1:16
	scratch_load_b32 v0, off, off offset:612 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v40, v83 offset1:16
	scratch_load_b32 v0, off, off offset:616 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v41, v84 offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, 0, v0
	ds_load_b128 v[25:28], v0
	scratch_load_b32 v0, off, off offset:620 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_cmp_o_f32_e64 s0, v26, v26
	v_cmp_o_f32_e64 s1, v27, v27
	v_cmp_o_f32_e64 s3, v28, v28
	s_waitcnt vmcnt(0)
	ds_load_b128 v[29:32], v0
	v_bfe_u32 v0, v25, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v25, v0, 0x7fff
	v_bfe_u32 v25, v26, 16, 1
	v_add3_u32 v33, v26, v25, 0x7fff
	v_bfe_u32 v25, v27, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v35, v27, v25, 0x7fff
	v_bfe_u32 v25, v28, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v29, v29
	v_cmp_o_f32_e64 s7, v30, v30
	v_cmp_o_f32_e64 s8, v31, v31
	v_cmp_o_f32_e64 s9, v32, v32
	v_add3_u32 v36, v28, v25, 0x7fff
	v_bfe_u32 v25, v29, 16, 1
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v35.h, 0x7fff, v36.h, s3
	v_add3_u32 v37, v29, v25, 0x7fff
	v_bfe_u32 v25, v30, 16, 1
	scratch_load_b32 v29, off, off offset:628 ; 4-byte Folded Reload
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s6
	v_add3_u32 v38, v30, v25, 0x7fff
	v_bfe_u32 v25, v31, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s7
	v_add3_u32 v39, v31, v25, 0x7fff
	v_bfe_u32 v25, v32, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v37.l, 0x7fff, v39.h, s8
	v_add3_u32 v40, v32, v25, 0x7fff
	scratch_load_b32 v25, off, off offset:624 ; 4-byte Folded Reload
	v_cndmask_b16 v37.h, 0x7fff, v40.h, s9
	s_waitcnt vmcnt(1)
	ds_load_b128 v[29:32], v29
	s_waitcnt vmcnt(0)
	ds_load_b128 v[25:28], v25
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s14, v29, v29
	v_cmp_o_f32_e64 s15, v30, v30
	v_cmp_o_f32_e64 s16, v31, v31
	v_cmp_o_f32_e64 s17, v32, v32
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v34, v25, 16, 1
	v_cmp_o_f32_e64 s10, v25, v25
	v_cmp_o_f32_e64 s11, v26, v26
	v_cmp_o_f32_e64 s12, v27, v27
	v_cmp_o_f32_e64 s13, v28, v28
	v_add3_u32 v25, v25, v34, 0x7fff
	v_bfe_u32 v34, v26, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v38.l, 0x7fff, v25.h, s10
	v_add3_u32 v26, v26, v34, 0x7fff
	v_bfe_u32 v34, v27, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v38.h, 0x7fff, v26.h, s11
	v_add3_u32 v27, v27, v34, 0x7fff
	v_bfe_u32 v34, v28, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v39.l, 0x7fff, v27.h, s12
	v_add3_u32 v28, v28, v34, 0x7fff
	v_bfe_u32 v34, v29, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v39.h, 0x7fff, v28.h, s13
	v_add3_u32 v29, v29, v34, 0x7fff
	v_bfe_u32 v34, v30, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v40.l, 0x7fff, v29.h, s14
	v_add3_u32 v30, v30, v34, 0x7fff
	v_bfe_u32 v34, v31, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v40.h, 0x7fff, v30.h, s15
	v_add3_u32 v31, v31, v34, 0x7fff
	v_bfe_u32 v34, v32, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v41.l, 0x7fff, v31.h, s16
	v_add3_u32 v32, v32, v34, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v0.h, vcc_lo
	scratch_load_b32 v0, off, off offset:632 ; 4-byte Folded Reload
	v_cndmask_b16 v34.h, 0x7fff, v33.h, s0
	v_cndmask_b16 v41.h, 0x7fff, v32.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[25:28], off, off offset:320
	scratch_load_b128 v[29:32], off, off offset:336
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[25:32], v[34:41], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[25:28], v0
	scratch_load_b32 v0, off, off offset:636 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_cmp_o_f32_e64 s0, v26, v26
	v_cmp_o_f32_e64 s1, v27, v27
	v_cmp_o_f32_e64 s3, v28, v28
	s_waitcnt vmcnt(0)
	ds_load_b128 v[29:32], v0
	v_bfe_u32 v0, v25, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v25, v0, 0x7fff
	v_bfe_u32 v25, v26, 16, 1
	v_add3_u32 v33, v26, v25, 0x7fff
	v_bfe_u32 v25, v27, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v35, v27, v25, 0x7fff
	v_bfe_u32 v25, v28, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v29, v29
	v_cmp_o_f32_e64 s7, v30, v30
	v_cmp_o_f32_e64 s8, v31, v31
	v_cmp_o_f32_e64 s9, v32, v32
	v_add3_u32 v36, v28, v25, 0x7fff
	v_bfe_u32 v25, v29, 16, 1
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v35.h, 0x7fff, v36.h, s3
	v_add3_u32 v37, v29, v25, 0x7fff
	v_bfe_u32 v25, v30, 16, 1
	scratch_load_b32 v29, off, off offset:644 ; 4-byte Folded Reload
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s6
	v_add3_u32 v38, v30, v25, 0x7fff
	v_bfe_u32 v25, v31, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s7
	v_add3_u32 v39, v31, v25, 0x7fff
	v_bfe_u32 v25, v32, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v37.l, 0x7fff, v39.h, s8
	v_add3_u32 v40, v32, v25, 0x7fff
	scratch_load_b32 v25, off, off offset:640 ; 4-byte Folded Reload
	v_cndmask_b16 v37.h, 0x7fff, v40.h, s9
	s_waitcnt vmcnt(1)
	ds_load_b128 v[29:32], v29
	s_waitcnt vmcnt(0)
	ds_load_b128 v[25:28], v25
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s14, v29, v29
	v_cmp_o_f32_e64 s15, v30, v30
	v_cmp_o_f32_e64 s16, v31, v31
	v_cmp_o_f32_e64 s17, v32, v32
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v34, v25, 16, 1
	v_cmp_o_f32_e64 s10, v25, v25
	v_cmp_o_f32_e64 s11, v26, v26
	v_cmp_o_f32_e64 s12, v27, v27
	v_cmp_o_f32_e64 s13, v28, v28
	v_add3_u32 v41, v25, v34, 0x7fff
	v_bfe_u32 v25, v26, 16, 1
	v_cndmask_b16 v34.l, 0x7fff, v0.h, vcc_lo
	scratch_load_b32 v0, off, off offset:648 ; 4-byte Folded Reload
	v_cndmask_b16 v34.h, 0x7fff, v33.h, s0
	v_cndmask_b16 v38.l, 0x7fff, v41.h, s10
	v_add3_u32 v25, v26, v25, 0x7fff
	v_bfe_u32 v26, v27, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v38.h, 0x7fff, v25.h, s11
	v_add3_u32 v26, v27, v26, 0x7fff
	v_bfe_u32 v27, v28, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v39.l, 0x7fff, v26.h, s12
	v_add3_u32 v27, v28, v27, 0x7fff
	v_bfe_u32 v28, v29, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v39.h, 0x7fff, v27.h, s13
	v_add3_u32 v28, v29, v28, 0x7fff
	v_bfe_u32 v29, v30, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v40.l, 0x7fff, v28.h, s14
	v_add3_u32 v29, v30, v29, 0x7fff
	v_bfe_u32 v30, v31, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v40.h, 0x7fff, v29.h, s15
	v_add3_u32 v30, v31, v30, 0x7fff
	v_bfe_u32 v31, v32, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v41.l, 0x7fff, v30.h, s16
	v_add3_u32 v31, v32, v31, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v41.h, 0x7fff, v31.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[25:28], off, off offset:288
	scratch_load_b128 v[29:32], off, off offset:304
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[25:32], v[34:41], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[25:28], v0
	scratch_load_b32 v0, off, off offset:652 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_cmp_o_f32_e64 s0, v26, v26
	v_cmp_o_f32_e64 s1, v27, v27
	v_cmp_o_f32_e64 s3, v28, v28
	s_waitcnt vmcnt(0)
	ds_load_b128 v[29:32], v0
	v_bfe_u32 v0, v25, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v25, v0, 0x7fff
	v_bfe_u32 v25, v26, 16, 1
	v_add3_u32 v33, v26, v25, 0x7fff
	v_bfe_u32 v25, v27, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v35, v27, v25, 0x7fff
	v_bfe_u32 v25, v28, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v29, v29
	v_cmp_o_f32_e64 s7, v30, v30
	v_cmp_o_f32_e64 s8, v31, v31
	v_cmp_o_f32_e64 s9, v32, v32
	v_add3_u32 v36, v28, v25, 0x7fff
	v_bfe_u32 v25, v29, 16, 1
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v35.h, 0x7fff, v36.h, s3
	v_add3_u32 v37, v29, v25, 0x7fff
	v_bfe_u32 v25, v30, 16, 1
	scratch_load_b32 v29, off, off offset:660 ; 4-byte Folded Reload
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s6
	v_add3_u32 v38, v30, v25, 0x7fff
	v_bfe_u32 v25, v31, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s7
	v_add3_u32 v39, v31, v25, 0x7fff
	v_bfe_u32 v25, v32, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v37.l, 0x7fff, v39.h, s8
	v_add3_u32 v40, v32, v25, 0x7fff
	scratch_load_b32 v25, off, off offset:656 ; 4-byte Folded Reload
	v_cndmask_b16 v37.h, 0x7fff, v40.h, s9
	s_waitcnt vmcnt(1)
	ds_load_b128 v[29:32], v29
	s_waitcnt vmcnt(0)
	ds_load_b128 v[25:28], v25
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s14, v29, v29
	v_cmp_o_f32_e64 s15, v30, v30
	v_cmp_o_f32_e64 s16, v31, v31
	v_cmp_o_f32_e64 s17, v32, v32
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v34, v25, 16, 1
	v_cmp_o_f32_e64 s10, v25, v25
	v_cmp_o_f32_e64 s11, v26, v26
	v_cmp_o_f32_e64 s12, v27, v27
	v_cmp_o_f32_e64 s13, v28, v28
	v_add3_u32 v41, v25, v34, 0x7fff
	v_bfe_u32 v25, v26, 16, 1
	v_cndmask_b16 v34.l, 0x7fff, v0.h, vcc_lo
	scratch_load_b32 v0, off, off offset:664 ; 4-byte Folded Reload
	v_cndmask_b16 v34.h, 0x7fff, v33.h, s0
	v_cndmask_b16 v38.l, 0x7fff, v41.h, s10
	v_add3_u32 v25, v26, v25, 0x7fff
	v_bfe_u32 v26, v27, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v38.h, 0x7fff, v25.h, s11
	v_add3_u32 v26, v27, v26, 0x7fff
	v_bfe_u32 v27, v28, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v39.l, 0x7fff, v26.h, s12
	v_add3_u32 v27, v28, v27, 0x7fff
	v_bfe_u32 v28, v29, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v39.h, 0x7fff, v27.h, s13
	v_add3_u32 v28, v29, v28, 0x7fff
	v_bfe_u32 v29, v30, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v40.l, 0x7fff, v28.h, s14
	v_add3_u32 v29, v30, v29, 0x7fff
	v_bfe_u32 v30, v31, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v40.h, 0x7fff, v29.h, s15
	v_add3_u32 v30, v31, v30, 0x7fff
	v_bfe_u32 v31, v32, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v41.l, 0x7fff, v30.h, s16
	v_add3_u32 v31, v32, v31, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v41.h, 0x7fff, v31.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[25:28], off, off offset:248
	scratch_load_b128 v[29:32], off, off offset:264
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[25:32], v[34:41], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[25:28], v0
	scratch_load_b32 v0, off, off offset:668 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_cmp_o_f32_e64 s0, v26, v26
	v_cmp_o_f32_e64 s1, v27, v27
	v_cmp_o_f32_e64 s3, v28, v28
	s_waitcnt vmcnt(0)
	ds_load_b128 v[29:32], v0
	v_bfe_u32 v0, v25, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v25, v0, 0x7fff
	v_bfe_u32 v25, v26, 16, 1
	v_add3_u32 v33, v26, v25, 0x7fff
	v_bfe_u32 v25, v27, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v35, v27, v25, 0x7fff
	v_bfe_u32 v25, v28, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v29, v29
	v_cmp_o_f32_e64 s7, v30, v30
	v_cmp_o_f32_e64 s8, v31, v31
	v_cmp_o_f32_e64 s9, v32, v32
	v_add3_u32 v36, v28, v25, 0x7fff
	v_bfe_u32 v25, v29, 16, 1
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v35.h, 0x7fff, v36.h, s3
	v_add3_u32 v37, v29, v25, 0x7fff
	v_bfe_u32 v25, v30, 16, 1
	scratch_load_b32 v29, off, off offset:676 ; 4-byte Folded Reload
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s6
	v_add3_u32 v38, v30, v25, 0x7fff
	v_bfe_u32 v25, v31, 16, 1
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s6, 1, v20.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s7
	v_add3_u32 v39, v31, v25, 0x7fff
	v_bfe_u32 v25, v32, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v37.l, 0x7fff, v39.h, s8
	v_add3_u32 v40, v32, v25, 0x7fff
	scratch_load_b32 v25, off, off offset:672 ; 4-byte Folded Reload
	v_cndmask_b16 v37.h, 0x7fff, v40.h, s9
	v_cmp_o_f32_e64 s9, v3, v3
	s_waitcnt vmcnt(1)
	ds_load_b128 v[29:32], v29
	s_waitcnt vmcnt(0)
	ds_load_b128 v[25:28], v25
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s14, v29, v29
	v_cmp_o_f32_e64 s15, v30, v30
	v_cmp_o_f32_e64 s16, v31, v31
	v_cmp_o_f32_e64 s17, v32, v32
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v34, v25, 16, 1
	v_cmp_o_f32_e64 s10, v25, v25
	v_cmp_o_f32_e64 s11, v26, v26
	v_cmp_o_f32_e64 s12, v27, v27
	v_cmp_o_f32_e64 s13, v28, v28
	v_add3_u32 v41, v25, v34, 0x7fff
	v_bfe_u32 v25, v26, 16, 1
	v_cndmask_b16 v34.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v34.h, 0x7fff, v33.h, s0
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v0, s79, v105, -v140
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v38.l, 0x7fff, v41.h, s10
	v_add3_u32 v25, v26, v25, 0x7fff
	v_bfe_u32 v26, v27, 16, 1
	v_cmp_o_f32_e64 s10, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v38.h, 0x7fff, v25.h, s11
	v_add3_u32 v26, v27, v26, 0x7fff
	v_bfe_u32 v27, v28, 16, 1
	v_cmp_o_f32_e64 s11, v216, v216
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v39.l, 0x7fff, v26.h, s12
	v_add3_u32 v27, v28, v27, 0x7fff
	v_bfe_u32 v28, v29, 16, 1
	v_cmp_o_f32_e64 s12, v214, v214
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v39.h, 0x7fff, v27.h, s13
	v_add3_u32 v28, v29, v28, 0x7fff
	v_bfe_u32 v29, v30, 16, 1
	v_cmp_o_f32_e64 s13, v212, v212
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v40.l, 0x7fff, v28.h, s14
	v_add3_u32 v29, v30, v29, 0x7fff
	v_bfe_u32 v30, v31, 16, 1
	v_cmp_o_f32_e64 s14, v210, v210
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v40.h, 0x7fff, v29.h, s15
	v_add3_u32 v30, v31, v30, 0x7fff
	v_bfe_u32 v31, v32, 16, 1
	v_cmp_o_f32_e64 s15, v254, v254
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v41.l, 0x7fff, v30.h, s16
	v_add3_u32 v31, v32, v31, 0x7fff
	v_cmp_o_f32_e64 s16, v252, v252
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v41.h, 0x7fff, v31.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[25:28], off, off offset:216
	scratch_load_b128 v[29:32], off, off offset:232
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s17, v250, v250
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[25:32], v[34:41], v[97:104]
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v40, v0
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_and_b16 v0.l, 1, v116.h
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v28, s79, v109, -v140
	v_fma_f32 v25, s79, v106, -v140
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v32, v97, v63
	v_sub_f32_e32 v36, v101, v63
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v0.l
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v28, v28
	v_exp_f32_e32 v25, v25
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v33, v98, v63
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v26, s79, v107, -v140
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v40, 0, v40, vcc_lo
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v34, v99, v63
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v27, s79, v108, -v140
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v35, v100, v63
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v29, s79, v110, -v140
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_dual_mul_f32 v0, v40, v32 :: v_dual_sub_f32 v37, v102, v63
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v30, s79, v111, -v140
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v38, v103, v63
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v31, s79, v112, -v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_dual_mul_f32 v0, s56, v0 :: v_dual_sub_f32 v39, v104, v63
	v_mov_b16_e64 v116.h, v137.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_mov_b16_e32 v63.l, 0
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v32, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v59.l, v63.l
	v_mov_b16_e32 v42.l, v63.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v32, v0, v32, 0x7fff
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_and_b16 v0.l, 1, v115.h
	v_mov_b16_e64 v115.h, v138.l
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v41.l, v63.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v145.l, v63.l
	v_mov_b16_e64 v144.l, v63.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s0, 1, v0.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v143.l, v63.l
	v_mov_b16_e64 v138.l, v63.l
	v_mov_b16_e64 v142.l, v63.l
	v_mov_b16_e32 v45.l, v63.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v64, 0, v28, s0
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v46.l, v63.l
	v_mov_b16_e32 v47.l, v63.l
	v_mov_b16_e32 v48.l, v63.l
	v_mov_b16_e32 v49.l, v63.l
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v0, v64, v36
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v50.l, v63.l
	v_mov_b16_e32 v51.l, v63.l
	v_mov_b16_e32 v52.l, v63.l
	v_mov_b16_e64 v140.l, v63.l
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v0, s56, v0
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v141.l, v63.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v28, v0, 16, 1
	v_cmp_o_f32_e64 s0, v0, v0
	v_add3_u32 v28, v0, v28, 0x7fff
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_and_b16 v0.l, 1, v114.h
	v_mov_b16_e64 v114.h, v139.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v139.l, v63.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s1, 1, v0.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v36, 0, v25, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v0, v36, v33
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v0, s56, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v25, v0, 16, 1
	v_cmp_o_f32_e64 s1, v0, v0
	v_add3_u32 v25, v0, v25, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v28.h, s0
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	scratch_load_b32 v28, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v0.l, 0x7fff, v32.h, vcc_lo
	v_cndmask_b16 v19.h, 0x7fff, v25.h, s1
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v25, v26
	v_exp_f32_e32 v26, v27
	v_exp_f32_e32 v27, v29
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v28, 0, v28
	ds_store_b16 v28, v0
	ds_store_b16_d16_hi v28, v0 offset:512
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_and_b16 v0.l, 1, v120.h
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v28, v30
	v_mov_b16_e32 v120.h, v20.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v0.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v58, 0, v25, vcc_lo
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v0, v58, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v0, s56, v0
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v25, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v25, v0, v25, 0x7fff
	.loc	1 689 25 is_stmt 1              ; attention_backward.py:689:25
	v_and_b16 v0.l, 1, v119.h
	v_mov_b16_e32 v119.h, v21.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v21, v58, 16, 1
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s0, 1, v0.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v21, v58, v21, 0x7fff
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v60, 0, v26, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v0, v60, v35
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v0, s56, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v26, v0, 16, 1
	v_cmp_o_f32_e64 s0, v0, v0
	v_add3_u32 v26, v0, v26, 0x7fff
	.loc	1 689 25 is_stmt 1              ; attention_backward.py:689:25
	v_and_b16 v0.l, 1, v118.h
	v_mov_b16_e32 v118.h, v22.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s1, 1, v0.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v55, 0, v27, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v0, v55, v37
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v37.l, v63.l
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v0, s56, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v27, v0, 16, 1
	v_cmp_o_f32_e64 s1, v0, v0
	v_add3_u32 v27, v0, v27, 0x7fff
	.loc	1 689 25 is_stmt 1              ; attention_backward.py:689:25
	v_and_b16 v0.l, 1, v113.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v20.h, 0x7fff, v27.h, s1
	scratch_load_b32 v27, off, off offset:680 ; 4-byte Folded Reload
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s3, 1, v0.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s1, v58, v58
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v0, 0, v28, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v42.h, 0x7fff, v21.h, s1
	v_bfe_u32 v21, v64, 16, 1
	v_cmp_o_f32_e64 s1, v64, v64
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v28, v0, v38
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v38.l, v63.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v21, v64, v21, 0x7fff
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v28, s56, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v37.h, 0x7fff, v21.h, s1
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v29, v28, 16, 1
	v_cmp_o_f32_e64 s3, v28, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v29, v28, v29, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v28, v31
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v56, 0, v28, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v28, v56, v39
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v24, v56, 16, 1
	v_cmp_o_f32_e64 s7, v56, v56
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v39.l, v63.l
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v28, s56, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v24, v56, v24, 0x7fff
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v30, v28, 16, 1
	v_cmp_o_f32_e64 s6, v28, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v38.h, 0x7fff, v24.h, s7
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v30, v28, v30, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v27, v19
	ds_store_b16_d16_hi v27, v20 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v19.h, 0x7fff, v25.h, vcc_lo
	scratch_load_b32 v25, off, off offset:684 ; 4-byte Folded Reload
	v_cndmask_b16 v20.h, 0x7fff, v29.h, s3
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	v_cmp_o_f32_e64 s3, v55, v55
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v25, v19
	ds_store_b16_d16_hi v25, v20 offset:512
	scratch_load_b32 v25, off, off offset:688 ; 4-byte Folded Reload
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v19.h, 0x7fff, v26.h, s0
	v_cndmask_b16 v20.h, 0x7fff, v30.h, s6
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s0, v36, v36
	v_cmp_o_f32_e64 s6, v0, v0
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v25, v19
	ds_store_b16_d16_hi v25, v20 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v25, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, 0, v25
	ds_load_b128 v[97:100], v25
	scratch_load_b32 v25, off, off offset:692 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[101:104], v25
	scratch_load_b32 v25, off, off offset:696 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[106:109], v25
	scratch_load_b32 v25, off, off offset:700 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[110:113], v25
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:420
	scratch_load_b32 v19, off, off offset:704
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v25, 0, v25
	ds_store_b128 v25, v[114:117]
	s_waitcnt vmcnt(0)
	ds_store_b128 v19, v[118:121]
	scratch_load_b32 v19, off, off offset:708 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v19, v[122:125]
	scratch_load_b32 v19, off, off offset:712 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v19, v[126:129]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v19, off, off offset:368
	scratch_load_b32 v20, off, off offset:716
	scratch_load_b32 v23, off, off offset:724
	scratch_load_b32 v22, off, off offset:720
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v19, 0, v19
	s_waitcnt vmcnt(2)
	ds_load_b128 v[118:121], v20
	ds_load_b128 v[114:117], v19
	ds_load_b128 v[122:125], v19 offset:2048
	ds_load_b128 v[126:129], v20 offset:2048
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v19, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v19, v40, v19, 0x7fff
	v_cndmask_b16 v63.h, 0x7fff, v19.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v19, v40, v63
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e32 v40.l, v63.l
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[114:121], v[97:104], v[89:96]
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(1)
	ds_load_b128 v[118:121], v23
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[146:153], v[122:129], v[97:104], v[146:153]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v20, v19, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	ds_load_b128 v[114:117], v22
	ds_load_b128 v[122:125], v22 offset:2048
	ds_load_b128 v[126:129], v23 offset:2048
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v20, v19, v20, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v19, v36, 16, 1
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v27, off, off offset:728
	scratch_load_b32 v28, off, off offset:732
	scratch_load_b32 v29, off, off offset:736
	scratch_load_b32 v30, off, off offset:740
	scratch_load_b32 v31, off, off offset:744
	scratch_load_b32 v32, off, off offset:748
	scratch_load_b32 v33, off, off offset:752
	v_add3_u32 v19, v36, v19, 0x7fff
	v_bfe_u32 v22, v55, 16, 1
	v_bfe_u32 v23, v0, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v25.l, 0x7fff, v20.h, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v59.h, 0x7fff, v19.h, s0
	v_bfe_u32 v19, v60, 16, 1
	v_cmp_o_f32_e64 s0, v60, v60
	v_add3_u32 v22, v55, v22, 0x7fff
	v_add3_u32 v23, v0, v23, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[89:96], v[114:121], v[106:113], v[89:96]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v19, v60, v19, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[146:153], v[122:129], v[106:113], v[146:153]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v40.h, 0x7fff, v22.h, s3
	v_cndmask_b16 v39.h, 0x7fff, v23.h, s6
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v41.h, 0x7fff, v19.h, s0
	scratch_load_b32 v19, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s0, v12, v12
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, 0, v19
	ds_store_b16_d16_hi v26, v63
	ds_store_b16_d16_hi v27, v59
	ds_store_b16_d16_hi v28, v42
	ds_store_b16_d16_hi v29, v41
	ds_store_b16_d16_hi v30, v37
	ds_store_b16_d16_hi v31, v40
	ds_store_b16_d16_hi v32, v39
	ds_store_b16_d16_hi v33, v38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v61, off, off offset:756
	scratch_load_b32 v62, off, off offset:772
	scratch_load_b32 v34, off, off offset:760
	scratch_load_b32 v53, off, off offset:764
	scratch_load_b32 v84, off, off offset:776
	scratch_load_b32 v85, off, off offset:780
	scratch_load_b32 v83, off, off offset:768
	scratch_load_b32 v19, off, off offset:280
	s_waitcnt vmcnt(7)
	ds_load_b64 v[101:102], v61
	s_waitcnt vmcnt(6)
	ds_load_b64 v[103:104], v62
	s_waitcnt vmcnt(3)
	ds_load_b64 v[23:24], v84
	s_waitcnt vmcnt(2)
	ds_load_b64 v[21:22], v85
	s_waitcnt vmcnt(1)
	ds_load_b64 v[98:99], v83
	ds_load_b64 v[132:133], v34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v57, 0, v19
	ds_load_b64 v[19:20], v53
	ds_load_b64 v[135:136], v57
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v26, v25
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v130.h, v101.l
	v_mov_b16_e64 v134.h, v102.l
	v_mov_b16_e64 v137.l, v24.l
	v_mov_b16_e64 v137.h, v22.l
	v_mov_b16_e32 v22.l, v24.h
	v_mov_b16_e64 v131.l, v132.l
	v_mov_b16_e64 v132.l, v98.l
	v_mov_b16_e64 v131.h, v19.l
	v_mov_b16_e64 v130.l, v135.l
	v_mov_b16_e64 v101.l, v135.h
	v_mov_b16_e64 v135.l, v133.l
	v_mov_b16_e64 v135.h, v20.l
	v_mov_b16_e64 v20.l, v133.h
	v_mov_b16_e64 v133.l, v23.l
	v_mov_b16_e64 v133.h, v21.l
	v_mov_b16_e32 v21.l, v23.h
	scratch_load_b128 v[23:26], off, off offset:32 ; 16-byte Folded Reload
	v_mov_b16_e64 v19.l, v132.h
	v_mov_b16_e64 v134.l, v136.l
	v_mov_b16_e64 v102.l, v136.h
	v_mov_b16_e64 v136.l, v99.l
	v_mov_b16_e64 v136.h, v104.l
	v_mov_b16_e32 v104.l, v99.h
	v_mov_b32_e32 v99, v19
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v19, v16, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v132.h, v103.l
	v_mov_b16_e32 v103.l, v98.h
	v_mov_b32_e32 v98, v101
	v_mov_b32_e32 v101, v21
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v19, v16, v19, 0x7fff
	v_bfe_u32 v16, v12, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_dual_mov_b32 v100, v103 :: v_dual_mov_b32 v103, v20
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v20, v56, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v45.h, 0x7fff, v19.h, vcc_lo
	v_add3_u32 v16, v12, v16, 0x7fff
	v_bfe_u32 v12, v8, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v19, v55, v40
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s8, v20, v20
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v46.h, 0x7fff, v16.h, s0
	v_add3_u32 v12, v8, v12, 0x7fff
	v_bfe_u32 v8, v4, 16, 1
	v_cmp_o_f32_e64 s0, v243, v243
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v16, v64, v37
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s6, v19, v19
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v47.h, 0x7fff, v12.h, vcc_lo
	v_add3_u32 v8, v4, v8, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_bfe_u32 v4, v217, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v12, v60, v41
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v16, v16
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b32_e32 v105, v22
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v48.h, 0x7fff, v8.h, vcc_lo
	v_add3_u32 v4, v217, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v217, v217
	v_bfe_u32 v8, v243, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s1, v12, v12
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v55.l, v63.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v97, v187, v47
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v49.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v213, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v213, v213
	v_add3_u32 v8, v243, v8, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v157, v193, v46
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e32 v56.l, v63.l
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v4, v213, v4, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v213.l, v63.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v139.h, 0x7fff, v8.h, s0
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v8, v58, v42
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v22.l, v63.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v50.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v255, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v255, v255
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s0, v8, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v4, v255, v4, 0x7fff
	v_cndmask_b16 v51.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v251, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v251, v251
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v4, v251, v4, 0x7fff
	v_cndmask_b16 v52.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v247, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v247, v247
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v37, v181, v52
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v4, v247, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v138.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v239, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v239, v239
	v_add3_u32 v4, v239, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v140.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v235, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v235, v235
	v_add3_u32 v4, v235, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v141.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v231, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v231, v231
	v_add3_u32 v4, v231, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v142.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v227, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v227, v227
	v_add3_u32 v4, v227, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v143.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v223, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v223, v223
	v_add3_u32 v4, v223, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v144.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v219, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v219, v219
	v_add3_u32 v4, v219, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v145.h, 0x7fff, v4.h, vcc_lo
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v4, v36, v59
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v36.l, v63.l
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v0, v0, v39 :: v_dual_sub_f32 v59, v185, v50
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v21, v4, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s7, v0, v0
	v_add3_u32 v21, v4, v21, 0x7fff
	v_bfe_u32 v4, v8, 16, 1
	.loc	1 732 54 is_stmt 1              ; attention_backward.py:732:54
	v_mov_b16_e32 v21.l, v63.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v4, v8, v4, 0x7fff
	v_bfe_u32 v8, v12, 16, 1
	v_add3_u32 v8, v12, v8, 0x7fff
	v_bfe_u32 v12, v16, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v16, v12, 0x7fff
	v_bfe_u32 v16, v19, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v12.l, v63.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v16, v19, v16, 0x7fff
	v_bfe_u32 v19, v0, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v19, v0, v19, 0x7fff
	v_bfe_u32 v0, v20, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v19.l, v63.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v0, v20, v0, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v21.h, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v20.l, v63.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v27, v0
	v_cndmask_b16 v0.l, 0x7fff, v4.h, s0
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v4, v10, 16, 1
	v_cmp_o_f32_e64 s0, v10, v10
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v28, v0
	v_cndmask_b16 v0.l, 0x7fff, v8.h, s1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v8, v6, 16, 1
	v_cmp_o_f32_e64 s1, v6, v6
	v_add3_u32 v4, v10, v4, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v10.l, v63.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v29, v0
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v8, v6, v8, 0x7fff
	v_bfe_u32 v6, v2, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.l, 0x7fff, v12.h, s3
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s3, v2, v2
	v_cndmask_b16 v40.h, 0x7fff, v4.h, s0
	v_bfe_u32 v4, v249, 16, 1
	v_add3_u32 v6, v2, v6, 0x7fff
	v_bfe_u32 v2, v215, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v30, v0
	v_cndmask_b16 v0.l, 0x7fff, v16.h, s6
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s6, v215, v215
	v_cndmask_b16 v41.h, 0x7fff, v8.h, s1
	v_add3_u32 v2, v215, v2, 0x7fff
	v_cmp_o_f32_e64 s0, v253, v253
	v_add3_u32 v4, v249, v4, 0x7fff
	v_cmp_o_f32_e64 s1, v249, v249
	v_cndmask_b16 v38.h, 0x7fff, v6.h, s3
	v_cndmask_b16 v39.h, 0x7fff, v2.h, s6
	v_bfe_u32 v2, v253, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v31, v0
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v12.h, 0x7fff, v4.h, s1
	v_bfe_u32 v4, v229, 16, 1
	v_cmp_o_f32_e64 s1, v229, v229
	v_add3_u32 v2, v253, v2, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.l, 0x7fff, v19.h, s7
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v6, v245, 16, 1
	v_add3_u32 v4, v229, v4, 0x7fff
	v_cmp_o_f32_e64 s3, v245, v245
	v_cndmask_b16 v56.h, 0x7fff, v2.h, s0
	v_bfe_u32 v2, v233, 16, 1
	v_cmp_o_f32_e64 s0, v233, v233
	v_cndmask_b16 v21.h, 0x7fff, v4.h, s1
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v32, v0
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s8
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v2, v233, v2, 0x7fff
	v_add3_u32 v6, v245, v6, 0x7fff
	v_bfe_u32 v8, v241, 16, 1
	v_cmp_o_f32_e64 s6, v241, v241
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v33, v0
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v20.h, 0x7fff, v2.h, s0
	v_bfe_u32 v0, v18, 16, 1
	v_add3_u32 v8, v241, v8, 0x7fff
	v_cmp_o_f32_e64 s0, v15, v15
	v_cmp_o_f32_e64 s1, v13, v13
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v52.l, v56.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v18, v0, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v8.h, s6
	v_bfe_u32 v8, v221, 16, 1
	v_cmp_o_f32_e64 s6, v221, v221
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v50.l, v39.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v36.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v14, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_add3_u32 v8, v221, v8, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v47.l, v40.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v16, v159, v140
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v14, v0, 0x7fff
	v_cndmask_b16 v14.h, 0x7fff, v6.h, s3
	v_bfe_u32 v6, v225, 16, 1
	v_cmp_o_f32_e64 s3, v225, v225
	v_cndmask_b16 v19.h, 0x7fff, v8.h, s6
	v_cndmask_b16 v42.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v211, 16, 1
	v_add3_u32 v6, v225, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v211, v211
	v_cmp_o_f32_e64 s6, v9, v9
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v60, v183, v49
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v211, v0, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v6.h, s3
	v_cmp_o_f32_e64 s3, v11, v11
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v49.l, v38.h
	v_mov_b16_e32 v46.l, v42.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v55.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v237, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v237, v237
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v8, v161, v141
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v140.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s7, v7, v7
	v_add3_u32 v0, v237, v0, 0x7fff
	v_cmp_o_f32_e64 s8, v5, v5
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v211.l, v63.l
	v_mov_b16_e32 v14.l, v63.l
	v_mov_b16_e32 v18.l, v63.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v22.h, 0x7fff, v0.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v141.l, v22.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	s_waitcnt vmcnt(0)
	v_sub_f32_e32 v2, v26, v145
	v_dual_sub_f32 v4, v24, v144 :: v_dual_mov_b32 v229, v23
	v_mov_b32_e32 v231, v25
	scratch_load_b128 v[23:26], off, off offset:16 ; 16-byte Folded Reload
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v145.l, v19.h
	v_mov_b16_e64 v144.l, v18.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	s_waitcnt vmcnt(0)
	v_dual_sub_f32 v6, v26, v143 :: v_dual_mov_b32 v235, v25
	scratch_load_b128 v[25:28], off, off    ; 16-byte Folded Reload
	v_dual_sub_f32 v0, v24, v142 :: v_dual_mov_b32 v233, v23
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v143.l, v21.h
	v_mov_b16_e64 v142.l, v20.h
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v227, v27
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v27, v17, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v23, v28, v139 :: v_dual_sub_f32 v24, v26, v138
	v_mov_b32_e32 v225, v25
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_load_b64 v[25:26], v57
	ds_load_b64 v[34:35], v34
	ds_load_b64 v[53:54], v53
	ds_load_b64 v[28:29], v61
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v27, v17, v27, 0x7fff
	v_bfe_u32 v17, v15, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_load_b64 v[30:31], v62
	ds_load_b64 v[61:62], v84
	ds_load_b64 v[32:33], v85
	ds_load_b64 v[155:156], v83
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v139.l, v14.h
	v_mov_b16_e64 v138.l, v12.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v17, v15, v17, 0x7fff
	v_bfe_u32 v15, v13, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v17.l, v63.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v58, v179, v51
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e32 v51.l, v55.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v179, v191, v45
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v15, v13, v15, 0x7fff
	v_bfe_u32 v13, v11, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v45.l, v36.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v15.l, v63.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(7)
	v_mov_b16_e32 v81.l, v25.l
	s_waitcnt lgkmcnt(6)
	v_mov_b16_e32 v82.l, v34.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v13, v11, v13, 0x7fff
	v_bfe_u32 v11, v9, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e32 v81.h, v28.l
	v_mov_b16_e32 v82.h, v53.l
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e64 v83.l, v155.l
	v_mov_b16_e32 v83.h, v30.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v11, v9, v11, 0x7fff
	v_bfe_u32 v9, v7, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e32 v84.l, v61.l
	v_mov_b16_e32 v84.h, v32.l
	v_mov_b16_e32 v85.l, v26.l
	v_mov_b16_e32 v85.h, v29.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v9, v7, v9, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v9.l, v63.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v64, v189, v48
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e32 v48.l, v41.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e32 v86.l, v35.l
	v_mov_b16_e32 v86.h, v54.l
	v_mov_b16_e64 v87.l, v156.l
	v_mov_b16_e32 v87.h, v31.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[45:52], v[130:137], v[65:72]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e32 v88.l, v62.l
	v_mov_b16_e32 v88.h, v33.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v7, v5, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s6
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[138:145], v[98:105], v[65:72]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e32 v28.l, v25.h
	v_mov_b16_e32 v53.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v7, v5, v7, 0x7fff
	v_bfe_u32 v5, v3, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[45:52], v[81:88], v[65:72]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v46, v212, 16, 1
	v_bfe_u32 v45, v214, 16, 1
	v_cndmask_b16 v47.h, 0x7fff, v9.h, s7
	v_add3_u32 v5, v3, v5, 0x7fff
	v_bfe_u32 v3, v1, 16, 1
	v_add3_u32 v50, v212, v46, 0x7fff
	v_bfe_u32 v46, v210, 16, 1
	v_add3_u32 v45, v214, v45, 0x7fff
	v_cndmask_b16 v48.h, 0x7fff, v5.h, s9
	v_add3_u32 v3, v1, v3, 0x7fff
	v_bfe_u32 v1, v216, 16, 1
	v_add3_u32 v57, v210, v46, 0x7fff
	v_bfe_u32 v46, v254, 16, 1
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s13
	v_cndmask_b16 v5.h, 0x7fff, v17.h, s0
	v_add3_u32 v1, v216, v1, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v15.h, s1
	v_add3_u32 v51, v254, v46, 0x7fff
	v_bfe_u32 v46, v252, 16, 1
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s8
	v_cndmask_b16 v49.h, 0x7fff, v1.h, s11
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s10
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s15
	v_add3_u32 v159, v252, v46, 0x7fff
	v_bfe_u32 v46, v250, 16, 1
	v_cndmask_b16 v15.h, 0x7fff, v57.h, s14
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v47.l, v63.l
	v_mov_b16_e32 v48.l, v63.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v17.h, 0x7fff, v159.h, s16
	v_add3_u32 v52, v250, v46, 0x7fff
	v_bfe_u32 v46, v248, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v49.l, v63.l
	v_mov_b16_e32 v50.l, v63.l
	v_mov_b16_e32 v51.l, v63.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s17
	v_add3_u32 v161, v248, v46, 0x7fff
	v_bfe_u32 v46, v246, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v52.l, v63.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v45.l, 0x7fff, v27.h, vcc_lo
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v210.l, v63.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v57.h, 0x7fff, v161.h, s18
	v_add3_u32 v181, v246, v46, 0x7fff
	v_bfe_u32 v46, v244, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v212.l, v63.l
	v_mov_b16_e32 v7.l, v63.l
	v_mov_b16_e32 v3.l, v63.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v210.h, 0x7fff, v181.h, s19
	v_add3_u32 v183, v244, v46, 0x7fff
	v_bfe_u32 v46, v242, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e32 v54.l, v35.h
	v_mov_b16_e64 v30.l, v155.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v175, v175, v210
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v159.h, 0x7fff, v183.h, s20
	v_add3_u32 v185, v242, v46, 0x7fff
	v_bfe_u32 v46, v240, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v210.l, v57.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e32 v32.l, v61.h
	v_mov_b16_e32 v33.l, v62.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v211.h, 0x7fff, v185.h, s21
	v_add3_u32 v187, v240, v46, 0x7fff
	v_bfe_u32 v46, v238, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e32 v29.l, v26.h
	v_mov_b16_e64 v31.l, v156.h
	v_mov_b32_e32 v27, v30
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v161.h, 0x7fff, v187.h, s22
	v_add3_u32 v189, v238, v46, 0x7fff
	v_bfe_u32 v46, v236, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v25, v28
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v63.h, v45.l
	v_mov_b16_e64 v161.l, v63.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v212.h, 0x7fff, v189.h, s23
	v_add3_u32 v191, v236, v46, 0x7fff
	v_bfe_u32 v46, v234, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v26, v53
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v181.l, v63.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v171, v171, v212
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v181.h, 0x7fff, v191.h, s24
	v_add3_u32 v193, v234, v46, 0x7fff
	v_bfe_u32 v46, v232, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v191, v201, v52
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v52.l, v17.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v201, v203, v49
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v213.h, 0x7fff, v193.h, s25
	v_add3_u32 v219, v232, v46, 0x7fff
	v_bfe_u32 v46, v230, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v193, v199, v51
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v51.l, v15.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v199, v205, v50
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v183.h, 0x7fff, v219.h, s26
	v_add3_u32 v214, v230, v46, 0x7fff
	v_bfe_u32 v46, v228, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v49.l, v3.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v203, v209, v48
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v48.l, v7.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v214.h, 0x7fff, v214.h, s27
	v_add3_u32 v221, v228, v46, 0x7fff
	v_bfe_u32 v46, v226, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v205, v207, v47
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v47.l, v11.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v214.l, v63.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v185.h, 0x7fff, v221.h, s28
	v_add3_u32 v215, v226, v46, 0x7fff
	v_bfe_u32 v46, v224, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v215.l, v63.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v167, v167, v214
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v214.l, v183.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v215.h, 0x7fff, v215.h, s29
	v_add3_u32 v223, v224, v46, 0x7fff
	v_bfe_u32 v46, v222, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v212.l, v161.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v7, v208, v7
	v_sub_f32_e32 v3, v202, v3
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v187.h, 0x7fff, v223.h, s30
	v_add3_u32 v216, v222, v46, 0x7fff
	v_bfe_u32 v46, v220, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v216.l, v63.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v30, v54
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v183.l, v63.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v216.h, 0x7fff, v216.h, s31
	v_add3_u32 v222, v220, v46, 0x7fff
	v_bfe_u32 v46, v218, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v28, v32
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v185.l, v63.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v163, v163, v216
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v189.h, 0x7fff, v222.h, s33
	v_add3_u32 v217, v218, v46, 0x7fff
	v_cndmask_b16 v46.h, 0x7fff, v13.h, s3
	v_cndmask_b16 v13.h, 0x7fff, v45.h, s12
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v46.l, v63.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v45.h, v5.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v217.h, 0x7fff, v217.h, s34
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v217.l, v63.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v50.l, v13.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v197, v197, v46
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v46.l, v9.h
	v_mov_b16_e64 v216.l, v187.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v165, v217
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v217.l, v189.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v165, v169, v215
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[45:52], v[130:137], v[73:80]
	v_mov_b16_e64 v215.l, v185.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v169, v173, v213
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v213.l, v181.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v173, v177, v211
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v211.l, v159.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v32, v33
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v5.l, v63.l
	v_mov_b16_e32 v11.l, v63.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v9, v196, v9
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[210:217], v[98:105], v[73:80]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[138:145], v[25:32], v[65:72]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v5, v195, v5
	v_sub_f32_e32 v11, v206, v11
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v9, v9
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[45:52], v[81:88], v[73:80]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v13.l, v63.l
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s0, v5, v5
	v_cmp_o_f32_e64 s3, v197, v197
	v_cmp_o_f32_e64 s6, v11, v11
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[210:217], v[25:32], v[73:80]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v25, v194, v63
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v27, v11, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v13, v204, v13
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s7, v205, v205
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v15, v198, v15
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v26, v25, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_add3_u32 v27, v11, v27, 0x7fff
	v_bfe_u32 v11, v205, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v17, v200, v17
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v26, v25, v26, 0x7fff
	v_bfe_u32 v25, v5, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s6
	v_add3_u32 v11, v205, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v13, v13
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v57.l, v63.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v25, v5, v25, 0x7fff
	v_bfe_u32 v5, v9, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v26.h, vcc_lo
	v_cndmask_b16 v27.h, 0x7fff, v11.h, s7
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_bfe_u32 v11, v13, 16, 1
	v_add3_u32 v5, v9, v5, 0x7fff
	v_bfe_u32 v9, v197, 16, 1
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s0
	v_cmp_o_f32_e64 s0, v203, v203
	v_add3_u32 v11, v13, v11, 0x7fff
	v_cndmask_b16 v26.l, 0x7fff, v5.h, s1
	v_add3_u32 v9, v197, v9, 0x7fff
	v_bfe_u32 v5, v7, 16, 1
	v_cmp_o_f32_e64 s1, v3, v3
	v_cndmask_b16 v30.l, 0x7fff, v11.h, s6
	v_bfe_u32 v11, v191, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v9.h, s3
	v_bfe_u32 v9, v3, 16, 1
	v_add3_u32 v5, v7, v5, 0x7fff
	v_bfe_u32 v7, v203, 16, 1
	v_cmp_o_f32_e64 s3, v201, v201
	v_add3_u32 v11, v191, v11, 0x7fff
	v_add3_u32 v9, v3, v9, 0x7fff
	v_bfe_u32 v3, v201, 16, 1
	v_add3_u32 v7, v203, v7, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v15, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v9.h, s1
	v_add3_u32 v3, v201, v3, 0x7fff
	v_cndmask_b16 v28.h, 0x7fff, v7.h, s0
	v_bfe_u32 v7, v193, 16, 1
	v_bfe_u32 v9, v17, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v199, v199
	v_cndmask_b16 v29.h, 0x7fff, v3.h, s3
	v_bfe_u32 v3, v199, 16, 1
	v_add3_u32 v5, v15, v5, 0x7fff
	v_cmp_o_f32_e64 s0, v15, v15
	v_add3_u32 v7, v193, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v193, v193
	v_add3_u32 v3, v199, v3, 0x7fff
	v_add3_u32 v9, v17, v9, 0x7fff
	v_cmp_o_f32_e64 s3, v17, v17
	v_cmp_o_f32_e64 s6, v191, v191
	v_cndmask_b16 v31.l, 0x7fff, v5.h, s0
	v_cndmask_b16 v30.h, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v31.h, 0x7fff, v7.h, s1
	v_cndmask_b16 v32.l, 0x7fff, v9.h, s3
	v_cndmask_b16 v32.h, 0x7fff, v11.h, s6
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v7, v186, v40
	v_sub_f32_e32 v5, v192, v42
	v_sub_f32_e32 v11, v182, v38
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s7, v97, v97
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[25:32], v[130:137], v[73:80]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v27, v7, 16, 1
	v_cmp_o_f32_e64 s6, v7, v7
	v_bfe_u32 v26, v5, 16, 1
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v13, v184, v39
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v5, v5
	v_add3_u32 v27, v7, v27, 0x7fff
	v_bfe_u32 v7, v97, 16, 1
	v_add3_u32 v26, v5, v26, 0x7fff
	scratch_load_b32 v42, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v3, v190, v36
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s6
	v_add3_u32 v7, v97, v7, 0x7fff
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s1
	v_cmp_o_f32_e64 s1, v11, v11
	v_cmp_o_f32_e64 s6, v13, v13
	v_bfe_u32 v25, v3, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v7.h, s7
	v_bfe_u32 v7, v11, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v9, v188, v41
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v25, v3, v25, 0x7fff
	v_bfe_u32 v3, v179, 16, 1
	v_add3_u32 v7, v11, v7, 0x7fff
	v_bfe_u32 v11, v13, 16, 1
	v_cmp_o_f32_e64 s0, v179, v179
	v_bfe_u32 v5, v157, 16, 1
	v_add3_u32 v3, v179, v3, 0x7fff
	v_cmp_o_f32_e64 s3, v157, v157
	v_add3_u32 v11, v13, v11, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v25.h, vcc_lo
	v_add3_u32 v5, v157, v5, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v9, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v11.h, s6
	v_bfe_u32 v11, v37, 16, 1
	v_cmp_o_f32_e64 s6, v37, v37
	v_cndmask_b16 v26.h, 0x7fff, v5.h, s3
	v_add3_u32 v3, v9, v3, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_add3_u32 v11, v37, v11, 0x7fff
	scratch_load_b32 v37, off, off offset:208 ; 4-byte Folded Reload
	v_bfe_u32 v5, v64, 16, 1
	v_bfe_u32 v9, v60, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v15, v178, v55
	v_sub_f32_e32 v17, v180, v56
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s0, v64, v64
	v_add3_u32 v5, v64, v5, 0x7fff
	v_add3_u32 v9, v60, v9, 0x7fff
	v_cmp_o_f32_e64 s3, v60, v60
	v_cndmask_b16 v28.l, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v29.l, 0x7fff, v7.h, s1
	v_cndmask_b16 v28.h, 0x7fff, v5.h, s0
	v_bfe_u32 v3, v59, 16, 1
	v_cndmask_b16 v29.h, 0x7fff, v9.h, s3
	v_bfe_u32 v5, v15, 16, 1
	v_bfe_u32 v7, v58, 16, 1
	v_bfe_u32 v9, v17, 16, 1
	v_add3_u32 v3, v59, v3, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v59, v59
	v_add3_u32 v5, v15, v5, 0x7fff
	v_cmp_o_f32_e64 s0, v15, v15
	v_add3_u32 v7, v58, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v58, v58
	v_add3_u32 v9, v17, v9, 0x7fff
	v_cmp_o_f32_e64 s3, v17, v17
	v_cndmask_b16 v30.h, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v31.l, 0x7fff, v5.h, s0
	v_cndmask_b16 v31.h, 0x7fff, v7.h, s1
	v_cndmask_b16 v32.h, 0x7fff, v11.h, s6
	v_cndmask_b16 v32.l, 0x7fff, v9.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v3, v174, v57
	v_sub_f32_e32 v7, v170, v161
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v159.l, v63.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v9, v172, v181
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[25:32], v[130:137], v[65:72]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v25, v3, 16, 1
	v_bfe_u32 v27, v7, 16, 1
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v5, v176, v159
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_cmp_o_f32_e64 s6, v7, v7
	v_add3_u32 v25, v3, v25, 0x7fff
	v_bfe_u32 v3, v175, 16, 1
	v_add3_u32 v27, v7, v27, 0x7fff
	v_bfe_u32 v7, v171, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v166, v183
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s0, v175, v175
	v_add3_u32 v3, v175, v3, 0x7fff
	v_bfe_u32 v26, v5, 16, 1
	v_add3_u32 v7, v171, v7, 0x7fff
	v_cmp_o_f32_e64 s7, v171, v171
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v13, v168, v185
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v5, v5
	v_add3_u32 v26, v5, v26, 0x7fff
	v_bfe_u32 v5, v173, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v25.h, vcc_lo
	v_cndmask_b16 v25.h, 0x7fff, v3.h, s0
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s6
	v_cndmask_b16 v27.h, 0x7fff, v7.h, s7
	v_bfe_u32 v3, v9, 16, 1
	v_bfe_u32 v7, v11, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v189.l, v63.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v5, v173, v5, 0x7fff
	v_cmp_o_f32_e64 s3, v173, v173
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s1
	v_add3_u32 v3, v9, v3, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_add3_u32 v7, v11, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v11, v11
	v_bfe_u32 v9, v167, 16, 1
	v_bfe_u32 v11, v13, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v187.l, v63.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v17, v164, v189
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v26.h, 0x7fff, v5.h, s3
	v_bfe_u32 v5, v169, 16, 1
	v_add3_u32 v9, v167, v9, 0x7fff
	v_cmp_o_f32_e64 s3, v167, v167
	v_add3_u32 v11, v13, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v13, v13
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v15, v162, v187
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v5, v169, v5, 0x7fff
	v_cmp_o_f32_e64 s0, v169, v169
	v_cndmask_b16 v28.l, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v29.h, 0x7fff, v9.h, s3
	v_cndmask_b16 v30.l, 0x7fff, v11.h, s6
	v_bfe_u32 v3, v165, 16, 1
	v_bfe_u32 v9, v17, 16, 1
	v_bfe_u32 v11, v1, 16, 1
	v_cndmask_b16 v28.h, 0x7fff, v5.h, s0
	v_cmp_o_f32_e32 vcc_lo, v165, v165
	v_add3_u32 v3, v165, v3, 0x7fff
	v_add3_u32 v9, v17, v9, 0x7fff
	v_cmp_o_f32_e64 s3, v17, v17
	v_add3_u32 v11, v1, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v225, v12
	v_sub_f32_e32 v12, v233, v20
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v5, v15, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v7.h, s1
	v_cmp_o_f32_e64 s0, v15, v15
	v_bfe_u32 v7, v163, 16, 1
	v_cndmask_b16 v30.h, 0x7fff, v3.h, vcc_lo
	v_add3_u32 v5, v15, v5, 0x7fff
	v_cndmask_b16 v32.l, 0x7fff, v9.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v3, v227, v14
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v9, v1, 16, 1
	v_add3_u32 v7, v163, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v163, v163
	v_cndmask_b16 v31.l, 0x7fff, v5.h, s0
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v5, v158, v10
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v9, v1, v9, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_bfe_u32 v1, v24, 16, 1
	v_bfe_u32 v10, v3, 16, 1
	v_cndmask_b16 v31.h, 0x7fff, v7.h, s1
	v_cndmask_b16 v32.h, 0x7fff, v11.h, s6
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v7, v160, v22
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v1, v24, v1, 0x7fff
	v_cmp_o_f32_e64 s0, v24, v24
	v_add3_u32 v10, v3, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v3, v3
	v_bfe_u32 v3, v23, 16, 1
	v_bfe_u32 v11, v5, 16, 1
	v_cmp_o_f32_e64 s3, v23, v23
	v_cmp_o_f32_e64 s6, v5, v5
	v_cndmask_b16 v9.l, 0x7fff, v9.h, vcc_lo
	v_add3_u32 v3, v23, v3, 0x7fff
	v_add3_u32 v11, v5, v11, 0x7fff
	v_bfe_u32 v5, v16, 16, 1
	v_cndmask_b16 v9.h, 0x7fff, v1.h, s0
	v_bfe_u32 v1, v7, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v13, v235, v21
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s7, v16, v16
	v_add3_u32 v5, v16, v5, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s1
	v_cndmask_b16 v10.h, 0x7fff, v3.h, s3
	v_add3_u32 v1, v7, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_bfe_u32 v3, v8, 16, 1
	v_bfe_u32 v7, v0, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s6
	v_cndmask_b16 v11.h, 0x7fff, v5.h, s7
	v_cmp_o_f32_e64 s0, v8, v8
	v_add3_u32 v3, v8, v3, 0x7fff
	v_bfe_u32 v5, v12, 16, 1
	v_add3_u32 v7, v0, v7, 0x7fff
	v_cmp_o_f32_e64 s3, v0, v0
	v_bfe_u32 v0, v13, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v15, v229, v18
	v_sub_f32_e32 v17, v231, v19
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v5, v12, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v12, v12
	v_add3_u32 v0, v13, v0, 0x7fff
	v_cmp_o_f32_e64 s6, v13, v13
	v_cndmask_b16 v12.h, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v4, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v13.l, 0x7fff, v5.h, s1
	v_cndmask_b16 v14.l, 0x7fff, v0.h, s6
	v_bfe_u32 v0, v6, 16, 1
	v_bfe_u32 v1, v15, 16, 1
	v_add3_u32 v3, v4, v3, 0x7fff
	v_cmp_o_f32_e64 s1, v4, v4
	v_bfe_u32 v4, v17, 16, 1
	v_bfe_u32 v5, v2, 16, 1
	v_cndmask_b16 v13.h, 0x7fff, v7.h, s3
	v_add3_u32 v0, v6, v0, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_add3_u32 v1, v15, v1, 0x7fff
	v_cmp_o_f32_e64 s0, v15, v15
	v_add3_u32 v4, v17, v4, 0x7fff
	v_cmp_o_f32_e64 s3, v17, v17
	v_add3_u32 v5, v2, v5, 0x7fff
	v_cmp_o_f32_e64 s6, v2, v2
	v_cndmask_b16 v14.h, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v15.l, 0x7fff, v1.h, s0
	v_cndmask_b16 v15.h, 0x7fff, v3.h, s1
	v_cndmask_b16 v16.l, 0x7fff, v4.h, s3
	v_cndmask_b16 v16.h, 0x7fff, v5.h, s6
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[25:32], v[98:105], v[73:80]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[9:16], v[98:105], v[65:72]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v1, off, off offset:792
	scratch_load_b32 v2, off, off offset:816
	scratch_load_b32 v4, off, off offset:864
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s0, s81, 1
	s_or_b32 s1, s81, 2
	s_or_b32 s3, s81, 3
	s_or_b32 s6, s81, 4
	s_or_b32 s7, s81, 5
	s_or_b32 s8, s81, 6
	s_or_b32 s9, s81, 7
	s_or_b32 s10, s81, 8
	s_or_b32 s11, s81, 9
	s_or_b32 s12, s81, 10
	s_or_b32 s13, s81, 11
	s_or_b32 s14, s81, 12
	s_or_b32 s15, s81, 13
	s_or_b32 s16, s81, 14
	s_or_b32 s17, s81, 15
	s_or_b32 s18, s81, 16
	s_or_b32 s19, s81, 17
	s_or_b32 s20, s81, 18
	s_or_b32 s21, s81, 19
	s_or_b32 s22, s81, 20
	s_or_b32 s23, s81, 21
	s_or_b32 s24, s81, 22
	s_or_b32 s25, s81, 23
	s_or_b32 s28, s81, 24
	s_or_b32 s93, s81, 25
	s_or_b32 s94, s81, 26
	s_or_b32 s95, s81, 27
	s_or_b32 s96, s81, 28
	s_or_b32 s97, s81, 29
	s_or_b32 s98, s81, 30
	s_or_b32 s99, s81, 31
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s81, s50
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v8, off, off offset:1016
	scratch_load_b32 v3, off, off offset:848
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s0, s50
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v48, v44
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s1, s50
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v50, v44
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s3, s50
	.loc	1 663 37                        ; attention_backward.py:663:37
	scratch_load_b32 v7, off, off offset:896 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s6, s50
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:880
	scratch_load_b32 v6, off, off offset:832
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s7, s50
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v45, v44
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s8, s50
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v47, v44
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s9, s50
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v49, v44
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s10, s50
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v51, v44
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s11, s50
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v46, v44
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s12, s50
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v112, v51
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s13, s50
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v110, v49
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s14, s50
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v108, v47
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s15, s50
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v106, v45
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s16, s50
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v111, v50
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s17, s50
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v109, v48
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s18, s50
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v107, v46
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s19, s50
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v105, v44
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s34, -1, 0
	s_cmp_lt_i32 s20, s50
	s_cselect_b32 s33, -1, 0
	s_cmp_lt_i32 s21, s50
	s_cselect_b32 s31, -1, 0
	s_cmp_lt_i32 s22, s50
	s_cselect_b32 s30, -1, 0
	s_cmp_lt_i32 s23, s50
	s_cselect_b32 s29, -1, 0
	s_cmp_lt_i32 s24, s50
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s25, s50
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s28, s50
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s93, s50
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s94, s50
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s95, s50
	s_cselect_b32 s22, -1, 0
	s_cmp_lt_i32 s96, s50
	s_cselect_b32 s21, -1, 0
	s_cmp_lt_i32 s97, s50
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s98, s50
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s99, s50
	s_cselect_b32 s18, -1, 0
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_add_i32 s28, s81, s38
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s71
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_mul_i32 s0, s28, s73
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v0, s0, v37, 1
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v1, s0, v1, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s92
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v2, s0, v2, 1
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v4, s0, v4, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_u16 v114, v0, s[60:63], 0 offen
	buffer_load_u16 v115, v1, s[60:63], 0 offen
	scratch_load_b32 v0, off, off offset:808 ; 4-byte Folded Reload
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s90
	.loc	1 663 37                        ; attention_backward.py:663:37
	scratch_load_b32 v1, off, off offset:856 ; 4-byte Folded Reload
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v3, s0, v3, 1
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v7, s0, v7, 1
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v5, s0, v5, 1
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v6, s0, v6, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v0, s0, v0, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s88
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v116, v0, s[60:63], 0 offen
	scratch_load_b32 v0, off, off offset:824 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s0, v0, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s86
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v117, v0, s[60:63], 0 offen
	scratch_load_b32 v0, off, off offset:840 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s0, v0, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s84
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_u16 v118, v0, s[60:63], 0 offen
	buffer_load_u16 v119, v1, s[60:63], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:872
	scratch_load_b32 v1, off, off offset:920
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s82
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v0, s0, v0, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s66
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v120, v0, s[60:63], 0 offen
	scratch_load_b32 v0, off, off offset:888 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s0, v0, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s42
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v121, v0, s[60:63], 0 offen
	scratch_load_b32 v0, off, off offset:904 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s0, v0, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s33
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_u16 v122, v0, s[60:63], 0 offen
	buffer_load_u16 v123, v1, s[60:63], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:936
	scratch_load_b32 v1, off, off offset:984
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s30
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v0, s0, v0, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s27
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v124, v0, s[60:63], 0 offen
	scratch_load_b32 v0, off, off offset:952 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s0, v0, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s25
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v125, v0, s[60:63], 0 offen
	scratch_load_b32 v0, off, off offset:968 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s0, v0, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s23
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_u16 v126, v0, s[60:63], 0 offen
	buffer_load_u16 v127, v1, s[60:63], 0 offen
	scratch_load_b32 v0, off, off offset:1000 ; 4-byte Folded Reload
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s21
	.loc	1 663 37                        ; attention_backward.py:663:37
	scratch_load_b32 v1, off, off offset:800 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v0, s0, v0, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s19
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v128, v0, s[60:63], 0 offen
	v_add_lshl_u32 v0, s0, v8, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s70
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v129, v0, s[60:63], 0 offen
	scratch_load_b32 v0, off, off offset:784 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s0, v0, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s91
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s89
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s85
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s83
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s67
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s87
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s43
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	s_clause 0x7
	buffer_load_u16 v136, v6, s[60:63], 0 offen
	buffer_load_u16 v137, v2, s[60:63], 0 offen
	buffer_load_u16 v138, v1, s[60:63], 0 offen
	buffer_load_u16 v139, v0, s[60:63], 0 offen
	buffer_load_u16 v19, v7, s[60:63], 0 offen
	buffer_load_u16 v20, v5, s[60:63], 0 offen
	buffer_load_u16 v21, v4, s[60:63], 0 offen
	buffer_load_u16 v22, v3, s[60:63], 0 offen
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v0, off, off offset:912
	scratch_load_b32 v1, off, off offset:928
	scratch_load_b32 v2, off, off offset:976
	scratch_load_b32 v3, off, off offset:944
	scratch_load_b32 v4, off, off offset:992
	scratch_load_b32 v5, off, off offset:1008
	scratch_load_b32 v6, off, off offset:960
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s34
	v_add_nc_u32_e32 v7, s73, v8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v7, s0, v7, 1
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v0, s0, v0, 1
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v1, s0, v1, 1
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v2, s0, v2, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v3, s0, v3, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v4, s0, v4, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s31
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v5, s0, v5, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s24
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v6, s0, v6, 1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s29
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s22
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s20
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s26
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s18
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	s_clause 0x7
	buffer_load_u16 v23, v6, s[60:63], 0 offen
	buffer_load_u16 v24, v3, s[60:63], 0 offen
	buffer_load_u16 v130, v1, s[60:63], 0 offen
	buffer_load_u16 v132, v0, s[60:63], 0 offen
	buffer_load_u16 v131, v7, s[60:63], 0 offen
	buffer_load_u16 v133, v5, s[60:63], 0 offen
	buffer_load_u16 v134, v4, s[60:63], 0 offen
	buffer_load_u16 v135, v2, s[60:63], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:48 ; 4-byte Folded Reload
	ds_store_b16 v42, v114
	ds_store_b16 v42, v118 offset:1024
	ds_store_b16 v42, v122 offset:2048
	ds_store_b16 v42, v126 offset:3072
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v139
	ds_store_b16 v0, v22 offset:1024
	ds_store_b16 v0, v132 offset:2048
	ds_store_b16 v0, v135 offset:3072
	scratch_load_b32 v0, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v115
	ds_store_b16 v0, v119 offset:1024
	ds_store_b16 v0, v123 offset:2048
	ds_store_b16 v0, v127 offset:3072
	scratch_load_b32 v0, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v138
	ds_store_b16 v0, v21 offset:1024
	ds_store_b16 v0, v130 offset:2048
	ds_store_b16 v0, v134 offset:3072
	scratch_load_b32 v0, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v116
	ds_store_b16 v0, v120 offset:1024
	ds_store_b16 v0, v124 offset:2048
	ds_store_b16 v0, v128 offset:3072
	scratch_load_b32 v0, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v137
	ds_store_b16 v0, v20 offset:1024
	ds_store_b16 v0, v24 offset:2048
	ds_store_b16 v0, v133 offset:3072
	scratch_load_b32 v0, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v117
	ds_store_b16 v0, v121 offset:1024
	ds_store_b16 v0, v125 offset:2048
	ds_store_b16 v0, v129 offset:3072
	scratch_load_b32 v0, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v136
	ds_store_b16 v0, v19 offset:1024
	ds_store_b16 v0, v23 offset:2048
	ds_store_b16 v0, v131 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 40-byte Folded Reload
	scratch_load_b32 v0, off, off offset:372
	scratch_load_b32 v4, off, off offset:424
	scratch_load_b128 v[8:11], off, off offset:80
	scratch_load_b128 v[12:15], off, off offset:96
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v0, 0, v0
	s_waitcnt vmcnt(2)
	ds_load_b128 v[4:7], v4
	ds_load_b128 v[0:3], v0
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[8:15], v[0:7], v[105:112]
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x3                            ; 40-byte Folded Reload
	scratch_load_b32 v0, off, off offset:428
	scratch_load_b32 v4, off, off offset:432
	scratch_load_b128 v[8:11], off, off offset:112
	scratch_load_b128 v[12:15], off, off offset:128
	s_waitcnt vmcnt(3)
	ds_load_b128 v[0:3], v0
	s_waitcnt vmcnt(2)
	ds_load_b128 v[4:7], v4
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[8:15], v[0:7], v[105:112]
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x3                            ; 40-byte Folded Reload
	scratch_load_b32 v0, off, off offset:436
	scratch_load_b32 v4, off, off offset:440
	scratch_load_b128 v[8:11], off, off offset:144
	scratch_load_b128 v[12:15], off, off offset:160
	s_waitcnt vmcnt(3)
	ds_load_b128 v[0:3], v0
	s_waitcnt vmcnt(2)
	ds_load_b128 v[4:7], v4
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[8:15], v[0:7], v[105:112]
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x3                            ; 40-byte Folded Reload
	scratch_load_b32 v0, off, off offset:444
	scratch_load_b32 v4, off, off offset:448
	scratch_load_b128 v[8:11], off, off offset:176
	scratch_load_b128 v[12:15], off, off offset:192
	s_waitcnt vmcnt(3)
	ds_load_b128 v[0:3], v0
	s_waitcnt vmcnt(2)
	ds_load_b128 v[4:7], v4
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[8:15], v[0:7], v[105:112]
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v0, off, off offset:376
	scratch_load_b32 v1, off, off offset:380
	scratch_load_b32 v2, off, off offset:384
	scratch_load_b32 v3, off, off offset:388
	scratch_load_b32 v4, off, off offset:392
	scratch_load_b32 v5, off, off offset:396
	scratch_load_b32 v6, off, off offset:400
	scratch_load_b32 v7, off, off offset:404
	s_waitcnt vmcnt(7)
	v_or_b32_e32 v0, s81, v0
	s_waitcnt vmcnt(6)
	v_or_b32_e32 v1, s81, v1
	s_waitcnt vmcnt(5)
	v_or_b32_e32 v2, s81, v2
	s_waitcnt vmcnt(4)
	v_or_b32_e32 v3, s81, v3
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v4, s81, v4
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v5, s81, v5
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v6, s81, v6
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v7, s81, v7
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s50, v0
	v_cmp_gt_i32_e64 s0, s50, v1
	v_cmp_gt_i32_e64 s1, s50, v2
	v_cmp_gt_i32_e64 s3, s50, v3
	v_cmp_gt_i32_e64 s6, s50, v4
	v_cmp_gt_i32_e64 s7, s50, v5
	v_cmp_gt_i32_e64 s8, s50, v6
	v_cmp_gt_i32_e64 s9, s50, v7
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v0, s47, v0
	v_add_nc_u32_e32 v1, s47, v1
	v_add_nc_u32_e32 v2, s47, v2
	v_add_nc_u32_e32 v3, s47, v3
	v_add_nc_u32_e32 v4, s47, v4
	v_add_nc_u32_e32 v5, s47, v5
	v_add_nc_u32_e32 v6, s47, v6
	v_add_nc_u32_e32 v7, s47, v7
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s99, s5, vcc_lo
	s_and_b32 s97, s5, s0
	s_and_b32 s95, s5, s1
	s_and_b32 s93, s5, s3
	s_and_b32 s100, s5, s6
	s_and_b32 s98, s5, s7
	s_and_b32 s96, s5, s8
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_and_not1_b32 vcc_lo, exec_lo, s76
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s94, s5, s9
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e32 vcc_lo, v154, v0
	v_cmp_le_i32_e64 s0, v154, v1
	v_cmp_le_i32_e64 s1, v154, v2
	v_cmp_le_i32_e64 s3, v154, v3
	v_cmp_le_i32_e64 s6, v154, v4
	v_cmp_le_i32_e64 s7, v154, v5
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s10, s99, vcc_lo
	s_and_b32 s0, s97, s0
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s8, v154, v6
	v_cmp_le_i32_e64 s9, v154, v7
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
	s_and_not1_b32 vcc_lo, exec_lo, s75
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v8, s45, v0
	v_subrev_nc_u32_e32 v9, s45, v1
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v0, s46, v0
	v_add_nc_u32_e32 v1, s46, v1
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v10, s45, v2
	v_subrev_nc_u32_e32 v11, s45, v3
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v2, s46, v2
	v_add_nc_u32_e32 v3, s46, v3
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v12, s45, v4
	v_subrev_nc_u32_e32 v13, s45, v5
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v4, s46, v4
	v_add_nc_u32_e32 v5, s46, v5
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v154, v8
	v_cmp_ge_i32_e64 s0, v154, v9
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s10, v154, v0
	v_cmp_le_i32_e64 s11, v154, v1
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v14, s45, v6
	v_subrev_nc_u32_e32 v15, s45, v7
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v6, s46, v6
	v_add_nc_u32_e32 v7, s46, v7
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s1, v154, v10
	v_cmp_ge_i32_e64 s3, v154, v11
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s12, v154, v2
	v_cmp_le_i32_e64 s13, v154, v3
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s6, v154, v12
	v_cmp_ge_i32_e64 s7, v154, v13
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s14, v154, v4
	v_cmp_le_i32_e64 s15, v154, v5
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s10, vcc_lo, s10
	s_and_b32 s0, s0, s11
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s8, v154, v14
	v_cmp_ge_i32_e64 s9, v154, v15
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s16, v154, v6
	v_cmp_le_i32_e64 s17, v154, v7
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
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
	v_mov_b16_e32 v98.l, 0
	.loc	1 682 25 is_stmt 1              ; attention_backward.py:682:25
	s_mul_i32 s0, s81, s59
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s0, s39, s0
	v_mov_b16_e32 v101.l, v98.l
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s99
	s_cbranch_execz .LBB0_14
; %bb.13:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34 is_stmt 0                ; attention_backward.py:0:34
	scratch_load_b64 v[0:1], off, off offset:1084 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_co_u32 v0, vcc_lo, s36, v0
	v_add_co_ci_u32_e64 v1, null, s37, v1, vcc_lo
	global_load_d16_u8 v101, v[0:1], off
.LBB0_14:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s97
	s_cbranch_execz .LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[0:1], off, off offset:1028 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_co_u32 v0, vcc_lo, s36, v0
	v_add_co_ci_u32_e64 v1, null, s37, v1, vcc_lo
	global_load_d16_u8 v98, v[0:1], off
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
	scratch_load_b64 v[0:1], off, off offset:1036 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_co_u32 v0, vcc_lo, s36, v0
	v_add_co_ci_u32_e64 v1, null, s37, v1, vcc_lo
	global_load_d16_u8 v99, v[0:1], off
.LBB0_18:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s93
	s_cbranch_execz .LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[0:1], off, off offset:1044 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_co_u32 v0, vcc_lo, s36, v0
	v_add_co_ci_u32_e64 v1, null, s37, v1, vcc_lo
	global_load_d16_hi_u8 v98, v[0:1], off
.LBB0_20:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v99.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v101.h, v99.h
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s100
	s_cbranch_execz .LBB0_22
; %bb.21:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[0:1], off, off offset:1052 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_co_u32 v0, vcc_lo, s36, v0
	v_add_co_ci_u32_e64 v1, null, s37, v1, vcc_lo
	global_load_d16_hi_u8 v101, v[0:1], off
.LBB0_22:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s98
	s_cbranch_execz .LBB0_24
; %bb.23:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[0:1], off, off offset:1060 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_co_u32 v0, vcc_lo, s36, v0
	v_add_co_ci_u32_e64 v1, null, s37, v1, vcc_lo
	global_load_d16_hi_u8 v99, v[0:1], off
.LBB0_24:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	v_mov_b16_e32 v100.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v100.h, v100.l
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s96
	s_cbranch_execz .LBB0_26
; %bb.25:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[0:1], off, off offset:1068 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_co_u32 v0, vcc_lo, s36, v0
	v_add_co_ci_u32_e64 v1, null, s37, v1, vcc_lo
	global_load_d16_hi_u8 v100, v[0:1], off
.LBB0_26:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s94
	s_cbranch_execz .LBB0_7
; %bb.27:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[0:1], off, off offset:1076 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_co_u32 v0, vcc_lo, s36, v0
	v_add_co_ci_u32_e64 v1, null, s37, v1, vcc_lo
	global_load_d16_u8 v100, v[0:1], off
	s_branch .LBB0_7
.LBB0_28:                               ; %Flow430
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v32, off, off offset:1092
	scratch_load_b32 v25, off, off offset:1096
	scratch_load_b32 v26, off, off offset:1100
	s_branch .LBB0_30
.LBB0_29:
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
	v_mov_b32_e32 v153, v72
	v_mov_b32_e32 v152, v72
	v_mov_b32_e32 v151, v72
	v_mov_b32_e32 v150, v72
	v_mov_b32_e32 v149, v72
	v_mov_b32_e32 v148, v72
	v_mov_b32_e32 v147, v72
	v_mov_b32_e32 v146, v72
	v_mov_b32_e32 v96, v72
	v_mov_b32_e32 v95, v72
	v_mov_b32_e32 v94, v72
	v_mov_b32_e32 v93, v72
	v_mov_b32_e32 v92, v72
	v_mov_b32_e32 v91, v72
	v_mov_b32_e32 v90, v72
	v_mov_b32_e32 v89, v72
.LBB0_30:                               ; %._crit_edge118
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v0, 4, v25
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v16, s73, v32
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s37, s53, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, v0, v26
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_mov_b32 s36, s52
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v1, 46, v0
	v_or_b32_e32 v15, 2, v0
	v_or_b32_e32 v14, 4, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v17, v16, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s16, s73, v0
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e32 vcc_lo, s35, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s17, s73, v15
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v19, v16, v14
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v17, v17, s72, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v13, 6, v0
	.loc	1 580 22 is_stmt 0              ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s5, vcc_lo
	.loc	1 753 13 is_stmt 1              ; attention_backward.py:753:13
	v_add_nc_u32_e32 v18, v16, v15
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s18, s73, v14
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v12, 8, v0
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s5, s16
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v19, v19, s72, 2
	v_add_lshl_u32 v18, v18, s72, 2
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
	v_cmp_gt_i32_e64 s19, s73, v13
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v22, v16, v11
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s20, s73, v12
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v89, v17, s[36:39], 0 offen
	v_add_lshl_u32 v17, v20, s72, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v9, 14, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v23, v16, v10
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s21, s73, v11
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v90, v18, s[36:39], 0 offen
	buffer_store_b32 v91, v19, s[36:39], 0 offen
	v_add_lshl_u32 v18, v21, s72, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v8, 32, v0
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s5, s19
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s22, s73, v10
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	v_add_lshl_u32 v19, v22, s72, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v7, 34, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s5, s20
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v24, v16, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v23, s72, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v6, 36, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s5, s21
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v25, v16, v8
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s23, s73, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s5, s22
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v26, v16, v7
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s24, s73, v8
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s16
	s_clause 0x1
	buffer_store_b32 v92, v17, s[36:39], 0 offen
	buffer_store_b32 v93, v18, s[36:39], 0 offen
	v_add_lshl_u32 v17, v24, s72, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v5, 38, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v27, v16, v6
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s25, s73, v7
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v18, v25, s72, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v4, 40, v0
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s5, s23
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s26, s73, v6
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v94, v19, s[36:39], 0 offen
	buffer_store_b32 v95, v20, s[36:39], 0 offen
	v_add_lshl_u32 v19, v26, s72, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v21, s35, v32
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v3, 42, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s5, s24
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v28, v16, v5
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v27, s72, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v2, 44, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s5, s25
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v29, v16, v4
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s27, s73, v5
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s5, s26
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v30, v16, v3
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s28, s73, v4
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s16
	s_clause 0x1
	buffer_store_b32 v96, v17, s[36:39], 0 offen
	buffer_store_b32 v146, v18, s[36:39], 0 offen
	v_add_lshl_u32 v17, v28, s72, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s15, s35, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v31, v16, v2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v0, v21, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s29, s73, v3
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v18, v29, s72, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v16, v16, v1
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s5, s27
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s30, s73, v2
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v147, v19, s[36:39], 0 offen
	buffer_store_b32 v148, v20, s[36:39], 0 offen
	v_add_lshl_u32 v19, v30, s72, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s5, s28
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s31, s73, v1
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v31, s72, 2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v0, v0, s74, 2
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s5, s29
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v16, v16, s72, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s5, s30
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s15, s5, s15
	.loc	1 580 44 is_stmt 0              ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s12, s35, v13
	v_cmp_gt_i32_e64 s14, s35, v15
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
	v_cmp_gt_i32_e64 s11, s35, v12
	v_cmp_gt_i32_e64 s13, s35, v14
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v14, v21, v14
	v_add_nc_u32_e32 v12, v21, v12
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v16, 0x80000000, v16, s16
	s_clause 0x4
	buffer_store_b32 v149, v17, s[36:39], 0 offen
	buffer_store_b32 v150, v18, s[36:39], 0 offen
	buffer_store_b32 v151, v19, s[36:39], 0 offen
	buffer_store_b32 v152, v20, s[36:39], 0 offen
	buffer_store_b32 v153, v16, s[36:39], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s37, s55, 0xffff
	s_mov_b32 s36, s54
	v_add_lshl_u32 v15, v15, s74, 2
	buffer_store_b32 v73, v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, v13, s74, 2
	v_add_lshl_u32 v14, v14, s74, 2
	v_add_lshl_u32 v12, v12, s74, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s14, s5, s14
	s_and_b32 s12, s5, s12
	s_and_b32 s13, s5, s13
	s_and_b32 s11, s5, s11
	.loc	1 580 44 is_stmt 0              ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s8, s35, v9
	v_cmp_gt_i32_e64 s10, s35, v11
	.loc	1 759 13 is_stmt 1              ; attention_backward.py:759:13
	v_add_nc_u32_e32 v11, v21, v11
	v_add_nc_u32_e32 v9, v21, v9
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v15, 0x80000000, v15, s14
	v_cndmask_b32_e64 v0, 0x80000000, v0, s12
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s7, s35, v8
	v_cmp_gt_i32_e64 s9, s35, v10
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v10, v21, v10
	v_add_nc_u32_e32 v8, v21, v8
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v14, 0x80000000, v14, s13
	v_cndmask_b32_e64 v12, 0x80000000, v12, s11
	s_clause 0x1
	buffer_store_b32 v74, v15, s[36:39], 0 offen
	buffer_store_b32 v75, v14, s[36:39], 0 offen
	v_add_lshl_u32 v11, v11, s74, 2
	s_clause 0x1
	buffer_store_b32 v76, v0, s[36:39], 0 offen
	buffer_store_b32 v77, v12, s[36:39], 0 offen
	v_add_lshl_u32 v0, v9, s74, 2
	v_add_lshl_u32 v10, v10, s74, 2
	v_add_lshl_u32 v8, v8, s74, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s10, s5, s10
	s_and_b32 s8, s5, s8
	s_and_b32 s9, s5, s9
	s_and_b32 s7, s5, s7
	.loc	1 580 44 is_stmt 0              ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s3, s35, v5
	v_cmp_gt_i32_e64 s6, s35, v7
	.loc	1 759 13 is_stmt 1              ; attention_backward.py:759:13
	v_add_nc_u32_e32 v7, v21, v7
	v_add_nc_u32_e32 v5, v21, v5
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v11, 0x80000000, v11, s10
	v_cndmask_b32_e64 v0, 0x80000000, v0, s8
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s2, s35, v4
	v_cmp_gt_i32_e64 s4, s35, v6
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v6, v21, v6
	v_add_nc_u32_e32 v4, v21, v4
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v10, 0x80000000, v10, s9
	v_cndmask_b32_e64 v8, 0x80000000, v8, s7
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s1, s35, v3
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v3, v21, v3
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s0, s35, v2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v2, v21, v2
	v_add_nc_u32_e32 v1, v21, v1
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_clause 0x1
	buffer_store_b32 v78, v11, s[36:39], 0 offen
	buffer_store_b32 v79, v10, s[36:39], 0 offen
	v_add_lshl_u32 v7, v7, s74, 2
	s_clause 0x1
	buffer_store_b32 v80, v0, s[36:39], 0 offen
	buffer_store_b32 v65, v8, s[36:39], 0 offen
	v_add_lshl_u32 v0, v5, s74, 2
	v_add_lshl_u32 v6, v6, s74, 2
	v_add_lshl_u32 v4, v4, s74, 2
	v_add_lshl_u32 v3, v3, s74, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s6, s5, s6
	s_and_b32 s3, s5, s3
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v2, v2, s74, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s4, s5, s4
	s_and_b32 s2, s5, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v1, v1, s74, 2
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
	buffer_store_b32 v66, v7, s[36:39], 0 offen
	buffer_store_b32 v67, v6, s[36:39], 0 offen
	buffer_store_b32 v68, v0, s[36:39], 0 offen
	buffer_store_b32 v69, v4, s[36:39], 0 offen
	buffer_store_b32 v70, v3, s[36:39], 0 offen
	buffer_store_b32 v71, v2, s[36:39], 0 offen
	buffer_store_b32 v72, v1, s[36:39], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1108
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 101
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 1108
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 27496
; TotalNumSgprs: 103
; NumVgprs: 256
; ScratchSize: 1108
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 1108
    .sgpr_count:     103
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 276
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
