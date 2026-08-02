	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	v_mov_b32_e32 v45, v0
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
	v_add_nc_u32_e32 v0, s72, v45
	.loc	1 587 22                        ; attention_backward.py:587:22
	s_add_i32 s5, s50, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v1, s73, v0
	v_add_nc_u32_e32 v2, s73, v1
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_cmp_gt_i32_e64 s2, s73, v45
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v17, s74, v45
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s4, s35, v45
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v41, 15, v45
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v3, s73, v2
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s36, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v1, 1, v1
	v_lshlrev_b32_e32 v0, 1, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v18, s35, v17
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v4, s73, v3
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_lshlrev_b32 v27, 1, v45
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
	v_add_nc_u32_e32 v19, s35, v18
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v18, 1, v18
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v20, 0x90, v27
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v7, s73, v6
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s31, s2
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v23, s35, v19
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
	v_add_nc_u32_e32 v30, s35, v23
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v24, 0x240, v27
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v9, s73, v8
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v21, 0x120, v27
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s29, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v61, 0, v20
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	s_clause 0x5
	buffer_load_u16 v10, v0, s[8:11], 0 offen
	buffer_load_u16 v1, v1, s[8:11], 0 offen
	buffer_load_u16 v2, v2, s[8:11], 0 offen
	buffer_load_u16 v3, v3, s[8:11], 0 offen
	buffer_load_u16 v4, v4, s[8:11], 0 offen
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, s73, v9
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s28, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v7, 1, v7
	v_lshlrev_b32_e32 v6, 1, v6
	v_xor_b32_e32 v25, 0x2d0, v27
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v11, s73, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v20, s35, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_lshlrev_b32 v19, 1, v19
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
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v23, 1, v23
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v22, 0x1b0, v27
	v_xor_b32_e32 v26, 0x360, v27
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
	v_lshlrev_b32_e32 v0, 1, v0
	v_lshlrev_b32_e32 v13, 1, v13
	v_lshlrev_b32_e32 v12, 1, v12
	scratch_store_b32 off, v27, off offset:32 ; 4-byte Folded Spill
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s23, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s22, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	buffer_load_u16 v15, v0, s[8:11], 0 offen
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	v_lshlrev_b32_e32 v0, 1, v14
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s19, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_lshl_u32 v14, v14, s73, 1
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s20, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s21, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	s_clause 0x4
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	buffer_load_u16 v6, v6, s[8:11], 0 offen
	buffer_load_u16 v16, v0, s[8:11], 0 offen
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s36, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s9, s7, 0xffff
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s34, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_add_nc_u32 v137, 0, v24
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s33, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_add_nc_u32 v62, 0, v21
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v21, s35, v20
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s31, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v23, 0x80000000, v23 :: v_dual_add_nc_u32 v28, 0, v25
	v_lshlrev_b32_e32 v25, 1, v30
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s30, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v0, 0, v27
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v20, 1, v20
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v27, 0x3f0, v27
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s29, s4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v20, 0x80000000, v20 :: v_dual_add_nc_u32 v63, 0, v22
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v22, s35, v21
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v21, 1, v21
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s28, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v29, 0, v27
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_mov_b32 s8, s6
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v24, s35, v22
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v21, 0x80000000, v21 :: v_dual_lshlrev_b32 v22, 1, v22
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s27, s4
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_ashr_i32 s6, s5, 31
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s26, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v35, 0, v26
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v26, s35, v24
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v24, 1, v24
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_lshr_b32 s6, s6, 27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_add_i32 s6, s5, s6
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v27, s35, v26
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v26, 1, v26
	v_cndmask_b32_e32 v32, 0x80000000, v24, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s25, s4
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_hi_u32 s5, s17, s18
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v30, s35, v27
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v33, 0x80000000, v26 :: v_dual_lshlrev_b32 v24, 1, v27
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s24, s4
	.loc	1 587 20                        ; attention_backward.py:587:20
	s_and_b32 s77, s6, 0xffffffe0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v31, s35, v30
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v27, 1, v30
	v_cndmask_b32_e32 v30, 0x80000000, v24, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s23, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(15)
	ds_store_b16 v0, v10
	s_waitcnt vmcnt(9)
	ds_store_b16 v0, v8 offset:1024
	ds_store_b16 v61, v1
	s_waitcnt vmcnt(8)
	ds_store_b16 v61, v9 offset:1024
	ds_store_b16 v62, v2
	s_waitcnt vmcnt(7)
	ds_store_b16 v62, v15 offset:1024
	ds_store_b16 v63, v3
	s_waitcnt vmcnt(6)
	ds_store_b16 v63, v11 offset:1024
	ds_store_b16 v137, v4
	s_waitcnt vmcnt(5)
	ds_store_b16 v137, v12 offset:1024
	ds_store_b16 v28, v5
	s_waitcnt vmcnt(4)
	ds_store_b16 v28, v13 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v35, v6
	s_waitcnt vmcnt(2)
	ds_store_b16 v35, v16 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v29, v7
	s_waitcnt vmcnt(0)
	ds_store_b16 v29, v14 offset:1024
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v26, s35, v31
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v24, 1, v31
	v_cndmask_b32_e32 v34, 0x80000000, v27, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s22, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt lgkmcnt(0)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v31, s35, v26
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v26, 1, v26
	v_cndmask_b32_e32 v38, 0x80000000, v24, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s19, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_barrier
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v24, 1, v31
	v_add_lshl_u32 v27, v31, s35, 1
	v_cndmask_b32_e32 v31, 0x80000000, v26, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s20, s4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v39, 0x80000000, v24 :: v_dual_and_b32 v2, 7, v45
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s21, s4
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_bfe_u32 s6, s44, 0x10008
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v40, 0x80000000, v27, vcc_lo
	s_clause 0xf
	buffer_load_u16 v10, v17, s[8:11], 0 offen
	buffer_load_u16 v9, v18, s[8:11], 0 offen
	buffer_load_u16 v27, v19, s[8:11], 0 offen
	buffer_load_u16 v26, v23, s[8:11], 0 offen
	buffer_load_u16 v25, v25, s[8:11], 0 offen
	buffer_load_u16 v24, v20, s[8:11], 0 offen
	buffer_load_u16 v23, v21, s[8:11], 0 offen
	buffer_load_u16 v18, v22, s[8:11], 0 offen
	buffer_load_u16 v37, v32, s[8:11], 0 offen
	buffer_load_u16 v36, v33, s[8:11], 0 offen
	buffer_load_u16 v12, v30, s[8:11], 0 offen
	buffer_load_u16 v34, v34, s[8:11], 0 offen
	buffer_load_u16 v33, v38, s[8:11], 0 offen
	buffer_load_u16 v32, v31, s[8:11], 0 offen
	buffer_load_u16 v11, v39, s[8:11], 0 offen
	buffer_load_u16 v30, v40, s[8:11], 0 offen
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v3, 4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v41, 7, v3
	v_xor_b32_e32 v4, 16, v1
	v_xor_b32_e32 v13, 64, v1
	v_xor_b32_e32 v7, 32, v1
	v_xor_b32_e32 v8, 48, v1
	v_xor_b32_e32 v14, 0x70, v1
	v_add_nc_u32_e32 v6, 0, v4
	v_xor_b32_e32 v4, 0x50, v1
	v_add_nc_u32_e32 v19, 0, v13
	v_xor_b32_e32 v13, 0x60, v1
	v_add_nc_u32_e32 v5, 0, v1
	v_add_nc_u32_e32 v7, 0, v7
	v_add_nc_u32_e32 v8, 0, v8
	v_add_nc_u32_e32 v20, 0, v4
	v_add_nc_u32_e32 v21, 0, v13
	v_add_nc_u32_e32 v22, 0, v14
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
	s_and_not1_b32 s6, s6, 31
	.loc	1 597 45                        ; attention_backward.py:597:45
	s_and_b32 s7, s7, 0x7fffffe0
	.loc	1 598 24                        ; attention_backward.py:598:24
	s_min_i32 s77, s77, s6
.LBB0_2:
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[46:49], v5
	ds_load_b128 v[50:53], v6
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_mul_i32 s6, s5, s14
	s_load_b128 s[52:55], s[0:1], 0x50
	s_sub_i32 s6, s17, s6
	s_xor_b32 s8, s15, s16
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s14
	s_cmp_ge_u32 s6, s14
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v39, s12, v41
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s14
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_and_b32_e32 v4, 32, v45
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s5, s9, s5
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_and_b32_e32 v17, 16, v45
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_xor_b32 s5, s5, s8
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[46:49], off offset:36
	scratch_store_b128 off, v[50:53], off offset:52
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[46:49], v7
	ds_load_b128 v[50:53], v8
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_sub_i32 s44, s5, s8
	.loc	1 517 21 is_stmt 1              ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s5, s51, v39
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshrrev_b32_e32 v31, 1, v4
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cmp_lt_i32 s44, 1
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[46:49], off offset:68 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[50:53], off offset:84 ; 16-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[46:49], v19
	ds_load_b128 v[50:53], v20
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[46:49], off offset:100 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[50:53], off offset:116 ; 16-byte Folded Spill
	ds_load_b128 v[46:49], v21
	ds_load_b128 v[50:53], v22
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[46:49], off offset:132 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[50:53], off offset:148 ; 16-byte Folded Spill
	.loc	1 717 21 is_stmt 1              ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b16 v0, v10
	s_waitcnt vmcnt(7)
	ds_store_b16 v0, v37 offset:1024
	ds_store_b16 v61, v9
	s_waitcnt vmcnt(6)
	ds_store_b16 v61, v36 offset:1024
	ds_store_b16 v62, v27
	s_waitcnt vmcnt(5)
	ds_store_b16 v62, v12 offset:1024
	ds_store_b16 v63, v26
	s_waitcnt vmcnt(4)
	ds_store_b16 v63, v34 offset:1024
	ds_store_b16 v137, v25
	s_waitcnt vmcnt(3)
	ds_store_b16 v137, v33 offset:1024
	ds_store_b16 v28, v24
	s_waitcnt vmcnt(2)
	ds_store_b16 v28, v32 offset:1024
	ds_store_b16 v35, v23
	s_waitcnt vmcnt(1)
	ds_store_b16 v35, v11 offset:1024
	ds_store_b16 v29, v18
	s_waitcnt vmcnt(0)
	ds_store_b16 v29, v30 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cbranch_scc1 .LBB0_13
; %bb.3:                                ; %.lr.ph117
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[50:53], v22
	ds_load_b128 v[46:49], v21
	ds_load_b128 v[23:26], v20
	ds_load_b128 v[19:22], v19
	s_clause 0x1
	s_load_b128 s[56:59], s[0:1], 0x80
	s_load_b32 s8, s[0:1], 0x90
	s_xor_b32 s6, s3, s49
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_sub_i32 s10, s12, s47
	s_ashr_i32 s6, s6, 31
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_lshrrev_b32_e32 v18, 4, v45
	s_xor_b32 s9, s13, s6
	v_lshlrev_b32_e32 v16, 1, v45
	s_sub_i32 s6, s9, s6
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_max_i32 s9, s10, 0
	s_mul_i32 s10, s6, s49
	s_and_b32 s9, s9, 0x7fffffe0
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_sub_i32 s3, s3, s10
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_max_u32 s9, s7, s9
	s_and_b32 s10, s76, exec_lo
	s_cselect_b32 s49, s9, s7
	v_cmp_eq_u32_e32 vcc_lo, 0, v4
	s_cmp_lt_i32 s49, s77
	v_lshl_or_b32 v34, v4, 6, v1
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[19:22], off offset:196
	scratch_store_b128 off, v[23:26], off offset:212
	.loc	1 717 21 is_stmt 1              ; attention_backward.py:717:21
	ds_load_b128 v[23:26], v8
	ds_load_b128 v[19:22], v7
	s_cselect_b32 s51, -1, 0
	s_lshl_b32 s7, s59, 2
	s_lshl_b32 s10, s59, 4
	s_mul_i32 s9, s59, 12
	s_mul_i32 s11, s59, 20
	v_cndmask_b32_e64 v8, 0x104, 0, vcc_lo
	s_mul_i32 s12, s59, 24
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_and_b32_e32 v9, 48, v45
	s_mul_i32 s13, s59, 28
	v_and_b32_e32 v13, 2, v45
	v_lshrrev_b32_e32 v15, 4, v4
	v_mul_u32_u24_e32 v1, 0x110, v41
	v_lshlrev_b32_e32 v9, 2, v9
	v_mov_b32_e32 v129, 0
	s_clause 0x1
	s_load_b64 s[60:61], s[0:1], 0x0
	s_load_b256 s[36:43], s[0:1], 0x30
	v_lshl_or_b32 v36, v4, 7, v1
	v_lshl_add_u32 v1, v4, 1, 0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[19:22], off offset:228
	scratch_store_b128 off, v[23:26], off offset:244
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[23:26], v6
	ds_load_b128 v[19:22], v5
	v_mul_lo_u32 v5, s59, v18
	v_mul_lo_u32 v6, s8, v39
	s_lshl_b32 s8, s59, 3
	v_lshl_add_u32 v38, v41, 2, v1
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[46:49], off offset:164
	scratch_store_b128 off, v[50:53], off offset:180
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_mul_f32 s80, s56, 0x3fb8aa3b
	s_mov_b32 s78, 0
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s79, s44, s3
	.loc	1 662 35                        ; attention_backward.py:662:35
	s_mul_i32 s48, s6, s48
	v_add_nc_u32_e32 v7, v6, v5
	v_add3_u32 v10, v5, s7, v6
	v_add3_u32 v11, v5, s10, v6
	v_add3_u32 v14, v5, s12, v6
	.loc	1 683 27                        ; attention_backward.py:683:27
	s_mul_i32 s57, s6, s57
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v7, off offset:292
	scratch_store_b32 off, v10, off offset:296
	scratch_store_b32 off, v11, off offset:308
	scratch_store_b32 off, v34, off offset:360
	v_add3_u32 v10, v5, s8, v6
	v_and_b32_e32 v7, 60, v16
	v_add3_u32 v11, v5, s11, v6
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[19:22], off offset:260
	scratch_store_b128 off, v[23:26], off offset:276
	v_mov_b32_e32 v73, 0
	scratch_store_b32 off, v10, off offset:300 ; 4-byte Folded Spill
	v_add3_u32 v10, v5, s9, v6
	v_xor_b32_e32 v7, v8, v7
	v_and_b32_e32 v8, 14, v45
	v_add3_u32 v5, v5, s13, v6
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v11, off offset:312
	scratch_store_b32 off, v10, off offset:304
	v_and_b32_e32 v10, 1, v45
	v_lshlrev_b32_e32 v11, 2, v45
	v_lshlrev_b32_e32 v12, 1, v8
	v_lshl_or_b32 v8, v8, 7, v9
	v_lshrrev_b32_e32 v6, 1, v17
	v_lshl_or_b32 v22, v10, 6, v7
	v_lshlrev_b32_e32 v7, 5, v45
	v_lshlrev_b32_e32 v10, 5, v10
	v_and_b32_e32 v9, 52, v11
	v_lshlrev_b32_e32 v23, 3, v41
	v_xor_b32_e32 v19, 32, v34
	v_and_b32_e32 v7, 0x180, v7
	v_or3_b32 v24, v8, v10, v12
	scratch_store_b32 off, v14, off offset:320 ; 4-byte Folded Spill
	v_lshrrev_b32_e32 v14, 2, v17
	v_lshlrev_b32_e32 v12, 3, v45
	v_or3_b32 v7, v9, v13, v7
	v_lshrrev_b32_e32 v9, 5, v4
	v_bfe_i32 v8, v45, 3, 1
	v_or3_b32 v26, v14, v15, v23
	v_cndmask_b32_e64 v14, 0x420, 0, vcc_lo
	v_and_b32_e32 v12, 48, v12
	v_or3_b32 v25, v7, v6, v9
	v_cndmask_b32_e64 v9, 0x820, 0, vcc_lo
	scratch_store_b32 off, v5, off offset:324 ; 4-byte Folded Spill
	v_and_b32_e32 v5, 24, v45
	v_dual_mov_b32 v65, 0 :: v_dual_lshlrev_b32 v6, 7, v2
	v_and_or_b32 v9, 0x410, v8, v9
	v_and_or_b32 v8, 0x210, v8, v14
	v_lshl_or_b32 v2, v2, 6, v12
	v_lshl_or_b32 v40, v41, 6, v12
	v_xor_b32_e32 v20, 48, v34
	v_xor_b32_e32 v21, 64, v34
	v_lshrrev_b32_e32 v13, 1, v5
	v_xor_b32_e32 v33, v8, v2
	v_lshlrev_b32_e32 v2, 1, v5
	v_and_b32_e32 v10, 0x70, v16
	v_dual_mov_b32 v89, 0 :: v_dual_lshlrev_b32 v16, 1, v41
	v_or_b32_e32 v7, v3, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v1, v12, v2
	v_xor_b32_e32 v12, 16, v34
	v_or_b32_e32 v13, v6, v3
	v_xor_b32_e32 v3, v3, v10
	v_xor_b32_e32 v2, 0x110, v11
	v_lshl_or_b32 v42, v45, 6, v1
	v_add_nc_u32_e32 v1, 0, v12
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v17, off offset:1016
	scratch_store_b32 off, v24, off offset:332
	v_xor_b32_e32 v12, 0x60, v34
	v_lshl_or_b32 v37, v45, 7, v3
	scratch_store_b32 off, v1, off offset:380 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v19
	v_xor_b32_e32 v19, 0x70, v34
	v_xor_b32_e32 v30, v9, v13
	v_lshlrev_b32_e32 v17, 2, v17
	v_xor_b32_e32 v3, 0x220, v11
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:384
	scratch_store_b32 off, v25, off offset:336
	v_add_nc_u32_e32 v1, 0, v20
	v_xor_b32_e32 v20, 0x208, v22
	v_or3_b32 v32, v16, v17, v4
	v_xor_b32_e32 v4, 0x330, v11
	v_xor_b32_e32 v5, 0x440, v11
	scratch_store_b32 off, v1, off offset:388 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v21
	v_xor_b32_e32 v21, 0x410, v22
	v_or3_b32 v27, v7, v6, v15
	v_xor_b32_e32 v6, 0x550, v11
	v_xor_b32_e32 v7, 0x660, v11
	scratch_store_b32 off, v1, off offset:392 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x50, v34
	v_xor_b32_e32 v8, 0x770, v11
	v_xor_b32_e32 v9, 0x880, v11
	s_and_b32 s61, s61, 0xffff
	s_mov_b32 s63, 0x31027000
	v_add_nc_u32_e32 v1, 0, v1
	s_mov_b32 s62, 0x7ffffffe
	s_and_b32 s37, s37, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s65, s43, 0xffff
	scratch_store_b32 off, v1, off offset:396 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v12
	v_xor_b32_e32 v12, 4, v24
	s_mov_b32 s64, s42
	s_and_b32 s69, s39, 0xffff
	s_mov_b32 s68, s38
	scratch_store_b32 off, v1, off offset:400 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v19
	v_xor_b32_e32 v19, 8, v24
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v41, off offset:1012
	scratch_store_b32 off, v31, off offset:1020
	scratch_store_b32 off, v1, off offset:404
	v_add_nc_u32_e32 v1, 0, v20
	v_xor_b32_e32 v20, 12, v24
	scratch_store_b32 off, v1, off offset:408 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v21
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:412
	scratch_store_b32 off, v22, off offset:316
	v_xor_b32_e32 v1, 0x618, v22
	v_xor_b32_e32 v21, 16, v24
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:416 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v12
	v_xor_b32_e32 v12, 24, v24
	scratch_store_b32 off, v1, off offset:420 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v19
	v_xor_b32_e32 v19, 28, v24
	scratch_store_b32 off, v1, off offset:424 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v20
	v_xor_b32_e32 v20, 0x90, v26
	scratch_store_b32 off, v1, off offset:428 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v21
	v_xor_b32_e32 v21, 0x120, v26
	scratch_store_b32 off, v1, off offset:432 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 20, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:436 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v12
	v_xor_b32_e32 v12, 16, v25
	scratch_store_b32 off, v1, off offset:440 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v19
	v_xor_b32_e32 v19, 32, v25
	scratch_store_b32 off, v1, off offset:444 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v20
	v_xor_b32_e32 v20, 48, v25
	scratch_store_b32 off, v1, off offset:448 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v21
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:452
	scratch_store_b32 off, v26, off offset:340
	v_xor_b32_e32 v1, 0x1b0, v26
	v_xor_b32_e32 v21, 16, v37
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:456 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v12
	v_xor_b32_e32 v12, 48, v37
	scratch_store_b32 off, v1, off offset:460 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v19
	v_xor_b32_e32 v19, 64, v37
	scratch_store_b32 off, v1, off offset:464 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v20
	v_xor_b32_e32 v20, 0x50, v37
	scratch_store_b32 off, v1, off offset:468 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v21
	v_xor_b32_e32 v21, 0x60, v37
	scratch_store_b32 off, v1, off offset:472 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 32, v37
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:476 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v12
	v_xor_b32_e32 v12, 16, v30
	scratch_store_b32 off, v1, off offset:480 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v19
	v_xor_b32_e32 v19, 32, v30
	scratch_store_b32 off, v1, off offset:484 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v20
	v_xor_b32_e32 v20, 48, v30
	scratch_store_b32 off, v1, off offset:488 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v21
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:492
	scratch_store_b32 off, v37, off offset:368
	v_xor_b32_e32 v1, 0x70, v37
	v_xor_b32_e32 v21, 64, v30
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:496 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v12
	v_xor_b32_e32 v12, 0x60, v30
	scratch_store_b32 off, v1, off offset:500 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v19
	v_xor_b32_e32 v19, 0x70, v30
	scratch_store_b32 off, v1, off offset:504 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v20
	v_xor_b32_e32 v20, 0x1040, v30
	scratch_store_b32 off, v1, off offset:508 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v21
	v_xor_b32_e32 v21, 0x1050, v30
	scratch_store_b32 off, v1, off offset:512 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x50, v30
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:516 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v12
	scratch_store_b32 off, v1, off offset:520 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v19
	scratch_store_b32 off, v1, off offset:524 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v20
	scratch_store_b32 off, v1, off offset:528 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v21
	scratch_store_b32 off, v1, off offset:532 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1060, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:536 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1070, v30
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:540 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1010, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:544 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1020, v30
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:548
	scratch_store_b32 off, v30, off offset:348
	v_xor_b32_e32 v1, 0x1030, v30
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:552 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v2
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v2, s35, v45
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:556
	scratch_store_b32 off, v2, off offset:780
	v_add_nc_u32_e32 v1, 0, v3
	v_add_nc_u32_e32 v2, s35, v2
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v3, v31, v41
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:560
	scratch_store_b32 off, v2, off offset:788
	v_add_nc_u32_e32 v1, 0, v4
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v2, s35, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:564
	scratch_store_b32 off, v2, off offset:796
	v_add_nc_u32_e32 v1, 0, v5
	v_add_nc_u32_e32 v2, s35, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:568
	scratch_store_b32 off, v2, off offset:804
	v_add_nc_u32_e32 v1, 0, v6
	v_add_nc_u32_e32 v2, s35, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:572
	scratch_store_b32 off, v2, off offset:812
	v_add_nc_u32_e32 v1, 0, v7
	v_add_nc_u32_e32 v2, s35, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:576
	scratch_store_b32 off, v2, off offset:820
	v_add_nc_u32_e32 v1, 0, v8
	v_add_nc_u32_e32 v2, s35, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:580
	scratch_store_b32 off, v2, off offset:828
	v_add_nc_u32_e32 v1, 0, v9
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v2, s35, v2
	scratch_store_b32 off, v1, off offset:584 ; 4-byte Folded Spill
	v_mov_b32_e32 v80, v9
	v_xor_b32_e32 v10, 0x990, v11
	v_xor_b32_e32 v13, 0xaa0, v11
	v_mov_b32_e32 v95, v9
	v_xor_b32_e32 v14, 0xbb0, v11
	v_mov_b32_e32 v131, v9
	v_add_nc_u32_e32 v1, 0, v10
	scratch_store_b32 off, v2, off offset:836 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s35, v2
	v_xor_b32_e32 v15, 0xcc0, v11
	v_mov_b32_e32 v133, v9
	scratch_store_b32 off, v1, off offset:588 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v13
	scratch_store_b32 off, v2, off offset:844 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s35, v2
	v_xor_b32_e32 v16, 0xdd0, v11
	v_mov_b32_e32 v135, v9
	scratch_store_b32 off, v1, off offset:592 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v14
	scratch_store_b32 off, v2, off offset:852 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s35, v2
	v_xor_b32_e32 v17, 0xee0, v11
	v_xor_b32_e32 v11, 0xff0, v11
	scratch_store_b32 off, v1, off offset:596 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v15
	scratch_store_b32 off, v2, off offset:860 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s35, v2
	v_mov_b32_e32 v72, v9
	v_mov_b32_e32 v74, v9
	scratch_store_b32 off, v1, off offset:600 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v16
	scratch_store_b32 off, v2, off offset:868 ; 4-byte Folded Spill
	v_dual_mov_b32 v75, v9 :: v_dual_add_nc_u32 v2, s35, v2
	v_mov_b32_e32 v76, v9
	scratch_store_b32 off, v1, off offset:604 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v17
	scratch_store_b32 off, v2, off offset:876 ; 4-byte Folded Spill
	v_dual_mov_b32 v77, v9 :: v_dual_add_nc_u32 v2, s35, v2
	v_mov_b32_e32 v78, v9
	scratch_store_b32 off, v1, off offset:608 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v11
	scratch_store_b32 off, v2, off offset:884 ; 4-byte Folded Spill
	v_dual_mov_b32 v79, v9 :: v_dual_add_nc_u32 v2, s35, v2
	v_mov_b32_e32 v66, v9
	scratch_store_b32 off, v1, off offset:612 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 16, v36
	scratch_store_b32 off, v2, off offset:892 ; 4-byte Folded Spill
	v_dual_mov_b32 v67, v9 :: v_dual_add_nc_u32 v2, s35, v2
	v_dual_mov_b32 v68, v9 :: v_dual_add_nc_u32 v1, 0, v1
	v_mov_b32_e32 v69, v9
	scratch_store_b32 off, v2, off offset:900 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s35, v2
	v_mov_b32_e32 v70, v9
	scratch_store_b32 off, v1, off offset:616 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 32, v36
	v_mov_b32_e32 v71, v9
	scratch_store_b32 off, v2, off offset:908 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s35, v2
	v_dual_mov_b32 v90, v9 :: v_dual_add_nc_u32 v1, 0, v1
	v_mov_b32_e32 v91, v9
	v_mov_b32_e32 v92, v9
	scratch_store_b32 off, v2, off offset:916 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s35, v2
	scratch_store_b32 off, v1, off offset:620 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 48, v36
	v_mov_b32_e32 v94, v9
	v_mov_b32_e32 v96, v9
	scratch_store_b32 off, v2, off offset:924 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s35, v2
	v_dual_mov_b32 v130, v9 :: v_dual_add_nc_u32 v1, 0, v1
	v_mov_b32_e32 v132, v9
	v_mov_b32_e32 v134, v9
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:932
	scratch_store_b32 off, v1, off offset:624
	v_xor_b32_e32 v1, 64, v36
	v_add_nc_u32_e32 v2, s35, v2
	v_mov_b32_e32 v136, v9
	v_mov_b32_e32 v93, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v2, off offset:940 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s35, v2
	scratch_store_b32 off, v1, off offset:628 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x50, v36
	scratch_store_b32 off, v2, off offset:948 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s35, v2
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v2, off offset:956 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s35, v2
	scratch_store_b32 off, v1, off offset:632 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x60, v36
	scratch_store_b32 off, v2, off offset:964 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s35, v2
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v2, off offset:972 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s35, v2
	scratch_store_b32 off, v1, off offset:636 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x70, v36
	scratch_store_b32 off, v2, off offset:980 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s35, v2
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:988
	scratch_store_b32 off, v1, off offset:640
	v_xor_b32_e32 v1, 0x80, v36
	v_add_nc_u32_e32 v2, s35, v2
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v2, off offset:996 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s35, v2
	scratch_store_b32 off, v1, off offset:644 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x90, v36
	scratch_store_b32 off, v2, off offset:1008 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:648 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xa0, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:652 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xb0, v36
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:656 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xc0, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:660 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xd0, v36
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:664 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xe0, v36
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:668
	scratch_store_b32 off, v36, off offset:364
	v_xor_b32_e32 v1, 0xf0, v36
	v_add_nc_u32_e32 v36, s35, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:672 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x90, v32
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:676 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x120, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:680
	scratch_store_b32 off, v32, off offset:352
	v_xor_b32_e32 v1, 0x1b0, v32
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:684 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 16, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:688 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 32, v40
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:692
	scratch_store_b32 off, v40, off offset:372
	v_xor_b32_e32 v1, 48, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:696 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 16, v42
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:700 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 32, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:704
	scratch_store_b32 off, v42, off offset:376
	v_xor_b32_e32 v1, 48, v42
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:708 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:712 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 32, v33
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:716
	scratch_store_b32 off, v33, off offset:356
	v_xor_b32_e32 v1, 48, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:720 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 16, v27
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:724 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 32, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:728 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 48, v27
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:732 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 64, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:736 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x50, v27
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:740 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x60, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:744
	scratch_store_b32 off, v27, off offset:344
	v_xor_b32_e32 v1, 0x70, v27
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:748 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x90, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:752 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x120, v23
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:756 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1b0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:760 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x240, v23
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:764 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x2d0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:768 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x360, v23
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:772
	scratch_store_b32 off, v23, off offset:328
	v_xor_b32_e32 v1, 0x3f0, v23
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v40, 0, v1
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v1, s73, v45
	scratch_store_b32 off, v1, off offset:776 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s73, v1
	scratch_store_b32 off, v1, off offset:784 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s73, v1
	scratch_store_b32 off, v1, off offset:792 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s73, v1
	scratch_store_b32 off, v1, off offset:800 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s73, v1
	scratch_store_b32 off, v1, off offset:808 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s73, v1
	scratch_store_b32 off, v1, off offset:816 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s73, v1
	scratch_store_b32 off, v1, off offset:824 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s73, v1
	scratch_store_b32 off, v1, off offset:832 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s73, v1
	scratch_store_b32 off, v1, off offset:840 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s73, v1
	scratch_store_b32 off, v1, off offset:848 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s73, v1
	scratch_store_b32 off, v1, off offset:856 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s73, v1
	scratch_store_b32 off, v1, off offset:864 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s73, v1
	scratch_store_b32 off, v1, off offset:872 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s73, v1
	scratch_store_b32 off, v1, off offset:880 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s73, v1
	scratch_store_b32 off, v1, off offset:888 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s73, v1
	scratch_store_b32 off, v1, off offset:896 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s73, v1
	scratch_store_b32 off, v1, off offset:904 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s73, v1
	scratch_store_b32 off, v1, off offset:912 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s73, v1
	scratch_store_b32 off, v1, off offset:920 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s73, v1
	scratch_store_b32 off, v1, off offset:928 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s73, v1
	scratch_store_b32 off, v1, off offset:936 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s73, v1
	scratch_store_b32 off, v1, off offset:944 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s73, v1
	scratch_store_b32 off, v1, off offset:952 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s73, v1
	scratch_store_b32 off, v1, off offset:960 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s73, v1
	scratch_store_b32 off, v1, off offset:968 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s73, v1
	scratch_store_b32 off, v1, off offset:976 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s73, v1
	scratch_store_b32 off, v1, off offset:984 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s73, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:1000
	scratch_store_b32 off, v1, off offset:992
	v_add_nc_u32_e32 v1, s73, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v53, s73, v1
	scratch_store_b32 off, v1, off offset:1004 ; 4-byte Folded Spill
	s_branch .LBB0_5
.LBB0_4:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_add_i32 s78, s78, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s78, s44
	s_cbranch_scc0 .LBB0_12
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s51
	s_cbranch_vccnz .LBB0_4
; %bb.6:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_add_i32 s0, s78, s79
	s_mov_b32 s83, s49
	.loc	1 662 35                        ; attention_backward.py:662:35
	s_add_i32 s81, s0, s48
	.loc	1 684 27                        ; attention_backward.py:684:27
	s_mul_i32 s82, s0, s58
	.loc	1 662 34                        ; attention_backward.py:662:34
	s_mul_i32 s81, s81, s50
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_add_i32 s82, s82, s57
	s_branch .LBB0_8
.LBB0_7:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v1, off, off offset:292
	scratch_load_b32 v10, off, off offset:296
	scratch_load_b32 v12, off, off offset:300
	scratch_load_b32 v2, off, off offset:308
	scratch_load_b32 v11, off, off offset:312
	scratch_load_b32 v13, off, off offset:320
	scratch_load_b32 v14, off, off offset:324
	scratch_load_b32 v15, off, off offset:304
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_mul_i32 s0, s83, s59
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_mov_b32 s38, s62
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_add_i32 s0, s82, s0
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_mov_b32 s39, s63
	v_dual_mov_b32 v37, v45 :: v_dual_add_nc_u32 v194, 0x1c00, v38
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v55, 0xc00, v38
	v_add_nc_u32_e32 v126, 0x1000, v38
	v_add_nc_u32_e32 v127, 0x1400, v38
	v_add_nc_u32_e32 v128, 0x1800, v38
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e64 v193.h, v26.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_mov_b16_e32 v26.l, 0
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v116.h, v56.l
	v_mov_b16_e64 v171.h, v34.l
	v_mov_b16_e64 v170.h, v41.l
	v_mov_b16_e64 v172.h, v8.l
	.loc	1 728 51 is_stmt 1              ; attention_backward.py:728:51
	v_mov_b16_e32 v56.l, v26.l
	v_mov_b16_e32 v34.l, v26.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e64 v173.h, v7.l
	v_mov_b16_e64 v190.h, v44.l
	v_mov_b16_e64 v191.h, v43.l
	v_mov_b16_e64 v192.h, v42.l
	.loc	1 697 25 is_stmt 1              ; attention_backward.py:697:25
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v1, s0, v1, 2
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v10, s0, v10, 2
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v12, s0, v12, 2
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v2, s0, v2, 2
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v11, s0, v11, 2
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v13, s0, v13, 2
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v14, s0, v14, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v15, s0, v15, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s101
	v_cndmask_b32_e64 v10, 0x80000000, v10, s99
	v_cndmask_b32_e64 v12, 0x80000000, v12, s97
	v_cndmask_b32_e64 v2, 0x80000000, v2, s102
	v_cndmask_b32_e64 v11, 0x80000000, v11, s100
	v_cndmask_b32_e64 v13, 0x80000000, v13, s98
	v_cndmask_b32_e64 v14, 0x80000000, v14, s96
	v_cndmask_b32_e64 v15, 0x80000000, v15, s70
	s_clause 0x7
	buffer_load_b32 v1, v1, s[36:39], 0 offen
	buffer_load_b32 v2, v2, s[36:39], 0 offen
	buffer_load_b32 v10, v10, s[36:39], 0 offen
	buffer_load_b32 v11, v11, s[36:39], 0 offen
	buffer_load_b32 v12, v12, s[36:39], 0 offen
	buffer_load_b32 v13, v13, s[36:39], 0 offen
	buffer_load_b32 v14, v14, s[36:39], 0 offen
	buffer_load_b32 v15, v15, s[36:39], 0 offen
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v16, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_waitcnt vmcnt(8)
	v_cndmask_b32_e64 v1, 0xff800000, v1, s101
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v2, 0xff800000, v2, s102
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s0, 0xff800000, v1
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v16, 0, v16
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v2
	.loc	1 697 25 is_stmt 0              ; attention_backward.py:697:25
	s_and_b32 s0, s101, s0
	.loc	1 696 35 is_stmt 1              ; attention_backward.py:696:35
	ds_store_2addr_b32 v16, v1, v2 offset1:32
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_cndmask_b32_e64 v1, 0xff800000, v10, s99
	.loc	1 696 35                        ; attention_backward.py:696:35
	scratch_load_b32 v10, off, off offset:408 ; 4-byte Folded Reload
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_cndmask_b32_e64 v2, 0xff800000, v11, s100
	v_cndmask_b32_e64 v11, 0xff800000, v13, s98
	.loc	1 696 35                        ; attention_backward.py:696:35
	scratch_load_b32 v13, off, off offset:412 ; 4-byte Folded Reload
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_and_b32 s6, s102, vcc_lo
	.loc	1 697 34 is_stmt 0              ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v1
	v_cmp_neq_f32_e64 s3, 0xff800000, v2
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v11
	.loc	1 696 35 is_stmt 1              ; attention_backward.py:696:35
	s_waitcnt vmcnt(1)
	ds_store_2addr_b32 v10, v1, v2 offset1:32
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v1, 0, 1, s6
	v_cndmask_b32_e64 v2, 0, 1, s0
	s_and_b32 s0, s100, s3
	s_and_b32 s6, s98, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s95
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_lshlrev_b16 v1.l, 8, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_or_b16 v1.l, v2.l, v1.l
	v_cndmask_b32_e64 v2, 0, 1, s0
	s_and_b32 s0, s99, s1
	v_cndmask_b32_e64 v10, 0, 1, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v1.h, 8, v2.l
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_cndmask_b32_e64 v2, 0xff800000, v12, s97
	v_cndmask_b32_e64 v12, 0xff800000, v14, s96
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_or_b16 v1.h, v10.l, v1.h
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v13, v2, v11 offset1:32
	scratch_load_b32 v13, off, off offset:416 ; 4-byte Folded Reload
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_cndmask_b32_e64 v10, 0xff800000, v15, s70
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s0, 0xff800000, v2
	.loc	1 697 25 is_stmt 0              ; attention_backward.py:697:25
	v_cndmask_b32_e64 v2, 0, 1, s6
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_neq_f32_e64 s1, 0xff800000, v10
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_and_b32 s0, s97, s0
	.loc	1 696 35 is_stmt 1              ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v13, v10, v12 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v13, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, 0, v13
	ds_load_b32 v60, v13
	scratch_load_b32 v13, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v64, v13
	scratch_load_b32 v13, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v19, v13
	scratch_load_b32 v13, off, off offset:428 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v20, v13
	scratch_load_b32 v13, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v21, v13
	scratch_load_b32 v13, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v22, v13
	scratch_load_b32 v13, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v23, v13
	scratch_load_b32 v13, off, off offset:444 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v24, v13
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v13, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, 0, v13
	ds_store_b16 v13, v1
	v_mov_b16_e32 v1.l, v2.l
	v_cndmask_b32_e64 v2, 0, 1, s0
	s_and_b32 s0, s96, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v1.l, 8, v1.l
	v_or_b16 v1.l, v2.l, v1.l
	v_cndmask_b32_e64 v2, 0, 1, s0
	s_and_b32 s0, s70, s1
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s70, s62
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v10, 0, 1, s0
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s0, s28, s35
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_lshlrev_b16 v2.l, 8, v2.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v2.l, v10.l, v2.l
	scratch_load_b32 v10, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v10, v1
	scratch_load_b32 v10, off, off offset:452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v10, v1
	scratch_load_b32 v1, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v1, v2
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v2, off, off offset:780 ; 4-byte Folded Reload
	v_add_lshl_u32 v1, s0, v45, 2
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s71
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s71, s63
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s0, v2, 2
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b32 v10, v1, s[68:71], 0 offen
	buffer_load_b32 v11, v2, s[68:71], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:788
	scratch_load_b32 v2, off, off offset:812
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s94
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s0, v1, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s0, v2, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s93
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v12, v1, s[68:71], 0 offen
	scratch_load_b32 v1, off, off offset:796 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s92
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v13, v1, s[68:71], 0 offen
	scratch_load_b32 v1, off, off offset:804 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s91
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b32 v14, v1, s[68:71], 0 offen
	buffer_load_b32 v15, v2, s[68:71], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:820
	scratch_load_b32 v2, off, off offset:844
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s90
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s0, v1, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s0, v2, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s89
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v16, v1, s[68:71], 0 offen
	scratch_load_b32 v1, off, off offset:828 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s88
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v17, v1, s[68:71], 0 offen
	scratch_load_b32 v1, off, off offset:836 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s87
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b32 v45, v1, s[68:71], 0 offen
	buffer_load_b32 v46, v2, s[68:71], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:852
	scratch_load_b32 v2, off, off offset:876
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s86
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s0, v1, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s0, v2, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s85
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v47, v1, s[68:71], 0 offen
	scratch_load_b32 v1, off, off offset:860 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s84
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v48, v1, s[68:71], 0 offen
	scratch_load_b32 v1, off, off offset:868 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s67
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s67, s63
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b32 v49, v1, s[68:71], 0 offen
	buffer_load_b32 v50, v2, s[68:71], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:884
	scratch_load_b32 v2, off, off offset:908
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s66
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s66, s62
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s0, v1, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s0, v2, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s43
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s43, s63
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v51, v1, s[68:71], 0 offen
	scratch_load_b32 v1, off, off offset:892 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s42
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s42, s62
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v52, v1, s[68:71], 0 offen
	scratch_load_b32 v1, off, off offset:900 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b32 v81, v1, s[68:71], 0 offen
	buffer_load_b32 v82, v2, s[68:71], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:916
	scratch_load_b32 v2, off, off offset:940
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s33
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s0, v1, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s0, v2, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s31
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v83, v1, s[68:71], 0 offen
	scratch_load_b32 v1, off, off offset:924 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v84, v1, s[68:71], 0 offen
	scratch_load_b32 v1, off, off offset:932 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s29
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b32 v85, v1, s[68:71], 0 offen
	buffer_load_b32 v86, v2, s[68:71], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:948
	scratch_load_b32 v2, off, off offset:972
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s27
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s0, v1, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s0, v2, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s26
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v87, v1, s[68:71], 0 offen
	scratch_load_b32 v1, off, off offset:956 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s25
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v88, v1, s[68:71], 0 offen
	scratch_load_b32 v1, off, off offset:964 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s24
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b32 v97, v1, s[68:71], 0 offen
	buffer_load_b32 v98, v2, s[68:71], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:980
	scratch_load_b32 v2, off, off offset:1008
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s23
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s0, v1, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s0, v2, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s22
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v99, v1, s[68:71], 0 offen
	scratch_load_b32 v1, off, off offset:988 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s21
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v100, v1, s[68:71], 0 offen
	scratch_load_b32 v1, off, off offset:996 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s0, v1, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s20
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b32 v101, v1, s[68:71], 0 offen
	buffer_load_b32 v102, v2, s[68:71], 0 offen
	scratch_load_b32 v2, off, off offset:1000 ; 4-byte Folded Reload
	v_add_lshl_u32 v1, s0, v36, 2
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s18
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v103, v1, s[68:71], 0 offen
	v_add_nc_u32_e32 v1, s35, v36
	v_add_lshl_u32 v1, s0, v1, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_b32 v104, v1, s[68:71], 0 offen
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v1, s83, v2
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_add_lshl_u32 v2, s28, v2, 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s83, s83, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_cmp_lt_i32 s83, s77
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s50, v1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	buffer_load_b32 v25, v1, s[40:43], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v27, v1, s[64:67], 0 offen
	.loc	1 697 25                        ; attention_backward.py:697:25
	scratch_load_b32 v1, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v2, 0x800, v38
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, 0, v1
	ds_load_u8_d16_hi v115, v1
	ds_load_u8_d16_hi v114, v1 offset:64
	scratch_load_b32 v1, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8_d16_hi v113, v1
	ds_load_u8_d16_hi v119, v1 offset:64
	scratch_load_b32 v1, off, off offset:464 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(3)
	v_and_b16 v3.h, 1, v115.h
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v115.h, v57.l
	.loc	1 728 51 is_stmt 1              ; attention_backward.py:728:51
	v_mov_b16_e32 v57.l, v26.l
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_waitcnt vmcnt(0)
	ds_load_u8_d16 v121, v1
	ds_load_u8_d16_hi v118, v1 offset:64
	scratch_load_b32 v1, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8_d16_hi v120, v1
	ds_load_u8_d16_hi v117, v1 offset:64
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, 0, v1
	ds_store_b128 v1, v[10:13]
	scratch_load_b32 v1, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v1, v[14:17]
	scratch_load_b32 v1, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v1, v[45:48]
	scratch_load_b32 v1, off, off offset:480 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v1, v[49:52]
	scratch_load_b32 v1, off, off offset:484 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v1, v[81:84]
	scratch_load_b32 v1, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v1, v[85:88]
	scratch_load_b32 v1, off, off offset:492 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v1, v[97:100]
	scratch_load_b32 v1, off, off offset:496 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v1, v[101:104]
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, 0, v1
	ds_load_b128 v[174:177], v1
	ds_load_b128 v[30:33], v1 offset:4096
	scratch_load_b32 v1, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[30:33], off   ; 16-byte Folded Spill
	s_waitcnt vmcnt(0)
	ds_load_b128 v[186:189], v1
	scratch_load_b32 v1, off, off offset:504 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[182:185], v1
	scratch_load_b32 v1, off, off offset:508 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[178:181], v1
	scratch_load_b32 v1, off, off offset:512 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[150:153], v1
	scratch_load_b32 v1, off, off offset:516 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[146:149], v1
	scratch_load_b32 v1, off, off offset:520 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[142:145], v1
	scratch_load_b32 v1, off, off offset:524 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[138:141], v1
	scratch_load_b32 v1, off, off offset:528 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[166:169], v1
	scratch_load_b32 v1, off, off offset:532 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[162:165], v1
	scratch_load_b32 v1, off, off offset:536 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[158:161], v1
	scratch_load_b32 v1, off, off offset:540 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[154:157], v1
	scratch_load_b32 v1, off, off offset:544 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[30:33], v1
	scratch_load_b32 v1, off, off offset:548 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[30:33], off offset:16 ; 16-byte Folded Spill
	s_waitcnt vmcnt(0)
	ds_load_b128 v[122:125], v1
	scratch_load_b32 v1, off, off offset:552 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[30:33], v1
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v54, v0, v1
	v_add_nc_u32_e32 v1, 0x400, v38
	ds_store_2addr_stride64_b32 v54, v10, v11 offset1:1
	ds_store_2addr_stride64_b32 v54, v12, v13 offset0:2 offset1:3
	ds_store_2addr_stride64_b32 v54, v14, v15 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v54, v16, v17 offset0:6 offset1:7
	ds_store_2addr_stride64_b32 v54, v45, v46 offset0:8 offset1:9
	ds_store_2addr_stride64_b32 v54, v47, v48 offset0:10 offset1:11
	ds_store_2addr_stride64_b32 v54, v49, v50 offset0:12 offset1:13
	ds_store_2addr_stride64_b32 v54, v51, v52 offset0:14 offset1:15
	ds_store_2addr_stride64_b32 v54, v81, v82 offset0:16 offset1:17
	ds_store_2addr_stride64_b32 v54, v83, v84 offset0:18 offset1:19
	ds_store_2addr_stride64_b32 v54, v85, v86 offset0:20 offset1:21
	ds_store_2addr_stride64_b32 v54, v87, v88 offset0:22 offset1:23
	ds_store_2addr_stride64_b32 v54, v97, v98 offset0:24 offset1:25
	ds_store_2addr_stride64_b32 v54, v99, v100 offset0:26 offset1:27
	ds_store_2addr_stride64_b32 v54, v101, v102 offset0:28 offset1:29
	ds_store_2addr_stride64_b32 v54, v103, v104 offset0:30 offset1:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[248:249], v1 offset1:32
	ds_load_2addr_b32 v[246:247], v1 offset0:64 offset1:96
	ds_load_2addr_b32 v[244:245], v1 offset0:128 offset1:160
	ds_load_2addr_b32 v[242:243], v1 offset0:192 offset1:224
	ds_load_2addr_b32 v[240:241], v2 offset1:32
	ds_load_2addr_b32 v[238:239], v2 offset0:64 offset1:96
	ds_load_2addr_b32 v[236:237], v2 offset0:128 offset1:160
	ds_load_2addr_b32 v[234:235], v2 offset0:192 offset1:224
	ds_load_2addr_b32 v[232:233], v55 offset1:32
	ds_load_2addr_b32 v[230:231], v55 offset0:64 offset1:96
	ds_load_2addr_b32 v[228:229], v55 offset0:128 offset1:160
	ds_load_2addr_b32 v[226:227], v55 offset0:192 offset1:224
	ds_load_2addr_b32 v[224:225], v126 offset1:32
	ds_load_2addr_b32 v[222:223], v126 offset0:64 offset1:96
	ds_load_2addr_b32 v[220:221], v126 offset0:128 offset1:160
	ds_load_2addr_b32 v[218:219], v126 offset0:192 offset1:224
	ds_load_2addr_b32 v[216:217], v127 offset1:32
	ds_load_2addr_b32 v[214:215], v127 offset0:64 offset1:96
	ds_load_2addr_b32 v[212:213], v127 offset0:128 offset1:160
	ds_load_2addr_b32 v[210:211], v127 offset0:192 offset1:224
	ds_load_2addr_b32 v[208:209], v128 offset1:32
	ds_load_2addr_b32 v[206:207], v128 offset0:64 offset1:96
	ds_load_2addr_b32 v[204:205], v128 offset0:128 offset1:160
	ds_load_2addr_b32 v[202:203], v128 offset0:192 offset1:224
	ds_load_2addr_b32 v[200:201], v194 offset1:32
	ds_load_2addr_b32 v[198:199], v194 offset0:64 offset1:96
	ds_load_2addr_b32 v[196:197], v194 offset0:128 offset1:160
	ds_load_2addr_b32 v[194:195], v194 offset0:192 offset1:224
	ds_load_2addr_b32 v[1:2], v38 offset1:32
	ds_load_2addr_b32 v[254:255], v38 offset0:64 offset1:96
	ds_load_2addr_b32 v[252:253], v38 offset0:128 offset1:160
	ds_load_2addr_b32 v[250:251], v38 offset0:192 offset1:224
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b32 v54, v10, v81 offset1:16
	scratch_load_b32 v10, off, off offset:556 ; 4-byte Folded Reload
	v_cmp_o_f32_e64 s18, v224, v224
	v_cmp_o_f32_e64 s19, v222, v222
	v_cmp_o_f32_e64 s20, v220, v220
	v_cmp_o_f32_e64 s21, v218, v218
	v_cmp_o_f32_e64 s22, v216, v216
	v_cmp_o_f32_e64 s27, v206, v206
	v_cmp_o_f32_e64 s23, v214, v214
	v_cmp_o_f32_e64 s29, v202, v202
	v_cmp_o_f32_e64 s30, v200, v200
	v_cmp_o_f32_e64 s31, v198, v198
	v_cmp_o_f32_e64 s24, v212, v212
	v_cmp_o_f32_e64 s25, v210, v210
	v_cmp_o_f32_e64 s26, v208, v208
	v_cmp_o_f32_e64 s28, v204, v204
	v_cmp_o_f32_e64 s33, v196, v196
	v_cmp_o_f32_e64 s34, v194, v194
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v11, v82 offset1:16
	scratch_load_b32 v10, off, off offset:560 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v12, v83 offset1:16
	scratch_load_b32 v10, off, off offset:564 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v13, v84 offset1:16
	scratch_load_b32 v10, off, off offset:568 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v14, v85 offset1:16
	scratch_load_b32 v10, off, off offset:572 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v15, v86 offset1:16
	scratch_load_b32 v10, off, off offset:576 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v16, v87 offset1:16
	scratch_load_b32 v10, off, off offset:580 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v17, v88 offset1:16
	scratch_load_b32 v10, off, off offset:584 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v45, v97 offset1:16
	scratch_load_b32 v10, off, off offset:588 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v46, v98 offset1:16
	scratch_load_b32 v10, off, off offset:592 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v47, v99 offset1:16
	scratch_load_b32 v10, off, off offset:596 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v48, v100 offset1:16
	scratch_load_b32 v10, off, off offset:600 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v49, v101 offset1:16
	scratch_load_b32 v10, off, off offset:604 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v50, v102 offset1:16
	scratch_load_b32 v10, off, off offset:608 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v51, v103 offset1:16
	scratch_load_b32 v10, off, off offset:612 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v52, v104 offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v10, off, off offset:364
	scratch_load_b32 v14, off, off offset:616
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v10, 0, v10
	s_waitcnt vmcnt(0)
	ds_load_b128 v[14:17], v14
	ds_load_b128 v[10:13], v10
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s6, v14, v14
	v_cmp_o_f32_e64 s7, v15, v15
	v_cmp_o_f32_e64 s8, v16, v16
	v_cmp_o_f32_e64 s9, v17, v17
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v45, v10, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_cmp_o_f32_e64 s0, v11, v11
	v_cmp_o_f32_e64 s1, v12, v12
	v_cmp_o_f32_e64 s3, v13, v13
	v_add3_u32 v45, v10, v45, 0x7fff
	v_bfe_u32 v10, v11, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v45.l, 0x7fff, v45.h, vcc_lo
	v_add3_u32 v46, v11, v10, 0x7fff
	v_bfe_u32 v10, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v45.h, 0x7fff, v46.h, s0
	v_add3_u32 v47, v12, v10, 0x7fff
	v_bfe_u32 v10, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v46.l, 0x7fff, v47.h, s1
	v_add3_u32 v48, v13, v10, 0x7fff
	v_bfe_u32 v10, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v46.h, 0x7fff, v48.h, s3
	v_add3_u32 v49, v14, v10, 0x7fff
	v_bfe_u32 v10, v15, 16, 1
	scratch_load_b32 v14, off, off offset:624 ; 4-byte Folded Reload
	v_cndmask_b16 v47.l, 0x7fff, v49.h, s6
	v_add3_u32 v50, v15, v10, 0x7fff
	v_bfe_u32 v10, v16, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v47.h, 0x7fff, v50.h, s7
	v_add3_u32 v51, v16, v10, 0x7fff
	v_bfe_u32 v10, v17, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v48.l, 0x7fff, v51.h, s8
	v_add3_u32 v52, v17, v10, 0x7fff
	scratch_load_b32 v10, off, off offset:620 ; 4-byte Folded Reload
	v_cndmask_b16 v48.h, 0x7fff, v52.h, s9
	s_waitcnt vmcnt(1)
	ds_load_b128 v[14:17], v14
	s_waitcnt vmcnt(0)
	ds_load_b128 v[10:13], v10
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s14, v14, v14
	v_cmp_o_f32_e64 s15, v15, v15
	v_cmp_o_f32_e64 s16, v16, v16
	v_cmp_o_f32_e64 s17, v17, v17
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v54, v10, 16, 1
	v_cmp_o_f32_e64 s10, v10, v10
	v_cmp_o_f32_e64 s11, v11, v11
	v_cmp_o_f32_e64 s12, v12, v12
	v_cmp_o_f32_e64 s13, v13, v13
	v_add3_u32 v10, v10, v54, 0x7fff
	v_bfe_u32 v54, v11, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v49.l, 0x7fff, v10.h, s10
	v_add3_u32 v11, v11, v54, 0x7fff
	v_bfe_u32 v54, v12, 16, 1
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v49.h, 0x7fff, v11.h, s11
	v_add3_u32 v12, v12, v54, 0x7fff
	v_bfe_u32 v54, v13, 16, 1
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v11, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v50.l, 0x7fff, v12.h, s12
	v_add3_u32 v13, v13, v54, 0x7fff
	v_bfe_u32 v54, v14, 16, 1
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v12, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v50.h, 0x7fff, v13.h, s13
	v_add3_u32 v14, v14, v54, 0x7fff
	v_bfe_u32 v54, v15, 16, 1
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v13, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v51.l, 0x7fff, v14.h, s14
	v_add3_u32 v15, v15, v54, 0x7fff
	v_bfe_u32 v54, v16, 16, 1
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v14, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v51.h, 0x7fff, v15.h, s15
	v_add3_u32 v16, v16, v54, 0x7fff
	v_bfe_u32 v54, v17, 16, 1
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v15, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v52.l, 0x7fff, v16.h, s16
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v16, v9
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v17, v17, v54, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v104, v16
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v52.h, 0x7fff, v17.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v103, v15 :: v_dual_mov_b32 v102, v14
	v_dual_mov_b32 v101, v13 :: v_dual_mov_b32 v100, v12
	v_dual_mov_b32 v99, v11 :: v_dual_mov_b32 v98, v10
	v_mov_b32_e32 v97, v9
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[10:13], off, off offset:260
	scratch_load_b128 v[14:17], off, off offset:276
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[10:17], v[45:52], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v10, off, off offset:628
	scratch_load_b32 v14, off, off offset:632
	s_waitcnt vmcnt(1)
	ds_load_b128 v[10:13], v10
	s_waitcnt vmcnt(0)
	ds_load_b128 v[14:17], v14
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v45, v10, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v14, v14
	v_cmp_o_f32_e64 s0, v11, v11
	v_cmp_o_f32_e64 s1, v12, v12
	v_add3_u32 v45, v10, v45, 0x7fff
	v_bfe_u32 v10, v11, 16, 1
	v_cmp_o_f32_e64 s3, v13, v13
	v_cmp_o_f32_e64 s7, v15, v15
	v_cmp_o_f32_e64 s8, v16, v16
	v_cmp_o_f32_e64 s9, v17, v17
	v_add3_u32 v46, v11, v10, 0x7fff
	v_bfe_u32 v10, v12, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v45.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v45.h, 0x7fff, v46.h, s0
	v_add3_u32 v47, v12, v10, 0x7fff
	v_bfe_u32 v10, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v46.l, 0x7fff, v47.h, s1
	v_add3_u32 v48, v13, v10, 0x7fff
	v_bfe_u32 v10, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v46.h, 0x7fff, v48.h, s3
	v_add3_u32 v49, v14, v10, 0x7fff
	v_bfe_u32 v10, v15, 16, 1
	scratch_load_b32 v14, off, off offset:640 ; 4-byte Folded Reload
	v_cndmask_b16 v47.l, 0x7fff, v49.h, s6
	v_add3_u32 v50, v15, v10, 0x7fff
	v_bfe_u32 v10, v16, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v47.h, 0x7fff, v50.h, s7
	v_add3_u32 v51, v16, v10, 0x7fff
	v_bfe_u32 v10, v17, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v48.l, 0x7fff, v51.h, s8
	v_add3_u32 v52, v17, v10, 0x7fff
	scratch_load_b32 v10, off, off offset:636 ; 4-byte Folded Reload
	v_cndmask_b16 v48.h, 0x7fff, v52.h, s9
	s_waitcnt vmcnt(1)
	ds_load_b128 v[14:17], v14
	s_waitcnt vmcnt(0)
	ds_load_b128 v[10:13], v10
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s14, v14, v14
	v_cmp_o_f32_e64 s15, v15, v15
	v_cmp_o_f32_e64 s16, v16, v16
	v_cmp_o_f32_e64 s17, v17, v17
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v54, v10, 16, 1
	v_cmp_o_f32_e64 s10, v10, v10
	v_cmp_o_f32_e64 s11, v11, v11
	v_cmp_o_f32_e64 s12, v12, v12
	v_cmp_o_f32_e64 s13, v13, v13
	v_add3_u32 v10, v10, v54, 0x7fff
	v_bfe_u32 v54, v11, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v49.l, 0x7fff, v10.h, s10
	v_add3_u32 v11, v11, v54, 0x7fff
	v_bfe_u32 v54, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v49.h, 0x7fff, v11.h, s11
	v_add3_u32 v12, v12, v54, 0x7fff
	v_bfe_u32 v54, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v50.l, 0x7fff, v12.h, s12
	v_add3_u32 v13, v13, v54, 0x7fff
	v_bfe_u32 v54, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v50.h, 0x7fff, v13.h, s13
	v_add3_u32 v14, v14, v54, 0x7fff
	v_bfe_u32 v54, v15, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v51.l, 0x7fff, v14.h, s14
	v_add3_u32 v15, v15, v54, 0x7fff
	v_bfe_u32 v54, v16, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v51.h, 0x7fff, v15.h, s15
	v_add3_u32 v16, v16, v54, 0x7fff
	v_bfe_u32 v54, v17, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v52.l, 0x7fff, v16.h, s16
	v_add3_u32 v17, v17, v54, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v52.h, 0x7fff, v17.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[10:13], off, off offset:228
	scratch_load_b128 v[14:17], off, off offset:244
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[10:17], v[45:52], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v10, off, off offset:644
	scratch_load_b32 v14, off, off offset:648
	s_waitcnt vmcnt(1)
	ds_load_b128 v[10:13], v10
	s_waitcnt vmcnt(0)
	ds_load_b128 v[14:17], v14
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v45, v10, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v14, v14
	v_cmp_o_f32_e64 s0, v11, v11
	v_cmp_o_f32_e64 s1, v12, v12
	v_add3_u32 v45, v10, v45, 0x7fff
	v_bfe_u32 v10, v11, 16, 1
	v_cmp_o_f32_e64 s3, v13, v13
	v_cmp_o_f32_e64 s7, v15, v15
	v_cmp_o_f32_e64 s8, v16, v16
	v_cmp_o_f32_e64 s9, v17, v17
	v_add3_u32 v46, v11, v10, 0x7fff
	v_bfe_u32 v10, v12, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v45.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v45.h, 0x7fff, v46.h, s0
	v_add3_u32 v47, v12, v10, 0x7fff
	v_bfe_u32 v10, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v46.l, 0x7fff, v47.h, s1
	v_add3_u32 v48, v13, v10, 0x7fff
	v_bfe_u32 v10, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v46.h, 0x7fff, v48.h, s3
	v_add3_u32 v49, v14, v10, 0x7fff
	v_bfe_u32 v10, v15, 16, 1
	scratch_load_b32 v14, off, off offset:656 ; 4-byte Folded Reload
	v_cndmask_b16 v47.l, 0x7fff, v49.h, s6
	v_add3_u32 v50, v15, v10, 0x7fff
	v_bfe_u32 v10, v16, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v47.h, 0x7fff, v50.h, s7
	v_add3_u32 v51, v16, v10, 0x7fff
	v_bfe_u32 v10, v17, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v48.l, 0x7fff, v51.h, s8
	v_add3_u32 v52, v17, v10, 0x7fff
	scratch_load_b32 v10, off, off offset:652 ; 4-byte Folded Reload
	v_cndmask_b16 v48.h, 0x7fff, v52.h, s9
	s_waitcnt vmcnt(1)
	ds_load_b128 v[14:17], v14
	s_waitcnt vmcnt(0)
	ds_load_b128 v[10:13], v10
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s14, v14, v14
	v_cmp_o_f32_e64 s15, v15, v15
	v_cmp_o_f32_e64 s16, v16, v16
	v_cmp_o_f32_e64 s17, v17, v17
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v54, v10, 16, 1
	v_cmp_o_f32_e64 s10, v10, v10
	v_cmp_o_f32_e64 s11, v11, v11
	v_cmp_o_f32_e64 s12, v12, v12
	v_cmp_o_f32_e64 s13, v13, v13
	v_add3_u32 v10, v10, v54, 0x7fff
	v_bfe_u32 v54, v11, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v49.l, 0x7fff, v10.h, s10
	v_add3_u32 v11, v11, v54, 0x7fff
	v_bfe_u32 v54, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v49.h, 0x7fff, v11.h, s11
	v_add3_u32 v12, v12, v54, 0x7fff
	v_bfe_u32 v54, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v50.l, 0x7fff, v12.h, s12
	v_add3_u32 v13, v13, v54, 0x7fff
	v_bfe_u32 v54, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v50.h, 0x7fff, v13.h, s13
	v_add3_u32 v14, v14, v54, 0x7fff
	v_bfe_u32 v54, v15, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v51.l, 0x7fff, v14.h, s14
	v_add3_u32 v15, v15, v54, 0x7fff
	v_bfe_u32 v54, v16, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v51.h, 0x7fff, v15.h, s15
	v_add3_u32 v16, v16, v54, 0x7fff
	v_bfe_u32 v54, v17, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v52.l, 0x7fff, v16.h, s16
	v_add3_u32 v17, v17, v54, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v52.h, 0x7fff, v17.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[10:13], off, off offset:196
	scratch_load_b128 v[14:17], off, off offset:212
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[10:17], v[45:52], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v10, off, off offset:660
	scratch_load_b32 v14, off, off offset:664
	s_waitcnt vmcnt(1)
	ds_load_b128 v[10:13], v10
	s_waitcnt vmcnt(0)
	ds_load_b128 v[14:17], v14
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v45, v10, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v14, v14
	v_cmp_o_f32_e64 s0, v11, v11
	v_cmp_o_f32_e64 s1, v12, v12
	v_add3_u32 v45, v10, v45, 0x7fff
	v_bfe_u32 v10, v11, 16, 1
	v_cmp_o_f32_e64 s3, v13, v13
	v_cmp_o_f32_e64 s7, v15, v15
	v_cmp_o_f32_e64 s8, v16, v16
	v_cmp_o_f32_e64 s9, v17, v17
	v_add3_u32 v46, v11, v10, 0x7fff
	v_bfe_u32 v10, v12, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v45.h, vcc_lo
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v3.h
	v_and_b16 v3.h, 1, v114.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v45.h, 0x7fff, v46.h, s0
	v_add3_u32 v47, v12, v10, 0x7fff
	v_bfe_u32 v10, v13, 16, 1
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v114.h, v58.l
	.loc	1 697 25 is_stmt 1              ; attention_backward.py:697:25
	v_cmp_eq_u16_e64 s0, 1, v3.h
	v_and_b16 v3.h, 1, v113.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v46.l, 0x7fff, v47.h, s1
	v_add3_u32 v48, v13, v10, 0x7fff
	v_bfe_u32 v10, v14, 16, 1
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v113.h, v59.l
	.loc	1 697 25 is_stmt 1              ; attention_backward.py:697:25
	v_cmp_eq_u16_e64 s1, 1, v3.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v59.l, v26.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v46.h, 0x7fff, v48.h, s3
	v_add3_u32 v49, v14, v10, 0x7fff
	v_bfe_u32 v10, v15, 16, 1
	scratch_load_b32 v14, off, off offset:672 ; 4-byte Folded Reload
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v58.l, v26.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v47.l, 0x7fff, v49.h, s6
	v_add3_u32 v50, v15, v10, 0x7fff
	v_bfe_u32 v10, v16, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v47.h, 0x7fff, v50.h, s7
	v_add3_u32 v51, v16, v10, 0x7fff
	v_bfe_u32 v10, v17, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v48.l, 0x7fff, v51.h, s8
	v_add3_u32 v52, v17, v10, 0x7fff
	scratch_load_b32 v10, off, off offset:668 ; 4-byte Folded Reload
	v_cndmask_b16 v48.h, 0x7fff, v52.h, s9
	v_cmp_o_f32_e64 s9, v242, v242
	s_waitcnt vmcnt(1)
	ds_load_b128 v[14:17], v14
	s_waitcnt vmcnt(0)
	ds_load_b128 v[10:13], v10
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s14, v14, v14
	v_cmp_o_f32_e64 s15, v15, v15
	v_cmp_o_f32_e64 s16, v16, v16
	v_cmp_o_f32_e64 s17, v17, v17
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v54, v10, 16, 1
	v_cmp_o_f32_e64 s10, v10, v10
	v_cmp_o_f32_e64 s11, v11, v11
	v_cmp_o_f32_e64 s12, v12, v12
	v_cmp_o_f32_e64 s13, v13, v13
	v_add3_u32 v10, v10, v54, 0x7fff
	v_bfe_u32 v54, v11, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v49.l, 0x7fff, v10.h, s10
	v_add3_u32 v11, v11, v54, 0x7fff
	v_bfe_u32 v54, v12, 16, 1
	v_cmp_o_f32_e64 s10, v240, v240
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v49.h, 0x7fff, v11.h, s11
	v_add3_u32 v12, v12, v54, 0x7fff
	v_bfe_u32 v54, v13, 16, 1
	v_cmp_o_f32_e64 s11, v238, v238
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v50.l, 0x7fff, v12.h, s12
	v_add3_u32 v13, v13, v54, 0x7fff
	v_bfe_u32 v54, v14, 16, 1
	v_cmp_o_f32_e64 s12, v236, v236
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v50.h, 0x7fff, v13.h, s13
	v_add3_u32 v14, v14, v54, 0x7fff
	v_bfe_u32 v54, v15, 16, 1
	v_cmp_o_f32_e64 s13, v234, v234
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v51.l, 0x7fff, v14.h, s14
	v_add3_u32 v15, v15, v54, 0x7fff
	v_bfe_u32 v54, v16, 16, 1
	v_cmp_o_f32_e64 s14, v232, v232
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v51.h, 0x7fff, v15.h, s15
	v_add3_u32 v16, v16, v54, 0x7fff
	v_bfe_u32 v54, v17, 16, 1
	v_cmp_o_f32_e64 s15, v230, v230
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v52.l, 0x7fff, v16.h, s16
	v_add3_u32 v17, v17, v54, 0x7fff
	v_cmp_o_f32_e64 s16, v228, v228
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v52.h, 0x7fff, v17.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[10:13], off, off offset:164
	scratch_load_b128 v[14:17], off, off offset:180
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s17, v226, v226
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[10:17], v[45:52], v[97:104]
	.loc	1 696 35                        ; attention_backward.py:696:35
	v_mul_f32_e32 v10, 0x3fb8aa3b, v60
	v_mul_f32_e32 v14, 0x3fb8aa3b, v21
	v_mul_f32_e32 v12, 0x3fb8aa3b, v19
	v_mul_f32_e32 v16, 0x3fb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_dual_sub_f32 v19, v97, v27 :: v_dual_fmac_f32 v10, s80, v105
	.loc	1 696 25                        ; attention_backward.py:696:25
	v_dual_fmac_f32 v14, s80, v109 :: v_dual_sub_f32 v21, v98, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v16, s80, v111 :: v_dual_mul_f32 v13, 0x3fb8aa3b, v20
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v10, v10, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v14, v14, v25
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v20, v101, v27
	.loc	1 696 25                        ; attention_backward.py:696:25
	v_dual_fmac_f32 v12, s80, v107 :: v_dual_mul_f32 v15, 0x3fb8aa3b, v22
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v14, v14
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v22, v99, v27
	v_sub_f32_e32 v45, v103, v27
	.loc	1 696 35                        ; attention_backward.py:696:35
	v_dual_mul_f32 v17, 0x3fb8aa3b, v24 :: v_dual_sub_f32 v24, v102, v27
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v60.l, v26.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v10, 0, v10, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v19, v10, v19
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v19, s56, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v46, v19, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v46, v19, v46, 0x7fff
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v19, 0, v14, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v3.h, 0x7fff, v46.h, vcc_lo
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v14, v19, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v14, s56, v14
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v20, v14, 16, 1
	v_cmp_o_f32_e64 s0, v14, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v14, v14, v20, 0x7fff
	v_cndmask_b16 v4.h, 0x7fff, v14.h, s0
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	scratch_load_b32 v14, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v14, 0, v14
	ds_store_b16_d16_hi v14, v3
	ds_store_b16_d16_hi v14, v4 offset:512
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_dual_sub_f32 v14, v16, v25 :: v_dual_fmac_f32 v13, s80, v108
	.loc	1 696 35                        ; attention_backward.py:696:35
	v_mul_f32_e32 v11, 0x3fb8aa3b, v64
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_and_b16 v4.h, 1, v121.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v121.l, v26.l
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v23, v100, v27
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v14, v14
	.loc	1 696 25                        ; attention_backward.py:696:25
	v_fmac_f32_e32 v11, s80, v106
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v4.h
	v_and_b16 v4.h, 1, v120.h
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v27, v104, v27
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v120.h, v3.l
	.loc	1 703 34 is_stmt 1              ; attention_backward.py:703:34
	v_sub_f32_e32 v11, v11, v25
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v64.l, v26.l
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e64 s0, 1, v4.h
	v_and_b16 v4.h, 1, v119.h
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v119.h, v4.l
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v20, 0, v11, s1
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v11, v20, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v11, s56, v11
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v21, v11, 16, 1
	v_cmp_o_f32_e64 s1, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v11, v11, v21, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v11.h, s1
	.loc	1 703 34 is_stmt 1              ; attention_backward.py:703:34
	v_sub_f32_e32 v11, v12, v25
	v_sub_f32_e32 v12, v13, v25
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e64 s1, 1, v4.h
	v_and_b16 v4.h, 1, v118.h
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v118.h, v5.l
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v11, v11
	v_exp_f32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e64 s3, 1, v4.h
	v_and_b16 v4.h, 1, v117.h
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v117.h, v6.l
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e64 s6, 1, v4.h
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e32 v21, 0, v11, vcc_lo
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v11, v21, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v22, 0, v12, s0
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v5, v21, 16, 1
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v11, s56, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v12, v22, v23
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v5, v21, v5, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v16, v11, 16, 1
	.loc	1 721 38 is_stmt 0              ; attention_backward.py:721:38
	v_dual_mul_f32 v12, s56, v12 :: v_dual_fmac_f32 v15, s80, v110
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v11, v11, v16, 0x7fff
	v_bfe_u32 v16, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 703 34 is_stmt 1              ; attention_backward.py:703:34
	v_sub_f32_e32 v13, v15, v25
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cmp_o_f32_e64 s0, v12, v12
	v_add3_u32 v12, v12, v16, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v13, v13
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v23, 0, v13, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v13, v23, v24
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v24, 0, v14, s3
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v6, v23, 16, 1
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v13, s56, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v14, v24, v45
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v7, v24, 16, 1
	v_add3_u32 v6, v23, v6, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v16, v13, 16, 1
	v_cmp_o_f32_e64 s1, v13, v13
	.loc	1 721 38 is_stmt 0              ; attention_backward.py:721:38
	v_mul_f32_e32 v14, s56, v14
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_add3_u32 v7, v24, v7, 0x7fff
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v13, v13, v16, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_bfe_u32 v16, v14, 16, 1
	v_cmp_o_f32_e64 s3, v14, v14
	v_cndmask_b16 v4.h, 0x7fff, v13.h, s1
	scratch_load_b32 v13, off, off offset:676 ; 4-byte Folded Reload
	v_add3_u32 v14, v14, v16, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s1, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v34.h, 0x7fff, v5.h, s1
	.loc	1 696 25                        ; attention_backward.py:696:25
	v_fmac_f32_e32 v17, s80, v112
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v5, v19, 16, 1
	v_cmp_o_f32_e64 s1, v19, v19
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v15, v17, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v5, v19, v5, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v56.h, 0x7fff, v5.h, s1
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v25, 0, v15, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v15, v25, v27
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v8, v25, 16, 1
	v_cmp_o_f32_e64 s7, v25, v25
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v15, s56, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v8, v25, v8, 0x7fff
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v16, v15, 16, 1
	v_cmp_o_f32_e64 s6, v15, v15
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v15, v15, v16, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v13, v3
	ds_store_b16_d16_hi v13, v4 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v3.h, 0x7fff, v11.h, vcc_lo
	scratch_load_b32 v11, off, off offset:680 ; 4-byte Folded Reload
	v_cndmask_b16 v4.h, 0x7fff, v14.h, s3
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_cmp_o_f32_e64 s3, v23, v23
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v11, v3
	ds_store_b16_d16_hi v11, v4 offset:512
	scratch_load_b32 v11, off, off offset:684 ; 4-byte Folded Reload
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v3.h, 0x7fff, v12.h, s0
	v_cndmask_b16 v4.h, 0x7fff, v15.h, s6
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s0, v20, v20
	v_cmp_o_f32_e64 s6, v24, v24
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v11, v3
	ds_store_b16_d16_hi v11, v4 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v11, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v11, 0, v11
	ds_load_b128 v[45:48], v11
	scratch_load_b32 v11, off, off offset:688 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[49:52], v11
	scratch_load_b32 v11, off, off offset:692 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[97:100], v11
	scratch_load_b32 v11, off, off offset:696 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[101:104], v11
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:376
	scratch_load_b32 v3, off, off offset:700
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v11, 0, v11
	ds_store_b128 v11, v[113:116]
	s_waitcnt vmcnt(0)
	ds_store_b128 v3, v[117:120]
	scratch_load_b32 v3, off, off offset:704 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v3, v[170:173]
	scratch_load_b32 v3, off, off offset:708 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v3, v[190:193]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:356
	scratch_load_b32 v4, off, off offset:712
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v3, 0, v3
	s_waitcnt vmcnt(0)
	ds_load_b128 v[109:112], v4
	ds_load_b128 v[105:108], v3
	ds_load_b128 v[113:116], v3 offset:2048
	ds_load_b128 v[117:120], v4 offset:2048
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v4, off, off offset:720
	scratch_load_b32 v3, off, off offset:716
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[105:112], v[45:52], v[89:96]
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	ds_load_b128 v[41:44], v3
	ds_load_b128 v[105:108], v3 offset:2048
	ds_load_b128 v[109:112], v4 offset:2048
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v3, v10, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[129:136], v[113:120], v[45:52], v[129:136]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[45:48], v4
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v3, v10, v3, 0x7fff
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v12, off, off offset:724
	scratch_load_b32 v13, off, off offset:728
	scratch_load_b32 v14, off, off offset:732
	scratch_load_b32 v15, off, off offset:736
	scratch_load_b32 v16, off, off offset:740
	scratch_load_b32 v17, off, off offset:744
	scratch_load_b32 v54, off, off offset:748
	v_cndmask_b16 v26.h, 0x7fff, v3.h, vcc_lo
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v116.l, v26.l
	v_mov_b16_e32 v117.l, v26.l
	v_mov_b16_e32 v50.l, v26.l
	v_mov_b16_e32 v52.l, v26.l
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v3, v10, v26
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[129:136], v[105:112], v[97:104], v[129:136]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v114.l, v26.l
	v_mov_b16_e32 v115.l, v26.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[89:96], v[41:48], v[97:104], v[89:96]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v4, v3, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v44.h, 0x7fff, v6.h, s3
	v_cndmask_b16 v43.h, 0x7fff, v7.h, s6
	v_cndmask_b16 v42.h, 0x7fff, v8.h, s7
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v4, v3, v4, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v3, v20, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v41.l, v26.l
	v_mov_b16_e32 v44.l, v26.l
	v_mov_b16_e32 v43.l, v26.l
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cndmask_b16 v10.l, 0x7fff, v4.h, vcc_lo
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_add3_u32 v3, v20, v3, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v255, v255
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v42.l, v26.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v46.l, v26.l
	v_mov_b16_e32 v47.l, v26.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v41.h, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v22, 16, 1
	v_cmp_o_f32_e64 s0, v22, v22
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v119.l, v26.l
	v_mov_b16_e32 v45.l, v26.l
	v_mov_b16_e32 v48.l, v26.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v3, v22, v3, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v49.l, v26.l
	v_mov_b16_e32 v51.l, v26.l
	v_mov_b16_e32 v118.l, v26.l
	v_mov_b16_e32 v120.l, v26.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v57.h, 0x7fff, v3.h, s0
	scratch_load_b32 v3, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s0, v251, v251
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v11, 0, v3
	ds_store_b16_d16_hi v11, v26
	ds_store_b16_d16_hi v12, v41
	ds_store_b16_d16_hi v13, v34
	ds_store_b16_d16_hi v14, v57
	ds_store_b16_d16_hi v15, v56
	ds_store_b16_d16_hi v16, v44
	ds_store_b16_d16_hi v17, v43
	ds_store_b16_d16_hi v54, v42
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v55, off, off offset:752
	scratch_load_b32 v84, off, off offset:768
	scratch_load_b32 v81, off, off offset:756
	scratch_load_b32 v82, off, off offset:760
	scratch_load_b32 v85, off, off offset:772
	scratch_load_b32 v83, off, off offset:764
	scratch_load_b32 v3, off, off offset:328
	s_waitcnt vmcnt(2)
	ds_load_b64 v[7:8], v85
	ds_load_b64 v[5:6], v40
	ds_load_b64 v[101:102], v55
	ds_load_b64 v[108:109], v81
	ds_load_b64 v[103:104], v84
	s_waitcnt vmcnt(1)
	ds_load_b64 v[98:99], v83
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, 0, v3
	ds_load_b64 v[3:4], v82
	ds_load_b64 v[111:112], v27
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v11, v10
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v10, v25, v42
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s8, v10, v10
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e32 v113.l, v8.l
	v_mov_b16_e32 v113.h, v6.l
	v_mov_b16_e32 v110.h, v102.l
	v_mov_b16_e32 v106.h, v101.l
	v_mov_b16_e32 v107.l, v108.l
	v_mov_b16_e32 v108.l, v98.l
	v_mov_b16_e32 v6.l, v8.h
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v8, v24, v43
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v107.h, v3.l
	v_mov_b16_e32 v3.l, v108.h
	v_mov_b16_e32 v110.l, v112.l
	v_mov_b16_e32 v102.l, v112.h
	v_mov_b16_e32 v112.l, v99.l
	v_mov_b16_e32 v112.h, v104.l
	v_mov_b16_e32 v104.l, v99.h
	v_mov_b32_e32 v99, v3
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v3, v255, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v101.l, v111.h
	v_mov_b16_e32 v111.h, v4.l
	v_mov_b16_e32 v4.l, v109.h
	v_mov_b16_e32 v108.h, v103.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v255, v3, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v103.l, v98.h
	v_mov_b16_e32 v109.h, v5.l
	v_mov_b16_e32 v5.l, v7.h
	v_mov_b32_e32 v98, v101
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v45.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v247, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v247, v247
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_dual_mov_b32 v100, v103 :: v_dual_mov_b32 v103, v4
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v4, v251, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v3, v247, v3, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v101, v5
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v5, v22, v57
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v105, v6
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v4, v251, v4, 0x7fff
	v_cndmask_b16 v47.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v243, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v243, v243
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v6, v19, v56
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v46.h, 0x7fff, v4.h, s0
	v_bfe_u32 v4, v219, 16, 1
	v_add3_u32 v3, v243, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v219, v219
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v106.l, v111.l
	v_mov_b16_e32 v111.l, v109.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v4, v219, v4, 0x7fff
	v_cndmask_b16 v48.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v239, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v239, v239
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v109.l, v7.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v115.h, 0x7fff, v4.h, s0
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v4, v21, v34
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v239, v3, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v7, v23, v44
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s1, v5, v5
	v_cmp_o_f32_e64 s3, v6, v6
	v_cmp_o_f32_e64 s0, v4, v4
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v49.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v235, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v235, v235
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s6, v7, v7
	v_cmp_o_f32_e64 s7, v8, v8
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v159, v159, v49
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v235, v3, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v97, v165, v48
	v_sub_f32_e32 v165, v167, v45
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e32 v19.l, v26.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v50.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v231, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v231, v231
	v_add3_u32 v3, v231, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v51.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v227, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v227, v227
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v155, v155, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v227, v3, 0x7fff
	v_cndmask_b16 v52.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v223, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v223, v223
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v43, v157, v52
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v223, v3, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v157, v161, v50
	v_sub_f32_e32 v161, v163, v47
	v_sub_f32_e32 v163, v169, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v114.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v215, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v215, v215
	v_add3_u32 v3, v215, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v116.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v211, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v211, v211
	v_add3_u32 v3, v211, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v117.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v207, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v207, v207
	v_add3_u32 v3, v207, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v118.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v203, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v203, v203
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v123, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v203, v3, 0x7fff
	v_cndmask_b16 v119.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v199, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v199, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v22, v125, v119
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v199, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v120.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v195, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v195, v195
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v21, v31, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v195, v3, 0x7fff
	v_bfe_u32 v31, v248, 16, 1
	v_cndmask_b16 v121.h, 0x7fff, v3.h, vcc_lo
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v3, v20, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v31, v248, v31, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v31.l, v26.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v20, v33, v121
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 728 34 is_stmt 1              ; attention_backward.py:728:34
	v_bfe_u32 v11, v3, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v33, v246, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v11, v3, v11, 0x7fff
	v_bfe_u32 v3, v4, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v33, v246, v33, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v33.l, v26.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v3, v4, v3, 0x7fff
	v_bfe_u32 v4, v5, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v11.h, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v4, v5, v4, 0x7fff
	v_bfe_u32 v5, v6, 16, 1
	ds_store_b16 v12, v3
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s0
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s0, v249, v249
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v5, v6, v5, 0x7fff
	v_bfe_u32 v6, v7, 16, 1
	ds_store_b16 v13, v3
	v_cndmask_b16 v3.l, 0x7fff, v4.h, s1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v4, v245, 16, 1
	v_cmp_o_f32_e64 s1, v245, v245
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v6, v7, v6, 0x7fff
	v_bfe_u32 v7, v8, 16, 1
	ds_store_b16 v14, v3
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s3
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v5, v241, 16, 1
	v_add3_u32 v4, v245, v4, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v7, v8, v7, 0x7fff
	v_bfe_u32 v8, v10, 16, 1
	ds_store_b16 v15, v3
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s6
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v6, v237, 16, 1
	v_add3_u32 v5, v241, v5, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v8, v10, v8, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s3, v241, v241
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v16, v3
	v_cndmask_b16 v3.l, 0x7fff, v7.h, s7
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v6, v237, v6, 0x7fff
	v_cmp_o_f32_e64 s6, v237, v237
	v_cndmask_b16 v58.h, 0x7fff, v4.h, s1
	v_cndmask_b16 v44.h, 0x7fff, v5.h, s3
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v17, v3
	v_cndmask_b16 v3.l, 0x7fff, v8.h, s8
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v56.h, 0x7fff, v6.h, s6
	v_bfe_u32 v4, v225, 16, 1
	v_bfe_u32 v5, v221, 16, 1
	v_bfe_u32 v6, v217, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v54, v3
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v3, v2, 16, 1
	v_bfe_u32 v7, v205, 16, 1
	v_add3_u32 v4, v225, v4, 0x7fff
	v_cmp_o_f32_e64 s1, v225, v225
	v_add3_u32 v5, v221, v5, 0x7fff
	v_add3_u32 v3, v2, v3, 0x7fff
	v_bfe_u32 v2, v253, 16, 1
	v_cmp_o_f32_e64 s3, v221, v221
	v_add3_u32 v6, v217, v6, 0x7fff
	v_cmp_o_f32_e64 s6, v217, v217
	v_cndmask_b16 v42.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v249, 16, 1
	v_add3_u32 v2, v253, v2, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v253, v253
	v_add3_u32 v8, v205, v7, 0x7fff
	v_bfe_u32 v7, v201, 16, 1
	v_add3_u32 v3, v249, v3, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v50.l, v56.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v59.h, 0x7fff, v2.h, vcc_lo
	v_bfe_u32 v2, v233, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v233, v233
	v_cndmask_b16 v57.h, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v229, 16, 1
	v_cmp_o_f32_e64 s0, v229, v229
	v_add3_u32 v2, v233, v2, 0x7fff
	v_add3_u32 v10, v201, v7, 0x7fff
	v_bfe_u32 v7, v197, 16, 1
	v_add3_u32 v3, v229, v3, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v49.l, v44.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v60.h, 0x7fff, v2.h, vcc_lo
	v_cndmask_b16 v2.h, 0x7fff, v6.h, s6
	v_bfe_u32 v6, v209, 16, 1
	v_cndmask_b16 v64.h, 0x7fff, v3.h, s0
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s1
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s3
	v_bfe_u32 v5, v213, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v213, v213
	v_add3_u32 v6, v209, v6, 0x7fff
	v_cmp_o_f32_e64 s0, v209, v209
	v_cmp_o_f32_e64 s3, v201, v201
	v_add3_u32 v5, v213, v5, 0x7fff
	v_add3_u32 v11, v197, v7, 0x7fff
	v_cmp_o_f32_e64 s6, v197, v197
	v_cndmask_b16 v7.h, 0x7fff, v6.h, s0
	v_cmp_o_f32_e64 s1, v205, v205
	v_cndmask_b16 v19.h, 0x7fff, v5.h, vcc_lo
	v_cndmask_b16 v5.h, 0x7fff, v10.h, s3
	v_cndmask_b16 v6.h, 0x7fff, v11.h, s6
	scratch_load_b128 v[10:13], off, off offset:16 ; 16-byte Folded Reload
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v52.l, v64.h
	v_mov_b16_e32 v51.l, v60.h
	v_mov_b16_e32 v48.l, v58.h
	v_mov_b16_e32 v47.l, v57.h
	v_mov_b16_e32 v46.l, v59.h
	v_mov_b16_e32 v45.l, v42.h
	v_mov_b16_e32 v121.l, v6.h
	v_mov_b16_e32 v120.l, v5.h
	v_mov_b16_e32 v119.l, v8.h
	v_mov_b16_e32 v118.l, v7.h
	v_wmma_f32_16x16x16_bf16 v[65:72], v[45:52], v[106:113], v[65:72]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_bfe_u32 v17, v252, 16, 1
	v_cmp_o_f32_e64 s0, v254, v254
	v_cmp_o_f32_e64 s1, v252, v252
	v_cmp_o_f32_e64 s3, v250, v250
	v_cmp_o_f32_e64 s6, v248, v248
	v_add3_u32 v17, v252, v17, 0x7fff
	v_cmp_o_f32_e64 s7, v246, v246
	v_cmp_o_f32_e64 s8, v244, v244
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v3.l, v26.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s6
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v4.l, v26.l
	v_mov_b16_e32 v2.l, v26.l
	v_mov_b16_e32 v5.l, v26.l
	v_mov_b16_e32 v6.l, v26.l
	v_mov_b16_e32 v7.l, v26.l
	v_mov_b16_e32 v8.l, v26.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v7, v122, v7 :: v_dual_sub_f32 v8, v124, v8
	s_waitcnt vmcnt(0)
	v_dual_sub_f32 v24, v13, v117 :: v_dual_sub_f32 v25, v11, v116
	v_mov_b32_e32 v215, v10
	v_mov_b32_e32 v217, v12
	scratch_load_b128 v[10:13], off, off    ; 16-byte Folded Reload
	.loc	1 728 34 is_stmt 1              ; attention_backward.py:728:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v117.l, v19.h
	v_mov_b16_e32 v116.l, v2.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v215, v2
	s_waitcnt vmcnt(0)
	v_dual_sub_f32 v34, v13, v115 :: v_dual_sub_f32 v41, v11, v114
	v_mov_b32_e32 v211, v10
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_load_b64 v[10:11], v27
	ds_load_b64 v[125:126], v81
	ds_load_b64 v[127:128], v82
	ds_load_b64 v[13:14], v55
	ds_load_b64 v[15:16], v84
	ds_load_b64 v[169:170], v85
	ds_load_b64 v[171:172], v40
	ds_load_b64 v[54:55], v83
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v115.l, v4.h
	v_mov_b16_e32 v114.l, v3.h
	v_mov_b32_e32 v213, v12
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v12, v1, 16, 1
	v_bfe_u32 v27, v250, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[114:121], v[98:105], v[65:72]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v12, v1, v12, 0x7fff
	v_bfe_u32 v1, v254, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v27, v250, v27, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v27.l, v26.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v1, v254, v1, 0x7fff
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(7)
	v_mov_b16_e32 v81.l, v10.l
	s_waitcnt lgkmcnt(6)
	v_mov_b16_e32 v82.l, v125.l
	s_waitcnt lgkmcnt(5)
	v_mov_b16_e32 v82.h, v127.l
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e32 v81.h, v13.l
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e32 v83.l, v54.l
	v_mov_b16_e32 v83.h, v15.l
	v_mov_b16_e64 v84.l, v169.l
	v_mov_b16_e64 v84.h, v171.l
	v_mov_b16_e32 v85.l, v11.l
	v_mov_b16_e32 v85.h, v14.l
	v_mov_b16_e32 v86.l, v126.l
	v_mov_b16_e64 v86.h, v128.l
	v_mov_b16_e32 v87.l, v55.l
	v_mov_b16_e32 v87.h, v16.l
	v_mov_b16_e64 v88.l, v170.l
	v_mov_b16_e64 v88.h, v172.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s0
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e32 v127.l, v125.h
	v_mov_b16_e64 v128.l, v126.h
	v_wmma_f32_16x16x16_bf16 v[65:72], v[45:52], v[81:88], v[65:72]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v46, v242, 16, 1
	v_bfe_u32 v45, v244, 16, 1
	v_cndmask_b16 v47.h, 0x7fff, v33.h, s7
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v47.l, v26.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e32 v15.l, v54.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v48, v242, v46, 0x7fff
	v_bfe_u32 v46, v240, 16, 1
	v_add3_u32 v45, v244, v45, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v48.l, v26.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v45.l, 0x7fff, v12.h, vcc_lo
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s9
	v_add3_u32 v123, v240, v46, 0x7fff
	v_bfe_u32 v46, v238, 16, 1
	v_cndmask_b16 v33.h, 0x7fff, v45.h, s8
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v187, v187, v47
	v_sub_f32_e32 v189, v189, v48
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v123.h, 0x7fff, v123.h, s10
	v_add3_u32 v49, v238, v46, 0x7fff
	v_bfe_u32 v46, v236, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v49.l, v26.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v48.l, v33.h
	v_mov_b16_e32 v47.l, v31.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v49.h, 0x7fff, v49.h, s11
	v_add3_u32 v167, v236, v46, 0x7fff
	v_bfe_u32 v46, v234, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v45.h, v1.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v171.l, v169.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v183, v183, v49
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v167.h, 0x7fff, v167.h, s12
	v_add3_u32 v50, v234, v46, 0x7fff
	v_bfe_u32 v46, v232, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v50.l, v26.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v49.l, v123.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v172.l, v170.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s13
	v_add3_u32 v173, v232, v46, 0x7fff
	v_bfe_u32 v46, v230, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e32 v14.l, v11.h
	v_mov_b16_e32 v16.l, v55.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v185, v185, v50
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v173.h, 0x7fff, v173.h, s14
	v_add3_u32 v51, v230, v46, 0x7fff
	v_bfe_u32 v46, v228, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v51.l, v26.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v50.l, v167.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v11, v127
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s15
	v_add3_u32 v199, v228, v46, 0x7fff
	v_bfe_u32 v46, v226, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_dual_mov_b32 v12, v15 :: v_dual_mov_b32 v15, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v179, v179, v51
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v199.h, 0x7fff, v199.h, s16
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v52, v226, v46, 0x7fff
	v_bfe_u32 v46, v224, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v52.l, v26.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v51.l, v173.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v10, v13
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s17
	v_add3_u32 v201, v224, v46, 0x7fff
	v_bfe_u32 v46, v222, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v13, v171
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v26.h, v45.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v181, v181, v52
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v52.l, v199.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v190, v222, v46, 0x7fff
	v_bfe_u32 v46, v220, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v190.l, v26.l
	v_mov_b16_e32 v1.l, v26.l
	v_mov_b16_e32 v123.l, v26.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v190.h, 0x7fff, v190.h, s19
	v_add3_u32 v203, v220, v46, 0x7fff
	v_bfe_u32 v46, v218, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v175, v1
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v167.l, v26.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v151, v151, v190
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v173.l, v26.l
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v191, v218, v46, 0x7fff
	v_bfe_u32 v46, v216, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v191.l, v26.l
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v199.l, v26.l
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v191.h, 0x7fff, v191.h, s21
	v_add3_u32 v205, v216, v46, 0x7fff
	v_bfe_u32 v46, v214, 16, 1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s7, v187, v187
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v201.l, v26.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v153, v153, v191
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v203.l, v26.l
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v192, v214, v46, 0x7fff
	v_bfe_u32 v46, v212, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v192.l, v26.l
	v_mov_b16_e64 v205.l, v26.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v192.h, 0x7fff, v192.h, s23
	v_add3_u32 v207, v212, v46, 0x7fff
	v_bfe_u32 v46, v210, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v147, v147, v192
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v193, v210, v46, 0x7fff
	v_bfe_u32 v46, v208, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v193.l, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v193.h, 0x7fff, v193.h, s25
	v_add3_u32 v209, v208, v46, 0x7fff
	v_bfe_u32 v46, v206, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v149, v149, v193
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v195, v206, v46, 0x7fff
	v_bfe_u32 v46, v204, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v195.l, v26.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v206, v204, v46, 0x7fff
	v_bfe_u32 v46, v202, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v206.l, v26.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v206.h, 0x7fff, v206.h, s28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v197, v202, v46, 0x7fff
	v_bfe_u32 v46, v200, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v197.l, v26.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v202, v200, v46, 0x7fff
	v_bfe_u32 v46, v198, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v202.l, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v202.h, 0x7fff, v202.h, s30
	v_add3_u32 v200, v198, v46, 0x7fff
	v_bfe_u32 v46, v196, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v200.l, v26.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v198, v196, v46, 0x7fff
	v_bfe_u32 v46, v194, 16, 1
	v_cndmask_b16 v196.h, 0x7fff, v200.h, s31
	v_cndmask_b16 v200.h, 0x7fff, v201.h, s18
	v_cndmask_b16 v201.h, 0x7fff, v203.h, s20
	v_cndmask_b16 v203.h, 0x7fff, v205.h, s22
	v_add3_u32 v204, v194, v46, 0x7fff
	v_cndmask_b16 v46.h, 0x7fff, v27.h, s3
	v_cndmask_b16 v27.h, 0x7fff, v17.h, s1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v46.l, v26.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v194.h, 0x7fff, v195.h, s27
	v_cndmask_b16 v195.h, 0x7fff, v197.h, s29
	v_cndmask_b16 v197.h, 0x7fff, v204.h, s34
	v_cndmask_b16 v204.h, 0x7fff, v207.h, s24
	v_cndmask_b16 v205.h, 0x7fff, v209.h, s26
	v_cndmask_b16 v198.h, 0x7fff, v198.h, s33
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v177, v177, v46
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v46.l, v27.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v194.l, v26.l
	v_mov_b16_e64 v196.l, v26.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v141, v141, v197
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v197.l, v198.h
	v_wmma_f32_16x16x16_bf16 v[73:80], v[45:52], v[106:113], v[73:80]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v145, v145, v195
	v_sub_f32_e32 v139, v139, v196
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v196.l, v202.h
	v_mov_b16_e64 v195.l, v206.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v143, v143, v194
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v194.l, v205.h
	v_mov_b16_e64 v193.l, v204.h
	v_mov_b16_e64 v192.l, v203.h
	v_mov_b16_e64 v191.l, v201.h
	v_mov_b16_e64 v190.l, v200.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v17, v172
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v177, v177
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v204.l, v26.l
	v_mov_b16_e64 v198.l, v26.l
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[190:197], v[98:105], v[73:80]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[114:121], v[10:17], v[65:72]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[45:52], v[81:88], v[73:80]
	v_mov_b32_e32 v45, v37
	v_wmma_f32_16x16x16_bf16 v[73:80], v[190:197], v[10:17], v[73:80]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v12, v174, v26 :: v_dual_sub_f32 v11, v176, v27
	v_sub_f32_e32 v10, v186, v31
	v_dual_sub_f32 v14, v182, v123 :: v_dual_sub_f32 v13, v188, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v27, v12, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	v_bfe_u32 v31, v10, 16, 1
	v_cmp_o_f32_e64 s1, v11, v11
	v_cmp_o_f32_e64 s6, v10, v10
	v_add3_u32 v27, v12, v27, 0x7fff
	v_bfe_u32 v12, v1, 16, 1
	v_add3_u32 v31, v10, v31, 0x7fff
	v_bfe_u32 v10, v187, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v15, v184, v167 :: v_dual_sub_f32 v16, v178, v173
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v12, v1, v12, 0x7fff
	v_bfe_u32 v1, v11, 16, 1
	v_add3_u32 v33, v187, v10, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v27.h, vcc_lo
	v_bfe_u32 v27, v14, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v31.h, s6
	v_add3_u32 v1, v11, v1, 0x7fff
	v_bfe_u32 v11, v177, 16, 1
	v_bfe_u32 v31, v15, 16, 1
	v_add3_u32 v27, v14, v27, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v17, v180, v199
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_add3_u32 v11, v177, v11, 0x7fff
	v_cndmask_b16 v11.l, 0x7fff, v1.h, s1
	v_bfe_u32 v1, v13, 16, 1
	v_cmp_o_f32_e64 s1, v14, v14
	v_bfe_u32 v14, v183, 16, 1
	v_add3_u32 v31, v15, v31, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_add3_u32 v1, v13, v1, 0x7fff
	v_bfe_u32 v13, v189, 16, 1
	v_add3_u32 v14, v183, v14, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s0
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s3
	v_cmp_o_f32_e64 s0, v189, v189
	v_add3_u32 v13, v189, v13, 0x7fff
	v_cmp_o_f32_e64 s3, v183, v183
	v_cndmask_b16 v14.l, 0x7fff, v27.h, s1
	v_cndmask_b16 v15.l, 0x7fff, v31.h, s6
	v_bfe_u32 v27, v16, 16, 1
	v_bfe_u32 v31, v17, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s0
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s3
	v_bfe_u32 v1, v185, 16, 1
	v_add3_u32 v27, v16, v27, 0x7fff
	v_cmp_o_f32_e64 s0, v16, v16
	v_bfe_u32 v16, v179, 16, 1
	v_add3_u32 v31, v17, v31, 0x7fff
	v_cmp_o_f32_e64 s3, v17, v17
	v_bfe_u32 v17, v181, 16, 1
	v_add3_u32 v1, v185, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v185, v185
	v_add3_u32 v16, v179, v16, 0x7fff
	v_cmp_o_f32_e64 s1, v179, v179
	v_add3_u32 v17, v181, v17, 0x7fff
	v_cmp_o_f32_e64 s6, v181, v181
	v_cndmask_b16 v12.h, 0x7fff, v33.h, s7
	v_cndmask_b16 v15.h, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v16.l, 0x7fff, v27.h, s0
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s1
	v_cndmask_b16 v17.l, 0x7fff, v31.h, s3
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s6
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v166, v42
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s0, v165, v165
	v_cmp_o_f32_e64 s3, v163, v163
	v_cmp_o_f32_e64 s7, v161, v161
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[10:17], v[106:113], v[73:80]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v10, v168, v59 :: v_dual_sub_f32 v11, v162, v57
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v12, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v14, v158, v44
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v27, v10, 16, 1
	v_cmp_o_f32_e64 s1, v10, v10
	v_add3_u32 v12, v1, v12, 0x7fff
	v_bfe_u32 v1, v165, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v13, v164, v58
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v27, v10, v27, 0x7fff
	v_bfe_u32 v10, v163, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v15, v160, v56
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v1, v165, v1, 0x7fff
	v_cmp_o_f32_e64 s6, v11, v11
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v16, v154, v60
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v31, v163, v10, 0x7fff
	v_bfe_u32 v10, v11, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v17, v156, v64
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v33, v11, v10, 0x7fff
	v_bfe_u32 v10, v161, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v27.h, s1
	v_bfe_u32 v27, v14, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v31.h, s3
	v_bfe_u32 v31, v15, 16, 1
	v_add3_u32 v42, v161, v10, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v1.h, s0
	v_bfe_u32 v1, v13, 16, 1
	v_add3_u32 v27, v14, v27, 0x7fff
	v_cmp_o_f32_e64 s1, v14, v14
	v_bfe_u32 v14, v159, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v12.h, vcc_lo
	v_cndmask_b16 v12.l, 0x7fff, v33.h, s6
	v_add3_u32 v1, v13, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_bfe_u32 v13, v97, 16, 1
	v_add3_u32 v31, v15, v31, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_add3_u32 v14, v159, v14, 0x7fff
	v_cmp_o_f32_e64 s0, v97, v97
	v_add3_u32 v13, v97, v13, 0x7fff
	v_cmp_o_f32_e64 s3, v159, v159
	v_cndmask_b16 v14.l, 0x7fff, v27.h, s1
	v_cndmask_b16 v15.l, 0x7fff, v31.h, s6
	v_bfe_u32 v27, v16, 16, 1
	v_bfe_u32 v31, v17, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s0
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s3
	v_bfe_u32 v1, v157, 16, 1
	v_add3_u32 v27, v16, v27, 0x7fff
	v_cmp_o_f32_e64 s0, v16, v16
	v_bfe_u32 v16, v155, 16, 1
	v_add3_u32 v31, v17, v31, 0x7fff
	v_cmp_o_f32_e64 s3, v17, v17
	v_bfe_u32 v17, v43, 16, 1
	v_add3_u32 v1, v157, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v157, v157
	v_add3_u32 v16, v155, v16, 0x7fff
	v_cmp_o_f32_e64 s1, v155, v155
	v_add3_u32 v17, v43, v17, 0x7fff
	v_cmp_o_f32_e64 s6, v43, v43
	v_cndmask_b16 v12.h, 0x7fff, v42.h, s7
	v_cndmask_b16 v15.h, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v16.l, 0x7fff, v27.h, s0
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s1
	v_cndmask_b16 v17.l, 0x7fff, v31.h, s3
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s6
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v150, v200
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s0, v151, v151
	v_cmp_o_f32_e64 s3, v153, v153
	v_cmp_o_f32_e64 s7, v147, v147
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[10:17], v[106:113], v[65:72]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v10, v152, v201 :: v_dual_sub_f32 v11, v146, v203
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v12, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v14, v142, v205
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v27, v10, 16, 1
	v_cmp_o_f32_e64 s1, v10, v10
	v_add3_u32 v12, v1, v12, 0x7fff
	v_bfe_u32 v1, v151, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v13, v148, v204
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v27, v10, v27, 0x7fff
	v_bfe_u32 v10, v153, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v15, v144, v206
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v1, v151, v1, 0x7fff
	v_cmp_o_f32_e64 s6, v11, v11
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v16, v138, v202
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v31, v153, v10, 0x7fff
	v_bfe_u32 v10, v11, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v17, v140, v198
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v33, v11, v10, 0x7fff
	v_bfe_u32 v10, v147, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v27.h, s1
	v_bfe_u32 v27, v14, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v31.h, s3
	v_bfe_u32 v31, v15, 16, 1
	v_add3_u32 v42, v147, v10, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v1.h, s0
	v_bfe_u32 v1, v13, 16, 1
	v_add3_u32 v27, v14, v27, 0x7fff
	v_cmp_o_f32_e64 s1, v14, v14
	v_bfe_u32 v14, v143, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v12.h, vcc_lo
	v_cndmask_b16 v12.l, 0x7fff, v33.h, s6
	v_add3_u32 v1, v13, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_bfe_u32 v13, v149, 16, 1
	v_add3_u32 v31, v15, v31, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_add3_u32 v14, v143, v14, 0x7fff
	v_cmp_o_f32_e64 s0, v149, v149
	v_add3_u32 v13, v149, v13, 0x7fff
	v_cmp_o_f32_e64 s3, v143, v143
	v_cndmask_b16 v14.l, 0x7fff, v27.h, s1
	v_cndmask_b16 v15.l, 0x7fff, v31.h, s6
	v_bfe_u32 v27, v16, 16, 1
	v_bfe_u32 v31, v17, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s0
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s3
	v_bfe_u32 v1, v145, 16, 1
	v_add3_u32 v27, v16, v27, 0x7fff
	v_cmp_o_f32_e64 s0, v16, v16
	v_bfe_u32 v16, v139, 16, 1
	v_add3_u32 v31, v17, v31, 0x7fff
	v_cmp_o_f32_e64 s3, v17, v17
	v_bfe_u32 v17, v141, 16, 1
	v_add3_u32 v1, v145, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v145, v145
	v_add3_u32 v16, v139, v16, 0x7fff
	v_cmp_o_f32_e64 s1, v139, v139
	v_add3_u32 v17, v141, v17, 0x7fff
	v_cmp_o_f32_e64 s6, v141, v141
	v_cndmask_b16 v12.h, 0x7fff, v42.h, s7
	v_cndmask_b16 v15.h, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v16.l, 0x7fff, v27.h, s0
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s1
	v_cndmask_b16 v17.l, 0x7fff, v31.h, s3
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s6
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v211, v3
	v_sub_f32_e32 v3, v213, v4
	v_sub_f32_e32 v4, v217, v19
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v2, v2
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[10:17], v[98:105], v[73:80]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v10, v30, v5 :: v_dual_sub_f32 v11, v32, v6
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v5, v1, 16, 1
	v_bfe_u32 v6, v3, 16, 1
	v_bfe_u32 v12, v2, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cmp_o_f32_e64 s1, v3, v3
	v_add3_u32 v5, v1, v5, 0x7fff
	v_bfe_u32 v1, v41, 16, 1
	v_add3_u32 v6, v3, v6, 0x7fff
	v_bfe_u32 v3, v34, 16, 1
	v_add3_u32 v12, v2, v12, 0x7fff
	v_bfe_u32 v2, v25, 16, 1
	v_add3_u32 v1, v41, v1, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v5.h, vcc_lo
	v_add3_u32 v3, v34, v3, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v12.h, s6
	v_add3_u32 v13, v25, v2, 0x7fff
	v_cndmask_b16 v2.l, 0x7fff, v6.h, s1
	v_bfe_u32 v5, v4, 16, 1
	v_bfe_u32 v6, v7, 16, 1
	v_bfe_u32 v12, v8, 16, 1
	v_cmp_o_f32_e64 s0, v41, v41
	v_cmp_o_f32_e64 s3, v34, v34
	v_add3_u32 v5, v4, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_bfe_u32 v4, v24, 16, 1
	v_add3_u32 v6, v7, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v7, v7
	v_bfe_u32 v7, v23, 16, 1
	v_add3_u32 v12, v8, v12, 0x7fff
	v_cmp_o_f32_e64 s6, v8, v8
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s0
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s3
	v_add3_u32 v4, v24, v4, 0x7fff
	v_cmp_o_f32_e64 s0, v24, v24
	v_add3_u32 v7, v23, v7, 0x7fff
	v_cmp_o_f32_e64 s3, v23, v23
	v_cndmask_b16 v6.l, 0x7fff, v12.h, s6
	v_bfe_u32 v8, v10, 16, 1
	v_bfe_u32 v12, v11, 16, 1
	v_cndmask_b16 v4.l, 0x7fff, v5.h, vcc_lo
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s0
	v_cndmask_b16 v5.h, 0x7fff, v7.h, s3
	v_bfe_u32 v7, v22, 16, 1
	v_add3_u32 v8, v10, v8, 0x7fff
	v_cmp_o_f32_e64 s0, v10, v10
	v_bfe_u32 v10, v21, 16, 1
	v_add3_u32 v12, v11, v12, 0x7fff
	v_cmp_o_f32_e64 s3, v11, v11
	v_bfe_u32 v11, v20, 16, 1
	v_cmp_o_f32_e64 s7, v25, v25
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s1
	v_add3_u32 v7, v22, v7, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_add3_u32 v10, v21, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v21, v21
	v_add3_u32 v11, v20, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v20, v20
	v_cndmask_b16 v3.h, 0x7fff, v13.h, s7
	v_cndmask_b16 v6.h, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v7.l, 0x7fff, v8.h, s0
	v_cndmask_b16 v7.h, 0x7fff, v10.h, s1
	v_cndmask_b16 v8.l, 0x7fff, v12.h, s3
	v_cndmask_b16 v8.h, 0x7fff, v11.h, s6
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[1:8], v[98:105], v[65:72]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v2, off, off offset:784
	scratch_load_b32 v3, off, off offset:800
	scratch_load_b32 v4, off, off offset:816
	scratch_load_b32 v5, off, off offset:832
	scratch_load_b32 v8, off, off offset:888
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s0, s83, 1
	s_or_b32 s1, s83, 2
	s_or_b32 s3, s83, 3
	s_or_b32 s6, s83, 4
	s_or_b32 s7, s83, 5
	s_or_b32 s8, s83, 6
	s_or_b32 s9, s83, 7
	s_or_b32 s10, s83, 8
	s_or_b32 s11, s83, 9
	s_or_b32 s12, s83, 10
	s_or_b32 s13, s83, 11
	s_or_b32 s14, s83, 12
	s_or_b32 s15, s83, 13
	s_or_b32 s16, s83, 14
	s_or_b32 s17, s83, 15
	s_or_b32 s18, s83, 16
	s_or_b32 s19, s83, 17
	s_or_b32 s20, s83, 18
	s_or_b32 s21, s83, 19
	s_or_b32 s22, s83, 20
	s_or_b32 s23, s83, 21
	s_or_b32 s24, s83, 22
	s_or_b32 s25, s83, 23
	s_or_b32 s28, s83, 24
	s_or_b32 s38, s83, 25
	s_or_b32 s39, s83, 26
	s_or_b32 s70, s83, 27
	s_or_b32 s96, s83, 28
	s_or_b32 s97, s83, 29
	s_or_b32 s98, s83, 30
	s_or_b32 s99, s83, 31
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s83, s50
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v14, v9 :: v_dual_add_nc_u32 v13, s73, v53
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s0, s50
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v16, v9
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s1, s50
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v15, v9
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s3, s50
	.loc	1 663 37                        ; attention_backward.py:663:37
	scratch_load_b32 v7, off, off offset:824 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s6, s50
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s7, s50
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s8, s50
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s9, s50
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s10, s50
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s11, s50
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s12, s50
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s13, s50
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s14, s50
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s15, s50
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s16, s50
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s17, s50
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s18, s50
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s19, s50
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
	s_cmp_lt_i32 s38, s50
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s39, s50
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s70, s50
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
	s_add_i32 s28, s83, s81
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s95
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_mul_i32 s0, s28, s73
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v1, s0, v45, 1
	v_add_lshl_u32 v13, s0, v13, 1
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v2, s0, v2, 1
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v3, s0, v3, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s94
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v4, s0, v4, 1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s92
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v5, s0, v5, 1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s90
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v8, s0, v8, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x3
	buffer_load_u16 v113, v1, s[60:63], 0 offen
	buffer_load_u16 v114, v2, s[60:63], 0 offen
	buffer_load_u16 v115, v3, s[60:63], 0 offen
	buffer_load_u16 v116, v4, s[60:63], 0 offen
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v1, off, off offset:848
	scratch_load_b32 v3, off, off offset:864
	scratch_load_b32 v4, off, off offset:880
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s88
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v2, 0x80000000, v5, vcc_lo
	scratch_load_b32 v5, off, off offset:896 ; 4-byte Folded Reload
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s86
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v7, s0, v7, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v1, s0, v1, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v3, s0, v3, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v4, s0, v4, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s84
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v5, s0, v5, 1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s66
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x3
	buffer_load_u16 v117, v2, s[60:63], 0 offen
	buffer_load_u16 v118, v1, s[60:63], 0 offen
	buffer_load_u16 v119, v3, s[60:63], 0 offen
	buffer_load_u16 v120, v4, s[60:63], 0 offen
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v1, off, off offset:912
	scratch_load_b32 v3, off, off offset:928
	scratch_load_b32 v4, off, off offset:944
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s42
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v2, 0x80000000, v5, vcc_lo
	scratch_load_b32 v5, off, off offset:960 ; 4-byte Folded Reload
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s33
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v1, s0, v1, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v3, s0, v3, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v4, s0, v4, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s30
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v5, s0, v5, 1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s27
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x3
	buffer_load_u16 v170, v2, s[60:63], 0 offen
	buffer_load_u16 v171, v1, s[60:63], 0 offen
	buffer_load_u16 v172, v3, s[60:63], 0 offen
	buffer_load_u16 v173, v4, s[60:63], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:976
	scratch_load_b32 v3, off, off offset:992
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s25
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v4, s0, v53, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s0, v1, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v3, s0, v3, 1
	v_cndmask_b32_e32 v2, 0x80000000, v5, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s23
	.loc	1 663 37                        ; attention_backward.py:663:37
	scratch_load_b32 v5, off, off offset:776 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s21
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s19
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x3
	buffer_load_u16 v190, v2, s[60:63], 0 offen
	buffer_load_u16 v191, v1, s[60:63], 0 offen
	buffer_load_u16 v192, v3, s[60:63], 0 offen
	buffer_load_u16 v193, v4, s[60:63], 0 offen
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v1, off, off offset:792
	scratch_load_b32 v3, off, off offset:808
	scratch_load_b32 v4, off, off offset:840
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s71
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v5, s0, v5, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v1, s0, v1, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v3, s0, v3, 1
	v_cndmask_b32_e32 v2, 0x80000000, v5, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s93
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v4, s0, v4, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s91
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s87
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v6, 0x80000000, v4, vcc_lo
	scratch_load_b32 v4, off, off offset:856 ; 4-byte Folded Reload
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s85
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v4, s0, v4, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v5, 0x80000000, v4, vcc_lo
	scratch_load_b32 v4, off, off offset:872 ; 4-byte Folded Reload
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s67
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v4, s0, v4, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s89
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s43
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x7
	buffer_load_u16 v56, v7, s[60:63], 0 offen
	buffer_load_u16 v57, v3, s[60:63], 0 offen
	buffer_load_u16 v58, v1, s[60:63], 0 offen
	buffer_load_u16 v59, v2, s[60:63], 0 offen
	buffer_load_u16 v3, v8, s[60:63], 0 offen
	buffer_load_u16 v4, v4, s[60:63], 0 offen
	buffer_load_u16 v5, v5, s[60:63], 0 offen
	buffer_load_u16 v6, v6, s[60:63], 0 offen
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v1, off, off offset:904
	scratch_load_b32 v2, off, off offset:920
	scratch_load_b32 v7, off, off offset:968
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s34
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v1, s0, v1, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v2, s0, v2, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v7, s0, v7, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s31
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s24
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v10, 0x80000000, v7, vcc_lo
	scratch_load_b32 v7, off, off offset:936 ; 4-byte Folded Reload
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s29
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v7, s0, v7, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v8, 0x80000000, v7, vcc_lo
	scratch_load_b32 v7, off, off offset:984 ; 4-byte Folded Reload
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s22
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v7, s0, v7, 1
	v_cndmask_b32_e32 v11, 0x80000000, v7, vcc_lo
	scratch_load_b32 v7, off, off offset:1004 ; 4-byte Folded Reload
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s20
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v7, s0, v7, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v12, 0x80000000, v7, vcc_lo
	scratch_load_b32 v7, off, off offset:952 ; 4-byte Folded Reload
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s26
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v7, s0, v7, 1
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s18
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	s_clause 0x7
	buffer_load_u16 v7, v7, s[60:63], 0 offen
	buffer_load_u16 v8, v8, s[60:63], 0 offen
	buffer_load_u16 v34, v2, s[60:63], 0 offen
	buffer_load_u16 v41, v1, s[60:63], 0 offen
	buffer_load_u16 v26, v13, s[60:63], 0 offen
	buffer_load_u16 v42, v12, s[60:63], 0 offen
	buffer_load_u16 v43, v11, s[60:63], 0 offen
	buffer_load_u16 v44, v10, s[60:63], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v2, 4, v18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v10, v9
	v_mov_b32_e32 v11, v9
	v_mov_b32_e32 v12, v9
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_store_b16 v0, v113
	ds_store_b16 v0, v117 offset:1024
	ds_store_b16 v0, v170 offset:2048
	ds_store_b16 v0, v190 offset:3072
	ds_store_b16 v61, v59
	ds_store_b16 v61, v6 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b16 v61, v41 offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b16 v61, v44 offset:3072
	ds_store_b16 v62, v114
	ds_store_b16 v62, v118 offset:1024
	ds_store_b16 v62, v171 offset:2048
	ds_store_b16 v62, v191 offset:3072
	ds_store_b16 v63, v58
	ds_store_b16 v63, v5 offset:1024
	ds_store_b16 v63, v34 offset:2048
	ds_store_b16 v63, v43 offset:3072
	ds_store_b16 v137, v115
	ds_store_b16 v137, v119 offset:1024
	ds_store_b16 v137, v172 offset:2048
	ds_store_b16 v137, v192 offset:3072
	ds_store_b16 v28, v57
	ds_store_b16 v28, v4 offset:1024
	ds_store_b16 v28, v8 offset:2048
	ds_store_b16 v28, v42 offset:3072
	ds_store_b16 v35, v116
	ds_store_b16 v35, v120 offset:1024
	ds_store_b16 v35, v173 offset:2048
	ds_store_b16 v35, v193 offset:3072
	ds_store_b16 v29, v56
	ds_store_b16 v29, v3 offset:1024
	ds_store_b16 v29, v7 offset:2048
	ds_store_b16 v29, v26 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v2, s83, v2
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v13, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s0, s50, v2
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v2, s47, v2
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v112, v16 :: v_dual_mov_b32 v111, v15
	v_dual_mov_b32 v110, v14 :: v_dual_mov_b32 v109, v13
	v_dual_mov_b32 v108, v12 :: v_dual_mov_b32 v107, v11
	v_dual_mov_b32 v106, v10 :: v_dual_mov_b32 v105, v9
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[10:13], off, off offset:36
	scratch_load_b128 v[14:17], off, off offset:52
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s99, s5, s0
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v1, 0, v1
	ds_load_b128 v[121:124], v1
	scratch_load_b32 v1, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[125:128], v1
	scratch_load_b32 v1, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[10:17], v[121:128], v[105:112]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[10:13], off, off offset:68
	scratch_load_b128 v[14:17], off, off offset:84
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	ds_load_b128 v[121:124], v1
	scratch_load_b32 v1, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[125:128], v1
	scratch_load_b32 v1, off, off offset:392 ; 4-byte Folded Reload
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[10:17], v[121:128], v[105:112]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[10:13], off, off offset:100
	scratch_load_b128 v[14:17], off, off offset:116
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	ds_load_b128 v[121:124], v1
	scratch_load_b32 v1, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[125:128], v1
	scratch_load_b32 v1, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[10:17], v[121:128], v[105:112]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[10:13], off, off offset:132
	scratch_load_b128 v[14:17], off, off offset:148
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	ds_load_b128 v[121:124], v1
	scratch_load_b32 v1, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[125:128], v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s83, v18
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s50, v1
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v1, s47, v1
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s101, s5, vcc_lo
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_and_not1_b32 vcc_lo, exec_lo, s76
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[10:17], v[121:128], v[105:112]
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v10, 8, v18
	v_or_b32_e32 v11, 12, v18
	v_or_b32_e32 v12, 16, v18
	v_or_b32_e32 v13, 20, v18
	v_or_b32_e32 v14, 24, v18
	v_or_b32_e32 v15, 28, v18
	.loc	1 608 29 is_stmt 0              ; attention_backward.py:608:29
	v_or_b32_e32 v10, s83, v10
	v_or_b32_e32 v11, s83, v11
	v_or_b32_e32 v12, s83, v12
	v_or_b32_e32 v13, s83, v13
	v_or_b32_e32 v14, s83, v14
	v_or_b32_e32 v15, s83, v15
	.loc	1 609 29 is_stmt 1              ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s1, s50, v10
	v_cmp_gt_i32_e64 s3, s50, v11
	v_cmp_gt_i32_e64 s6, s50, v12
	v_cmp_gt_i32_e64 s7, s50, v13
	v_cmp_gt_i32_e64 s8, s50, v14
	v_cmp_gt_i32_e64 s9, s50, v15
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v19, s47, v10
	v_add_nc_u32_e32 v20, s47, v11
	v_add_nc_u32_e32 v21, s47, v12
	v_add_nc_u32_e32 v22, s47, v13
	v_add_nc_u32_e32 v23, s47, v14
	v_add_nc_u32_e32 v24, s47, v15
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s97, s5, s1
	s_and_b32 s70, s5, s3
	s_and_b32 s102, s5, s6
	s_and_b32 s100, s5, s7
	s_and_b32 s98, s5, s8
	s_and_b32 s96, s5, s9
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e32 vcc_lo, v39, v1
	v_cmp_le_i32_e64 s0, v39, v2
	v_cmp_le_i32_e64 s1, v39, v19
	v_cmp_le_i32_e64 s3, v39, v20
	v_cmp_le_i32_e64 s6, v39, v21
	v_cmp_le_i32_e64 s7, v39, v22
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s10, s101, vcc_lo
	s_and_b32 s0, s99, s0
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s8, v39, v23
	v_cmp_le_i32_e64 s9, v39, v24
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s1, s97, s1
	s_and_b32 s3, s70, s3
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
	s_and_not1_b32 s10, s70, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s8, s98, s8
	s_and_b32 s9, s96, s9
	s_or_b32 s97, s0, s1
	s_or_b32 s70, s10, s3
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
	s_and_not1_b32 vcc_lo, exec_lo, s75
	s_cbranch_vccnz .LBB0_7
; %bb.11:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v10, s45, v1
	v_subrev_nc_u32_e32 v11, s45, v2
	v_subrev_nc_u32_e32 v12, s45, v19
	v_subrev_nc_u32_e32 v13, s45, v20
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v1, s46, v1
	v_add_nc_u32_e32 v2, s46, v2
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v14, s45, v21
	v_subrev_nc_u32_e32 v15, s45, v22
	.loc	1 678 30 is_stmt 0              ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v39, v10
	v_cmp_ge_i32_e64 s0, v39, v11
	.loc	1 679 47 is_stmt 1              ; attention_backward.py:679:47
	v_add_nc_u32_e32 v10, s46, v19
	v_add_nc_u32_e32 v11, s46, v20
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s1, v39, v12
	v_cmp_ge_i32_e64 s3, v39, v13
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v12, s46, v21
	v_add_nc_u32_e32 v13, s46, v22
	.loc	1 679 30 is_stmt 0              ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s10, v39, v1
	v_cmp_le_i32_e64 s11, v39, v2
	.loc	1 678 47 is_stmt 1              ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v16, s45, v23
	v_subrev_nc_u32_e32 v17, s45, v24
	.loc	1 678 30 is_stmt 0              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s6, v39, v14
	v_cmp_ge_i32_e64 s7, v39, v15
	.loc	1 679 47 is_stmt 1              ; attention_backward.py:679:47
	v_add_nc_u32_e32 v14, s46, v23
	v_add_nc_u32_e32 v15, s46, v24
	.loc	1 679 30 is_stmt 0              ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s12, v39, v10
	v_cmp_le_i32_e64 s13, v39, v11
	v_cmp_le_i32_e64 s14, v39, v12
	v_cmp_le_i32_e64 s15, v39, v13
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s10, vcc_lo, s10
	s_and_b32 s0, s0, s11
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s8, v39, v16
	v_cmp_ge_i32_e64 s9, v39, v17
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s16, v39, v14
	v_cmp_le_i32_e64 s17, v39, v15
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s10, s10, s101
	s_and_b32 s0, s0, s99
	s_and_b32 s1, s1, s12
	s_and_b32 s3, s3, s13
	s_and_b32 s1, s1, s97
	s_and_b32 s3, s3, s70
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
	s_and_not1_b32 s10, s70, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s8, s8, s98
	s_and_b32 s9, s9, s96
	s_or_b32 s97, s0, s1
	s_or_b32 s70, s10, s3
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
.LBB0_12:                               ; %Flow450
	.loc	1 0 21                          ; attention_backward.py:0:21
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v41, off, off offset:1012
	scratch_load_b32 v17, off, off offset:1016
	scratch_load_b32 v31, off, off offset:1020
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
	v_mov_b32_e32 v136, v72
	v_mov_b32_e32 v135, v72
	v_mov_b32_e32 v134, v72
	v_mov_b32_e32 v133, v72
	v_mov_b32_e32 v132, v72
	v_mov_b32_e32 v131, v72
	v_mov_b32_e32 v130, v72
	v_mov_b32_e32 v129, v72
	v_mov_b32_e32 v96, v72
	v_mov_b32_e32 v95, v72
	v_mov_b32_e32 v94, v72
	v_mov_b32_e32 v93, v72
	v_mov_b32_e32 v92, v72
	v_mov_b32_e32 v91, v72
	v_mov_b32_e32 v90, v72
	v_mov_b32_e32 v89, v72
.LBB0_14:                               ; %._crit_edge118
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v0, 4, v17
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v16, s73, v41
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s37, s53, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, v0, v31
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
	v_mul_lo_u32 v21, s35, v41
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
	buffer_store_b32 v129, v18, s[36:39], 0 offen
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
	buffer_store_b32 v130, v19, s[36:39], 0 offen
	buffer_store_b32 v131, v20, s[36:39], 0 offen
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
	buffer_store_b32 v132, v17, s[36:39], 0 offen
	buffer_store_b32 v133, v18, s[36:39], 0 offen
	buffer_store_b32 v134, v19, s[36:39], 0 offen
	buffer_store_b32 v135, v20, s[36:39], 0 offen
	buffer_store_b32 v136, v16, s[36:39], 0 offen
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
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1028
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 103
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 1028
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 27396
; TotalNumSgprs: 105
; NumVgprs: 256
; ScratchSize: 1028
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 1028
    .sgpr_count:     105
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_fp32_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 256
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
