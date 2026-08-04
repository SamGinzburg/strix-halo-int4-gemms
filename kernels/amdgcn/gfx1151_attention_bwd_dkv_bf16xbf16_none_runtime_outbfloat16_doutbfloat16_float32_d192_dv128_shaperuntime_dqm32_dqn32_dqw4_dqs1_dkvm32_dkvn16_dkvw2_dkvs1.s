	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[56:59], s[0:1], 0x94
	s_load_b128 s[68:71], s[0:1], 0x64
	s_load_b32 s42, s[0:1], 0x7c
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	v_mov_b32_e32 v99, v0
	s_load_b128 s[12:15], s[0:1], 0x8
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp0:
	.loc	1 536 23 prologue_end           ; attention_backward.py:536:23
	v_or_b32_e32 v1, 0x80, v99
	v_or_b32_e32 v2, 0xc0, v99
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:640
	scratch_store_b32 off, v2, off offset:644
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s56
	s_bitcmp1_b32 s56, 8
	s_cselect_b32 s5, -1, 0
	s_cmp_eq_u32 s4, 1
	v_writelane_b32 v255, s5, 0
	s_cselect_b32 s4, -1, 0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_abs_i32 s17, s69
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_abs_i32 s5, s3
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s43, s2, 4
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_writelane_b32 v255, s4, 1
	s_cvt_f32_u32 s4, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s4
	v_readfirstlane_b32 s4, v0
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_u32_f32 s21, s4
	s_sub_i32 s4, 0, s17
	s_mul_i32 s4, s4, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s21, s4
	s_add_i32 s21, s21, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_mul_hi_u32 s4, s5, s21
	s_mul_i32 s6, s4, s17
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s2, s5, s6
	s_add_i32 s5, s4, 1
	s_sub_i32 s6, s2, s17
	s_cmp_ge_u32 s2, s17
	s_cselect_b32 s4, s5, s4
	s_cselect_b32 s2, s6, s2
	s_add_i32 s5, s4, 1
	s_cmp_ge_u32 s2, s17
	s_cselect_b32 s16, s5, s4
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_ashr_i32 s18, s68, 31
	s_ashr_i32 s19, s69, 31
	s_abs_i32 s20, s68
	.loc	1 514 23                        ; attention_backward.py:514:23
	s_or_b32 s2, s43, 1
	s_or_b32 s4, s43, 2
	s_or_b32 s5, s43, 3
	s_or_b32 s6, s43, 4
	s_or_b32 s7, s43, 5
	s_or_b32 s8, s43, 6
	s_or_b32 s9, s43, 7
	s_or_b32 s10, s43, 8
	s_or_b32 s11, s43, 9
	s_or_b32 s22, s43, 10
	s_or_b32 s23, s43, 11
	s_or_b32 s30, s43, 12
	s_or_b32 s31, s43, 13
	s_or_b32 s40, s43, 14
	s_or_b32 s41, s43, 15
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cmp_lt_i32 s43, s71
	s_cselect_b32 s39, -1, 0
	s_cmp_lt_i32 s2, s71
	s_cselect_b32 s38, -1, 0
	s_cmp_lt_i32 s4, s71
	s_cselect_b32 s37, -1, 0
	s_cmp_lt_i32 s5, s71
	s_cselect_b32 s36, -1, 0
	s_cmp_lt_i32 s6, s71
	.loc	1 533 24                        ; attention_backward.py:533:24
	s_mul_i32 s6, s3, s71
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s35, -1, 0
	s_cmp_lt_i32 s7, s71
	s_load_b32 s7, s[0:1], 0x74
	s_cselect_b32 s34, -1, 0
	s_cmp_lt_i32 s8, s71
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_mov_b32 s8, s12
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s29, -1, 0
	s_cmp_lt_i32 s9, s71
	s_cselect_b32 s28, -1, 0
	s_cmp_lt_i32 s10, s71
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s11, s71
	s_mov_b32 s11, 0x31027000
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s22, s71
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s23, s71
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s30, s71
	.loc	1 536 23                        ; attention_backward.py:536:23
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s4, s7, v1
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s31, s71
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_cmp_gt_i32_e64 s5, s7, v2
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s33, -1, 0
	s_cmp_lt_i32 s40, s71
	v_writelane_b32 v255, s7, 2
	s_cselect_b32 s31, -1, 0
	s_cmp_lt_i32 s41, s71
	s_cselect_b32 s30, -1, 0
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_add_i32 s6, s6, s43
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_and_b32 s9, s13, 0xffff
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_mul_i32 s97, s6, s7
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_mul_i32 s12, s6, s42
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, s97, v99
	v_writelane_b32 v255, s42, 3
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v1, s7, v0
	v_lshlrev_b32_e32 v0, 1, v0
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_or_b32_e32 v100, 64, v99
	v_cmp_gt_i32_e64 s2, s7, v99
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v66, s12, v99
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v2, s7, v1
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v4, 0x80, v0
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_cmp_gt_i32_e64 s22, s7, v100
	.loc	1 536 22 is_stmt 0              ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s39, s2
	.loc	1 534 24 is_stmt 1              ; attention_backward.py:534:24
	v_add_nc_u32_e32 v5, 0x100, v0
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v3, 0x80000000, v0, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s39, s22
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v0, 0x180, v0
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s39, s4
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v6, s7, v2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v7, 0x80000000, v5, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s39, s5
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v5, 0x80, v1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s38, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v9, 0x100, v1
	v_cndmask_b32_e32 v8, 0x80000000, v1, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s38, s22
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_dual_cndmask_b32 v11, 0x80000000, v5 :: v_dual_lshlrev_b32 v2, 1, v2
	v_add_nc_u32_e32 v1, 0x180, v1
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s38, s4
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_lshlrev_b32_e32 v19, 1, v6
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v14, 0x80, v2
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s38, s5
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v15, 0x100, v2
	v_cndmask_b32_e32 v12, 0x80000000, v1, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s37, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v16, 0x180, v2
	v_cndmask_b32_e32 v13, 0x80000000, v2, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s37, s22
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v10, s7, v6
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_clause 0x7
	buffer_load_u16 v5, v3, s[8:11], 0 offen
	buffer_load_u16 v6, v4, s[8:11], 0 offen
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	buffer_load_u16 v29, v0, s[8:11], 0 offen
	buffer_load_u16 v1, v8, s[8:11], 0 offen
	buffer_load_u16 v2, v11, s[8:11], 0 offen
	buffer_load_u16 v3, v9, s[8:11], 0 offen
	buffer_load_u16 v4, v12, s[8:11], 0 offen
	v_cndmask_b32_e32 v8, 0x80000000, v14, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s37, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v14, 0x80, v19
	v_cndmask_b32_e32 v9, 0x80000000, v15, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s37, s5
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v15, 0x100, v19
	v_cndmask_b32_e32 v11, 0x80000000, v16, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s36, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v16, 0x180, v19
	v_cndmask_b32_e32 v12, 0x80000000, v19, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s36, s22
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_lshlrev_b32_e32 v19, 1, v10
	v_add_nc_u32_e32 v17, s7, v10
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v10, 0x80000000, v14, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s36, s4
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v71, s42, v66
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v20, 0x80000000, v15, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s36, s5
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v23, 0x80, v19
	v_cndmask_b32_e32 v21, 0x80000000, v16, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s35, s2
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v18, s7, v17
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v22, 0x80000000, v19, vcc_lo
	s_clause 0x7
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	buffer_load_u16 v14, v8, s[8:11], 0 offen
	buffer_load_u16 v15, v9, s[8:11], 0 offen
	buffer_load_u16 v16, v11, s[8:11], 0 offen
	buffer_load_u16 v9, v12, s[8:11], 0 offen
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	buffer_load_u16 v11, v20, s[8:11], 0 offen
	buffer_load_u16 v12, v21, s[8:11], 0 offen
	v_add_nc_u32_e32 v20, 0x100, v19
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s35, s22
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_lshlrev_b32_e32 v17, 1, v17
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s35, s4
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_lshlrev_b32_e32 v36, 1, v18
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	v_add_nc_u32_e32 v19, 0x180, v19
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s35, s5
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v21, 0x80, v17
	v_add_nc_u32_e32 v24, 0x100, v17
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v25, s7, v18
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s34, s2
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_lshlrev_b32_e32 v66, 1, v66
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v26, 0x80000000, v17, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s34, s22
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, s7, v25
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v27, 0x80000000, v21, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s34, s4
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s6, s42, v99
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v28, 0x80000000, v24, vcc_lo
	v_add_nc_u32_e32 v17, 0x180, v17
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s34, s5
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v30, s7, v0
	v_lshlrev_b32_e32 v0, 1, v0
	.loc	1 588 9                         ; attention_backward.py:588:9
	v_writelane_b32 v255, s12, 4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v35, 0x80000000, v17, vcc_lo
	s_clause 0x7
	buffer_load_u16 v21, v22, s[8:11], 0 offen
	buffer_load_u16 v22, v23, s[8:11], 0 offen
	buffer_load_u16 v23, v20, s[8:11], 0 offen
	buffer_load_u16 v24, v19, s[8:11], 0 offen
	buffer_load_u16 v17, v26, s[8:11], 0 offen
	buffer_load_u16 v18, v27, s[8:11], 0 offen
	buffer_load_u16 v19, v28, s[8:11], 0 offen
	buffer_load_u16 v20, v35, s[8:11], 0 offen
	v_add_nc_u32_e32 v26, 0x80, v36
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s29, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v28, 0x100, v36
	v_cndmask_b32_e32 v27, 0x80000000, v36, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s29, s22
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v35, 0x180, v36
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s29, s4
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_lshlrev_b32_e32 v36, 1, v25
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s29, s5
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v39, 0x80, v0
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	s_clause 0x3
	buffer_load_u16 v25, v27, s[8:11], 0 offen
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	buffer_load_u16 v27, v28, s[8:11], 0 offen
	buffer_load_u16 v28, v35, s[8:11], 0 offen
	v_add_nc_u32_e32 v35, 0x80, v36
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s28, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v38, 0x100, v36
	v_cndmask_b32_e32 v37, 0x80000000, v36, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s28, s22
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v36, 0x180, v36
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s28, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v41, 0x100, v0
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s28, s5
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v31, s7, v30
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s27, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_dual_cndmask_b32 v40, 0x80000000, v0 :: v_dual_and_b32 v97, 15, v99
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s27, s22
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v0, 0x180, v0
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s27, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_dual_cndmask_b32 v41, 0x80000000, v41 :: v_dual_lshlrev_b32 v30, 1, v30
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s27, s5
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v32, s7, v31
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v42, 0x80, v30
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s26, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v44, 0x100, v30
	v_cndmask_b32_e32 v43, 0x80000000, v30, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s26, s22
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_dual_cndmask_b32 v42, 0x80000000, v42 :: v_dual_lshlrev_b32 v31, 1, v31
	v_add_nc_u32_e32 v30, 0x180, v30
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s26, s4
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v33, s7, v32
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v47, 0x100, v31
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s26, s5
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_lshlrev_b32_e32 v32, 1, v32
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	s_clause 0x7
	buffer_load_u16 v40, v40, s[8:11], 0 offen
	buffer_load_u16 v39, v39, s[8:11], 0 offen
	buffer_load_u16 v41, v41, s[8:11], 0 offen
	buffer_load_u16 v45, v0, s[8:11], 0 offen
	buffer_load_u16 v43, v43, s[8:11], 0 offen
	buffer_load_u16 v42, v42, s[8:11], 0 offen
	buffer_load_u16 v44, v44, s[8:11], 0 offen
	buffer_load_u16 v30, v30, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, 0x80, v31
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s25, s2
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v34, s7, v33
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v46, 0x80000000, v31, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s25, s22
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v31, 0x180, v31
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_lshlrev_b32 v33, 1, v33
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s25, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v48, 0x80, v32
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s25, s5
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v50, 0x100, v32
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s24, s2
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v8, s7, v34
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v49, 0x80000000, v32, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s24, s22
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v32, 0x180, v32
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s24, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_dual_cndmask_b32 v50, 0x80000000, v50 :: v_dual_lshlrev_b32 v57, 1, v8
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s24, s5
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_lshl_u32 v8, v8, s7, 1
	v_lshlrev_b32_e32 v34, 1, v34
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	s_clause 0x7
	buffer_load_u16 v46, v46, s[8:11], 0 offen
	buffer_load_u16 v51, v0, s[8:11], 0 offen
	buffer_load_u16 v47, v47, s[8:11], 0 offen
	buffer_load_u16 v31, v31, s[8:11], 0 offen
	buffer_load_u16 v49, v49, s[8:11], 0 offen
	buffer_load_u16 v48, v48, s[8:11], 0 offen
	buffer_load_u16 v50, v50, s[8:11], 0 offen
	buffer_load_u16 v32, v32, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, 0x80, v33
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s23, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v53, 0x100, v33
	v_add_nc_u32_e32 v63, 0x100, v8
	v_cndmask_b32_e32 v52, 0x80000000, v33, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s23, s22
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v33, 0x180, v33
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s23, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v54, 0x80, v34
	v_cndmask_b32_e32 v53, 0x80000000, v53, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s23, s5
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v56, 0x100, v34
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s33, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v60, 0x100, v57
	v_cndmask_b32_e32 v55, 0x80000000, v34, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s33, s22
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v34, 0x180, v34
	v_cndmask_b32_e32 v54, 0x80000000, v54, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s33, s4
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s7, s42, v100
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v56, 0x80000000, v56, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s33, s5
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s31, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v59, 0x80000000, v57, vcc_lo
	s_clause 0x7
	buffer_load_u16 v52, v52, s[8:11], 0 offen
	buffer_load_u16 v58, v0, s[8:11], 0 offen
	buffer_load_u16 v53, v53, s[8:11], 0 offen
	buffer_load_u16 v33, v33, s[8:11], 0 offen
	buffer_load_u16 v55, v55, s[8:11], 0 offen
	buffer_load_u16 v54, v54, s[8:11], 0 offen
	buffer_load_u16 v56, v56, s[8:11], 0 offen
	buffer_load_u16 v34, v34, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, 0x80, v57
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s31, s22
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v57, 0x180, v57
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s31, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v60, 0x80000000, v60, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s31, s5
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v57, 0x80000000, v57, vcc_lo
	s_clause 0x3
	buffer_load_u16 v59, v59, s[8:11], 0 offen
	buffer_load_u16 v61, v0, s[8:11], 0 offen
	buffer_load_u16 v60, v60, s[8:11], 0 offen
	buffer_load_u16 v57, v57, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, 0x80, v8
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s30, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v62, 0x80000000, v8, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s30, s22
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v8, 0x180, v8
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s30, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s30, s5
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x7
	buffer_load_u16 v37, v37, s[8:11], 0 offen
	buffer_load_u16 v35, v35, s[8:11], 0 offen
	buffer_load_u16 v38, v38, s[8:11], 0 offen
	buffer_load_u16 v36, v36, s[8:11], 0 offen
	buffer_load_u16 v62, v62, s[8:11], 0 offen
	buffer_load_u16 v64, v0, s[8:11], 0 offen
	buffer_load_u16 v63, v63, s[8:11], 0 offen
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	v_lshlrev_b32_e32 v0, 1, v99
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s39, s6
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s9, s15, 0xffff
	s_mov_b32 s8, s14
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v65, 0x210, v0
	v_xor_b32_e32 v67, 0x420, v0
	v_xor_b32_e32 v68, 0x630, v0
	v_xor_b32_e32 v70, 0xa50, v0
	v_xor_b32_e32 v69, 0x840, v0
	v_add_nc_u32_e32 v88, 0, v65
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v65, s42, v71
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v89, 0, v67
	v_add_nc_u32_e32 v90, 0, v68
	v_xor_b32_e32 v72, 0xc60, v0
	v_add_nc_u32_e32 v92, 0, v70
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v67, s42, v65
	v_lshlrev_b32_e32 v70, 1, v71
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v91, 0, v69
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_nc_u32_e32 v69, 0x80, v66
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_lshlrev_b32_e32 v65, 1, v65
	v_add_nc_u32_e32 v68, s42, v67
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v93, 0, v72
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_nc_u32_e32 v72, 0x80, v70
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_lshlrev_b32_e32 v67, 1, v67
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_nc_u32_e32 v75, 0x80, v65
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v71, s42, v68
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s39, s7
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_nc_u32_e32 v77, 0x80, v67
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s38, s6
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_lshlrev_b32_e32 v68, 1, v68
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s38, s7
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v91, off offset:660
	scratch_store_b32 off, v92, off offset:664
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s37, s6
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_nc_u32_e32 v80, 0x80, v68
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s37, s7
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s36, s6
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s36, s7
	scratch_store_b32 off, v88, off offset:648 ; 4-byte Folded Spill
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v73, 0xe70, v0
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s35, s6
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s35, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v94, 0, v73
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v73, s42, v71
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v80, 0x80000000, v80 :: v_dual_lshlrev_b32 v71, 1, v71
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s34, s6
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v176, 0, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v74, s42, v73
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_nc_u32_e32 v82, 0x80, v71
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_lshlrev_b32_e32 v73, 1, v73
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s34, s7
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v76, s42, v74
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s29, s6
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v85, 0x80000000, v73 :: v_dual_lshlrev_b32 v74, 1, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v78, s42, v76
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_nc_u32_e32 v73, 0x80, v73
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s29, s7
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_nc_u32_e32 v86, 0x80, v74
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(62)
	ds_store_b16 v176, v5
	ds_store_b16 v176, v6 offset:128
	s_waitcnt vmcnt(61)
	ds_store_b16 v176, v7 offset:256
	s_waitcnt vmcnt(60)
	ds_store_b16 v176, v29 offset:384
	s_waitcnt vmcnt(35)
	ds_store_b16 v176, v40 offset:4224
	s_waitcnt vmcnt(34)
	ds_store_b16 v176, v39 offset:4096
	s_waitcnt vmcnt(33)
	ds_store_b16 v176, v41 offset:4480
	s_waitcnt vmcnt(32)
	ds_store_b16 v176, v45 offset:4352
	ds_store_b16 v88, v1
	ds_store_b16 v88, v2 offset:128
	ds_store_b16 v88, v3 offset:256
	ds_store_b16 v88, v4 offset:384
	s_waitcnt vmcnt(31)
	ds_store_b16 v88, v43 offset:4224
	s_waitcnt vmcnt(30)
	ds_store_b16 v88, v42 offset:4096
	s_waitcnt vmcnt(29)
	ds_store_b16 v88, v44 offset:4480
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v79, s42, v78
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(28)
	ds_store_b16 v88, v30 offset:4352
	ds_store_b16 v89, v13
	ds_store_b16 v89, v14 offset:128
	ds_store_b16 v89, v15 offset:256
	ds_store_b16 v89, v16 offset:384
	s_waitcnt vmcnt(27)
	ds_store_b16 v89, v46 offset:4224
	s_waitcnt vmcnt(26)
	ds_store_b16 v89, v51 offset:4096
	s_waitcnt vmcnt(25)
	ds_store_b16 v89, v47 offset:4480
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v81, s42, v79
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(24)
	ds_store_b16 v89, v31 offset:4352
	ds_store_b16 v90, v9
	ds_store_b16 v90, v10 offset:128
	ds_store_b16 v90, v11 offset:256
	ds_store_b16 v90, v12 offset:384
	s_waitcnt vmcnt(23)
	ds_store_b16 v90, v49 offset:4224
	s_waitcnt vmcnt(22)
	ds_store_b16 v90, v48 offset:4096
	s_waitcnt vmcnt(21)
	ds_store_b16 v90, v50 offset:4480
	s_waitcnt vmcnt(20)
	ds_store_b16 v90, v32 offset:4352
	ds_store_b16 v91, v21
	ds_store_b16 v91, v22 offset:128
	ds_store_b16 v91, v23 offset:256
	ds_store_b16 v91, v24 offset:384
	s_waitcnt vmcnt(19)
	ds_store_b16 v91, v52 offset:4224
	s_waitcnt vmcnt(18)
	ds_store_b16 v91, v58 offset:4096
	s_waitcnt vmcnt(17)
	ds_store_b16 v91, v53 offset:4480
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v83, s42, v81
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(16)
	ds_store_b16 v91, v33 offset:4352
	ds_store_b16 v92, v17
	ds_store_b16 v92, v18 offset:128
	ds_store_b16 v92, v19 offset:256
	ds_store_b16 v92, v20 offset:384
	s_waitcnt vmcnt(15)
	ds_store_b16 v92, v55 offset:4224
	s_waitcnt vmcnt(14)
	ds_store_b16 v92, v54 offset:4096
	s_waitcnt vmcnt(13)
	ds_store_b16 v92, v56 offset:4480
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_lshlrev_b32_e32 v17, 1, v76
	v_add_nc_u32_e32 v84, s42, v83
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v2, 0x80000000, v73, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s28, s6
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_lshlrev_b32_e32 v18, 1, v78
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v3, 0x80000000, v74, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s28, s7
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v89, off offset:652
	scratch_store_b32 off, v90, off offset:656
	scratch_store_b32 off, v93, off offset:668
	scratch_store_b32 off, v94, off offset:672
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(12)
	ds_store_b16 v92, v34 offset:4352
	ds_store_b16 v93, v25
	ds_store_b16 v93, v26 offset:128
	ds_store_b16 v93, v27 offset:256
	ds_store_b16 v93, v28 offset:384
	s_waitcnt vmcnt(11)
	ds_store_b16 v93, v59 offset:4224
	s_waitcnt vmcnt(10)
	ds_store_b16 v93, v61 offset:4096
	s_waitcnt vmcnt(9)
	ds_store_b16 v93, v60 offset:4480
	s_waitcnt vmcnt(8)
	ds_store_b16 v93, v57 offset:4352
	s_waitcnt vmcnt(7)
	ds_store_b16 v94, v37
	s_waitcnt vmcnt(6)
	ds_store_b16 v94, v35 offset:128
	s_waitcnt vmcnt(5)
	ds_store_b16 v94, v38 offset:256
	s_waitcnt vmcnt(4)
	ds_store_b16 v94, v36 offset:384
	s_waitcnt vmcnt(3)
	ds_store_b16 v94, v62 offset:4224
	s_waitcnt vmcnt(2)
	ds_store_b16 v94, v64 offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b16 v94, v63 offset:4480
	s_waitcnt vmcnt(0)
	ds_store_b16 v94, v8 offset:4352
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v8, 0x80000000, v86, vcc_lo
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_clause 0x7
	buffer_load_u16 v11, v68, s[8:11], 0 offen
	buffer_load_u16 v12, v80, s[8:11], 0 offen
	buffer_load_u16 v9, v71, s[8:11], 0 offen
	buffer_load_u16 v10, v82, s[8:11], 0 offen
	buffer_load_u16 v4, v85, s[8:11], 0 offen
	buffer_load_u16 v5, v2, s[8:11], 0 offen
	buffer_load_u16 v2, v3, s[8:11], 0 offen
	buffer_load_u16 v3, v8, s[8:11], 0 offen
	v_add_nc_u32_e32 v8, 0x80, v17
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s27, s6
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_lshlrev_b32 v20, 1, v79
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s27, s7
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_nc_u32_e32 v19, 0x80, v18
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s26, s6
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_lshlrev_b32 v21, 1, v81
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s26, s7
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_nc_u32_e32 v22, 0x80, v20
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s25, s6
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_nc_u32_e32 v23, 0x80, v21
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s25, s7
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_lshlrev_b32_e32 v30, 1, v83
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s24, s6
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v87, s42, v84
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s24, s7
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_clause 0x7
	buffer_load_u16 v15, v66, s[8:11], 0 offen
	buffer_load_u16 v16, v69, s[8:11], 0 offen
	buffer_load_u16 v13, v70, s[8:11], 0 offen
	buffer_load_u16 v14, v72, s[8:11], 0 offen
	buffer_load_u16 v7, v65, s[8:11], 0 offen
	buffer_load_u16 v49, v75, s[8:11], 0 offen
	buffer_load_u16 v1, v67, s[8:11], 0 offen
	buffer_load_u16 v6, v77, s[8:11], 0 offen
	v_cndmask_b32_e32 v29, 0x80000000, v23, vcc_lo
	s_clause 0x7
	buffer_load_u16 v27, v17, s[8:11], 0 offen
	buffer_load_u16 v28, v8, s[8:11], 0 offen
	buffer_load_u16 v25, v18, s[8:11], 0 offen
	buffer_load_u16 v26, v19, s[8:11], 0 offen
	buffer_load_u16 v23, v20, s[8:11], 0 offen
	buffer_load_u16 v24, v22, s[8:11], 0 offen
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	buffer_load_u16 v22, v29, s[8:11], 0 offen
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_lshlrev_b32_e32 v17, 1, v84
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_nc_u32_e32 v8, 0x80, v30
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s23, s6
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_lshlrev_b32_e32 v20, 1, v87
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v18, 0x80000000, v30, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s23, s7
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_nc_u32_e32 v19, 0x80, v17
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s33, s6
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_lshl_u32 v29, v87, s42, 1
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s33, s7
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_nc_u32_e32 v30, 0x80, v20
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s31, s6
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_nc_u32_e32 v31, 0x80, v29
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s31, s7
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v33, 0x80000000, v30, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s30, s6
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v34, 0x80000000, v29, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s30, s7
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v35, 0x80000000, v31, vcc_lo
	s_clause 0x7
	buffer_load_u16 v31, v18, s[8:11], 0 offen
	buffer_load_u16 v32, v8, s[8:11], 0 offen
	buffer_load_u16 v29, v17, s[8:11], 0 offen
	buffer_load_u16 v30, v19, s[8:11], 0 offen
	buffer_load_u16 v19, v20, s[8:11], 0 offen
	buffer_load_u16 v20, v33, s[8:11], 0 offen
	buffer_load_u16 v17, v34, s[8:11], 0 offen
	buffer_load_u16 v18, v35, s[8:11], 0 offen
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v8, 4, v97
	.loc	1 587 22                        ; attention_backward.py:587:22
	s_add_i32 s9, s70, 31
	s_mov_b32 s8, 0
	.loc	1 587 21 is_stmt 0              ; attention_backward.py:587:21
	s_ashr_i32 s10, s9, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 534 24 is_stmt 1              ; attention_backward.py:534:24
	v_lshl_or_b32 v8, v97, 9, v8
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_lshr_b32 s10, s10, 27
	s_add_i32 s10, s9, s10
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_hi_u32 s9, s20, s21
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v48, 0, v8
	v_xad_u32 v47, v8, 16, 0
	v_xad_u32 v46, v8, 32, 0
	v_xad_u32 v45, v8, 48, 0
	v_xad_u32 v44, v8, 64, 0
	v_xad_u32 v43, 0x50, v8, 0
	v_xad_u32 v42, 0x60, v8, 0
	v_xad_u32 v41, 0x70, v8, 0
	v_xad_u32 v40, 0x80, v8, 0
	v_xad_u32 v39, 0x90, v8, 0
	v_xad_u32 v38, 0xa0, v8, 0
	v_xad_u32 v37, 0xb0, v8, 0
	v_xad_u32 v35, 0xc0, v8, 0
	v_xad_u32 v36, 0xd0, v8, 0
	v_xad_u32 v34, 0xe0, v8, 0
	v_xad_u32 v33, 0xf0, v8, 0
	.loc	1 587 20                        ; attention_backward.py:587:20
	s_and_b32 s14, s10, 0xffffffe0
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_bfe_u32 s10, s56, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s8, s43, s57
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_add_i32 s11, s58, s59
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s8, s8, s59
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_sub_i32 s11, s43, s11
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s8, s8, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 592 17                        ; attention_backward.py:592:17
	s_min_i32 s8, s70, s8
	.loc	1 590 24                        ; attention_backward.py:590:24
	s_max_i32 s8, s8, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 600 19                        ; attention_backward.py:600:19
	s_add_i32 s8, s8, 31
	.loc	1 600 18 is_stmt 0              ; attention_backward.py:600:18
	s_ashr_i32 s10, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s10, s10, 27
	s_add_i32 s8, s8, s10
	.loc	1 589 24 is_stmt 1              ; attention_backward.py:589:24
	s_max_i32 s10, s11, 0
	.loc	1 600 17                        ; attention_backward.py:600:17
	s_and_b32 s11, s8, 0xffffffe0
	.loc	1 597 45                        ; attention_backward.py:597:45
	s_and_b32 s8, s10, 0x7fffffe0
	.loc	1 598 24                        ; attention_backward.py:598:24
	s_min_i32 s14, s14, s11
.LBB0_2:
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[50:53], v48
	ds_load_b128 v[58:61], v48 offset:256
	ds_load_b128 v[54:57], v47
	ds_load_b128 v[62:65], v47 offset:256
	s_load_b128 s[24:27], s[0:1], 0x50
	.loc	1 717 21 is_stmt 1              ; attention_backward.py:717:21
	v_xor_b32_e32 v8, 0x110, v0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_i32 s10, s9, s17
	s_xor_b32 s11, s18, s19
	s_sub_i32 s10, s20, s10
	s_add_i32 s12, s9, 1
	s_sub_i32 s13, s10, s17
	s_cmp_ge_u32 s10, s17
	s_waitcnt lgkmcnt(0)
	s_clause 0x3                            ; 64-byte Folded Spill
	scratch_store_b128 off, v[50:53], off offset:676
	scratch_store_b128 off, v[54:57], off offset:692
	scratch_store_b128 off, v[58:61], off offset:708
	scratch_store_b128 off, v[62:65], off offset:724
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[50:53], v46
	ds_load_b128 v[58:61], v46 offset:256
	ds_load_b128 v[54:57], v45
	ds_load_b128 v[62:65], v45 offset:256
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_writelane_b32 v255, s24, 5
	s_cselect_b32 s9, s12, s9
	s_cselect_b32 s10, s13, s10
	s_add_i32 s12, s9, 1
	s_cmp_ge_u32 s10, s17
	v_writelane_b32 v255, s25, 6
	s_cselect_b32 s9, s12, s9
	s_waitcnt lgkmcnt(3)
	scratch_store_b128 off, v[50:53], off offset:740 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(1)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[54:57], off offset:756
	scratch_store_b128 off, v[58:61], off offset:772
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[62:65], off offset:788 ; 16-byte Folded Spill
	.loc	1 0 0                           ; attention_backward.py:0
	ds_load_b128 v[50:53], v44
	ds_load_b128 v[58:61], v44 offset:256
	ds_load_b128 v[54:57], v43
	ds_load_b128 v[62:65], v43 offset:256
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_writelane_b32 v255, s26, 7
	s_xor_b32 s9, s9, s11
	s_waitcnt lgkmcnt(3)
	scratch_store_b128 off, v[50:53], off offset:804 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(1)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[54:57], off offset:820
	scratch_store_b128 off, v[58:61], off offset:836
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[62:65], off offset:852 ; 16-byte Folded Spill
	.loc	1 0 0                           ; attention_backward.py:0
	ds_load_b128 v[50:53], v42
	ds_load_b128 v[58:61], v42 offset:256
	ds_load_b128 v[54:57], v41
	ds_load_b128 v[62:65], v41 offset:256
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_writelane_b32 v255, s27, 8
	s_sub_i32 s12, s9, s11
	s_waitcnt lgkmcnt(3)
	scratch_store_b128 off, v[50:53], off offset:868 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[54:57], off offset:884 ; 16-byte Folded Spill
	.loc	1 0 0                           ; attention_backward.py:0
	ds_load_b128 v[54:57], v39 offset:256
	ds_load_b128 v[41:44], v40
	ds_load_b128 v[50:53], v40 offset:256
	ds_load_b128 v[45:48], v39
	scratch_store_b128 off, v[58:61], off offset:900 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(4)
	scratch_store_b128 off, v[62:65], off offset:916 ; 16-byte Folded Spill
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_cmp_lt_i32 s12, 1
	s_waitcnt lgkmcnt(2)
	scratch_store_b128 off, v[41:44], off offset:932 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_clause 0x2                            ; 48-byte Folded Spill
	scratch_store_b128 off, v[45:48], off offset:948
	scratch_store_b128 off, v[50:53], off offset:964
	scratch_store_b128 off, v[54:57], off offset:980
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[39:42], v38
	ds_load_b128 v[50:53], v38 offset:256
	ds_load_b128 v[43:46], v37
	ds_load_b128 v[54:57], v37 offset:256
	s_waitcnt lgkmcnt(3)
	scratch_store_b128 off, v[39:42], off offset:996 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(1)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[43:46], off offset:1012
	scratch_store_b128 off, v[50:53], off offset:1028
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[54:57], off offset:1044 ; 16-byte Folded Spill
	ds_load_b128 v[37:40], v35
	ds_load_b128 v[50:53], v35 offset:256
	ds_load_b128 v[41:44], v36
	ds_load_b128 v[54:57], v36 offset:256
	s_waitcnt lgkmcnt(3)
	scratch_store_b128 off, v[37:40], off offset:1060 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(1)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[41:44], off offset:1076
	scratch_store_b128 off, v[50:53], off offset:1092
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[54:57], off offset:1108 ; 16-byte Folded Spill
	ds_load_b128 v[39:42], v33
	ds_load_b128 v[54:57], v33 offset:256
	ds_load_b128 v[35:38], v34
	ds_load_b128 v[50:53], v34 offset:256
	.loc	1 717 21 is_stmt 1              ; attention_backward.py:717:21
	v_xor_b32_e32 v34, 0x220, v0
	v_xor_b32_e32 v33, 0x440, v0
	s_waitcnt lgkmcnt(1)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[35:38], off offset:1124
	scratch_store_b128 off, v[39:42], off offset:1140
	v_add_nc_u32_e32 v35, 0, v8
	v_xor_b32_e32 v8, 0x330, v0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[50:53], off offset:1156
	scratch_store_b128 off, v[54:57], off offset:1172
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v34, 0, v34
	s_waitcnt vmcnt(23)
	ds_store_b16 v176, v15
	s_waitcnt vmcnt(22)
	ds_store_b16 v176, v16 offset:128
	s_waitcnt vmcnt(15)
	ds_store_b16 v176, v27 offset:2176
	s_waitcnt vmcnt(14)
	ds_store_b16 v176, v28 offset:2048
	ds_store_b16 v35, v13
	ds_store_b16 v35, v14 offset:128
	s_waitcnt vmcnt(13)
	ds_store_b16 v35, v25 offset:2176
	v_add_nc_u32_e32 v13, 0, v8
	v_xor_b32_e32 v8, 0x550, v0
	v_add_nc_u32_e32 v14, 0, v33
	s_waitcnt vmcnt(10)
	ds_store_b16 v34, v24 offset:2048
	ds_store_b16 v13, v1
	ds_store_b16 v13, v6 offset:128
	s_waitcnt vmcnt(9)
	ds_store_b16 v13, v21 offset:2176
	v_xor_b32_e32 v6, 0x770, v0
	v_add_nc_u32_e32 v1, 0, v8
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v35, off offset:1188
	scratch_store_b32 off, v34, off offset:1192
	scratch_store_b32 off, v13, off offset:1196
	scratch_store_b32 off, v14, off offset:1200
	s_waitcnt vmcnt(6)
	ds_store_b16 v14, v32 offset:2048
	ds_store_b16 v1, v9
	ds_store_b16 v1, v10 offset:128
	s_waitcnt vmcnt(5)
	ds_store_b16 v1, v29 offset:2176
	v_add_nc_u32_e32 v8, 0, v6
	scratch_store_b32 off, v1, off offset:1204 ; 4-byte Folded Spill
	s_waitcnt vmcnt(4)
	ds_store_b16 v1, v30 offset:2048
	ds_store_b16 v35, v26 offset:2048
	ds_store_b16 v13, v22 offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b16 v8, v18 offset:2048
	v_xor_b32_e32 v1, 0x660, v0
	ds_store_b16 v34, v7
	ds_store_b16 v34, v49 offset:128
	ds_store_b16 v34, v23 offset:2176
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v6, v99, 4, 1
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_store_b16 v14, v11
	ds_store_b16 v14, v12 offset:128
	ds_store_b16 v14, v31 offset:2176
	scratch_store_b32 off, v8, off offset:1212 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v7, 0, v1
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_and_b32_e32 v1, 32, v99
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_store_b16 v7, v4
	ds_store_b16 v7, v5 offset:128
	ds_store_b16 v7, v19 offset:2176
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshrrev_b32_e32 v29, 1, v1
	scratch_store_b32 off, v7, off offset:1208 ; 4-byte Folded Spill
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_store_b16 v7, v20 offset:2048
	ds_store_b16 v8, v2
	ds_store_b16 v8, v3 offset:128
	ds_store_b16 v8, v17 offset:2176
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cbranch_scc1 .LBB0_14
; %bb.3:                                ; %.lr.ph358
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_mul_u32_u24_e32 v3, 0x110, v97
	scratch_store_b32 off, v6, off offset:1932 ; 4-byte Folded Spill
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v30, s43, v6
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	v_dual_mov_b32 v217, 0 :: v_dual_and_b32 v2, 16, v99
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v4, 0xf0, v3, 0
	v_xad_u32 v5, 0xe0, v3, 0
	v_lshlrev_b32_e32 v19, 6, v99
	v_bfe_i32 v21, v99, 3, 1
	ds_load_b128 v[8:11], v4
	ds_load_b128 v[4:7], v5
	v_cndmask_b32_e64 v22, 0x420, 0, vcc_lo
	v_lshlrev_b32_e32 v24, 1, v97
	v_lshlrev_b32_e32 v2, 2, v2
	v_lshl_or_b32 v33, v1, 7, v3
	v_writelane_b32 v255, s97, 9
	v_and_or_b32 v21, 0x210, v21, v22
	s_xor_b32 s9, s3, s69
	v_or3_b32 v34, v24, v2, v1
	v_xor_b32_e32 v25, 16, v33
	v_xor_b32_e32 v26, 32, v33
	v_xor_b32_e32 v28, 64, v33
	v_xor_b32_e32 v27, 48, v33
	s_clause 0x3
	s_load_b32 s104, s[0:1], 0x80
	s_load_b64 s[76:77], s[0:1], 0x48
	s_load_b128 s[80:83], s[0:1], 0x38
	s_load_b64 s[84:85], s[0:1], 0x0
	s_ashr_i32 s1, s9, 31
	v_writelane_b32 v255, s43, 10
	s_xor_b32 s9, s16, s1
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_sub_i32 s0, s43, s59
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[4:7], off offset:1256
	scratch_store_b128 off, v[8:11], off offset:1272
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v4, 0xd0, v3, 0
	v_xad_u32 v5, 0xc0, v3, 0
	v_xad_u32 v6, 0xb0, v3, 0
	v_xad_u32 v7, 0xa0, v3, 0
	ds_load_b128 v[14:17], v4
	ds_load_b128 v[10:13], v5
	v_xad_u32 v8, 0x90, v3, 0
	v_xad_u32 v9, 0x80, v3, 0
	v_xad_u32 v4, 0x70, v3, 0
	v_xad_u32 v5, 0x60, v3, 0
	s_sub_i32 s1, s9, s1
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_max_i32 s0, s0, 0
	s_mul_i32 s9, s1, s69
	s_and_b32 s0, s0, 0x7fffffe0
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_sub_i32 s3, s3, s9
	.loc	1 602 9                         ; attention_backward.py:602:9
	v_readlane_b32 s9, v255, 1
	s_max_u32 s0, s8, s0
	.loc	1 662 35 is_stmt 1              ; attention_backward.py:662:35
	s_mul_i32 s1, s1, s68
	s_mov_b64 s[10:11], s[58:59]
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v31, 2, v30
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_and_b32 s9, s9, exec_lo
	s_cselect_b32 s8, s0, s8
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s0, s12, s3
	s_mov_b32 s9, s57
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[10:13], off offset:1288
	scratch_store_b128 off, v[14:17], off offset:1304
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[14:17], v6
	ds_load_b128 v[10:13], v7
	s_add_i32 s0, s0, s1
	s_cmp_lt_i32 s8, s14
	v_writelane_b32 v255, s0, 11
	s_cselect_b32 s0, -1, 0
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v32, 4, v30
	v_or_b32_e32 v73, 6, v30
	v_or_b32_e32 v74, 8, v30
	v_writelane_b32 v255, s8, 12
	v_or_b32_e32 v75, 10, v30
	v_or_b32_e32 v76, 12, v30
	v_or_b32_e32 v77, 14, v30
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_mul_f32 s98, s104, 0x3fb8aa3b
	v_writelane_b32 v255, s0, 13
	s_mov_b32 s13, 0
	s_and_b32 s85, s85, 0xffff
	s_mov_b32 s87, 0x31027000
	s_mov_b32 s86, 0x7ffffffe
	v_readlane_b32 s0, v255, 3
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[10:13], off offset:1320
	scratch_store_b128 off, v[14:17], off offset:1336
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[10:13], v8
	ds_load_b128 v[6:9], v9
	v_readlane_b32 s1, v255, 2
	.loc	1 605 9                         ; attention_backward.py:605:9
	v_writelane_b32 v255, s8, 14
	s_and_b32 s89, s83, 0xffff
	s_mov_b32 s88, s82
	s_and_b32 s77, s77, 0xffff
	s_and_b32 s81, s81, 0xffff
	v_writelane_b32 v255, s9, 15
	s_clause 0x9                            ; 40-byte Folded Spill
	scratch_store_b32 off, v30, off offset:1224
	scratch_store_b32 off, v31, off offset:1228
	scratch_store_b32 off, v32, off offset:1232
	scratch_store_b32 off, v73, off offset:1236
	scratch_store_b32 off, v74, off offset:1240
	scratch_store_b32 off, v75, off offset:1244
	scratch_store_b32 off, v76, off offset:1248
	scratch_store_b32 off, v77, off offset:1252
	scratch_store_b32 off, v99, off offset:1216
	scratch_store_b32 off, v100, off offset:1220
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[6:9], off offset:1352
	scratch_store_b128 off, v[10:13], off offset:1368
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[14:17], v4
	ds_load_b128 v[10:13], v5
	v_xad_u32 v6, 0x50, v3, 0
	v_xad_u32 v7, v3, 64, 0
	v_xad_u32 v8, v3, 48, 0
	v_xad_u32 v9, v3, 32, 0
	v_xad_u32 v4, v3, 16, 0
	v_mad_u32_u24 v5, 0x110, v97, 0
	.loc	1 605 9                         ; attention_backward.py:605:9
	v_writelane_b32 v255, s10, 16
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[10:13], off offset:1384
	scratch_store_b128 off, v[14:17], off offset:1400
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[14:17], v6
	ds_load_b128 v[10:13], v7
	.loc	1 605 9                         ; attention_backward.py:605:9
	v_writelane_b32 v255, s11, 17
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[10:13], off offset:1416
	scratch_store_b128 off, v[14:17], off offset:1432
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[10:13], v8
	ds_load_b128 v[6:9], v9
	v_lshlrev_b32_e32 v15, 3, v99
	.loc	1 605 9                         ; attention_backward.py:605:9
	v_writelane_b32 v255, s14, 18
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[6:9], off offset:1448
	scratch_store_b128 off, v[10:13], off offset:1464
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[11:14], v4
	ds_load_b128 v[7:10], v5
	v_mul_u32_u24_e32 v6, 0x210, v97
	v_and_b32_e32 v20, 48, v15
	v_xor_b32_e32 v0, v15, v0
	.loc	1 605 9                         ; attention_backward.py:605:9
	v_writelane_b32 v255, s12, 19
	v_mov_b32_e32 v209, 0
	v_lshl_or_b32 v23, v1, 8, v6
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[7:10], off offset:1480
	scratch_store_b128 off, v[11:14], off offset:1496
	v_xor_b32_e32 v4, 16, v23
	v_xor_b32_e32 v5, 32, v23
	v_xor_b32_e32 v6, 48, v23
	v_xor_b32_e32 v7, 64, v23
	v_xor_b32_e32 v8, 0x50, v23
	v_xor_b32_e32 v9, 0x60, v23
	v_xor_b32_e32 v10, 0x70, v23
	v_xor_b32_e32 v11, 0x80, v23
	v_xor_b32_e32 v12, 0x90, v23
	v_xor_b32_e32 v13, 0xa0, v23
	v_xor_b32_e32 v14, 0xb0, v23
	v_xor_b32_e32 v16, 0xc0, v23
	v_xor_b32_e32 v17, 0xd0, v23
	v_xor_b32_e32 v18, 0xe0, v23
	v_xor_b32_e32 v15, 0xf0, v23
	v_and_or_b32 v22, v0, 48, v19
	scratch_store_b32 off, v23, off offset:1512 ; 4-byte Folded Spill
	v_and_or_b32 v23, 0x1c0, v19, v20
	v_dual_mov_b32 v201, 0 :: v_dual_add_nc_u32 v2, 0, v4
	v_xor_b32_e32 v0, 16, v22
	v_xor_b32_e32 v19, 32, v22
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v23, v21, v23
	scratch_store_b32 off, v22, off offset:1516 ; 4-byte Folded Spill
	v_xor_b32_e32 v3, 48, v22
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:1536
	scratch_store_b32 off, v23, off offset:1520
	v_add_nc_u32_e32 v2, 0, v5
	v_xor_b32_e32 v21, 16, v23
	scratch_store_b32 off, v0, off offset:1596 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v19
	v_xor_b32_e32 v22, 32, v23
	scratch_store_b32 off, v2, off offset:1540 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 0, v6
	v_xor_b32_e32 v23, 48, v23
	scratch_store_b32 off, v0, off offset:1600 ; 4-byte Folded Spill
	v_dual_mov_b32 v193, 0 :: v_dual_add_nc_u32 v0, 0, v3
	scratch_store_b32 off, v2, off offset:1544 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 0, v7
	scratch_store_b32 off, v0, off offset:1604 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v21
	scratch_store_b32 off, v2, off offset:1548 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 0, v8
	scratch_store_b32 off, v0, off offset:1608 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v22
	scratch_store_b32 off, v2, off offset:1552 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 0, v9
	scratch_store_b32 off, v0, off offset:1612 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v23
	scratch_store_b32 off, v2, off offset:1556 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 0, v10
	scratch_store_b32 off, v0, off offset:1616 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v25
	scratch_store_b32 off, v2, off offset:1560 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 0, v11
	scratch_store_b32 off, v0, off offset:1620 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v26
	scratch_store_b32 off, v2, off offset:1564 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 0, v12
	v_mov_b32_e32 v12, 0
	scratch_store_b32 off, v0, off offset:1624 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v33
	v_dual_mov_b32 v220, v12 :: v_dual_add_nc_u32 v3, 0, v28
	scratch_store_b32 off, v2, off offset:1568 ; 4-byte Folded Spill
	v_dual_mov_b32 v195, v12 :: v_dual_add_nc_u32 v2, 0, v13
	v_mov_b32_e32 v221, v12
	v_add3_u32 v171, 0, v1, v24
	v_xor_b32_e32 v1, 0x50, v33
	v_add_nc_u32_e32 v0, 0, v0
	v_mov_b32_e32 v222, v12
	v_mov_b32_e32 v197, v12
	v_mov_b32_e32 v199, v12
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v2, off offset:1572 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 0, v14
	scratch_store_b32 off, v0, off offset:1640 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x80, v33
	v_mov_b32_e32 v5, v12
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:1636
	scratch_store_b32 off, v2, off offset:1576
	v_add_nc_u32_e32 v2, 0, v16
	v_dual_mov_b32 v219, v12 :: v_dual_add_nc_u32 v0, 0, v0
	v_lshl_or_b32 v20, v97, 6, v20
	v_mov_b32_e32 v224, v12
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:1580
	scratch_store_b32 off, v0, off offset:1648
	v_xor_b32_e32 v0, 0xc0, v33
	v_add_nc_u32_e32 v2, 0, v17
	v_mov_b32_e32 v4, v12
	v_mov_b32_e32 v6, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v7, v12 :: v_dual_add_nc_u32 v0, 0, v0
	scratch_store_b32 off, v2, off offset:1584 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 0, v18
	v_mov_b32_e32 v210, v12
	v_mov_b32_e32 v204, v12
	scratch_store_b32 off, v0, off offset:1664 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xe0, v33
	v_mov_b32_e32 v212, v12
	v_mov_b32_e32 v218, v12
	v_mov_b32_e32 v223, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v211, v12 :: v_dual_add_nc_u32 v0, 0, v0
	scratch_store_b32 off, v2, off offset:1588 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 0, v15
	v_mov_b32_e32 v214, v12
	v_mov_b32_e32 v213, v12
	scratch_store_b32 off, v0, off offset:1672 ; 4-byte Folded Spill
	v_mov_b32_e32 v215, v12
	scratch_store_b32 off, v2, off offset:1592 ; 4-byte Folded Spill
	v_dual_mov_b32 v203, v12 :: v_dual_add_nc_u32 v2, 0, v27
	v_mov_b32_e32 v205, v12
	v_mov_b32_e32 v216, v12
	v_mov_b32_e32 v207, v12
	scratch_store_b32 off, v2, off offset:1628 ; 4-byte Folded Spill
	v_xor_b32_e32 v2, 0x70, v33
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v24, v29, v97
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v202, v12 :: v_dual_add_nc_u32 v1, 0, v2
	scratch_store_b32 off, v3, off offset:1632 ; 4-byte Folded Spill
	v_xor_b32_e32 v2, 0xa0, v33
	v_xor_b32_e32 v3, 0xb0, v33
	scratch_store_b32 off, v1, off offset:1644 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x90, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:1652 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v2
	v_xor_b32_e32 v2, 0xf0, v33
	v_add_nc_u32_e32 v0, 0, v2
	scratch_store_b32 off, v1, off offset:1656 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v3
	v_xor_b32_e32 v3, 0x90, v34
	v_xor_b32_e32 v2, 32, v20
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1676
	scratch_store_b32 off, v1, off offset:1660
	v_xor_b32_e32 v1, 0xd0, v33
	v_add_nc_u32_e32 v0, 0, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:256
	scratch_store_b32 off, v34, off offset:1528
	v_add_nc_u32_e32 v1, 0, v1
	v_xor_b32_e32 v0, 0x1b0, v34
	v_xor_b32_e32 v3, 48, v20
	scratch_store_b32 off, v1, off offset:1668 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x120, v34
	v_add_nc_u32_e32 v0, 0, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:264
	scratch_store_b32 off, v1, off offset:260
	scratch_store_b32 off, v33, off offset:1524
	v_xor_b32_e32 v1, 16, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v1
	scratch_store_b32 off, v20, off offset:1532 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, v12
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	v_mov_b32_e32 v2, v12
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v3
	v_mov_b32_e32 v3, v12
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off offset:224
	scratch_store_b128 off, v[4:7], off offset:240
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off offset:192
	scratch_store_b128 off, v[4:7], off offset:208
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off offset:160
	scratch_store_b128 off, v[4:7], off offset:176
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off offset:128
	scratch_store_b128 off, v[4:7], off offset:144
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off offset:96
	scratch_store_b128 off, v[4:7], off offset:112
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off offset:64
	scratch_store_b128 off, v[4:7], off offset:80
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off offset:32
	scratch_store_b128 off, v[4:7], off offset:48
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v6, s1, v99
	v_mov_b32_e32 v0, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v8, s1, v6
	scratch_store_b32 off, v6, off offset:1680 ; 4-byte Folded Spill
	v_mov_b32_e32 v6, v12
	s_clause 0x3                            ; 40-byte Folded Spill
	scratch_store_b128 off, v[0:3], off
	scratch_store_b128 off, v[4:7], off offset:16
	scratch_store_b32 off, v97, off offset:1928
	scratch_store_b32 off, v29, off offset:1936
	v_add_nc_u32_e32 v0, s1, v8
	v_dual_mov_b32 v206, v12 :: v_dual_add_nc_u32 v1, s0, v99
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v8, off offset:1684
	scratch_store_b32 off, v0, off offset:1688
	scratch_store_b32 off, v1, off offset:1700
	v_add_nc_u32_e32 v0, s1, v0
	v_dual_mov_b32 v208, v12 :: v_dual_add_nc_u32 v1, s0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1692
	scratch_store_b32 off, v1, off offset:1708
	v_add_nc_u32_e32 v0, s1, v0
	v_dual_mov_b32 v194, v12 :: v_dual_add_nc_u32 v1, s0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1696
	scratch_store_b32 off, v1, off offset:1716
	v_add_nc_u32_e32 v0, s1, v0
	v_dual_mov_b32 v196, v12 :: v_dual_add_nc_u32 v1, s0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1704
	scratch_store_b32 off, v1, off offset:1724
	v_add_nc_u32_e32 v0, s1, v0
	v_dual_mov_b32 v198, v12 :: v_dual_add_nc_u32 v1, s0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1712
	scratch_store_b32 off, v1, off offset:1732
	v_add_nc_u32_e32 v0, s1, v0
	v_dual_mov_b32 v200, v12 :: v_dual_add_nc_u32 v1, s0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1720
	scratch_store_b32 off, v1, off offset:1740
	v_add_nc_u32_e32 v0, s1, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v1, s0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1728
	scratch_store_b32 off, v1, off offset:1748
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, s1, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v1, s0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1736
	scratch_store_b32 off, v1, off offset:1756
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, s1, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v1, s0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1744
	scratch_store_b32 off, v1, off offset:1764
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, s1, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v1, s0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1752
	scratch_store_b32 off, v1, off offset:1772
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, s1, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v1, s0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1760
	scratch_store_b32 off, v1, off offset:1780
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, s1, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v1, s0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1768
	scratch_store_b32 off, v1, off offset:1784
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, s1, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v1, s0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1776
	scratch_store_b32 off, v1, off offset:1788
	v_add_nc_u32_e32 v1, s0, v1
	v_add_nc_u32_e32 v0, s1, v0
	scratch_store_b32 off, v1, off offset:1792 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s0, v1
	scratch_store_b32 off, v0, off offset:1796 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s1, v0
	scratch_store_b32 off, v1, off offset:1800 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s0, v1
	scratch_store_b32 off, v0, off offset:1804 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s1, v0
	scratch_store_b32 off, v1, off offset:1820 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s0, v1
	scratch_store_b32 off, v0, off offset:1808 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s1, v0
	scratch_store_b32 off, v1, off offset:1828 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s0, v1
	scratch_store_b32 off, v0, off offset:1812 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s1, v0
	scratch_store_b32 off, v1, off offset:1836 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s0, v1
	scratch_store_b32 off, v0, off offset:1816 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s1, v0
	scratch_store_b32 off, v1, off offset:1844 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s0, v1
	scratch_store_b32 off, v0, off offset:1824 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s1, v0
	scratch_store_b32 off, v1, off offset:1852 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s0, v1
	scratch_store_b32 off, v0, off offset:1832 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s1, v0
	scratch_store_b32 off, v1, off offset:1860 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s0, v1
	scratch_store_b32 off, v0, off offset:1840 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s1, v0
	scratch_store_b32 off, v1, off offset:1868 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s0, v1
	scratch_store_b32 off, v0, off offset:1848 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s1, v0
	scratch_store_b32 off, v1, off offset:1876 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s0, v1
	scratch_store_b32 off, v0, off offset:1856 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s1, v0
	scratch_store_b32 off, v1, off offset:1884 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s0, v1
	scratch_store_b32 off, v0, off offset:1864 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s1, v0
	scratch_store_b32 off, v0, off offset:1872 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s1, v0
	scratch_store_b32 off, v0, off offset:1880 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s1, v0
	scratch_store_b32 off, v0, off offset:1888 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s1, v0
	scratch_store_b32 off, v1, off offset:1892 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s0, v1
	scratch_store_b32 off, v0, off offset:1896 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s1, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1904
	scratch_store_b32 off, v1, off offset:1900
	v_add_nc_u32_e32 v0, s0, v1
	scratch_store_b32 off, v0, off offset:1908 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s0, v0
	scratch_store_b32 off, v0, off offset:1912 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s0, v0
	scratch_store_b32 off, v0, off offset:1916 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s0, v0
	scratch_store_b32 off, v0, off offset:1920 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s0, v0
	scratch_store_b32 off, v0, off offset:1924 ; 4-byte Folded Spill
	s_branch .LBB0_6
.LBB0_4:                                ; %Flow
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 17 is_stmt 0                ; attention_backward.py:0:17
	v_readlane_b32 s12, v255, 19
	v_readlane_b32 s13, v255, 20
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_add_i32 s13, s13, 1
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	s_cmp_lg_u32 s13, s12
	s_cbranch_scc0 .LBB0_13
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_9 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	v_readlane_b32 s0, v255, 13
	s_and_not1_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	v_writelane_b32 v255, s13, 20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 662 35 is_stmt 1              ; attention_backward.py:662:35
	v_readlane_b32 s0, v255, 11
	s_add_i32 s0, s0, s13
	.loc	1 662 34 is_stmt 0              ; attention_backward.py:662:34
	s_mul_i32 s0, s0, s70
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_writelane_b32 v255, s0, 21
	v_readlane_b32 s97, v255, 12
	s_branch .LBB0_9
.LBB0_8:                                ;   in Loop: Header=BB0_9 Depth=2
	.loc	1 699 25 is_stmt 1              ; attention_backward.py:699:25
	v_add_lshl_u32 v0, s75, v24, 2
	s_mov_b32 s90, s86
	s_mov_b32 s91, s87
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s78, s86
	s_mov_b32 s79, s87
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v87.h, v65.l
	.loc	1 712 26 is_stmt 1              ; attention_backward.py:712:26
	s_and_b32 s67, s6, s24
	s_and_b32 s63, s7, s24
	s_and_b32 s59, s6, s28
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v1, v0, s[88:91], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v65, v0, s[76:79], 0 offen
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s55, s7, s28
	s_and_b32 s28, s6, s72
	s_and_b32 s24, s7, s72
	.loc	1 708 21                        ; attention_backward.py:708:21
	v_readlane_b32 s72, v255, 3
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e64 v129.h, v153.l
	.loc	1 712 26 is_stmt 1              ; attention_backward.py:712:26
	s_and_b32 s69, s6, s21
	s_and_b32 s52, s6, s31
	s_and_b32 s48, s7, s31
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s75, s75, s72
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s51, s6, s33
	s_and_b32 s47, s7, s33
	s_and_b32 s33, s7, s82
	s_and_b32 s31, s7, s83
	s_and_b32 s68, s6, s23
	s_and_b32 s66, s6, s25
	s_and_b32 s65, s7, s21
	s_and_b32 s64, s7, s23
	s_and_b32 s62, s7, s25
	s_and_b32 s61, s6, s26
	s_and_b32 s60, s6, s27
	s_and_b32 s58, s6, s29
	s_and_b32 s57, s7, s26
	s_and_b32 s56, s7, s27
	s_and_b32 s54, s7, s29
	s_and_b32 s53, s6, s30
	s_and_b32 s50, s6, s34
	s_and_b32 s49, s7, s30
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e64 v138.h, v162.l
	v_mov_b16_e64 v123.h, v163.l
	v_mov_b16_e64 v124.h, v164.l
	v_mov_b16_e64 v131.h, v165.l
	v_mov_b16_e64 v135.h, v33.l
	v_mov_b16_e32 v127.h, v34.l
	v_mov_b16_e64 v147.h, v35.l
	v_mov_b16_e64 v139.h, v36.l
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s30, s7, s92
	s_and_b32 s29, s7, vcc_hi
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e64 v141.h, v38.l
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s27, s6, s102
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e64 v149.h, v37.l
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s26, s6, s101
	s_and_b32 s25, s6, s96
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e64 v145.h, v39.l
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s23, s7, s102
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e64 v137.h, v40.l
	.loc	1 721 37 is_stmt 1              ; attention_backward.py:721:37
	v_mov_b16_e64 v208.l, 0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s3, s7, s101
	s_and_b32 s21, s7, s96
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e64 v151.h, v41.l
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s20, s6, s94
	s_and_b32 s19, s6, s95
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e64 v143.h, v42.l
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s18, s6, s103
	s_and_b32 s17, s6, s100
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e64 v220.h, v43.l
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s16, s7, s94
	s_and_b32 s15, s7, s95
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e64 v221.h, v44.l
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s14, s7, s103
	s_and_b32 s13, s7, s100
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e64 v210.h, v46.l
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s12, s6, s99
	s_and_b32 s11, s6, s93
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e64 v209.h, v45.l
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s10, s6, s73
	s_and_b32 s9, s6, s74
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e64 v172.h, v47.l
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s8, s7, s99
	s_and_b32 s1, s7, s93
	s_and_b32 s0, s7, s73
	s_and_b32 vcc_lo, s7, s74
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v85.h, v49.l
	v_mov_b16_e32 v86.h, v50.l
	v_mov_b16_e64 v222.h, v51.l
	v_mov_b16_e64 v223.h, v52.l
	v_mov_b16_e32 v117.h, v89.l
	v_mov_b16_e32 v118.h, v90.l
	v_mov_b16_e32 v107.h, v91.l
	v_mov_b16_e32 v108.h, v92.l
	v_mov_b16_e32 v88.h, v66.l
	v_mov_b16_e64 v173.h, v48.l
	v_mov_b16_e64 v211.h, v53.l
	v_mov_b16_e64 v212.h, v54.l
	v_mov_b16_e64 v174.h, v55.l
	v_mov_b16_e64 v175.h, v56.l
	v_mov_b16_e32 v115.h, v93.l
	v_mov_b16_e32 v116.h, v94.l
	v_mov_b16_e64 v111.h, v167.l
	v_mov_b16_e64 v112.h, v168.l
	v_mov_b16_e64 v119.h, v169.l
	v_mov_b16_e64 v120.h, v177.l
	v_mov_b16_e32 v121.h, v95.l
	v_mov_b16_e32 v122.h, v96.l
	v_mov_b16_e64 v130.h, v154.l
	v_mov_b16_e64 v125.h, v155.l
	v_mov_b16_e64 v126.h, v156.l
	v_mov_b16_e64 v133.h, v157.l
	v_mov_b16_e64 v134.h, v158.l
	v_mov_b16_e64 v132.h, v166.l
	v_mov_b16_e64 v128.h, v178.l
	v_mov_b16_e64 v136.h, v180.l
	v_mov_b16_e64 v146.h, v161.l
	v_mov_b16_e64 v142.h, v160.l
	v_mov_b16_e64 v150.h, v159.l
	v_mov_b16_e64 v140.h, v179.l
	v_mov_b16_e64 v148.h, v182.l
	v_mov_b16_e64 v144.h, v181.l
	v_mov_b16_e64 v152.h, v183.l
	v_mov_b16_e32 v105.h, v67.l
	v_mov_b16_e32 v106.h, v68.l
	v_mov_b16_e32 v113.h, v69.l
	.loc	1 715 36 is_stmt 1              ; attention_backward.py:715:36
	v_mov_b32_e32 v80, v78
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v114.h, v70.l
	v_mov_b16_e32 v109.h, v71.l
	v_mov_b16_e32 v110.h, v72.l
	.loc	1 607 13 is_stmt 1              ; attention_backward.py:607:13
	s_add_i32 s97, s97, 32
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v75, v78
	v_mov_b32_e32 v77, v78
	v_mov_b32_e32 v79, v78
	v_mov_b32_e32 v81, v78
	v_mov_b32_e32 v74, v78
	v_mov_b32_e32 v76, v78
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(1)
	v_fma_f32 v0, s98, v57, -v1
	v_fma_f32 v2, s98, v58, -v1
	v_fma_f32 v3, s98, v59, -v1
	v_fma_f32 v4, s98, v60, -v1
	v_fma_f32 v5, s98, v61, -v1
	v_fma_f32 v6, s98, v62, -v1
	v_fma_f32 v7, s98, v63, -v1
	v_fma_f32 v1, s98, v64, -v1
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v2, v2
	v_exp_f32_e32 v3, v3
	v_exp_f32_e32 v0, v0
	v_exp_f32_e32 v5, v5
	v_exp_f32_e32 v1, v1
	v_exp_f32_e32 v6, v6
	v_exp_f32_e32 v4, v4
	v_exp_f32_e32 v7, v7
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v232, 0, v2, s39
	scratch_load_b32 v2, off, off offset:1708 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v214, 0, v3, s41
	scratch_load_b32 v3, off, off offset:1716 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v207, 0, v1, s46
	scratch_load_b32 v1, off, off offset:1700 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v153, 0, v0, s40
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v0, s75, v99, 1
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v213, 0, v5, s44
	v_cndmask_b32_e64 v205, 0, v6, s43
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s44, s6, s36
	s_and_b32 s40, s7, s36
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s69
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s43, s6, s37
	s_and_b32 s39, s7, s37
	s_and_b32 s37, s6, s82
	s_and_b32 s36, s6, s83
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s82, s86
	s_mov_b32 s83, s87
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v170, 0, v4, s42
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v5, v0, s[80:83], 0 offen
	scratch_load_b32 v4, off, off offset:1748 ; 4-byte Folded Reload
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v206, 0, v7, s45
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s46, s7, s34
	s_and_b32 s45, s6, s35
	s_and_b32 s42, s6, s38
	s_and_b32 s41, s7, s35
	s_and_b32 s38, s7, s38
	s_and_b32 s35, s6, s92
	s_and_b32 s34, s6, vcc_hi
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v0, s75, v1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s68
	buffer_load_u16 v13, v0, s[80:83], 0 offen
	v_add_lshl_u32 v0, s75, v2, 1
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v57.l, v5.l
	v_cndmask_b32_e64 v0, 0x80000000, v0, s67
	buffer_load_u16 v6, v0, s[80:83], 0 offen
	v_add_lshl_u32 v0, s75, v3, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s66
	buffer_load_u16 v14, v0, s[80:83], 0 offen
	v_add_lshl_u32 v0, s75, v100, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s65
	buffer_load_u16 v9, v0, s[80:83], 0 offen
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v0, 64, v1
	scratch_load_b32 v1, off, off offset:1724 ; 4-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v0, s75, v0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s64
	buffer_load_u16 v15, v0, s[80:83], 0 offen
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v0, 64, v2
	scratch_load_b32 v2, off, off offset:1732 ; 4-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v0, s75, v0, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s63
	buffer_load_u16 v10, v0, s[80:83], 0 offen
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v0, 64, v3
	scratch_load_b32 v3, off, off offset:1740 ; 4-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v0, s75, v0, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s62
	buffer_load_u16 v17, v0, s[80:83], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(9)
	v_mov_b16_e32 v5.h, v13.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v58.l, v6.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v6.h, v14.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v61.l, v9.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v0, s75, v1, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s61
	buffer_load_u16 v7, v0, s[80:83], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v9.h, v15.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v0, s75, v2, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s60
	buffer_load_u16 v16, v0, s[80:83], 0 offen
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v62.l, v10.l
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v0, s75, v3, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s59
	buffer_load_u16 v8, v0, s[80:83], 0 offen
	v_add_lshl_u32 v0, s75, v4, 1
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v10.h, v17.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s58
	buffer_load_u16 v18, v0, s[80:83], 0 offen
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v0, 64, v1
	scratch_load_b32 v1, off, off offset:1756 ; 4-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v0, s75, v0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s57
	buffer_load_u16 v11, v0, s[80:83], 0 offen
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v0, 64, v2
	scratch_load_b32 v2, off, off offset:1764 ; 4-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v0, s75, v0, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s56
	v_readlane_b32 s56, v255, 14
	v_readlane_b32 s57, v255, 15
	v_readlane_b32 s58, v255, 16
	v_readlane_b32 s59, v255, 17
	buffer_load_u16 v19, v0, s[80:83], 0 offen
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v0, 64, v3
	scratch_load_b32 v3, off, off offset:1772 ; 4-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v0, s75, v0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s55
	buffer_load_u16 v12, v0, s[80:83], 0 offen
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v0, 64, v4
	scratch_load_b32 v4, off, off offset:1780 ; 4-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v0, s75, v0, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s54
	buffer_load_u16 v20, v0, s[80:83], 0 offen
	s_waitcnt vmcnt(11)
	v_mov_b16_e32 v59.l, v7.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v7.h, v16.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e32 v60.l, v8.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v8.h, v18.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v0, s75, v1, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s53
	buffer_load_u16 v201, v0, s[80:83], 0 offen
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v63.l, v11.l
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v0, s75, v2, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s52
	buffer_load_u16 v21, v0, s[80:83], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v11.h, v19.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v0, s75, v3, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s51
	buffer_load_u16 v202, v0, s[80:83], 0 offen
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v64.l, v12.l
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v0, s75, v4, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s50
	buffer_load_u16 v22, v0, s[80:83], 0 offen
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v0, 64, v1
	scratch_load_b32 v1, off, off offset:1784 ; 4-byte Folded Reload
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v12.h, v20.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v0, s75, v0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s49
	buffer_load_u16 v162, v0, s[80:83], 0 offen
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v0, 64, v2
	scratch_load_b32 v2, off, off offset:1788 ; 4-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v0, s75, v0, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s48
	buffer_load_u16 v23, v0, s[80:83], 0 offen
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v0, 64, v3
	scratch_load_b32 v3, off, off offset:1792 ; 4-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v0, s75, v0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s47
	buffer_load_u16 v163, v0, s[80:83], 0 offen
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v0, 64, v4
	scratch_load_b32 v4, off, off offset:1800 ; 4-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v0, s75, v0, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s46
	buffer_load_u16 v26, v0, s[80:83], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(10)
	v_mov_b16_e64 v201.h, v21.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v202.h, v22.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v0, s75, v1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s45
	buffer_load_u16 v203, v0, s[80:83], 0 offen
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v0, s75, v2, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s44
	buffer_load_u16 v25, v0, s[80:83], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v162.h, v23.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v0, s75, v3, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s43
	buffer_load_u16 v204, v0, s[80:83], 0 offen
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v0, s75, v4, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s42
	buffer_load_u16 v27, v0, s[80:83], 0 offen
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v0, 64, v1
	scratch_load_b32 v1, off, off offset:1820 ; 4-byte Folded Reload
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v163.h, v26.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v0, s75, v0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s41
	buffer_load_u16 v164, v0, s[80:83], 0 offen
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v0, 64, v2
	scratch_load_b32 v2, off, off offset:1828 ; 4-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v0, s75, v0, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s40
	buffer_load_u16 v28, v0, s[80:83], 0 offen
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v0, 64, v3
	scratch_load_b32 v3, off, off offset:1836 ; 4-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v0, s75, v0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s39
	buffer_load_u16 v165, v0, s[80:83], 0 offen
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v0, 64, v4
	scratch_load_b32 v4, off, off offset:1844 ; 4-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v0, s75, v0, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s38
	buffer_load_u16 v33, v0, s[80:83], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(10)
	v_mov_b16_e64 v203.h, v25.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v204.h, v27.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v0, s75, v1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s37
	buffer_load_u16 v29, v0, s[80:83], 0 offen
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v0, s75, v2, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s36
	buffer_load_u16 v34, v0, s[80:83], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v164.h, v28.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v0, s75, v3, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s35
	buffer_load_u16 v30, v0, s[80:83], 0 offen
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v0, s75, v4, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s34
	buffer_load_u16 v35, v0, s[80:83], 0 offen
	v_add_nc_u32_e32 v0, 64, v1
	scratch_load_b32 v1, off, off offset:1852 ; 4-byte Folded Reload
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v165.h, v33.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v0, s75, v0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s33
	buffer_load_u16 v233, v0, s[80:83], 0 offen
	v_add_nc_u32_e32 v0, 64, v2
	scratch_load_b32 v2, off, off offset:1860 ; 4-byte Folded Reload
	v_add_lshl_u32 v0, s75, v0, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s31
	buffer_load_u16 v36, v0, s[80:83], 0 offen
	v_add_nc_u32_e32 v0, 64, v3
	scratch_load_b32 v3, off, off offset:1868 ; 4-byte Folded Reload
	v_add_lshl_u32 v0, s75, v0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s30
	buffer_load_u16 v234, v0, s[80:83], 0 offen
	v_add_nc_u32_e32 v0, 64, v4
	scratch_load_b32 v4, off, off offset:1876 ; 4-byte Folded Reload
	v_add_lshl_u32 v0, s75, v0, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s29
	buffer_load_u16 v38, v0, s[80:83], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v29.h, v34.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v30.h, v35.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v0, s75, v1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s28
	buffer_load_u16 v31, v0, s[80:83], 0 offen
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v0, s75, v2, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s27
	buffer_load_u16 v37, v0, s[80:83], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v233.h, v36.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v0, s75, v3, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s26
	buffer_load_u16 v32, v0, s[80:83], 0 offen
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v0, s75, v4, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s25
	buffer_load_u16 v39, v0, s[80:83], 0 offen
	v_add_nc_u32_e32 v0, 64, v1
	scratch_load_b32 v1, off, off offset:1884 ; 4-byte Folded Reload
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v234.h, v38.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v0, s75, v0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s24
	buffer_load_u16 v235, v0, s[80:83], 0 offen
	v_add_nc_u32_e32 v0, 64, v2
	scratch_load_b32 v2, off, off offset:1892 ; 4-byte Folded Reload
	v_add_lshl_u32 v0, s75, v0, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s23
	buffer_load_u16 v40, v0, s[80:83], 0 offen
	v_add_nc_u32_e32 v0, 64, v3
	scratch_load_b32 v3, off, off offset:1900 ; 4-byte Folded Reload
	v_add_lshl_u32 v0, s75, v0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	buffer_load_u16 v236, v0, s[80:83], 0 offen
	v_add_nc_u32_e32 v0, 64, v4
	scratch_load_b32 v4, off, off offset:1908 ; 4-byte Folded Reload
	v_add_lshl_u32 v0, s75, v0, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s21
	buffer_load_u16 v41, v0, s[80:83], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v31.h, v37.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v32.h, v39.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v0, s75, v1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s20
	buffer_load_u16 v237, v0, s[80:83], 0 offen
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v0, s75, v2, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s19
	buffer_load_u16 v42, v0, s[80:83], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v235.h, v40.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v0, s75, v3, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s18
	buffer_load_u16 v238, v0, s[80:83], 0 offen
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v0, s75, v4, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s17
	buffer_load_u16 v43, v0, s[80:83], 0 offen
	v_add_nc_u32_e32 v0, 64, v1
	scratch_load_b32 v1, off, off offset:1912 ; 4-byte Folded Reload
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v236.h, v41.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v0, s75, v0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s16
	buffer_load_u16 v241, v0, s[80:83], 0 offen
	v_add_nc_u32_e32 v0, 64, v2
	scratch_load_b32 v2, off, off offset:1916 ; 4-byte Folded Reload
	v_add_lshl_u32 v0, s75, v0, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s15
	buffer_load_u16 v44, v0, s[80:83], 0 offen
	v_add_nc_u32_e32 v0, 64, v3
	scratch_load_b32 v3, off, off offset:1920 ; 4-byte Folded Reload
	v_add_lshl_u32 v0, s75, v0, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s14
	v_readlane_b32 s14, v255, 18
	buffer_load_u16 v242, v0, s[80:83], 0 offen
	v_add_nc_u32_e32 v0, 64, v4
	scratch_load_b32 v4, off, off offset:1924 ; 4-byte Folded Reload
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_i32 s97, s14
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v0, s75, v0, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s13
	buffer_load_u16 v46, v0, s[80:83], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(10)
	v_mov_b16_e64 v237.h, v42.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v238.h, v43.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v0, s75, v1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s12
	buffer_load_u16 v239, v0, s[80:83], 0 offen
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v0, s75, v2, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s11
	buffer_load_u16 v45, v0, s[80:83], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v241.h, v44.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v0, s75, v3, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s10
	buffer_load_u16 v240, v0, s[80:83], 0 offen
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v0, s75, v4, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s9
	buffer_load_u16 v47, v0, s[80:83], 0 offen
	v_add_nc_u32_e32 v0, 64, v1
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v242.h, v46.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v0, s75, v0, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s8
	buffer_load_u16 v243, v0, s[80:83], 0 offen
	v_add_nc_u32_e32 v0, 64, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, s75, v0, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	buffer_load_u16 v1, v0, s[80:83], 0 offen
	v_add_nc_u32_e32 v0, 64, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, s75, v0, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v244, v0, s[80:83], 0 offen
	v_add_nc_u32_e32 v0, 64, v4
	v_mov_b16_e32 v4.l, v41.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, s75, v0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v2, v0, s[80:83], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1516
	scratch_load_b32 v82, off, off offset:1596
	scratch_load_b32 v83, off, off offset:1600
	scratch_load_b32 v84, off, off offset:1604
	s_clause 0x17                           ; 96-byte Folded Spill
	scratch_store_b32 off, v14, off offset:580
	scratch_store_b32 off, v20, off offset:556
	scratch_store_b32 off, v16, off offset:568
	scratch_store_b32 off, v18, off offset:576
	scratch_store_b32 off, v13, off offset:564
	scratch_store_b32 off, v19, off offset:552
	scratch_store_b32 off, v17, off offset:572
	scratch_store_b32 off, v15, off offset:560
	scratch_store_b32 off, v22, off offset:548
	scratch_store_b32 off, v33, off offset:524
	scratch_store_b32 off, v25, off offset:536
	scratch_store_b32 off, v27, off offset:544
	scratch_store_b32 off, v21, off offset:532
	scratch_store_b32 off, v28, off offset:520
	scratch_store_b32 off, v26, off offset:540
	scratch_store_b32 off, v23, off offset:528
	scratch_store_b32 off, v35, off offset:500
	scratch_store_b32 off, v4, off offset:476
	scratch_store_b32 off, v37, off offset:488
	scratch_store_b32 off, v39, off offset:496
	scratch_store_b32 off, v34, off offset:484
	scratch_store_b32 off, v40, off offset:472
	scratch_store_b32 off, v38, off offset:492
	scratch_store_b32 off, v36, off offset:480
	s_waitcnt vmcnt(10)
	v_mov_b16_e64 v239.h, v45.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v240.h, v47.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v243.h, v1.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v244.h, v2.l
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v217, 0, v0
	ds_store_b128 v217, v[5:8]
	ds_store_b128 v217, v[9:12] offset:4096
	v_mov_b16_e32 v10.l, v47.l
	v_mov_b16_e32 v8.l, v45.l
	v_mov_b16_e32 v6.l, v43.l
	v_mov_b16_e32 v5.l, v42.l
	v_mov_b16_e32 v12.l, v2.l
	v_mov_b16_e32 v11.l, v1.l
	v_mov_b16_e32 v9.l, v46.l
	v_mov_b16_e32 v7.l, v44.l
	s_waitcnt vmcnt(2)
	ds_store_b128 v82, v[201:204]
	ds_store_b128 v82, v[162:165] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v83, v[29:32]
	ds_store_b128 v83, v[233:236] offset:4096
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v6, off offset:468
	scratch_store_b32 off, v12, off offset:440
	scratch_store_b32 off, v11, off offset:444
	scratch_store_b32 off, v8, off offset:456
	scratch_store_b32 off, v10, off offset:464
	scratch_store_b32 off, v5, off offset:452
	scratch_store_b32 off, v9, off offset:460
	scratch_store_b32 off, v7, off offset:448
	s_waitcnt vmcnt(0)
	ds_store_b128 v84, v[237:240]
	ds_store_b128 v84, v[241:244] offset:4096
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1520
	scratch_load_b32 v218, off, off offset:1608
	scratch_load_b32 v224, off, off offset:1612
	scratch_load_b32 v225, off, off offset:1616
	s_waitcnt vmcnt(1)
	ds_load_b128 v[154:157], v224
	ds_load_b128 v[45:48], v224 offset:2048
	ds_load_b128 v[249:252], v224 offset:4096
	ds_load_b128 v[181:184], v224 offset:6144
	v_add_nc_u32_e32 v216, 0, v0
	ds_load_b128 v[0:3], v218
	ds_load_b128 v[49:52], v218 offset:2048
	ds_load_b128 v[89:92], v218 offset:4096
	ds_load_b128 v[185:188], v218 offset:6144
	ds_load_b128 v[166:169], v216
	ds_load_b128 v[53:56], v216 offset:2048
	ds_load_b128 v[93:96], v216 offset:4096
	ds_load_b128 v[189:192], v216 offset:6144
	s_waitcnt vmcnt(0)
	ds_load_b128 v[158:161], v225
	ds_load_b128 v[41:44], v225 offset:2048
	ds_load_b128 v[245:248], v225 offset:4096
	ds_load_b128 v[177:180], v225 offset:6144
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(11)
	v_and_b32_e32 v66, 0xffff0000, v0
	v_mov_b16_e64 v208.h, v0.l
	v_lshlrev_b32_e32 v0, 16, v2
	v_lshlrev_b32_e32 v254, 16, v1
	v_and_b32_e32 v253, 0xffff0000, v1
	.loc	1 721 37                        ; attention_backward.py:721:37
	scratch_store_b32 off, v66, off offset:624 ; 4-byte Folded Spill
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v215, 0xffff0000, v3
	scratch_store_b32 off, v0, off offset:628 ; 4-byte Folded Spill
	v_and_b32_e32 v0, 0xffff0000, v2
	scratch_store_b32 off, v0, off offset:632 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v0, 16, v3
	scratch_store_b32 off, v0, off offset:636 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:1188 ; 4-byte Folded Reload
	ds_store_b16 v176, v57
	ds_store_b16 v176, v61 offset:128
	ds_store_b16 v176, v201 offset:2176
	ds_store_b16 v176, v162 offset:2048
	ds_store_b16 v176, v29 offset:4096
	ds_store_b16 v176, v233 offset:4224
	ds_store_b16 v176, v237 offset:6272
	ds_store_b16 v176, v241 offset:6144
	s_clause 0x2                            ; 48-byte Folded Spill
	scratch_store_b128 off, v[57:60], off offset:600
	scratch_store_b128 off, v[61:64], off offset:584
	scratch_store_b128 off, v[29:32], off offset:504
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v13
	ds_store_b16 v0, v15 offset:128
	ds_store_b16 v0, v21 offset:2176
	ds_store_b16 v0, v23 offset:2048
	ds_store_b16 v0, v34 offset:4096
	ds_store_b16 v0, v36 offset:4224
	ds_store_b16 v0, v5 offset:6272
	ds_store_b16 v0, v7 offset:6144
	scratch_load_b32 v0, off, off offset:1192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v58
	ds_store_b16 v0, v62 offset:128
	ds_store_b16 v0, v202 offset:2176
	ds_store_b16 v0, v163 offset:2048
	ds_store_b16 v0, v30 offset:4096
	ds_store_b16 v0, v234 offset:4224
	ds_store_b16 v0, v238 offset:6272
	ds_store_b16 v0, v242 offset:6144
	scratch_load_b32 v0, off, off offset:1196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v14
	ds_store_b16 v0, v17 offset:128
	ds_store_b16 v0, v22 offset:2176
	ds_store_b16 v0, v26 offset:2048
	ds_store_b16 v0, v35 offset:4096
	ds_store_b16 v0, v38 offset:4224
	ds_store_b16 v0, v6 offset:6272
	ds_store_b16 v0, v9 offset:6144
	scratch_load_b32 v0, off, off offset:1200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v59
	ds_store_b16 v0, v63 offset:128
	ds_store_b16 v0, v203 offset:2176
	ds_store_b16 v0, v164 offset:2048
	ds_store_b16 v0, v31 offset:4096
	ds_store_b16 v0, v235 offset:4224
	ds_store_b16 v0, v239 offset:6272
	ds_store_b16 v0, v243 offset:6144
	scratch_load_b32 v0, off, off offset:1204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v16
	ds_store_b16 v0, v19 offset:128
	ds_store_b16 v0, v25 offset:2176
	ds_store_b16 v0, v28 offset:2048
	ds_store_b16 v0, v37 offset:4096
	ds_store_b16 v0, v40 offset:4224
	ds_store_b16 v0, v8 offset:6272
	ds_store_b16 v0, v11 offset:6144
	scratch_load_b32 v0, off, off offset:1208 ; 4-byte Folded Reload
	v_mov_b32_e32 v8, v24
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v204 offset:2176
	ds_store_b16 v0, v165 offset:2048
	ds_store_b16 v0, v32 offset:4096
	ds_store_b16 v0, v60
	ds_store_b16 v0, v64 offset:128
	ds_store_b16 v0, v236 offset:4224
	ds_store_b16 v0, v240 offset:6272
	ds_store_b16 v0, v244 offset:6144
	scratch_load_b32 v0, off, off offset:1212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v18
	ds_store_b16 v0, v20 offset:128
	ds_store_b16 v0, v27 offset:2176
	ds_store_b16 v0, v33 offset:2048
	ds_store_b16 v0, v39 offset:4096
	ds_store_b16 v0, v4 offset:4224
	ds_store_b16 v0, v10 offset:6272
	ds_store_b16 v0, v12 offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1524
	scratch_load_b32 v4, off, off offset:1644
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[74:77], off offset:408
	scratch_store_b128 off, v[78:81], off offset:424
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v17, off, off offset:1648
	scratch_load_b32 v21, off, off offset:1652
	scratch_load_b32 v25, off, off offset:1656
	scratch_load_b32 v29, off, off offset:1660
	scratch_load_b32 v33, off, off offset:1664
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v0, 0, v0
	s_waitcnt vmcnt(5)
	ds_load_b128 v[4:7], v4
	s_waitcnt vmcnt(4)
	ds_load_b128 v[17:20], v17
	s_waitcnt vmcnt(3)
	ds_load_b128 v[21:24], v21
	ds_load_b128 v[57:60], v0
	scratch_load_b32 v0, off, off offset:1620 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	ds_load_b128 v[25:28], v25
	s_waitcnt vmcnt(2)
	ds_load_b128 v[29:32], v29
	s_waitcnt vmcnt(1)
	ds_load_b128 v[97:100], v33
	scratch_load_b32 v33, off, off offset:1668 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[61:64], v0
	scratch_load_b32 v0, off, off offset:1624 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[101:104], v33
	scratch_load_b32 v33, off, off offset:1672 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[193:196], v0
	scratch_load_b32 v0, off, off offset:1628 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[66:69], v33
	scratch_load_b32 v33, off, off offset:1676 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[197:200], v0
	scratch_load_b32 v0, off, off offset:1632 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[70:73], v33
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[33:36], off, off offset:1480
	scratch_load_b128 v[37:40], off, off offset:1496
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	ds_load_b128 v[9:12], v0
	scratch_load_b32 v0, off, off offset:1636 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(1) lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[74:81], v[33:40], v[57:64], v[74:81]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[33:36], off, off offset:1448
	scratch_load_b128 v[37:40], off, off offset:1464
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	ds_load_b128 v[13:16], v0
	scratch_load_b32 v0, off, off offset:1640 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(1) lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[74:81], v[33:40], v[193:200], v[74:81]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[33:36], off, off offset:1416
	scratch_load_b128 v[37:40], off, off offset:1432
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	ds_load_b128 v[0:3], v0
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[74:81], v[33:40], v[9:16], v[74:81]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[9:12], off, off offset:1384
	scratch_load_b128 v[13:16], off, off offset:1400
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[74:81], v[9:16], v[0:7], v[74:81]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:1352
	scratch_load_b128 v[4:7], off, off offset:1368
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[74:81], v[0:7], v[17:24], v[74:81]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:1320
	scratch_load_b128 v[4:7], off, off offset:1336
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[74:81], v[0:7], v[25:32], v[74:81]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:1288
	scratch_load_b128 v[4:7], off, off offset:1304
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[74:81], v[0:7], v[97:104], v[74:81]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:1256
	scratch_load_b128 v[4:7], off, off offset:1272
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[74:81], v[0:7], v[66:73], v[74:81]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v0, v74, v65
	v_sub_f32_e32 v1, v75, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v2, v76, v65
	v_sub_f32_e32 v3, v77, v65
	v_sub_f32_e32 v4, v78, v65
	v_sub_f32_e32 v5, v79, v65
	v_sub_f32_e32 v6, v80, v65
	v_sub_f32_e32 v7, v81, v65
	.loc	1 720 30 is_stmt 0              ; attention_backward.py:720:30
	v_dual_mul_f32 v0, v153, v0 :: v_dual_mul_f32 v1, v232, v1
	v_mul_f32_e32 v2, v214, v2
	v_dual_mul_f32 v3, v170, v3 :: v_dual_mul_f32 v4, v213, v4
	v_dual_mul_f32 v5, v205, v5 :: v_dual_mul_f32 v6, v206, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v7, v207, v7 :: v_dual_mul_f32 v0, s104, v0
	.loc	1 721 38 is_stmt 1              ; attention_backward.py:721:38
	v_dual_mul_f32 v1, s104, v1 :: v_dual_mul_f32 v2, s104, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v3, s104, v3 :: v_dual_mul_f32 v4, s104, v4
	v_dual_mul_f32 v5, s104, v5 :: v_dual_mul_f32 v6, s104, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v7, s104, v7
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v9, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_add3_u32 v9, v0, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v0.l, 0x7fff, v9.h, vcc_lo
	v_bfe_u32 v9, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_add3_u32 v9, v1, v9, 0x7fff
	v_bfe_u32 v1, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v0.h, 0x7fff, v9.h, vcc_lo
	v_add3_u32 v1, v2, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_bfe_u32 v2, v3, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_add3_u32 v2, v3, v2, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_bfe_u32 v3, v5, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v1.h, 0x7fff, v2.h, vcc_lo
	v_bfe_u32 v2, v4, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_add3_u32 v3, v5, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v2, v4, v2, 0x7fff
	v_bfe_u32 v4, v7, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v4, v7, v4, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v6, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_add3_u32 v3, v6, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v3.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_cndmask_b16 v3.h, 0x7fff, v4.h, vcc_lo
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	scratch_load_b32 v4, off, off offset:1528 ; 4-byte Folded Reload
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v153, v153
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v4, 0, v4
	ds_store_b16 v4, v0
	ds_store_b16 v4, v2 offset:512
	scratch_store_b32 off, v4, off offset:616 ; 4-byte Folded Spill
	scratch_load_b32 v4, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v4, v0
	ds_store_b16_d16_hi v4, v2 offset:512
	scratch_load_b32 v0, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v1
	ds_store_b16 v0, v3 offset:512
	scratch_load_b32 v0, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v0, v1
	ds_store_b16_d16_hi v0, v3 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:1532 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:620 ; 4-byte Folded Spill
	ds_load_b128 v[65:68], v0
	scratch_load_b32 v0, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[69:72], v0
	scratch_load_b32 v0, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[57:60], v0
	scratch_load_b32 v0, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[61:64], v0
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v217, v[220:223]
	ds_store_b128 v217, v[209:212] offset:4096
	ds_store_b128 v217, v[172:175] offset:8192
	ds_store_b128 v217, v[85:88] offset:12288
	ds_store_b128 v82, v[105:108]
	ds_store_b128 v82, v[113:116] offset:4096
	ds_store_b128 v82, v[109:112] offset:8192
	ds_store_b128 v82, v[117:120] offset:12288
	ds_store_b128 v83, v[121:124]
	ds_store_b128 v83, v[129:132] offset:4096
	ds_store_b128 v83, v[125:128] offset:8192
	ds_store_b128 v83, v[133:136] offset:12288
	ds_store_b128 v84, v[137:140]
	ds_store_b128 v84, v[145:148] offset:4096
	ds_store_b128 v84, v[141:144] offset:8192
	ds_store_b128 v84, v[149:152] offset:12288
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v216
	ds_load_b128 v[9:12], v216 offset:2048
	ds_load_b128 v[17:20], v216 offset:4096
	ds_load_b128 v[25:28], v216 offset:6144
	ds_load_b128 v[97:100], v216 offset:8192
	ds_load_b128 v[105:108], v216 offset:10240
	ds_load_b128 v[113:116], v216 offset:12288
	ds_load_b128 v[81:84], v216 offset:14336
	ds_load_b128 v[4:7], v218
	ds_load_b128 v[13:16], v218 offset:2048
	ds_load_b128 v[21:24], v218 offset:4096
	ds_load_b128 v[29:32], v218 offset:6144
	ds_load_b128 v[101:104], v218 offset:8192
	ds_load_b128 v[109:112], v218 offset:10240
	ds_load_b128 v[117:120], v218 offset:12288
	ds_load_b128 v[85:88], v218 offset:14336
	ds_load_b128 v[121:124], v224
	ds_load_b128 v[129:132], v224 offset:2048
	ds_load_b128 v[137:140], v224 offset:4096
	ds_load_b128 v[145:148], v224 offset:6144
	ds_load_b128 v[193:196], v224 offset:8192
	ds_load_b128 v[216:219], v224 offset:10240
	ds_load_b128 v[33:36], v224 offset:12288
	ds_load_b128 v[73:76], v224 offset:14336
	ds_load_b128 v[125:128], v225
	ds_load_b128 v[133:136], v225 offset:2048
	ds_load_b128 v[141:144], v225 offset:4096
	ds_load_b128 v[149:152], v225 offset:6144
	ds_load_b128 v[197:200], v225 offset:8192
	ds_load_b128 v[220:223], v225 offset:10240
	ds_load_b128 v[37:40], v225 offset:12288
	ds_load_b128 v[77:80], v225 offset:14336
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[224:227], off, off offset:224
	scratch_load_b128 v[228:231], off, off offset:240
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0) lgkmcnt(23)
	v_wmma_f32_16x16x16_bf16 v[224:231], v[0:7], v[65:72], v[224:231]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:192
	scratch_load_b128 v[4:7], off, off offset:208
	s_waitcnt lgkmcnt(7)
	v_wmma_f32_16x16x16_bf16 v[224:231], v[121:128], v[57:64], v[224:231]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[224:227], off offset:224
	scratch_store_b128 off, v[228:231], off offset:240
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[9:16], v[65:72], v[0:7]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v9.h, v208.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[129:136], v[57:64], v[0:7]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off offset:192
	scratch_store_b128 off, v[4:7], off offset:208
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:160
	scratch_load_b128 v[4:7], off, off offset:176
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[17:24], v[65:72], v[0:7]
	v_mov_b32_e32 v24, v8
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[137:144], v[57:64], v[0:7]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off offset:160
	scratch_store_b128 off, v[4:7], off offset:176
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:128
	scratch_load_b128 v[4:7], off, off offset:144
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[25:32], v[65:72], v[0:7]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[145:152], v[57:64], v[0:7]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off offset:128
	scratch_store_b128 off, v[4:7], off offset:144
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:96
	scratch_load_b128 v[4:7], off, off offset:112
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[97:104], v[65:72], v[0:7]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[193:200], v[57:64], v[0:7]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off offset:96
	scratch_store_b128 off, v[4:7], off offset:112
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:64
	scratch_load_b128 v[4:7], off, off offset:80
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[105:112], v[65:72], v[0:7]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[216:223], v[57:64], v[0:7]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off offset:64
	scratch_store_b128 off, v[4:7], off offset:80
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:32
	scratch_load_b128 v[4:7], off, off offset:48
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[113:120], v[65:72], v[0:7]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[33:40], v[57:64], v[0:7]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off offset:32
	scratch_store_b128 off, v[4:7], off offset:48
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off
	scratch_load_b128 v[4:7], off, off offset:16
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[81:88], v[65:72], v[0:7]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[73:80], v[57:64], v[0:7]
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v57.l, v208.l
	v_mov_b16_e64 v58.l, v208.l
	v_mov_b16_e64 v59.l, v208.l
	v_mov_b16_e64 v60.l, v208.l
	v_mov_b16_e64 v61.l, v208.l
	v_mov_b16_e64 v62.l, v208.l
	v_mov_b16_e64 v63.l, v208.l
	v_mov_b16_e64 v64.l, v208.l
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off
	scratch_store_b128 off, v[4:7], off offset:16
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v0, v153, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v153, v0, 0x7fff
	v_cndmask_b16 v57.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v232, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v232, v232
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v232, v0, 0x7fff
	v_cndmask_b16 v58.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v214, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v214, v214
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v1, v232, v58
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v0, v214, v0, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v59.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v170, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v170, v170
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v2, v214, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v0, v170, v0, 0x7fff
	v_cndmask_b16 v60.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v213, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v213, v213
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v3, v170, v60
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v0, v213, v0, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v61.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v205, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v205, v205
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v4, v213, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v0, v205, v0, 0x7fff
	v_cndmask_b16 v62.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v206, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v206, v206
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v5, v205, v62
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v0, v206, v0, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v63.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v207, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v207, v207
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v6, v206, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v0, v207, v0, 0x7fff
	v_cndmask_b16 v64.h, 0x7fff, v0.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v0, v153, v57 :: v_dual_sub_f32 v7, v207, v64
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v8, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v8, v0, v8, 0x7fff
	v_bfe_u32 v0, v1, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v8.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v0, v1, v0, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 34 is_stmt 1              ; attention_backward.py:732:34
	v_mov_b16_e64 v8.h, v208.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v253, v253
	.loc	1 728 34 is_stmt 1              ; attention_backward.py:728:34
	v_cndmask_b16 v18.l, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v2, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_add3_u32 v0, v2, v0, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	scratch_load_b32 v2, off, off offset:628 ; 4-byte Folded Reload
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v17.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v3, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_add3_u32 v0, v3, v0, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	scratch_load_b32 v3, off, off offset:632 ; 4-byte Folded Reload
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v17.l, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v4, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_add3_u32 v0, v4, v0, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	scratch_load_b32 v4, off, off offset:636 ; 4-byte Folded Reload
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v11.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v5, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_add3_u32 v0, v5, v0, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v5, v215, v215
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v10.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v6, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_add3_u32 v0, v6, v0, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v6, 0xffff0000, v166
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v10.l, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v7, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v0, v7, v0, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v7.l, v208.l
	v_mov_b16_e64 v7.h, v166.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v8.l, v6.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v18.h, 0x7fff, v0.h, vcc_lo
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v7, v7, v7 :: v_dual_and_b32 v8, 1, v8
	v_sub_f32_e32 v0, v254, v254
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v9.l, v7.h
	v_add3_u32 v8, v6, v8, 0x7fff
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v6, 0xffff0000, v167
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v9, 1, v9
	v_cndmask_b16 v146.h, 0x7fff, v8.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v6, v6, v6
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v8.h, v208.l
	v_add3_u32 v9, v7, v9, 0x7fff
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v7.l, v208.l
	v_mov_b16_e64 v7.h, v167.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v8.l, v6.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v146.l, 0x7fff, v9.h, vcc_lo
	v_mov_b16_e64 v9.h, v208.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v7, v7, v7 :: v_dual_and_b32 v8, 1, v8
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v9.l, v7.h
	v_add3_u32 v8, v6, v8, 0x7fff
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v6, 0xffff0000, v168
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v9, 1, v9
	v_cndmask_b16 v147.h, 0x7fff, v8.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v6, v6, v6
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v8.h, v208.l
	v_add3_u32 v9, v7, v9, 0x7fff
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v7.l, v208.l
	v_mov_b16_e64 v7.h, v168.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v8.l, v6.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v147.l, 0x7fff, v9.h, vcc_lo
	v_mov_b16_e64 v9.h, v208.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v7, v7, v7 :: v_dual_and_b32 v8, 1, v8
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v9.l, v7.h
	v_add3_u32 v8, v6, v8, 0x7fff
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v6, 0xffff0000, v169
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v9, 1, v9
	v_cndmask_b16 v148.h, 0x7fff, v8.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v6, v6, v6
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v8.h, v208.l
	v_add3_u32 v9, v7, v9, 0x7fff
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v7.l, v208.l
	v_mov_b16_e64 v7.h, v169.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v8.l, v6.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v148.l, 0x7fff, v9.h, vcc_lo
	v_mov_b16_e64 v9.h, v208.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v7, v7, v7 :: v_dual_and_b32 v8, 1, v8
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v9.l, v7.h
	v_add3_u32 v8, v6, v8, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v6, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v154.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v9, 1, v9
	v_cndmask_b16 v149.h, 0x7fff, v8.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_mov_b16_e64 v8.h, v208.l
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v9, v7, v9, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	scratch_load_b32 v7, off, off offset:624 ; 4-byte Folded Reload
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v9.l, v6.h
	v_cndmask_b16 v149.l, 0x7fff, v9.h, vcc_lo
	v_mov_b16_e64 v9.h, v208.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v9, 1, v9
	v_add3_u32 v9, v6, v9, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	s_waitcnt vmcnt(2)
	v_dual_sub_f32 v2, v2, v2 :: v_dual_sub_f32 v3, v3, v3
	s_waitcnt vmcnt(0)
	v_dual_sub_f32 v4, v4, v4 :: v_dual_sub_f32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v8.l, v7.h
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v8, 1, v8
	v_add3_u32 v8, v7, v8, 0x7fff
	v_mov_b16_e32 v7.l, v0.h
	v_mov_b16_e64 v7.h, v208.l
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v150.h, 0x7fff, v8.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_mov_b16_e32 v6.l, v1.h
	v_mov_b16_e64 v6.h, v208.l
	v_and_b32_e32 v7, 1, v7
	v_cndmask_b16 v150.l, 0x7fff, v9.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v6, 1, v6
	v_add3_u32 v7, v0, v7, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v6, v1, v6, 0x7fff
	v_mov_b16_e32 v1.l, v2.h
	v_mov_b16_e64 v1.h, v208.l
	v_cndmask_b16 v151.h, 0x7fff, v6.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v0.l, v3.h
	v_mov_b16_e64 v0.h, v208.l
	v_and_b32_e32 v1, 1, v1
	v_cndmask_b16 v151.l, 0x7fff, v7.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v0, 1, v0
	v_add3_u32 v1, v2, v1, 0x7fff
	v_mov_b16_e32 v1.l, v4.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v0, v3, v0, 0x7fff
	v_mov_b16_e64 v3.h, v208.l
	v_mov_b16_e32 v0.l, v5.h
	v_cndmask_b16 v152.h, 0x7fff, v0.h, vcc_lo
	v_mov_b16_e64 v0.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_mov_b16_e64 v2.h, v208.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_b32_e32 v0, 1, v0
	v_cndmask_b16 v152.l, 0x7fff, v1.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_mov_b16_e64 v1.h, v208.l
	v_add3_u32 v0, v5, v0, 0x7fff
	scratch_load_b32 v5, off, off offset:616 ; 4-byte Folded Reload
	v_and_b32_e32 v1, 1, v1
	v_cndmask_b16 v153.h, 0x7fff, v0.h, vcc_lo
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v154
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v1, v4, v1, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v153.l, 0x7fff, v1.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v155.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v3.l, v1.h
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v155
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v154.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v156.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v154.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v155.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v157.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v155.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v156.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v158.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v156.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v157.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v159.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v157.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v159
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v158.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v160.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v158.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v160
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v159.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v161.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v159.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v161
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v160.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v53.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v160.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v161.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v54.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v161.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v130.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v55.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v130.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v131.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v56.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v131.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v132.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v49.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v132.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v133.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v50.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v133.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v134.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v51.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v134.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v135.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v52.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v135.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v136.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v45.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v136.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v137.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v46.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v137.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v138.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v47.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v138.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v139.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v48.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v139.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v140.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v41.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v140.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v141.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v42.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v141.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v142.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v43.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v142.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v143.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v44.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v143.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v144.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v93.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v144.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v145.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v94.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v145.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v114.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v95.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v114.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v115.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v96.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v115.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v116.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v89.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v116.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v117.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v90.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v117.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v118.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v91.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v118.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v119.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v92.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v119.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v120.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v249.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v120.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v249
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v121.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v250.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v121.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v250
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v122.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v251.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v122.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v251
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v123.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v252.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v123.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v252
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v124.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v245.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v124.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v245
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v125.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v246.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v125.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v246
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v126.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v247.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v126.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v247
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v127.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v248.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v127.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v248
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v128.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v189.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v128.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v189
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v129.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v190.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v129.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v190
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v106.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v191.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v106.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v191
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v107.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v192.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v107.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v192
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v108.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v185.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v108.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v185
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v109.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v186.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v109.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v186
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v110.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v187.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v110.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v187
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v111.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v188.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v111.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v188
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v112.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v181.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v112.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v181
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v113.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v182.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v113.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v182
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v98.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v183.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v98.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v183
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v99.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v184.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v99.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v184
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v100.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v177.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v100.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v177
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v101.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v178.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v101.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v178
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v102.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v179.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v102.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v179
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v103.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v208.h, v180.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v103.l, 0x7fff, v3.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_and_b32_e32 v2, 1, v2
	v_and_b32_e32 v3, 1, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v180
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v104.h, 0x7fff, v2.h, vcc_lo
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v208, v208
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v2.h, v208.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v2.l, v0.h
	v_cndmask_b16 v104.l, 0x7fff, v3.h, vcc_lo
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v0, v2, 0x7fff
	scratch_load_b32 v0, off, off offset:256 ; 4-byte Folded Reload
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v105.h, 0x7fff, v2.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:260
	scratch_load_b32 v2, off, off offset:264
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	s_waitcnt vmcnt(3)
	ds_store_b16_d16_hi v5, v57
	ds_store_b16_d16_hi v5, v61 offset:512
	s_waitcnt vmcnt(2)
	ds_store_b16_d16_hi v0, v58
	ds_store_b16_d16_hi v0, v62 offset:512
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v105.l, 0x7fff, v3.h, vcc_lo
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt vmcnt(1)
	ds_store_b16_d16_hi v1, v59
	ds_store_b16_d16_hi v1, v63 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v2, v60
	ds_store_b16_d16_hi v2, v64 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v3, off, off offset:620
	scratch_load_b32 v4, off, off offset:268
	scratch_load_b32 v8, off, off offset:272
	scratch_load_b32 v12, off, off offset:276
	s_waitcnt vmcnt(3)
	ds_load_b128 v[185:188], v3
	s_waitcnt vmcnt(2)
	ds_load_b128 v[189:192], v4
	s_waitcnt vmcnt(1)
	ds_load_b128 v[177:180], v8
	s_waitcnt vmcnt(0)
	ds_load_b128 v[181:184], v12
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b128 v[13:16], off, off offset:600
	scratch_load_b32 v6, off, off offset:564
	scratch_load_b32 v9, off, off offset:580
	s_waitcnt vmcnt(2)
	ds_store_b16 v176, v13
	v_mov_b16_e32 v7.l, v16.l
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v9 offset:768
	scratch_load_b32 v9, off, off offset:560 ; 4-byte Folded Reload
	ds_store_b16 v176, v6 offset:256
	ds_store_b16 v176, v14 offset:512
	v_mov_b16_e32 v6.l, v15.l
	scratch_load_b128 v[13:16], off, off offset:584 ; 16-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_store_b16 v176, v9 offset:384
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v14 offset:640
	scratch_load_b32 v9, off, off offset:572 ; 4-byte Folded Reload
	ds_store_b16 v176, v13 offset:128
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v9 offset:896
	ds_store_b16 v176, v6 offset:1024
	scratch_load_b32 v6, off, off offset:568 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v6 offset:1280
	ds_store_b16 v176, v7 offset:1536
	scratch_load_b32 v6, off, off offset:576 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v6 offset:1792
	ds_store_b16 v176, v15 offset:1152
	scratch_load_b32 v6, off, off offset:552 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v6 offset:1408
	ds_store_b16 v176, v16 offset:1664
	scratch_load_b32 v6, off, off offset:556 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v6 offset:1920
	ds_store_b16 v176, v201 offset:2048
	scratch_load_b32 v6, off, off offset:532 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v6 offset:2304
	ds_store_b16 v176, v202 offset:2560
	scratch_load_b32 v6, off, off offset:548 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v6 offset:2816
	ds_store_b16 v176, v162 offset:2176
	scratch_load_b32 v6, off, off offset:528 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v6 offset:2432
	ds_store_b16 v176, v163 offset:2688
	scratch_load_b32 v6, off, off offset:540 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v6 offset:2944
	ds_store_b16 v176, v203 offset:3072
	scratch_load_b32 v6, off, off offset:536 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v6 offset:3328
	ds_store_b16 v176, v204 offset:3584
	scratch_load_b32 v6, off, off offset:544 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v6 offset:3840
	ds_store_b16 v176, v164 offset:3200
	s_clause 0x1                            ; 20-byte Folded Reload
	scratch_load_b32 v6, off, off offset:520
	scratch_load_b128 v[13:16], off, off offset:504
	s_waitcnt vmcnt(1)
	ds_store_b16 v176, v6 offset:3456
	ds_store_b16 v176, v165 offset:3712
	scratch_load_b32 v6, off, off offset:524 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v6 offset:3968
	scratch_load_b32 v6, off, off offset:484 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v6 offset:4352
	ds_store_b16 v176, v14 offset:4608
	scratch_load_b32 v6, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v6 offset:4864
	ds_store_b16 v176, v233 offset:4224
	scratch_load_b32 v6, off, off offset:480 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v6 offset:4480
	ds_store_b16 v176, v234 offset:4736
	scratch_load_b32 v6, off, off offset:492 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v6 offset:4992
	ds_store_b16 v176, v15 offset:5120
	scratch_load_b32 v6, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v6 offset:5376
	ds_store_b16 v176, v16 offset:5632
	scratch_load_b32 v6, off, off offset:496 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v6 offset:5888
	ds_store_b16 v176, v235 offset:5248
	scratch_load_b32 v6, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v6 offset:5504
	ds_store_b16 v176, v236 offset:5760
	scratch_load_b32 v6, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v6 offset:6016
	ds_store_b16 v176, v237 offset:6144
	scratch_load_b32 v6, off, off offset:452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v6 offset:6400
	ds_store_b16 v176, v238 offset:6656
	scratch_load_b32 v6, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v6 offset:6912
	ds_store_b16 v176, v241 offset:6272
	scratch_load_b32 v6, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v6 offset:6528
	ds_store_b16 v176, v242 offset:6784
	scratch_load_b32 v6, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v6 offset:7040
	ds_store_b16 v176, v239 offset:7168
	scratch_load_b32 v6, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v6 offset:7424
	ds_store_b16 v176, v240 offset:7680
	scratch_load_b32 v6, off, off offset:464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v6 offset:7936
	ds_store_b16 v176, v243 offset:7296
	scratch_load_b32 v6, off, off offset:444 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v6 offset:7552
	ds_store_b16 v176, v244 offset:7808
	scratch_load_b32 v6, off, off offset:440 ; 4-byte Folded Reload
	ds_store_b16 v176, v13 offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b16 v176, v6 offset:8064
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v225, v171
	s_clause 0x7                            ; 128-byte Folded Reload
	scratch_load_b128 v[193:196], off, off offset:280
	scratch_load_b128 v[197:200], off, off offset:296
	scratch_load_b128 v[201:204], off, off offset:312
	scratch_load_b128 v[205:208], off, off offset:328
	scratch_load_b128 v[217:220], off, off offset:376
	scratch_load_b128 v[221:224], off, off offset:392
	scratch_load_b128 v[209:212], off, off offset:344
	scratch_load_b128 v[213:216], off, off offset:360
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v225, v171 offset:256
	ds_load_u16_d16 v226, v171 offset:512
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v226, v171 offset:768
	ds_load_u16_d16 v227, v171 offset:1024
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v227, v171 offset:1280
	ds_load_u16_d16 v228, v171 offset:1536
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v228, v171 offset:1792
	ds_load_u16_d16 v229, v171 offset:2048
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v229, v171 offset:2304
	ds_load_u16_d16 v230, v171 offset:2560
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v230, v171 offset:2816
	ds_load_u16_d16 v231, v171 offset:3072
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v231, v171 offset:3328
	ds_load_u16_d16 v232, v171 offset:3584
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v232, v171 offset:3840
	ds_load_u16_d16 v241, v171 offset:4096
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v241, v171 offset:4352
	ds_load_u16_d16 v242, v171 offset:4608
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v242, v171 offset:4864
	ds_load_u16_d16 v243, v171 offset:5120
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v243, v171 offset:5376
	ds_load_u16_d16 v244, v171 offset:5632
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v244, v171 offset:5888
	ds_load_u16_d16 v245, v171 offset:6144
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v245, v171 offset:6400
	ds_load_u16_d16 v246, v171 offset:6656
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v246, v171 offset:6912
	ds_load_u16_d16 v247, v171 offset:7168
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v247, v171 offset:7424
	ds_load_u16_d16 v248, v171 offset:7680
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v248, v171 offset:7936
	ds_load_u16_d16 v233, v171 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v233, v171 offset:320
	ds_load_u16_d16 v234, v171 offset:576
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt vmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[217:224], v[225:232], v[185:192], v[217:224]
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v234, v171 offset:832
	ds_load_u16_d16 v235, v171 offset:1088
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[217:224], v[241:248], v[177:184], v[217:224]
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v235, v171 offset:1344
	ds_load_u16_d16 v236, v171 offset:1600
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v236, v171 offset:1856
	ds_load_u16_d16 v237, v171 offset:2112
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v237, v171 offset:2368
	ds_load_u16_d16 v238, v171 offset:2624
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v238, v171 offset:2880
	ds_load_u16_d16 v239, v171 offset:3136
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v239, v171 offset:3392
	ds_load_u16_d16 v240, v171 offset:3648
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v240, v171 offset:3904
	ds_load_u16_d16 v57, v171 offset:4160
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v57, v171 offset:4416
	ds_load_u16_d16 v58, v171 offset:4672
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[209:216], v[233:240], v[185:192], v[209:216]
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v58, v171 offset:4928
	ds_load_u16_d16 v59, v171 offset:5184
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v59, v171 offset:5440
	ds_load_u16_d16 v60, v171 offset:5696
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v60, v171 offset:5952
	ds_load_u16_d16 v61, v171 offset:6208
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v61, v171 offset:6464
	ds_load_u16_d16 v62, v171 offset:6720
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v62, v171 offset:6976
	ds_load_u16_d16 v63, v171 offset:7232
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v63, v171 offset:7488
	ds_load_u16_d16 v64, v171 offset:7744
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v64, v171 offset:8000
	ds_load_u16_d16 v65, v171 offset:128
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v65, v171 offset:384
	ds_load_u16_d16 v66, v171 offset:640
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[209:216], v[57:64], v[177:184], v[209:216]
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v66, v171 offset:896
	ds_load_u16_d16 v67, v171 offset:1152
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v67, v171 offset:1408
	ds_load_u16_d16 v68, v171 offset:1664
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v68, v171 offset:1920
	ds_load_u16_d16 v69, v171 offset:2176
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v69, v171 offset:2432
	ds_load_u16_d16 v70, v171 offset:2688
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v70, v171 offset:2944
	ds_load_u16_d16 v71, v171 offset:3200
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v71, v171 offset:3456
	ds_load_u16_d16 v72, v171 offset:3712
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v72, v171 offset:3968
	ds_load_u16_d16 v73, v171 offset:4224
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v73, v171 offset:4480
	ds_load_u16_d16 v74, v171 offset:4736
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[201:208], v[65:72], v[185:192], v[201:208]
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v74, v171 offset:4992
	ds_load_u16_d16 v75, v171 offset:5248
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v75, v171 offset:5504
	ds_load_u16_d16 v76, v171 offset:5760
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v76, v171 offset:6016
	ds_load_u16_d16 v77, v171 offset:6272
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v77, v171 offset:6528
	ds_load_u16_d16 v78, v171 offset:6784
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v78, v171 offset:7040
	ds_load_u16_d16 v79, v171 offset:7296
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v79, v171 offset:7552
	ds_load_u16_d16 v80, v171 offset:7808
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v80, v171 offset:8064
	ds_load_u16_d16 v81, v171 offset:192
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v81, v171 offset:448
	ds_load_u16_d16 v82, v171 offset:704
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[201:208], v[73:80], v[177:184], v[201:208]
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v82, v171 offset:960
	ds_load_u16_d16 v83, v171 offset:1216
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v83, v171 offset:1472
	ds_load_u16_d16 v84, v171 offset:1728
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v84, v171 offset:1984
	ds_load_u16_d16 v85, v171 offset:2240
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v85, v171 offset:2496
	ds_load_u16_d16 v86, v171 offset:2752
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v86, v171 offset:3008
	ds_load_u16_d16 v87, v171 offset:3264
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v87, v171 offset:3520
	ds_load_u16_d16 v88, v171 offset:3776
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v88, v171 offset:4032
	ds_load_u16_d16 v89, v171 offset:4288
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v89, v171 offset:4544
	ds_load_u16_d16 v90, v171 offset:4800
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[193:200], v[81:88], v[185:192], v[193:200]
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v90, v171 offset:5056
	ds_load_u16_d16 v91, v171 offset:5312
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v91, v171 offset:5568
	ds_load_u16_d16 v92, v171 offset:5824
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v92, v171 offset:6080
	ds_load_u16_d16 v93, v171 offset:6336
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v93, v171 offset:6592
	ds_load_u16_d16 v94, v171 offset:6848
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v94, v171 offset:7104
	ds_load_u16_d16 v95, v171 offset:7360
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v95, v171 offset:7616
	ds_load_u16_d16 v96, v171 offset:7872
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v96, v171 offset:8128
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v5, v11
	ds_store_b16_d16_hi v5, v11 offset:512
	ds_store_b16 v0, v18
	ds_store_b16_d16_hi v0, v10 offset:512
	ds_store_b16_d16_hi v1, v17
	ds_store_b16 v1, v10 offset:512
	ds_store_b16 v2, v17
	ds_store_b16_d16_hi v2, v18 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v3
	ds_load_b128 v[4:7], v4
	ds_load_b128 v[8:11], v8
	ds_load_b128 v[12:15], v12
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[193:200], v[89:96], v[177:184], v[193:200]
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[65:72], v[0:7], v[201:208]
	v_wmma_f32_16x16x16_bf16 v[217:224], v[225:232], v[0:7], v[217:224]
	v_wmma_f32_16x16x16_bf16 v[209:216], v[233:240], v[0:7], v[209:216]
	v_wmma_f32_16x16x16_bf16 v[193:200], v[81:88], v[0:7], v[193:200]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[73:80], v[8:15], v[201:208]
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v30, off, off offset:1224
	scratch_load_b32 v31, off, off offset:1228
	scratch_load_b32 v32, off, off offset:1232
	scratch_load_b32 v73, off, off offset:1236
	scratch_load_b32 v74, off, off offset:1240
	scratch_load_b32 v75, off, off offset:1244
	scratch_load_b32 v76, off, off offset:1248
	scratch_load_b32 v77, off, off offset:1252
	v_wmma_f32_16x16x16_bf16 v[217:224], v[241:248], v[8:15], v[217:224]
	v_wmma_f32_16x16x16_bf16 v[209:216], v[57:64], v[8:15], v[209:216]
	v_wmma_f32_16x16x16_bf16 v[193:200], v[89:96], v[8:15], v[193:200]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[12:15], off, off offset:408
	scratch_load_b128 v[16:19], off, off offset:424
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[201:208], v[114:121], v[185:192], v[201:208]
	v_wmma_f32_16x16x16_bf16 v[217:224], v[146:153], v[185:192], v[217:224]
	v_wmma_f32_16x16x16_bf16 v[209:216], v[130:137], v[185:192], v[209:216]
	v_wmma_f32_16x16x16_bf16 v[193:200], v[106:113], v[185:192], v[193:200]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[122:129], v[177:184], v[201:208]
	v_wmma_f32_16x16x16_bf16 v[217:224], v[154:161], v[177:184], v[217:224]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_f32_16x16x16_bf16 v[209:216], v[138:145], v[177:184], v[209:216]
	v_wmma_f32_16x16x16_bf16 v[193:200], v[98:105], v[177:184], v[193:200]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v100, off, off offset:1220
	scratch_load_b32 v99, off, off offset:1216
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_9:                                ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:1684
	scratch_load_b32 v3, off, off offset:1736
	.loc	1 608 29 is_stmt 1              ; attention_backward.py:608:29
	s_or_b32 s0, s97, 1
	s_or_b32 s1, s97, 2
	s_or_b32 s3, s97, 3
	s_or_b32 s8, s97, 4
	s_or_b32 s9, s97, 5
	s_or_b32 s10, s97, 6
	s_or_b32 s11, s97, 7
	s_or_b32 s12, s97, 8
	s_or_b32 s13, s97, 9
	s_or_b32 s14, s97, 10
	s_or_b32 s15, s97, 11
	s_or_b32 s16, s97, 12
	s_or_b32 s17, s97, 13
	s_or_b32 s18, s97, 14
	s_or_b32 s19, s97, 15
	s_or_b32 s20, s97, 16
	s_or_b32 s39, s97, 17
	s_or_b32 s40, s97, 18
	s_or_b32 s41, s97, 19
	s_or_b32 s42, s97, 20
	s_or_b32 s43, s97, 21
	s_or_b32 s44, s97, 22
	s_or_b32 s45, s97, 23
	s_or_b32 s46, s97, 24
	s_or_b32 s47, s97, 25
	s_or_b32 s48, s97, 26
	s_or_b32 s49, s97, 27
	s_or_b32 s50, s97, 28
	s_or_b32 s51, s97, 29
	s_or_b32 s52, s97, 30
	s_or_b32 s53, s97, 31
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s97, s70
	s_clause 0x3                            ; 64-byte Folded Spill
	scratch_store_b128 off, v[217:220], off offset:376
	scratch_store_b128 off, v[221:224], off offset:392
	scratch_store_b128 off, v[209:212], off offset:344
	scratch_store_b128 off, v[213:216], off offset:360
	s_cselect_b32 s21, -1, 0
	s_cmp_lt_i32 s0, s70
	.loc	1 664 25                        ; attention_backward.py:664:25
	v_readlane_b32 s0, v255, 21
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s1, s70
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v8, off, off offset:1888
	scratch_load_b32 v6, off, off offset:1680
	scratch_load_b32 v9, off, off offset:1712
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s3, s70
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(8)
	v_mov_b32_e32 v14, v12
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s8, s70
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s1, s71, v30
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s9, s70
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v13, off, off offset:1824
	scratch_load_b32 v7, off, off offset:1688
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s10, s70
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(9)
	v_mov_b32_e32 v16, v12
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s28, -1, 0
	s_cmp_lt_i32 s11, s70
	scratch_load_b32 v10, off, off offset:1804 ; 4-byte Folded Reload
	s_cselect_b32 s29, -1, 0
	s_cmp_lt_i32 s12, s70
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v15, v12
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s30, -1, 0
	s_cmp_lt_i32 s13, s70
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v17, v12
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s31, -1, 0
	s_cmp_lt_i32 s14, s70
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v19, v12
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s33, -1, 0
	s_cmp_lt_i32 s15, s70
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v18, v12
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s34, -1, 0
	s_cmp_lt_i32 s16, s70
	v_mov_b32_e32 v78, v12
	s_cselect_b32 s35, -1, 0
	s_cmp_lt_i32 s17, s70
	scratch_load_b32 v11, off, off offset:1812 ; 4-byte Folded Reload
	s_cselect_b32 s36, -1, 0
	s_cmp_lt_i32 s18, s70
	s_cselect_b32 s37, -1, 0
	s_cmp_lt_i32 s19, s70
	s_cselect_b32 s38, -1, 0
	s_cmp_lt_i32 s20, s70
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s39, s70
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s40, s70
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s41, s70
	s_cselect_b32 vcc_hi, -1, 0
	s_cmp_lt_i32 s42, s70
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s43, s70
	s_cselect_b32 s102, -1, 0
	s_cmp_lt_i32 s44, s70
	s_cselect_b32 s101, -1, 0
	s_cmp_lt_i32 s45, s70
	s_cselect_b32 s96, -1, 0
	s_cmp_lt_i32 s46, s70
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s47, s70
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s48, s70
	s_cselect_b32 s103, -1, 0
	s_cmp_lt_i32 s49, s70
	s_cselect_b32 s100, -1, 0
	s_cmp_lt_i32 s50, s70
	s_cselect_b32 s99, -1, 0
	s_cmp_lt_i32 s51, s70
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s52, s70
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s53, s70
	s_cselect_b32 s74, -1, 0
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_add_i32 s75, s97, s0
	v_readlane_b32 s0, v255, 2
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s21
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_mul_i32 s0, s75, s0
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(9)
	v_add_lshl_u32 v0, s0, v99, 1
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v1, s0, v2, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s24
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_u16 v220, v0, s[84:87], 0 offen
	buffer_load_u16 v221, v1, s[84:87], 0 offen
	v_add_lshl_u32 v0, s0, v100, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_add_nc_u32 v1, 64, v2
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s24
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v1, s0, v1, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_u16 v209, v0, s[84:87], 0 offen
	buffer_load_u16 v210, v1, s[84:87], 0 offen
	scratch_load_b32 v0, off, off offset:640 ; 4-byte Folded Reload
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v1, 0x80, v2
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v1, s0, v1, 1
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v5, 64, v8
	v_add_lshl_u32 v4, s0, v8, 1
	v_add_lshl_u32 v5, s0, v5, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s0, v0, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s24
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_u16 v172, v0, s[84:87], 0 offen
	buffer_load_u16 v173, v1, s[84:87], 0 offen
	scratch_load_b32 v0, off, off offset:644 ; 4-byte Folded Reload
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v1, 0xc0, v2
	scratch_load_b32 v2, off, off offset:1704 ; 4-byte Folded Reload
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s21
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v1, s0, v1, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v0, s0, v0, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s24
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_u16 v85, v0, s[84:87], 0 offen
	buffer_load_u16 v86, v1, s[84:87], 0 offen
	scratch_load_b32 v1, off, off offset:1692 ; 4-byte Folded Reload
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s26
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s0, v1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s28
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v222, v0, s[84:87], 0 offen
	v_add_lshl_u32 v0, s0, v2, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s26
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v223, v0, s[84:87], 0 offen
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, 64, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v0, s0, v0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s28
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v211, v0, s[84:87], 0 offen
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, 64, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v0, s0, v0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s26
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v212, v0, s[84:87], 0 offen
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, 0x80, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v0, s0, v0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s28
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v174, v0, s[84:87], 0 offen
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, 0x80, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v0, s0, v0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s26
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v175, v0, s[84:87], 0 offen
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, 0xc0, v1
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v1, s0, v3, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, s0, v0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s28
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v87, v0, s[84:87], 0 offen
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, 0xc0, v2
	scratch_load_b32 v2, off, off offset:1720 ; 4-byte Folded Reload
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v0, s0, v0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s30
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v88, v0, s[84:87], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v0, s0, v2, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s33
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_u16 v105, v0, s[84:87], 0 offen
	buffer_load_u16 v106, v1, s[84:87], 0 offen
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, 64, v2
	v_add_nc_u32_e32 v1, 64, v3
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v0, s0, v0, 1
	v_add_lshl_u32 v1, s0, v1, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s33
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_u16 v113, v0, s[84:87], 0 offen
	buffer_load_u16 v114, v1, s[84:87], 0 offen
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, 0x80, v2
	v_add_nc_u32_e32 v1, 0x80, v3
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v0, s0, v0, 1
	v_add_lshl_u32 v1, s0, v1, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s33
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_u16 v109, v0, s[84:87], 0 offen
	buffer_load_u16 v110, v1, s[84:87], 0 offen
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, 0xc0, v2
	v_add_nc_u32_e32 v1, 0xc0, v3
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s30
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:1768
	scratch_load_b32 v3, off, off offset:1808
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v0, s0, v0, 1
	v_add_lshl_u32 v1, s0, v1, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s33
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_u16 v117, v0, s[84:87], 0 offen
	buffer_load_u16 v118, v1, s[84:87], 0 offen
	scratch_load_b32 v1, off, off offset:1752 ; 4-byte Folded Reload
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s35
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s0, v1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s37
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v107, v0, s[84:87], 0 offen
	v_add_lshl_u32 v0, s0, v2, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s35
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v108, v0, s[84:87], 0 offen
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, 64, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v0, s0, v0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s37
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v115, v0, s[84:87], 0 offen
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, 64, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v0, s0, v0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s35
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v116, v0, s[84:87], 0 offen
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, 0x80, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v0, s0, v0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s37
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v111, v0, s[84:87], 0 offen
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, 0x80, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v0, s0, v0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s35
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v112, v0, s[84:87], 0 offen
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, 0xc0, v1
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v1, s0, v3, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, s0, v0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s37
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v119, v0, s[84:87], 0 offen
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, 0xc0, v2
	scratch_load_b32 v2, off, off offset:1796 ; 4-byte Folded Reload
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v0, s0, v0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s82
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v120, v0, s[84:87], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v0, s0, v2, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s92
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_u16 v121, v0, s[84:87], 0 offen
	buffer_load_u16 v122, v1, s[84:87], 0 offen
	v_add_nc_u32_e32 v0, 64, v2
	v_add_nc_u32_e32 v1, 64, v3
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v0, s0, v0, 1
	v_add_lshl_u32 v1, s0, v1, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s92
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_u16 v129, v0, s[84:87], 0 offen
	buffer_load_u16 v130, v1, s[84:87], 0 offen
	v_add_nc_u32_e32 v0, 0x80, v2
	v_add_nc_u32_e32 v1, 0x80, v3
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v0, s0, v0, 1
	v_add_lshl_u32 v1, s0, v1, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s92
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_u16 v125, v0, s[84:87], 0 offen
	buffer_load_u16 v126, v1, s[84:87], 0 offen
	v_add_nc_u32_e32 v0, 0xc0, v2
	v_add_nc_u32_e32 v1, 0xc0, v3
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s82
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:1832
	scratch_load_b32 v3, off, off offset:1864
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v0, s0, v0, 1
	v_add_lshl_u32 v1, s0, v1, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s92
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_u16 v133, v0, s[84:87], 0 offen
	buffer_load_u16 v134, v1, s[84:87], 0 offen
	scratch_load_b32 v1, off, off offset:1816 ; 4-byte Folded Reload
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s72
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s0, v1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s101
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v123, v0, s[84:87], 0 offen
	v_add_lshl_u32 v0, s0, v2, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s72
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v124, v0, s[84:87], 0 offen
	v_add_nc_u32_e32 v0, 64, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, s0, v0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s101
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v131, v0, s[84:87], 0 offen
	v_add_nc_u32_e32 v0, 64, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, s0, v0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s72
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v132, v0, s[84:87], 0 offen
	v_add_nc_u32_e32 v0, 0x80, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, s0, v0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s101
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v127, v0, s[84:87], 0 offen
	v_add_nc_u32_e32 v0, 0x80, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, s0, v0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s72
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v128, v0, s[84:87], 0 offen
	v_add_nc_u32_e32 v0, 0xc0, v1
	v_add_lshl_u32 v1, s0, v3, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, s0, v0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s101
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v135, v0, s[84:87], 0 offen
	v_add_nc_u32_e32 v0, 0xc0, v2
	scratch_load_b32 v2, off, off offset:1848 ; 4-byte Folded Reload
	v_add_lshl_u32 v0, s0, v0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s94
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v136, v0, s[84:87], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v0, s0, v2, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s103
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_u16 v137, v0, s[84:87], 0 offen
	buffer_load_u16 v138, v1, s[84:87], 0 offen
	v_add_nc_u32_e32 v0, 64, v2
	v_add_nc_u32_e32 v1, 64, v3
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v0, s0, v0, 1
	v_add_lshl_u32 v1, s0, v1, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s103
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_u16 v145, v0, s[84:87], 0 offen
	buffer_load_u16 v146, v1, s[84:87], 0 offen
	v_add_nc_u32_e32 v0, 0x80, v2
	v_add_nc_u32_e32 v1, 0x80, v3
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v0, s0, v0, 1
	v_add_lshl_u32 v1, s0, v1, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s103
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_u16 v141, v0, s[84:87], 0 offen
	buffer_load_u16 v142, v1, s[84:87], 0 offen
	v_add_nc_u32_e32 v0, 0xc0, v2
	v_add_nc_u32_e32 v1, 0xc0, v3
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s94
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:1896
	scratch_load_b32 v3, off, off offset:1856
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v0, s0, v0, 1
	v_add_lshl_u32 v1, s0, v1, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s103
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_u16 v149, v0, s[84:87], 0 offen
	buffer_load_u16 v150, v1, s[84:87], 0 offen
	scratch_load_b32 v1, off, off offset:1880 ; 4-byte Folded Reload
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s99
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s0, v1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s73
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v139, v0, s[84:87], 0 offen
	v_add_lshl_u32 v0, s0, v2, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s99
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v140, v0, s[84:87], 0 offen
	v_add_nc_u32_e32 v0, 64, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, s0, v0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s73
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v147, v0, s[84:87], 0 offen
	v_add_nc_u32_e32 v0, 64, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, s0, v0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s99
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v148, v0, s[84:87], 0 offen
	v_add_nc_u32_e32 v0, 0x80, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, s0, v0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s73
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v143, v0, s[84:87], 0 offen
	v_add_nc_u32_e32 v0, 0x80, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, s0, v0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s99
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v144, v0, s[84:87], 0 offen
	v_add_nc_u32_e32 v0, 0xc0, v1
	v_add_nc_u32_e32 v1, 0xc0, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v0, s0, v0, 1
	v_add_lshl_u32 v1, s0, v1, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s73
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v151, v0, s[84:87], 0 offen
	v_add_nc_u32_e32 v0, 0xc0, v2
	v_add_nc_u32_e32 v2, 0x80, v3
	v_add_lshl_u32 v0, s0, v0, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v2, s0, v2, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s102
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v152, v0, s[84:87], 0 offen
	v_add_nc_u32_e32 v0, 0x80, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, s0, v0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s102
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_u16 v34, v0, s[84:87], 0 offen
	buffer_load_u16 v33, v1, s[84:87], 0 offen
	v_add_nc_u32_e32 v1, 64, v3
	v_add_lshl_u32 v0, s0, v3, 1
	v_add_nc_u32_e32 v3, 0xc0, v3
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v1, s0, v1, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s95
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v3, s0, v3, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s95
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s95
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s93
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s93
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	s_clause 0x5
	buffer_load_u16 v40, v0, s[84:87], 0 offen
	buffer_load_u16 v39, v1, s[84:87], 0 offen
	buffer_load_u16 v38, v2, s[84:87], 0 offen
	buffer_load_u16 v37, v3, s[84:87], 0 offen
	buffer_load_u16 v36, v4, s[84:87], 0 offen
	buffer_load_u16 v35, v5, s[84:87], 0 offen
	v_add_nc_u32_e32 v3, 0x80, v8
	v_add_nc_u32_e32 v4, 0xc0, v8
	scratch_load_b32 v8, off, off offset:1696 ; 4-byte Folded Reload
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v2, 64, v6
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v0, s0, v6, 1
	v_add_lshl_u32 v1, s0, v7, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s23
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v3, s0, v3, 1
	v_add_lshl_u32 v2, s0, v2, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s25
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v5, 64, v7
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s23
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v4, s0, v4, 1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s93
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v5, s0, v5, 1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s93
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s25
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	s_clause 0x5
	buffer_load_u16 v42, v3, s[84:87], 0 offen
	buffer_load_u16 v41, v4, s[84:87], 0 offen
	buffer_load_u16 v43, v0, s[84:87], 0 offen
	buffer_load_u16 v44, v1, s[84:87], 0 offen
	buffer_load_u16 v45, v2, s[84:87], 0 offen
	buffer_load_u16 v46, v5, s[84:87], 0 offen
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, 0x80, v6
	v_add_nc_u32_e32 v1, 0x80, v7
	v_add_nc_u32_e32 v2, 0xc0, v6
	v_add_nc_u32_e32 v3, 0xc0, v7
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s23
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v0, s0, v0, 1
	v_add_lshl_u32 v1, s0, v1, 1
	v_add_lshl_u32 v2, s0, v2, 1
	v_add_lshl_u32 v3, s0, v3, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_add_nc_u32 v7, 64, v9
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s25
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v5, s0, v9, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s23
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v7, s0, v7, 1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s25
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s27
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v6, 64, v8
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v4, s0, v8, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v6, s0, v6, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s29
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s27
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s29
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	s_clause 0x7
	buffer_load_u16 v47, v0, s[84:87], 0 offen
	buffer_load_u16 v48, v1, s[84:87], 0 offen
	buffer_load_u16 v49, v2, s[84:87], 0 offen
	buffer_load_u16 v50, v3, s[84:87], 0 offen
	buffer_load_u16 v51, v4, s[84:87], 0 offen
	buffer_load_u16 v52, v5, s[84:87], 0 offen
	buffer_load_u16 v53, v6, s[84:87], 0 offen
	buffer_load_u16 v54, v7, s[84:87], 0 offen
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, 0x80, v8
	v_add_nc_u32_e32 v2, 0xc0, v8
	scratch_load_b32 v8, off, off offset:1728 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v1, 0x80, v9
	v_add_nc_u32_e32 v3, 0xc0, v9
	scratch_load_b32 v9, off, off offset:1744 ; 4-byte Folded Reload
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v0, s0, v0, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s27
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v1, s0, v1, 1
	v_add_lshl_u32 v2, s0, v2, 1
	v_add_lshl_u32 v3, s0, v3, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s29
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s27
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s29
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s31
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v6, 64, v8
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v4, s0, v8, 1
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v7, 64, v9
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v5, s0, v9, 1
	v_add_lshl_u32 v6, s0, v6, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s34
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v7, s0, v7, 1
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s31
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s34
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	s_clause 0x7
	buffer_load_u16 v55, v0, s[84:87], 0 offen
	buffer_load_u16 v56, v1, s[84:87], 0 offen
	buffer_load_u16 v65, v2, s[84:87], 0 offen
	buffer_load_u16 v66, v3, s[84:87], 0 offen
	buffer_load_u16 v67, v4, s[84:87], 0 offen
	buffer_load_u16 v68, v5, s[84:87], 0 offen
	buffer_load_u16 v69, v6, s[84:87], 0 offen
	buffer_load_u16 v70, v7, s[84:87], 0 offen
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, 0x80, v8
	v_add_nc_u32_e32 v2, 0xc0, v8
	scratch_load_b32 v8, off, off offset:1760 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v1, 0x80, v9
	v_add_nc_u32_e32 v3, 0xc0, v9
	scratch_load_b32 v9, off, off offset:1776 ; 4-byte Folded Reload
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v0, s0, v0, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s31
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v1, s0, v1, 1
	v_add_lshl_u32 v2, s0, v2, 1
	v_add_lshl_u32 v3, s0, v3, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s34
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s31
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s34
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s36
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v6, 64, v8
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v4, s0, v8, 1
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v7, 64, v9
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v5, s0, v9, 1
	v_add_lshl_u32 v6, s0, v6, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s38
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v7, s0, v7, 1
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s36
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s38
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	s_clause 0x7
	buffer_load_u16 v71, v0, s[84:87], 0 offen
	buffer_load_u16 v72, v1, s[84:87], 0 offen
	buffer_load_u16 v89, v2, s[84:87], 0 offen
	buffer_load_u16 v90, v3, s[84:87], 0 offen
	buffer_load_u16 v91, v4, s[84:87], 0 offen
	buffer_load_u16 v92, v5, s[84:87], 0 offen
	buffer_load_u16 v93, v6, s[84:87], 0 offen
	buffer_load_u16 v94, v7, s[84:87], 0 offen
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, 0x80, v8
	v_add_nc_u32_e32 v1, 0x80, v9
	v_add_nc_u32_e32 v2, 0xc0, v8
	v_add_nc_u32_e32 v3, 0xc0, v9
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s36
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v0, s0, v0, 1
	v_add_lshl_u32 v1, s0, v1, 1
	v_add_lshl_u32 v2, s0, v2, 1
	v_add_lshl_u32 v3, s0, v3, 1
	v_add_nc_u32_e32 v6, 64, v10
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s38
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v4, s0, v10, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s36
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_add_nc_u32 v7, 64, v11
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s38
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v5, s0, v11, 1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s83
	v_add_nc_u32_e32 v8, 0x80, v10
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v6, s0, v6, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, vcc_hi
	v_add_nc_u32_e32 v9, 0x80, v11
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v7, s0, v7, 1
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s83
	v_add_nc_u32_e32 v10, 0xc0, v10
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v8, s0, v8, 1
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, vcc_hi
	v_add_nc_u32_e32 v11, 0xc0, v11
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v9, s0, v9, 1
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s83
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v10, s0, v10, 1
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, vcc_hi
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v11, s0, v11, 1
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s83
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, vcc_hi
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	s_clause 0x7
	buffer_load_u16 v95, v4, s[84:87], 0 offen
	buffer_load_u16 v96, v5, s[84:87], 0 offen
	buffer_load_u16 v153, v6, s[84:87], 0 offen
	buffer_load_u16 v154, v7, s[84:87], 0 offen
	buffer_load_u16 v155, v8, s[84:87], 0 offen
	buffer_load_u16 v156, v9, s[84:87], 0 offen
	buffer_load_u16 v157, v10, s[84:87], 0 offen
	buffer_load_u16 v158, v11, s[84:87], 0 offen
	scratch_load_b32 v7, off, off offset:1872 ; 4-byte Folded Reload
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s100
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v8, s0, v13, 1
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, 64, v7
	v_add_nc_u32_e32 v6, 0x80, v7
	v_add_lshl_u32 v4, s0, v7, 1
	v_add_nc_u32_e32 v7, 0xc0, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_lshl_u32 v5, s0, v5, 1
	v_add_lshl_u32 v6, s0, v6, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s100
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v7, s0, v7, 1
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s100
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s100
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	s_clause 0x3
	buffer_load_u16 v162, v4, s[84:87], 0 offen
	buffer_load_u16 v161, v5, s[84:87], 0 offen
	buffer_load_u16 v160, v6, s[84:87], 0 offen
	buffer_load_u16 v159, v7, s[84:87], 0 offen
	scratch_load_b32 v7, off, off offset:1840 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v5, 64, v13
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s102
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v13, v12 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v5, s0, v5, 1
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v6, 64, v7
	v_add_lshl_u32 v4, s0, v7, 1
	v_add_lshl_u32 v6, s0, v6, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s102
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s96
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	s_clause 0x7
	buffer_load_u16 v167, v0, s[84:87], 0 offen
	buffer_load_u16 v168, v1, s[84:87], 0 offen
	buffer_load_u16 v169, v2, s[84:87], 0 offen
	buffer_load_u16 v177, v3, s[84:87], 0 offen
	buffer_load_u16 v163, v8, s[84:87], 0 offen
	buffer_load_u16 v164, v4, s[84:87], 0 offen
	buffer_load_u16 v165, v5, s[84:87], 0 offen
	buffer_load_u16 v166, v6, s[84:87], 0 offen
	scratch_load_b32 v3, off, off offset:1904 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v0, 0x80, v7
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v0, s0, v0, 1
	v_cndmask_b32_e32 v57, 0x80000000, v0, vcc_lo
	v_add_nc_u32_e32 v0, 0xc0, v7
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v0, s0, v0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s74
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, 64, v3
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v1, s0, v3, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v2, s0, v2, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s22, s74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v59, 0x80000000, v2, vcc_lo
	v_add_nc_u32_e32 v2, 0x80, v3
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s4, s74
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v2, s0, v2, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v60, 0x80000000, v2, vcc_lo
	v_add_nc_u32_e32 v2, 0xc0, v3
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s5, s74
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v2, s0, v2, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v58, 0x80000000, v2, vcc_lo
	s_clause 0x5
	buffer_load_u16 v178, v57, s[84:87], 0 offen
	buffer_load_u16 v180, v0, s[84:87], 0 offen
	buffer_load_u16 v179, v1, s[84:87], 0 offen
	buffer_load_u16 v182, v59, s[84:87], 0 offen
	buffer_load_u16 v181, v60, s[84:87], 0 offen
	buffer_load_u16 v183, v58, s[84:87], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:648 ; 4-byte Folded Reload
	ds_store_b16 v176, v220
	ds_store_b16 v176, v209 offset:128
	ds_store_b16 v176, v172 offset:256
	ds_store_b16 v176, v85 offset:384
	ds_store_b16 v176, v105 offset:4224
	ds_store_b16 v176, v113 offset:4096
	ds_store_b16 v176, v109 offset:4480
	ds_store_b16 v176, v117 offset:4352
	ds_store_b16 v176, v121 offset:8192
	ds_store_b16 v176, v129 offset:8320
	ds_store_b16 v176, v125 offset:8448
	ds_store_b16 v176, v133 offset:8576
	ds_store_b16 v176, v137 offset:12416
	ds_store_b16 v176, v145 offset:12288
	ds_store_b16 v176, v141 offset:12672
	ds_store_b16 v176, v149 offset:12544
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v64, v19 :: v_dual_mov_b32 v63, v18
	v_dual_mov_b32 v62, v17 :: v_dual_mov_b32 v61, v16
	v_dual_mov_b32 v60, v15 :: v_dual_mov_b32 v59, v14
	v_dual_mov_b32 v58, v13 :: v_dual_mov_b32 v57, v12
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v43
	ds_store_b16 v0, v45 offset:128
	ds_store_b16 v0, v47 offset:256
	ds_store_b16 v0, v49 offset:384
	ds_store_b16 v0, v67 offset:4224
	ds_store_b16 v0, v69 offset:4096
	ds_store_b16 v0, v71 offset:4480
	ds_store_b16 v0, v89 offset:4352
	ds_store_b16 v0, v95 offset:8192
	ds_store_b16 v0, v153 offset:8320
	ds_store_b16 v0, v155 offset:8448
	ds_store_b16 v0, v157 offset:8576
	ds_store_b16 v0, v40 offset:12416
	ds_store_b16 v0, v39 offset:12288
	ds_store_b16 v0, v38 offset:12672
	ds_store_b16 v0, v37 offset:12544
	scratch_load_b32 v0, off, off offset:652 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v221
	ds_store_b16 v0, v210 offset:128
	ds_store_b16 v0, v173 offset:256
	ds_store_b16 v0, v86 offset:384
	ds_store_b16 v0, v106 offset:4224
	ds_store_b16 v0, v114 offset:4096
	ds_store_b16 v0, v110 offset:4480
	ds_store_b16 v0, v118 offset:4352
	ds_store_b16 v0, v122 offset:8192
	ds_store_b16 v0, v130 offset:8320
	ds_store_b16 v0, v126 offset:8448
	ds_store_b16 v0, v134 offset:8576
	ds_store_b16 v0, v138 offset:12416
	ds_store_b16 v0, v146 offset:12288
	ds_store_b16 v0, v142 offset:12672
	ds_store_b16 v0, v150 offset:12544
	scratch_load_b32 v0, off, off offset:656 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v44
	ds_store_b16 v0, v46 offset:128
	ds_store_b16 v0, v48 offset:256
	ds_store_b16 v0, v50 offset:384
	ds_store_b16 v0, v68 offset:4224
	ds_store_b16 v0, v70 offset:4096
	ds_store_b16 v0, v72 offset:4480
	ds_store_b16 v0, v90 offset:4352
	ds_store_b16 v0, v96 offset:8192
	ds_store_b16 v0, v154 offset:8320
	ds_store_b16 v0, v156 offset:8448
	ds_store_b16 v0, v158 offset:8576
	ds_store_b16 v0, v162 offset:12416
	ds_store_b16 v0, v161 offset:12288
	ds_store_b16 v0, v160 offset:12672
	ds_store_b16 v0, v159 offset:12544
	scratch_load_b32 v0, off, off offset:660 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v222
	ds_store_b16 v0, v211 offset:128
	ds_store_b16 v0, v174 offset:256
	ds_store_b16 v0, v87 offset:384
	ds_store_b16 v0, v107 offset:4224
	ds_store_b16 v0, v115 offset:4096
	ds_store_b16 v0, v111 offset:4480
	ds_store_b16 v0, v119 offset:4352
	ds_store_b16 v0, v123 offset:8192
	ds_store_b16 v0, v131 offset:8320
	ds_store_b16 v0, v127 offset:8448
	ds_store_b16 v0, v135 offset:8576
	ds_store_b16 v0, v139 offset:12416
	ds_store_b16 v0, v147 offset:12288
	ds_store_b16 v0, v143 offset:12672
	ds_store_b16 v0, v151 offset:12544
	scratch_load_b32 v0, off, off offset:664 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v51
	ds_store_b16 v0, v53 offset:128
	ds_store_b16 v0, v55 offset:256
	ds_store_b16 v0, v65 offset:384
	ds_store_b16 v0, v91 offset:4224
	ds_store_b16 v0, v93 offset:4096
	ds_store_b16 v0, v167 offset:4480
	ds_store_b16 v0, v169 offset:4352
	ds_store_b16 v0, v163 offset:8192
	ds_store_b16 v0, v165 offset:8320
	ds_store_b16 v0, v34 offset:8448
	ds_store_b16 v0, v33 offset:8576
	ds_store_b16 v0, v36 offset:12416
	ds_store_b16 v0, v35 offset:12288
	ds_store_b16 v0, v42 offset:12672
	ds_store_b16 v0, v41 offset:12544
	scratch_load_b32 v0, off, off offset:668 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v223
	ds_store_b16 v0, v212 offset:128
	ds_store_b16 v0, v175 offset:256
	ds_store_b16 v0, v88 offset:384
	ds_store_b16 v0, v108 offset:4224
	ds_store_b16 v0, v116 offset:4096
	ds_store_b16 v0, v112 offset:4480
	ds_store_b16 v0, v120 offset:4352
	ds_store_b16 v0, v124 offset:8192
	ds_store_b16 v0, v132 offset:8320
	ds_store_b16 v0, v128 offset:8448
	ds_store_b16 v0, v136 offset:8576
	ds_store_b16 v0, v140 offset:12416
	ds_store_b16 v0, v148 offset:12288
	ds_store_b16 v0, v144 offset:12672
	ds_store_b16 v0, v152 offset:12544
	scratch_load_b32 v0, off, off offset:672 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v52
	ds_store_b16 v0, v54 offset:128
	ds_store_b16 v0, v56 offset:256
	ds_store_b16 v0, v66 offset:384
	ds_store_b16 v0, v92 offset:4224
	ds_store_b16 v0, v94 offset:4096
	ds_store_b16 v0, v168 offset:4480
	ds_store_b16 v0, v177 offset:4352
	ds_store_b16 v0, v164 offset:8192
	ds_store_b16 v0, v166 offset:8320
	ds_store_b16 v0, v178 offset:8448
	ds_store_b16 v0, v180 offset:8576
	ds_store_b16 v0, v179 offset:12416
	ds_store_b16 v0, v182 offset:12288
	ds_store_b16 v0, v181 offset:12672
	ds_store_b16 v0, v183 offset:12544
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x11                           ; 96-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1512
	scratch_load_b32 v9, off, off offset:1536
	scratch_load_b32 v11, off, off offset:1544
	scratch_load_b32 v13, off, off offset:1552
	scratch_load_b32 v15, off, off offset:1560
	scratch_load_b32 v14, off, off offset:1556
	scratch_load_b32 v12, off, off offset:1548
	scratch_load_b32 v10, off, off offset:1540
	scratch_load_b128 v[1:4], off, off offset:676
	scratch_load_b128 v[5:8], off, off offset:692
	scratch_load_b32 v17, off, off offset:1568
	scratch_load_b32 v19, off, off offset:1576
	scratch_load_b32 v21, off, off offset:1584
	scratch_load_b32 v23, off, off offset:1592
	scratch_load_b32 v22, off, off offset:1588
	scratch_load_b32 v20, off, off offset:1580
	scratch_load_b32 v18, off, off offset:1572
	scratch_load_b32 v16, off, off offset:1564
	s_waitcnt vmcnt(17)
	v_add_nc_u32_e32 v0, 0, v0
	s_waitcnt vmcnt(16)
	ds_load_b128 v[188:191], v9
	ds_load_b128 v[184:187], v0
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(8) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[1:8], v[184:191], v[57:64]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:740
	scratch_load_b128 v[5:8], off, off offset:756
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[188:191], v11
	ds_load_b128 v[184:187], v10
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[1:8], v[184:191], v[57:64]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:804
	scratch_load_b128 v[5:8], off, off offset:820
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[188:191], v13
	ds_load_b128 v[184:187], v12
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[1:8], v[184:191], v[57:64]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:868
	scratch_load_b128 v[5:8], off, off offset:884
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[188:191], v15
	ds_load_b128 v[184:187], v14
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[1:8], v[184:191], v[57:64]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:932
	scratch_load_b128 v[5:8], off, off offset:948
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[188:191], v17
	ds_load_b128 v[184:187], v16
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[1:8], v[184:191], v[57:64]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:996
	scratch_load_b128 v[5:8], off, off offset:1012
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[188:191], v19
	ds_load_b128 v[184:187], v18
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[1:8], v[184:191], v[57:64]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:1060
	scratch_load_b128 v[5:8], off, off offset:1076
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[188:191], v21
	ds_load_b128 v[184:187], v20
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[1:8], v[184:191], v[57:64]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:1124
	scratch_load_b128 v[5:8], off, off offset:1140
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[188:191], v23
	ds_load_b128 v[184:187], v22
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[1:8], v[184:191], v[57:64]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[184:187], v0 offset:256
	ds_load_b128 v[188:191], v9 offset:256
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:708
	scratch_load_b128 v[4:7], off, off offset:724
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[0:7], v[184:191], v[57:64]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:772
	scratch_load_b128 v[4:7], off, off offset:788
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[184:187], v10 offset:256
	ds_load_b128 v[188:191], v11 offset:256
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[0:7], v[184:191], v[57:64]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:836
	scratch_load_b128 v[4:7], off, off offset:852
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[184:187], v12 offset:256
	ds_load_b128 v[188:191], v13 offset:256
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[0:7], v[184:191], v[57:64]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:900
	scratch_load_b128 v[4:7], off, off offset:916
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[184:187], v14 offset:256
	ds_load_b128 v[188:191], v15 offset:256
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[0:7], v[184:191], v[57:64]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:964
	scratch_load_b128 v[4:7], off, off offset:980
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[184:187], v16 offset:256
	ds_load_b128 v[188:191], v17 offset:256
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[0:7], v[184:191], v[57:64]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:1028
	scratch_load_b128 v[4:7], off, off offset:1044
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[184:187], v18 offset:256
	ds_load_b128 v[188:191], v19 offset:256
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[0:7], v[184:191], v[57:64]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:1092
	scratch_load_b128 v[4:7], off, off offset:1108
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[184:187], v20 offset:256
	ds_load_b128 v[188:191], v21 offset:256
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[0:7], v[184:191], v[57:64]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:1156
	scratch_load_b128 v[4:7], off, off offset:1172
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[184:187], v22 offset:256
	ds_load_b128 v[188:191], v23 offset:256
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[0:7], v[184:191], v[57:64]
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s97, v24
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s0, s70, v0
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v98, s59, v0
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s40, s1, s0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s1, s71, v31
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s39, s1, s0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s1, s71, v32
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s41, s1, s0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s1, s71, v73
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s42, s1, s0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s1, s71, v74
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s44, s1, s0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s1, s71, v75
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s43, s1, s0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s1, s71, v76
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s45, s1, s0
	.loc	1 675 17                        ; attention_backward.py:675:17
	v_readlane_b32 s1, v255, 1
	s_and_not1_b32 vcc_lo, exec_lo, s1
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s1, s71, v77
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s46, s1, s0
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_11
; %bb.10:                               ;   in Loop: Header=BB0_9 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e32 vcc_lo, v30, v98
	v_cmp_le_i32_e64 s1, v31, v98
	v_cmp_le_i32_e64 s3, v32, v98
	v_cmp_le_i32_e64 s8, v73, v98
	v_cmp_le_i32_e64 s9, v74, v98
	v_cmp_le_i32_e64 s10, v75, v98
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s13, s40, vcc_lo
	s_and_b32 s1, s39, s1
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s11, v76, v98
	v_cmp_le_i32_e64 s12, v77, v98
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s3, s41, s3
	s_and_b32 s8, s42, s8
	s_and_not1_b32 s14, s40, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_not1_b32 s15, s39, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_b32 s9, s44, s9
	s_and_b32 s10, s43, s10
	s_or_b32 s40, s14, s13
	s_or_b32 s39, s15, s1
	s_and_not1_b32 s1, s41, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s13, s42, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_and_b32 s11, s45, s11
	s_and_b32 s12, s46, s12
	s_or_b32 s41, s1, s3
	s_or_b32 s42, s13, s8
	s_and_not1_b32 s1, s44, exec_lo
	s_and_b32 s3, s9, exec_lo
	s_and_not1_b32 s8, s43, exec_lo
	s_and_b32 s9, s10, exec_lo
	s_or_b32 s44, s1, s3
	s_or_b32 s43, s8, s9
	s_and_not1_b32 s1, s45, exec_lo
	s_and_b32 s3, s11, exec_lo
	s_and_not1_b32 s8, s46, exec_lo
	s_and_b32 s9, s12, exec_lo
	s_or_b32 s45, s1, s3
	s_or_b32 s46, s8, s9
.LBB0_11:                               ;   in Loop: Header=BB0_9 Depth=2
	.loc	1 677 17 is_stmt 1              ; attention_backward.py:677:17
	v_readlane_b32 s1, v255, 0
	s_clause 0x3                            ; 64-byte Folded Spill
	scratch_store_b128 off, v[193:196], off offset:280
	scratch_store_b128 off, v[197:200], off offset:296
	scratch_store_b128 off, v[201:204], off offset:312
	scratch_store_b128 off, v[205:208], off offset:328
	s_and_not1_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_8
; %bb.12:                               ;   in Loop: Header=BB0_9 Depth=2
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v0, s57, v98
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v1, s58, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v30, v0
	v_cmp_ge_i32_e64 s1, v31, v0
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s13, v30, v1
	v_cmp_le_i32_e64 s14, v31, v1
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s3, v32, v0
	v_cmp_ge_i32_e64 s8, v73, v0
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s15, v32, v1
	v_cmp_le_i32_e64 s16, v73, v1
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s9, v74, v0
	v_cmp_ge_i32_e64 s10, v75, v0
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s17, v74, v1
	v_cmp_le_i32_e64 s18, v75, v1
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s13, vcc_lo, s13
	s_and_b32 s1, s1, s14
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s11, v76, v0
	v_cmp_ge_i32_e64 s12, v77, v0
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s19, v76, v1
	v_cmp_le_i32_e64 s20, v77, v1
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s13, s13, s40
	s_and_b32 s1, s1, s39
	s_and_b32 s3, s3, s15
	s_and_b32 s8, s8, s16
	s_and_b32 s3, s3, s41
	s_and_b32 s8, s8, s42
	s_and_b32 s9, s9, s17
	s_and_b32 s10, s10, s18
	s_and_not1_b32 s14, s40, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_not1_b32 s15, s39, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_b32 s9, s9, s44
	s_and_b32 s10, s10, s43
	s_and_b32 s11, s11, s19
	s_and_b32 s12, s12, s20
	s_or_b32 s40, s14, s13
	s_or_b32 s39, s15, s1
	s_and_not1_b32 s1, s41, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s13, s42, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_and_b32 s11, s11, s45
	s_and_b32 s12, s12, s46
	s_or_b32 s41, s1, s3
	s_or_b32 s42, s13, s8
	s_and_not1_b32 s1, s44, exec_lo
	s_and_b32 s3, s9, exec_lo
	s_and_not1_b32 s8, s43, exec_lo
	s_and_b32 s9, s10, exec_lo
	s_or_b32 s44, s1, s3
	s_or_b32 s43, s8, s9
	s_and_not1_b32 s1, s45, exec_lo
	s_and_b32 s3, s11, exec_lo
	s_and_not1_b32 s8, s46, exec_lo
	s_and_b32 s9, s12, exec_lo
	s_or_b32 s45, s1, s3
	s_or_b32 s46, s8, s9
	s_branch .LBB0_8
.LBB0_13:                               ; %Flow894
	.loc	1 0 21                          ; attention_backward.py:0:21
	s_clause 0x12                           ; 268-byte Folded Reload
	scratch_load_b32 v97, off, off offset:1928
	scratch_load_b32 v6, off, off offset:1932
	scratch_load_b32 v29, off, off offset:1936
	scratch_load_b128 v[98:101], off, off
	scratch_load_b128 v[102:105], off, off offset:16
	scratch_load_b128 v[106:109], off, off offset:32
	scratch_load_b128 v[110:113], off, off offset:48
	scratch_load_b128 v[114:117], off, off offset:64
	scratch_load_b128 v[118:121], off, off offset:80
	scratch_load_b128 v[122:125], off, off offset:96
	scratch_load_b128 v[126:129], off, off offset:112
	scratch_load_b128 v[130:133], off, off offset:128
	scratch_load_b128 v[134:137], off, off offset:144
	scratch_load_b128 v[138:141], off, off offset:160
	scratch_load_b128 v[142:145], off, off offset:176
	scratch_load_b128 v[146:149], off, off offset:192
	scratch_load_b128 v[150:153], off, off offset:208
	scratch_load_b128 v[154:157], off, off offset:224
	scratch_load_b128 v[158:161], off, off offset:240
	v_readlane_b32 s97, v255, 9
	v_readlane_b32 s43, v255, 10
	s_branch .LBB0_15
.LBB0_14:
	v_mov_b32_e32 v200, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v199, v200
	v_mov_b32_e32 v198, v200
	v_mov_b32_e32 v197, v200
	v_mov_b32_e32 v196, v200
	v_mov_b32_e32 v195, v200
	v_mov_b32_e32 v194, v200
	v_mov_b32_e32 v193, v200
	v_mov_b32_e32 v208, v200
	v_mov_b32_e32 v207, v200
	v_mov_b32_e32 v206, v200
	v_mov_b32_e32 v205, v200
	v_mov_b32_e32 v204, v200
	v_mov_b32_e32 v203, v200
	v_mov_b32_e32 v202, v200
	v_mov_b32_e32 v201, v200
	v_mov_b32_e32 v216, v200
	v_mov_b32_e32 v215, v200
	v_mov_b32_e32 v214, v200
	v_mov_b32_e32 v213, v200
	v_mov_b32_e32 v212, v200
	v_mov_b32_e32 v211, v200
	v_mov_b32_e32 v210, v200
	v_mov_b32_e32 v209, v200
	v_mov_b32_e32 v224, v200
	v_mov_b32_e32 v223, v200
	v_mov_b32_e32 v222, v200
	v_mov_b32_e32 v221, v200
	v_mov_b32_e32 v220, v200
	v_mov_b32_e32 v219, v200
	v_mov_b32_e32 v218, v200
	v_mov_b32_e32 v217, v200
	v_mov_b32_e32 v105, v200
	v_mov_b32_e32 v104, v200
	v_mov_b32_e32 v103, v200
	v_mov_b32_e32 v102, v200
	v_mov_b32_e32 v101, v200
	v_mov_b32_e32 v100, v200
	v_mov_b32_e32 v99, v200
	v_mov_b32_e32 v98, v200
	v_mov_b32_e32 v113, v200
	v_mov_b32_e32 v112, v200
	v_mov_b32_e32 v111, v200
	v_mov_b32_e32 v110, v200
	v_mov_b32_e32 v109, v200
	v_mov_b32_e32 v108, v200
	v_mov_b32_e32 v107, v200
	v_mov_b32_e32 v106, v200
	v_mov_b32_e32 v121, v200
	v_mov_b32_e32 v120, v200
	v_mov_b32_e32 v119, v200
	v_mov_b32_e32 v118, v200
	v_mov_b32_e32 v117, v200
	v_mov_b32_e32 v116, v200
	v_mov_b32_e32 v115, v200
	v_mov_b32_e32 v114, v200
	v_mov_b32_e32 v129, v200
	v_mov_b32_e32 v128, v200
	v_mov_b32_e32 v127, v200
	v_mov_b32_e32 v126, v200
	v_mov_b32_e32 v125, v200
	v_mov_b32_e32 v124, v200
	v_mov_b32_e32 v123, v200
	v_mov_b32_e32 v122, v200
	v_mov_b32_e32 v137, v200
	v_mov_b32_e32 v136, v200
	v_mov_b32_e32 v135, v200
	v_mov_b32_e32 v134, v200
	v_mov_b32_e32 v133, v200
	v_mov_b32_e32 v132, v200
	v_mov_b32_e32 v131, v200
	v_mov_b32_e32 v130, v200
	v_mov_b32_e32 v145, v200
	v_mov_b32_e32 v144, v200
	v_mov_b32_e32 v143, v200
	v_mov_b32_e32 v142, v200
	v_mov_b32_e32 v141, v200
	v_mov_b32_e32 v140, v200
	v_mov_b32_e32 v139, v200
	v_mov_b32_e32 v138, v200
	v_mov_b32_e32 v153, v200
	v_mov_b32_e32 v152, v200
	v_mov_b32_e32 v151, v200
	v_mov_b32_e32 v150, v200
	v_mov_b32_e32 v149, v200
	v_mov_b32_e32 v148, v200
	v_mov_b32_e32 v147, v200
	v_mov_b32_e32 v146, v200
	v_mov_b32_e32 v161, v200
	v_mov_b32_e32 v160, v200
	v_mov_b32_e32 v159, v200
	v_mov_b32_e32 v158, v200
	v_mov_b32_e32 v157, v200
	v_mov_b32_e32 v156, v200
	v_mov_b32_e32 v155, v200
	v_mov_b32_e32 v154, v200
.LBB0_15:                               ; %._crit_edge359
	v_readlane_b32 s93, v255, 2
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	s_waitcnt vmcnt(16)
	v_or_b32_e32 v38, v6, v29
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s43, v97
	v_readlane_b32 s100, v255, 5
	v_readlane_b32 s101, v255, 6
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v64, s93, v97
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v63, 2, v38
	v_or_b32_e32 v62, 4, v38
	v_or_b32_e32 v60, 8, v38
	v_or_b32_e32 v61, 6, v38
	v_or_b32_e32 v59, 10, v38
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s71, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s65, s93, v38
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v65, v64, v38
	v_add_nc_u32_e32 v66, v64, v63
	v_add_nc_u32_e32 v67, v64, v62
	v_add_nc_u32_e32 v68, v64, v61
	v_add_nc_u32_e32 v69, v64, v60
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v57, 14, v38
	v_or_b32_e32 v58, 12, v38
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s68, s93, v63
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v55, 34, v38
	v_or_b32_e32 v56, 32, v38
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s66, s93, v62
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v65, v65, s97, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v70, v64, v59
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v54, 36, v38
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s64, s93, v61
	v_cmp_gt_i32_e64 s92, s93, v60
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v66, v66, s97, 2
	v_add_lshl_u32 v67, v67, s97, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v0, 0x6e, v38
	v_or_b32_e32 v33, 0x6c, v38
	v_or_b32_e32 v34, 0x6a, v38
	v_or_b32_e32 v35, 0x68, v38
	v_or_b32_e32 v36, 0x66, v38
	v_or_b32_e32 v37, 0x64, v38
	v_or_b32_e32 v39, 0x62, v38
	v_or_b32_e32 v40, 0x60, v38
	v_or_b32_e32 v41, 0x4e, v38
	v_or_b32_e32 v42, 0x4c, v38
	v_or_b32_e32 v43, 0x4a, v38
	v_or_b32_e32 v44, 0x48, v38
	v_or_b32_e32 v45, 0x46, v38
	v_or_b32_e32 v46, 0x44, v38
	v_or_b32_e32 v47, 0x42, v38
	v_or_b32_e32 v48, 64, v38
	v_or_b32_e32 v49, 46, v38
	v_or_b32_e32 v50, 44, v38
	v_or_b32_e32 v51, 42, v38
	v_or_b32_e32 v52, 40, v38
	v_or_b32_e32 v53, 38, v38
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_or_b32_e32 v1, 0x80, v38
	v_or_b32_e32 v2, 0x82, v38
	v_or_b32_e32 v3, 0x84, v38
	v_or_b32_e32 v4, 0x86, v38
	v_or_b32_e32 v5, 0x88, v38
	v_or_b32_e32 v6, 0x8a, v38
	v_or_b32_e32 v7, 0x8c, v38
	v_or_b32_e32 v8, 0x8e, v38
	v_or_b32_e32 v9, 0xa0, v38
	v_or_b32_e32 v10, 0xa2, v38
	v_or_b32_e32 v11, 0xa4, v38
	v_or_b32_e32 v12, 0xa6, v38
	v_or_b32_e32 v13, 0xa8, v38
	v_or_b32_e32 v14, 0xaa, v38
	v_or_b32_e32 v15, 0xac, v38
	v_or_b32_e32 v16, 0xae, v38
	v_or_b32_e32 v17, 0xc0, v38
	v_or_b32_e32 v18, 0xc2, v38
	v_or_b32_e32 v19, 0xc4, v38
	v_or_b32_e32 v20, 0xc6, v38
	v_or_b32_e32 v21, 0xc8, v38
	v_or_b32_e32 v22, 0xca, v38
	v_or_b32_e32 v23, 0xcc, v38
	v_or_b32_e32 v24, 0xce, v38
	v_or_b32_e32 v25, 0xe0, v38
	v_or_b32_e32 v26, 0xe2, v38
	v_or_b32_e32 v27, 0xe4, v38
	v_or_b32_e32 v28, 0xe6, v38
	v_or_b32_e32 v29, 0xe8, v38
	v_or_b32_e32 v30, 0xea, v38
	v_or_b32_e32 v31, 0xec, v38
	v_or_b32_e32 v32, 0xee, v38
	v_cmp_gt_i32_e64 s91, s93, v59
	.loc	1 755 18 is_stmt 0              ; attention_backward.py:755:18
	s_and_b32 s65, vcc_lo, s65
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	v_add_lshl_u32 v68, v68, s97, 2
	v_add_lshl_u32 v69, v69, s97, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s68, vcc_lo, s68
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v71, v64, v58
	v_add_nc_u32_e32 v72, v64, v57
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v65, 0x80000000, v65, s65
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s66, vcc_lo, s66
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v73, v64, v56
	v_add_nc_u32_e32 v74, v64, v55
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v70, v70, s97, 2
	v_cndmask_b32_e64 v66, 0x80000000, v66, s68
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s64, vcc_lo, s64
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v75, v64, v54
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s92, vcc_lo, s92
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s90, s93, v58
	v_cmp_gt_i32_e64 s89, s93, v57
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	v_cndmask_b32_e64 v67, 0x80000000, v67, s66
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s88, s93, v56
	v_cmp_gt_i32_e64 s87, s93, v55
	v_cmp_gt_i32_e64 s86, s93, v54
	v_cmp_gt_i32_e64 s85, s93, v53
	v_cmp_gt_i32_e64 s84, s93, v52
	v_cmp_gt_i32_e64 s83, s93, v51
	v_cmp_gt_i32_e64 s82, s93, v50
	v_cmp_gt_i32_e64 s81, s93, v49
	v_cmp_gt_i32_e64 s80, s93, v48
	v_cmp_gt_i32_e64 s79, s93, v47
	v_cmp_gt_i32_e64 s78, s93, v46
	v_cmp_gt_i32_e64 s77, s93, v45
	v_cmp_gt_i32_e64 s76, s93, v44
	v_cmp_gt_i32_e64 s75, s93, v43
	v_cmp_gt_i32_e64 s74, s93, v42
	v_cmp_gt_i32_e64 s73, s93, v41
	v_cmp_gt_i32_e64 s71, s93, v40
	v_cmp_gt_i32_e64 s69, s93, v39
	v_cmp_gt_i32_e64 s67, s93, v37
	v_cmp_gt_i32_e64 s63, s93, v36
	v_cmp_gt_i32_e64 s62, s93, v35
	v_cmp_gt_i32_e64 s61, s93, v34
	v_cmp_gt_i32_e64 s60, s93, v33
	v_cmp_gt_i32_e64 s58, s93, v0
	v_cmp_gt_i32_e64 s54, s93, v1
	v_cmp_gt_i32_e64 s53, s93, v2
	v_cmp_gt_i32_e64 s52, s93, v3
	v_cmp_gt_i32_e64 s50, s93, v4
	v_cmp_gt_i32_e64 s46, s93, v5
	v_cmp_gt_i32_e64 s45, s93, v6
	v_cmp_gt_i32_e64 s44, s93, v7
	v_cmp_gt_i32_e64 s41, s93, v8
	v_cmp_gt_i32_e64 s39, s93, v9
	v_cmp_gt_i32_e64 s38, s93, v10
	v_cmp_gt_i32_e64 s37, s93, v11
	v_cmp_gt_i32_e64 s36, s93, v12
	v_cmp_gt_i32_e64 s35, s93, v13
	v_cmp_gt_i32_e64 s34, s93, v14
	v_cmp_gt_i32_e64 s33, s93, v15
	v_cmp_gt_i32_e64 s59, s93, v16
	v_cmp_gt_i32_e64 s57, s93, v17
	v_cmp_gt_i32_e64 s56, s93, v18
	v_cmp_gt_i32_e64 s55, s93, v19
	v_cmp_gt_i32_e64 s51, s93, v20
	v_cmp_gt_i32_e64 s49, s93, v21
	v_cmp_gt_i32_e64 s47, s93, v22
	v_cmp_gt_i32_e64 s48, s93, v23
	v_cmp_gt_i32_e64 s43, s93, v24
	v_cmp_gt_i32_e64 s42, s93, v25
	v_cmp_gt_i32_e64 s40, s93, v26
	v_cmp_gt_i32_e64 s72, s93, v27
	v_cmp_gt_i32_e64 s65, s93, v28
	v_cmp_gt_i32_e64 s68, s93, v29
	v_cmp_gt_i32_e64 s70, s93, v30
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v68, 0x80000000, v68, s64
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s66, s93, v31
	v_cmp_gt_i32_e64 s64, s93, v32
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v69, 0x80000000, v69, s92
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s91, vcc_lo, s91
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s93, s101, 0xffff
	s_mov_b32 s95, 0x31027000
	s_mov_b32 s94, 0x7ffffffe
	s_mov_b32 s92, s100
	v_add_lshl_u32 v71, v71, s97, 2
	v_add_lshl_u32 v72, v72, s97, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v76, v64, v53
	v_add_nc_u32_e32 v77, v64, v52
	v_add_nc_u32_e32 v78, v64, v51
	v_add_nc_u32_e32 v79, v64, v50
	v_add_nc_u32_e32 v80, v64, v49
	v_add_nc_u32_e32 v81, v64, v48
	v_add_nc_u32_e32 v82, v64, v47
	v_add_nc_u32_e32 v83, v64, v46
	v_add_nc_u32_e32 v84, v64, v45
	v_add_nc_u32_e32 v85, v64, v44
	v_add_nc_u32_e32 v86, v64, v43
	v_add_nc_u32_e32 v87, v64, v42
	v_add_nc_u32_e32 v88, v64, v41
	v_add_nc_u32_e32 v89, v64, v40
	v_add_nc_u32_e32 v90, v64, v39
	v_add_nc_u32_e32 v91, v64, v37
	v_add_nc_u32_e32 v92, v64, v36
	v_add_nc_u32_e32 v93, v64, v35
	v_add_nc_u32_e32 v94, v64, v34
	v_add_nc_u32_e32 v95, v64, v33
	v_add_nc_u32_e32 v96, v64, v0
	v_add_nc_u32_e32 v1, v64, v1
	v_add_nc_u32_e32 v2, v64, v2
	v_add_nc_u32_e32 v3, v64, v3
	v_add_nc_u32_e32 v4, v64, v4
	v_add_nc_u32_e32 v5, v64, v5
	v_add_nc_u32_e32 v6, v64, v6
	v_add_nc_u32_e32 v7, v64, v7
	v_add_nc_u32_e32 v8, v64, v8
	v_add_nc_u32_e32 v9, v64, v9
	v_add_nc_u32_e32 v10, v64, v10
	v_add_nc_u32_e32 v11, v64, v11
	v_add_nc_u32_e32 v12, v64, v12
	v_add_nc_u32_e32 v13, v64, v13
	v_add_nc_u32_e32 v14, v64, v14
	v_add_nc_u32_e32 v15, v64, v15
	v_add_nc_u32_e32 v16, v64, v16
	v_add_nc_u32_e32 v17, v64, v17
	v_add_nc_u32_e32 v18, v64, v18
	v_add_nc_u32_e32 v19, v64, v19
	v_add_nc_u32_e32 v20, v64, v20
	v_add_nc_u32_e32 v21, v64, v21
	v_add_nc_u32_e32 v22, v64, v22
	v_add_nc_u32_e32 v23, v64, v23
	v_add_nc_u32_e32 v24, v64, v24
	v_add_nc_u32_e32 v25, v64, v25
	v_add_nc_u32_e32 v26, v64, v26
	v_add_nc_u32_e32 v27, v64, v27
	v_add_nc_u32_e32 v28, v64, v28
	v_add_nc_u32_e32 v29, v64, v29
	v_add_nc_u32_e32 v30, v64, v30
	v_add_nc_u32_e32 v31, v64, v31
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v70, 0x80000000, v70, s91
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v32, v64, v32
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_waitcnt vmcnt(1)
	s_clause 0x3
	buffer_store_b32 v154, v65, s[92:95], 0 offen
	buffer_store_b32 v155, v66, s[92:95], 0 offen
	buffer_store_b32 v156, v67, s[92:95], 0 offen
	buffer_store_b32 v157, v68, s[92:95], 0 offen
	s_waitcnt vmcnt(0)
	s_clause 0x1
	buffer_store_b32 v158, v69, s[92:95], 0 offen
	buffer_store_b32 v159, v70, s[92:95], 0 offen
	v_add_lshl_u32 v64, v73, s97, 2
	v_add_lshl_u32 v65, v74, s97, 2
	v_add_lshl_u32 v66, v75, s97, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s90, vcc_lo, s90
	s_and_b32 s89, vcc_lo, s89
	s_and_b32 s88, vcc_lo, s88
	s_and_b32 s87, vcc_lo, s87
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v71, 0x80000000, v71, s90
	v_cndmask_b32_e64 v72, 0x80000000, v72, s89
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s86, vcc_lo, s86
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v64, 0x80000000, v64, s88
	v_cndmask_b32_e64 v65, 0x80000000, v65, s87
	v_cndmask_b32_e64 v66, 0x80000000, v66, s86
	s_clause 0x2
	buffer_store_b32 v160, v71, s[92:95], 0 offen
	buffer_store_b32 v161, v72, s[92:95], 0 offen
	buffer_store_b32 v146, v64, s[92:95], 0 offen
	v_add_lshl_u32 v64, v76, s97, 2
	s_clause 0x1
	buffer_store_b32 v147, v65, s[92:95], 0 offen
	buffer_store_b32 v148, v66, s[92:95], 0 offen
	v_add_lshl_u32 v65, v77, s97, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s85, vcc_lo, s85
	s_and_b32 s84, vcc_lo, s84
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v64, 0x80000000, v64, s85
	v_add_lshl_u32 v66, v78, s97, 2
	v_cndmask_b32_e64 v65, 0x80000000, v65, s84
	s_clause 0x1
	buffer_store_b32 v149, v64, s[92:95], 0 offen
	buffer_store_b32 v150, v65, s[92:95], 0 offen
	v_add_lshl_u32 v64, v80, s97, 2
	v_add_lshl_u32 v67, v79, s97, 2
	v_add_lshl_u32 v65, v81, s97, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s83, vcc_lo, s83
	s_and_b32 s81, vcc_lo, s81
	s_and_b32 s82, vcc_lo, s82
	s_and_b32 s80, vcc_lo, s80
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v66, 0x80000000, v66, s83
	v_cndmask_b32_e64 v64, 0x80000000, v64, s81
	v_cndmask_b32_e64 v67, 0x80000000, v67, s82
	v_cndmask_b32_e64 v65, 0x80000000, v65, s80
	s_clause 0x1
	buffer_store_b32 v151, v66, s[92:95], 0 offen
	buffer_store_b32 v152, v67, s[92:95], 0 offen
	v_add_lshl_u32 v66, v82, s97, 2
	s_clause 0x1
	buffer_store_b32 v153, v64, s[92:95], 0 offen
	buffer_store_b32 v138, v65, s[92:95], 0 offen
	v_add_lshl_u32 v64, v84, s97, 2
	v_add_lshl_u32 v67, v83, s97, 2
	v_add_lshl_u32 v65, v85, s97, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s79, vcc_lo, s79
	s_and_b32 s77, vcc_lo, s77
	s_and_b32 s78, vcc_lo, s78
	s_and_b32 s76, vcc_lo, s76
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v66, 0x80000000, v66, s79
	v_cndmask_b32_e64 v64, 0x80000000, v64, s77
	v_cndmask_b32_e64 v67, 0x80000000, v67, s78
	v_cndmask_b32_e64 v65, 0x80000000, v65, s76
	s_clause 0x1
	buffer_store_b32 v139, v66, s[92:95], 0 offen
	buffer_store_b32 v140, v67, s[92:95], 0 offen
	v_add_lshl_u32 v66, v86, s97, 2
	s_clause 0x1
	buffer_store_b32 v141, v64, s[92:95], 0 offen
	buffer_store_b32 v142, v65, s[92:95], 0 offen
	v_add_lshl_u32 v64, v88, s97, 2
	v_add_lshl_u32 v67, v87, s97, 2
	v_add_lshl_u32 v65, v89, s97, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s75, vcc_lo, s75
	s_and_b32 s73, vcc_lo, s73
	s_and_b32 s74, vcc_lo, s74
	s_and_b32 s71, vcc_lo, s71
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v66, 0x80000000, v66, s75
	v_cndmask_b32_e64 v64, 0x80000000, v64, s73
	v_cndmask_b32_e64 v67, 0x80000000, v67, s74
	v_cndmask_b32_e64 v65, 0x80000000, v65, s71
	s_clause 0x1
	buffer_store_b32 v143, v66, s[92:95], 0 offen
	buffer_store_b32 v144, v67, s[92:95], 0 offen
	v_add_lshl_u32 v66, v90, s97, 2
	s_clause 0x1
	buffer_store_b32 v145, v64, s[92:95], 0 offen
	buffer_store_b32 v130, v65, s[92:95], 0 offen
	v_add_lshl_u32 v64, v92, s97, 2
	v_add_lshl_u32 v67, v91, s97, 2
	v_add_lshl_u32 v65, v93, s97, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s69, vcc_lo, s69
	s_and_b32 s63, vcc_lo, s63
	s_and_b32 s67, vcc_lo, s67
	s_and_b32 s62, vcc_lo, s62
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v66, 0x80000000, v66, s69
	v_cndmask_b32_e64 v64, 0x80000000, v64, s63
	v_cndmask_b32_e64 v67, 0x80000000, v67, s67
	v_cndmask_b32_e64 v65, 0x80000000, v65, s62
	s_clause 0x1
	buffer_store_b32 v131, v66, s[92:95], 0 offen
	buffer_store_b32 v132, v67, s[92:95], 0 offen
	v_add_lshl_u32 v66, v94, s97, 2
	s_clause 0x1
	buffer_store_b32 v133, v64, s[92:95], 0 offen
	buffer_store_b32 v134, v65, s[92:95], 0 offen
	v_add_lshl_u32 v64, v96, s97, 2
	v_add_lshl_u32 v67, v95, s97, 2
	v_add_lshl_u32 v1, v1, s97, 2
	v_add_lshl_u32 v2, v2, s97, 2
	v_add_lshl_u32 v3, v3, s97, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s61, vcc_lo, s61
	s_and_b32 s58, vcc_lo, s58
	s_and_b32 s60, vcc_lo, s60
	s_and_b32 s54, vcc_lo, s54
	s_and_b32 s53, vcc_lo, s53
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v66, 0x80000000, v66, s61
	v_cndmask_b32_e64 v64, 0x80000000, v64, s58
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s52, vcc_lo, s52
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v67, 0x80000000, v67, s60
	v_cndmask_b32_e64 v1, 0x80000000, v1, s54
	v_cndmask_b32_e64 v2, 0x80000000, v2, s53
	v_cndmask_b32_e64 v3, 0x80000000, v3, s52
	s_clause 0x3
	buffer_store_b32 v135, v66, s[92:95], 0 offen
	buffer_store_b32 v136, v67, s[92:95], 0 offen
	buffer_store_b32 v137, v64, s[92:95], 0 offen
	buffer_store_b32 v122, v1, s[92:95], 0 offen
	v_add_lshl_u32 v1, v4, s97, 2
	s_clause 0x1
	buffer_store_b32 v123, v2, s[92:95], 0 offen
	buffer_store_b32 v124, v3, s[92:95], 0 offen
	v_add_lshl_u32 v2, v5, s97, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s50, vcc_lo, s50
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v3, v6, s97, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s46, vcc_lo, s46
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s50
	v_add_lshl_u32 v4, v7, s97, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s46
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s45, vcc_lo, s45
	s_and_b32 s44, vcc_lo, s44
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s45
	v_cndmask_b32_e64 v4, 0x80000000, v4, s44
	s_clause 0x1
	buffer_store_b32 v125, v1, s[92:95], 0 offen
	buffer_store_b32 v126, v2, s[92:95], 0 offen
	v_add_lshl_u32 v1, v8, s97, 2
	v_add_lshl_u32 v2, v9, s97, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s41, vcc_lo, s41
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v127, v3, s[92:95], 0 offen
	buffer_store_b32 v128, v4, s[92:95], 0 offen
	v_add_lshl_u32 v3, v10, s97, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s39, vcc_lo, s39
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s41
	v_add_lshl_u32 v4, v11, s97, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s39
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s38, vcc_lo, s38
	s_and_b32 s37, vcc_lo, s37
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s38
	v_cndmask_b32_e64 v4, 0x80000000, v4, s37
	s_clause 0x1
	buffer_store_b32 v129, v1, s[92:95], 0 offen
	buffer_store_b32 v114, v2, s[92:95], 0 offen
	v_add_lshl_u32 v1, v12, s97, 2
	v_add_lshl_u32 v2, v13, s97, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s36, vcc_lo, s36
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v115, v3, s[92:95], 0 offen
	buffer_store_b32 v116, v4, s[92:95], 0 offen
	v_add_lshl_u32 v3, v14, s97, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s35, vcc_lo, s35
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s36
	v_add_lshl_u32 v4, v15, s97, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s35
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s34, vcc_lo, s34
	s_and_b32 s33, vcc_lo, s33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s34
	v_cndmask_b32_e64 v4, 0x80000000, v4, s33
	s_clause 0x1
	buffer_store_b32 v117, v1, s[92:95], 0 offen
	buffer_store_b32 v118, v2, s[92:95], 0 offen
	v_add_lshl_u32 v1, v16, s97, 2
	v_add_lshl_u32 v2, v17, s97, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s33, vcc_lo, s59
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v119, v3, s[92:95], 0 offen
	buffer_store_b32 v120, v4, s[92:95], 0 offen
	v_add_lshl_u32 v3, v18, s97, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s33
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s33, vcc_lo, s57
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v4, v19, s97, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s33
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s33, vcc_lo, s56
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v121, v1, s[92:95], 0 offen
	buffer_store_b32 v106, v2, s[92:95], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s33
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s33, vcc_lo, s55
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v1, v20, s97, 2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s33
	v_add_lshl_u32 v2, v21, s97, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s33, vcc_lo, s51
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v107, v3, s[92:95], 0 offen
	buffer_store_b32 v108, v4, s[92:95], 0 offen
	v_add_lshl_u32 v3, v22, s97, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s33
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s33, vcc_lo, s49
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v4, v23, s97, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s33
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s33, vcc_lo, s47
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v109, v1, s[92:95], 0 offen
	buffer_store_b32 v110, v2, s[92:95], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s33
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s33, vcc_lo, s48
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v1, v24, s97, 2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s33
	v_add_lshl_u32 v2, v25, s97, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s33, vcc_lo, s43
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v111, v3, s[92:95], 0 offen
	buffer_store_b32 v112, v4, s[92:95], 0 offen
	v_add_lshl_u32 v3, v26, s97, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s33
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s33, vcc_lo, s42
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v4, v27, s97, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s33
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s33, vcc_lo, s40
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v113, v1, s[92:95], 0 offen
	buffer_store_b32 v98, v2, s[92:95], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s33
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s33, vcc_lo, s72
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v1, v28, s97, 2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s33
	v_readlane_b32 s96, v255, 3
	v_add_lshl_u32 v2, v29, s97, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s33, vcc_lo, s65
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v99, v3, s[92:95], 0 offen
	buffer_store_b32 v100, v4, s[92:95], 0 offen
	v_add_lshl_u32 v3, v30, s97, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s33
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s33, vcc_lo, s68
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v4, v31, s97, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v6, s96, v97
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s33
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s33, vcc_lo, s70
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v5, v32, s97, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s33
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s33, vcc_lo, s66
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s31, s96, v38
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v4, 0x80000000, v4, s33
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s33, vcc_lo, s64
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s30, s96, v63
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v5, 0x80000000, v5, s33
	s_clause 0x4
	buffer_store_b32 v101, v1, s[92:95], 0 offen
	buffer_store_b32 v102, v2, s[92:95], 0 offen
	buffer_store_b32 v103, v3, s[92:95], 0 offen
	buffer_store_b32 v104, v4, s[92:95], 0 offen
	buffer_store_b32 v105, v5, s[92:95], 0 offen
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v1, v6, v38
	v_readlane_b32 s33, v255, 4
	v_add_nc_u32_e32 v2, v6, v63
	v_add_nc_u32_e32 v3, v6, v62
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s29, s96, v62
	v_readlane_b32 s102, v255, 7
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v1, v1, s33, 2
	v_add_lshl_u32 v2, v2, s33, 2
	v_add_lshl_u32 v3, v3, s33, 2
	v_readlane_b32 s103, v255, 8
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s31, vcc_lo, s31
	s_and_b32 s30, vcc_lo, s30
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v4, v6, v61
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s31
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s29, vcc_lo, s29
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v5, v6, v60
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s30
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v7, v6, v59
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s29
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s28, s96, v61
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v8, v6, v58
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s93, s103, 0xffff
	s_mov_b32 s92, s102
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s27, s96, v60
	v_cmp_gt_i32_e64 s26, s96, v59
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v217, v1, s[92:95], 0 offen
	v_add_lshl_u32 v1, v4, s33, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s25, s96, v58
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_clause 0x1
	buffer_store_b32 v218, v2, s[92:95], 0 offen
	buffer_store_b32 v219, v3, s[92:95], 0 offen
	v_add_lshl_u32 v2, v5, s33, 2
	v_add_lshl_u32 v3, v7, s33, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s28, vcc_lo, s28
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v4, v8, s33, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s27, vcc_lo, s27
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v9, v6, v57
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s28
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s26, vcc_lo, s26
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v10, v6, v56
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s27
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s25, vcc_lo, s25
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v11, v6, v55
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s26
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s24, s96, v57
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v12, v6, v54
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v4, 0x80000000, v4, s25
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s23, s96, v56
	v_cmp_gt_i32_e64 s22, s96, v55
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_clause 0x1
	buffer_store_b32 v220, v1, s[92:95], 0 offen
	buffer_store_b32 v221, v2, s[92:95], 0 offen
	v_add_lshl_u32 v1, v9, s33, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s21, s96, v54
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v2, v10, s33, 2
	s_clause 0x1
	buffer_store_b32 v222, v3, s[92:95], 0 offen
	buffer_store_b32 v223, v4, s[92:95], 0 offen
	v_add_lshl_u32 v3, v11, s33, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s24, vcc_lo, s24
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v4, v12, s33, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s23, vcc_lo, s23
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v13, v6, v53
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s24
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s22, vcc_lo, s22
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v14, v6, v52
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s23
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s21, vcc_lo, s21
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v15, v6, v51
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s22
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s20, s96, v53
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v16, v6, v50
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v4, 0x80000000, v4, s21
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s19, s96, v52
	v_cmp_gt_i32_e64 s18, s96, v51
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_clause 0x1
	buffer_store_b32 v224, v1, s[92:95], 0 offen
	buffer_store_b32 v209, v2, s[92:95], 0 offen
	v_add_lshl_u32 v1, v13, s33, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s17, s96, v50
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v2, v14, s33, 2
	s_clause 0x1
	buffer_store_b32 v210, v3, s[92:95], 0 offen
	buffer_store_b32 v211, v4, s[92:95], 0 offen
	v_add_lshl_u32 v3, v15, s33, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s20, vcc_lo, s20
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v4, v16, s33, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s19, vcc_lo, s19
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v17, v6, v49
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s20
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s18, vcc_lo, s18
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v18, v6, v48
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s19
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s17, vcc_lo, s17
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v19, v6, v47
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s18
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s16, s96, v49
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v20, v6, v46
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v4, 0x80000000, v4, s17
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s15, s96, v48
	v_cmp_gt_i32_e64 s14, s96, v47
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_clause 0x1
	buffer_store_b32 v212, v1, s[92:95], 0 offen
	buffer_store_b32 v213, v2, s[92:95], 0 offen
	v_add_lshl_u32 v1, v17, s33, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s13, s96, v46
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v2, v18, s33, 2
	s_clause 0x1
	buffer_store_b32 v214, v3, s[92:95], 0 offen
	buffer_store_b32 v215, v4, s[92:95], 0 offen
	v_add_lshl_u32 v3, v19, s33, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s16, vcc_lo, s16
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v4, v20, s33, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s15, vcc_lo, s15
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v21, v6, v45
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s16
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s14, vcc_lo, s14
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v22, v6, v44
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s15
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s13, vcc_lo, s13
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v23, v6, v43
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s14
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s12, s96, v45
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v24, v6, v42
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v4, 0x80000000, v4, s13
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s11, s96, v44
	v_cmp_gt_i32_e64 s10, s96, v43
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_clause 0x1
	buffer_store_b32 v216, v1, s[92:95], 0 offen
	buffer_store_b32 v201, v2, s[92:95], 0 offen
	v_add_lshl_u32 v1, v21, s33, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s9, s96, v42
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v2, v22, s33, 2
	s_clause 0x1
	buffer_store_b32 v202, v3, s[92:95], 0 offen
	buffer_store_b32 v203, v4, s[92:95], 0 offen
	v_add_lshl_u32 v3, v23, s33, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s12, vcc_lo, s12
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v4, v24, s33, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s11, vcc_lo, s11
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v25, v6, v41
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s12
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s10, vcc_lo, s10
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v26, v6, v40
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s11
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s9, vcc_lo, s9
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v27, v6, v39
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s10
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s8, s96, v41
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v28, v6, v37
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v4, 0x80000000, v4, s9
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s7, s96, v40
	v_cmp_gt_i32_e64 s6, s96, v39
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_clause 0x1
	buffer_store_b32 v204, v1, s[92:95], 0 offen
	buffer_store_b32 v205, v2, s[92:95], 0 offen
	v_add_lshl_u32 v1, v25, s33, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s5, s96, v37
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v2, v26, s33, 2
	s_clause 0x1
	buffer_store_b32 v206, v3, s[92:95], 0 offen
	buffer_store_b32 v207, v4, s[92:95], 0 offen
	v_add_lshl_u32 v3, v27, s33, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s8, vcc_lo, s8
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v4, v28, s33, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s7, vcc_lo, s7
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v29, v6, v36
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s8
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s6, vcc_lo, s6
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v30, v6, v35
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s7
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s5, vcc_lo, s5
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v31, v6, v34
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s6
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s4, s96, v36
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v32, v6, v33
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v4, 0x80000000, v4, s5
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s0, s96, v0
	v_cmp_gt_i32_e64 s3, s96, v35
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v0, v6, v0
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s2, s96, v34
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_clause 0x1
	buffer_store_b32 v208, v1, s[92:95], 0 offen
	buffer_store_b32 v193, v2, s[92:95], 0 offen
	v_add_lshl_u32 v1, v29, s33, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s1, s96, v33
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v2, v30, s33, 2
	s_clause 0x1
	buffer_store_b32 v194, v3, s[92:95], 0 offen
	buffer_store_b32 v195, v4, s[92:95], 0 offen
	v_add_lshl_u32 v3, v31, s33, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s4, vcc_lo, s4
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v4, v32, s33, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s3, vcc_lo, s3
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v0, v0, s33, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s2, vcc_lo, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s1, vcc_lo, s1
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v4, 0x80000000, v4, s1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b32 v196, v1, s[92:95], 0 offen
	buffer_store_b32 v197, v2, s[92:95], 0 offen
	buffer_store_b32 v198, v3, s[92:95], 0 offen
	buffer_store_b32 v199, v4, s[92:95], 0 offen
	buffer_store_b32 v200, v0, s[92:95], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1944
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 1944
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 41664
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 1944
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 1944
    .sgpr_count:     107
    .sgpr_spill_count: 22
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d192_dv128_shaperuntime_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 549
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
