	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[44:47], s[0:1], 0x94
	s_load_b128 s[40:43], s[0:1], 0x64
	s_load_b32 s68, s[0:1], 0x7c
	s_load_b32 s70, s[0:1], 0x74
	v_mov_b32_e32 v44, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s44
	s_bitcmp1_b32 s44, 8
	s_cselect_b32 s73, -1, 0
	s_cmp_eq_u32 s4, 1
	s_load_b128 s[4:7], s[0:1], 0x8
	s_cselect_b32 s74, -1, 0
.Ltmp0:
	.loc	1 513 22 prologue_end           ; attention_backward.py:513:22
	s_abs_i32 s9, s41
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_abs_i32 s10, s3
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cvt_f32_u32 s8, s9
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s72, s2, 4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_rcp_iflag_f32_e32 v0, s8
	v_readfirstlane_b32 s8, v0
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
	s_ashr_i32 s11, s40, 31
	s_ashr_i32 s16, s41, 31
	s_abs_i32 s17, s40
	.loc	1 514 23                        ; attention_backward.py:514:23
	s_or_b32 s2, s72, 1
	s_or_b32 s10, s72, 2
	s_or_b32 s12, s72, 3
	s_or_b32 s13, s72, 4
	s_or_b32 s14, s72, 5
	s_or_b32 s15, s72, 6
	s_or_b32 s19, s72, 7
	s_or_b32 s20, s72, 8
	s_or_b32 s21, s72, 9
	s_or_b32 s22, s72, 10
	s_or_b32 s23, s72, 11
	s_or_b32 s36, s72, 12
	s_or_b32 s37, s72, 13
	s_or_b32 s38, s72, 14
	s_or_b32 s39, s72, 15
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cmp_lt_i32 s72, s43
	s_cselect_b32 s35, -1, 0
	s_cmp_lt_i32 s2, s43
	.loc	1 533 24                        ; attention_backward.py:533:24
	s_mul_i32 s2, s3, s43
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s34, -1, 0
	s_cmp_lt_i32 s10, s43
	s_cselect_b32 s33, -1, 0
	s_cmp_lt_i32 s12, s43
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s12, s4
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s31, -1, 0
	s_cmp_lt_i32 s13, s43
	s_mov_b32 s4, 0
	s_cselect_b32 s30, -1, 0
	s_cmp_lt_i32 s14, s43
	s_mov_b32 s14, 0x7ffffffe
	s_cselect_b32 s29, -1, 0
	s_cmp_lt_i32 s15, s43
	s_mov_b32 s15, 0x31027000
	s_cselect_b32 s28, -1, 0
	s_cmp_lt_i32 s19, s43
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s20, s43
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s21, s43
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s22, s43
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s23, s43
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s36, s43
	s_cselect_b32 s22, -1, 0
	s_cmp_lt_i32 s37, s43
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s38, s43
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s39, s43
	s_cselect_b32 s21, -1, 0
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_add_i32 s71, s2, s72
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_and_b32 s13, s5, 0xffff
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_mul_i32 s69, s71, s70
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_mul_i32 s71, s71, s68
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, s69, v44
	.loc	1 587 22                        ; attention_backward.py:587:22
	s_add_i32 s5, s42, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v1, s70, v0
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_cmp_gt_i32_e64 s2, s70, v44
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v17, s71, v44
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s10, s68, v44
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v2, s70, v1
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s35, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v1, 1, v1
	v_lshlrev_b32_e32 v0, 1, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v18, s68, v17
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v3, s70, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s34, s2
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v4, s70, v3
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s33, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v3, 1, v3
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v5, s70, v4
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v21, s68, v18
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_lshlrev_b32 v17, 1, v17
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v6, s70, v5
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s31, s2
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v23, s68, v21
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s30, s2
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v7, s70, v6
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v5, 1, v5
	v_lshlrev_b32_e32 v4, 1, v4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v21, 1, v21
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v28, s68, v23
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v8, s70, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_lshlrev_b32 v23, 1, v23
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s29, s2
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v9, s70, v8
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	s_clause 0x5
	buffer_load_u16 v10, v0, s[12:15], 0 offen
	buffer_load_u16 v1, v1, s[12:15], 0 offen
	buffer_load_u16 v2, v2, s[12:15], 0 offen
	buffer_load_u16 v3, v3, s[12:15], 0 offen
	buffer_load_u16 v4, v4, s[12:15], 0 offen
	buffer_load_u16 v5, v5, s[12:15], 0 offen
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s28, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v7, 1, v7
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, s70, v9
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v6, 1, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v11, s70, v0
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s27, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s26, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v9, 1, v9
	v_lshlrev_b32_e32 v8, 1, v8
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v12, s70, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s25, s2
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v13, s70, v12
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s24, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v11, 1, v11
	v_lshlrev_b32_e32 v0, 1, v0
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v14, s70, v13
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v13, 1, v13
	v_lshlrev_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_4)
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
	buffer_load_u16 v8, v8, s[12:15], 0 offen
	buffer_load_u16 v9, v9, s[12:15], 0 offen
	buffer_load_u16 v15, v0, s[12:15], 0 offen
	buffer_load_u16 v11, v11, s[12:15], 0 offen
	buffer_load_u16 v12, v12, s[12:15], 0 offen
	v_lshlrev_b32_e32 v0, 1, v14
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s19, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_lshl_u32 v14, v14, s70, 1
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
	buffer_load_u16 v13, v13, s[12:15], 0 offen
	buffer_load_u16 v6, v6, s[12:15], 0 offen
	buffer_load_u16 v16, v0, s[12:15], 0 offen
	buffer_load_u16 v7, v7, s[12:15], 0 offen
	buffer_load_u16 v14, v14, s[12:15], 0 offen
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s35, s10
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s13, s7, 0xffff
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s34, s10
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_mov_b32 s12, s6
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s33, s10
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v21, 0x80000000, v21 :: v_dual_lshlrev_b32 v0, 1, v44
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s31, s10
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_ashr_i32 s6, s5, 31
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v22, 0x1b0, v0
	v_xor_b32_e32 v27, 0x3f0, v0
	v_xor_b32_e32 v20, 0x120, v0
	v_xor_b32_e32 v19, 0x90, v0
	v_xor_b32_e32 v24, 0x240, v0
	v_xor_b32_e32 v26, 0x360, v0
	v_add_nc_u32_e32 v35, 0, v22
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v22, s68, v28
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v54, 0, v27
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v27, 1, v28
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v34, 0, v20
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s30, s10
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v49, 0, v0
	v_xor_b32_e32 v25, 0x2d0, v0
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v19
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v29, 0x80000000, v27 :: v_dual_add_nc_u32 v20, 0, v26
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s29, s10
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v19, 0, v24
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v24, s68, v22
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v22, 1, v22
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v34, off offset:4
	scratch_store_b32 off, v35, off offset:8
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_lshr_b32 s6, s6, 27
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(7)
	ds_store_b16 v34, v15 offset:1024
	ds_store_b16 v35, v3
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s28, s10
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v53, 0, v25
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v25, s68, v24
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v24, 1, v24
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_add_i32 s6, s5, s6
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_hi_u32 s5, s17, s18
	.loc	1 587 20                        ; attention_backward.py:587:20
	s_and_b32 s75, s6, 0xffffffe0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v26, s68, v25
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_lshlrev_b32 v25, 1, v25
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s27, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v28, s68, v26
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v31, 0x80000000, v25 :: v_dual_lshlrev_b32 v26, 1, v26
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s26, s10
	.loc	1 534 24                        ; attention_backward.py:534:24
	ds_store_b16 v49, v10
	ds_store_b16 v49, v8 offset:1024
	ds_store_b16 v0, v1
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v27, s68, v28
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v32, 0x80000000, v26 :: v_dual_lshlrev_b32 v25, 1, v28
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s25, s10
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v30, s68, v27
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v33, 0x80000000, v25 :: v_dual_lshlrev_b32 v26, 1, v27
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s24, s10
	.loc	1 534 24                        ; attention_backward.py:534:24
	ds_store_b16 v0, v9 offset:1024
	ds_store_b16 v34, v2
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v28, s68, v30
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v27, 1, v30
	v_cndmask_b32_e32 v30, 0x80000000, v26, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s23, s10
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(6)
	ds_store_b16 v35, v11 offset:1024
	ds_store_b16 v19, v4
	s_waitcnt vmcnt(5)
	ds_store_b16 v19, v12 offset:1024
	ds_store_b16 v53, v5
	s_waitcnt vmcnt(4)
	ds_store_b16 v53, v13 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v20, v6
	s_waitcnt vmcnt(2)
	ds_store_b16 v20, v16 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v54, v7
	s_waitcnt vmcnt(0)
	ds_store_b16 v54, v14 offset:1024
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v25, s68, v28
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v26, 1, v28
	v_cndmask_b32_e32 v36, 0x80000000, v27, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s22, s10
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt lgkmcnt(0)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v28, s68, v25
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v25, 1, v25
	v_cndmask_b32_e32 v37, 0x80000000, v26, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s19, s10
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_barrier
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v26, 1, v28
	v_add_lshl_u32 v27, v28, s68, 1
	v_cndmask_b32_e32 v38, 0x80000000, v25, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s20, s10
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v39, 0x80000000, v26 :: v_dual_and_b32 v2, 7, v44
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s21, s10
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_bfe_u32 s6, s44, 0x10008
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v40, 0x80000000, v27, vcc_lo
	s_clause 0xf
	buffer_load_u16 v28, v17, s[12:15], 0 offen
	buffer_load_u16 v27, v18, s[12:15], 0 offen
	buffer_load_u16 v26, v21, s[12:15], 0 offen
	buffer_load_u16 v25, v23, s[12:15], 0 offen
	buffer_load_u16 v14, v29, s[12:15], 0 offen
	buffer_load_u16 v13, v22, s[12:15], 0 offen
	buffer_load_u16 v12, v24, s[12:15], 0 offen
	buffer_load_u16 v21, v31, s[12:15], 0 offen
	buffer_load_u16 v15, v32, s[12:15], 0 offen
	buffer_load_u16 v35, v33, s[12:15], 0 offen
	buffer_load_u16 v34, v30, s[12:15], 0 offen
	buffer_load_u16 v33, v36, s[12:15], 0 offen
	buffer_load_u16 v32, v37, s[12:15], 0 offen
	buffer_load_u16 v31, v38, s[12:15], 0 offen
	buffer_load_u16 v30, v39, s[12:15], 0 offen
	buffer_load_u16 v29, v40, s[12:15], 0 offen
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v36, 15, v44
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v4, 4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v36, 7, v4
	v_xor_b32_e32 v3, 16, v1
	v_xor_b32_e32 v7, 32, v1
	v_xor_b32_e32 v8, 48, v1
	v_xor_b32_e32 v9, 64, v1
	v_xor_b32_e32 v11, 0x60, v1
	v_add_nc_u32_e32 v6, 0, v3
	v_xor_b32_e32 v3, 0x50, v1
	v_xor_b32_e32 v17, 0x70, v1
	v_add_nc_u32_e32 v5, 0, v1
	v_add_nc_u32_e32 v7, 0, v7
	v_add_nc_u32_e32 v8, 0, v8
	v_add_nc_u32_e32 v9, 0, v9
	v_add_nc_u32_e32 v10, 0, v3
	v_add_nc_u32_e32 v16, 0, v11
	v_add_nc_u32_e32 v11, 0, v17
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s4, s72, s45
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_add_i32 s7, s46, s47
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s4, s4, s47
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_sub_i32 s7, s72, s7
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s4, s4, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 592 17                        ; attention_backward.py:592:17
	s_min_i32 s4, s42, s4
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
	s_min_i32 s75, s75, s7
.LBB0_2:
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[55:58], v5
	ds_load_b128 v[59:62], v6
	s_load_b128 s[48:51], s[0:1], 0x50
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_mul_i32 s6, s5, s9
	s_xor_b32 s7, s11, s16
	s_sub_i32 s6, s17, s6
	s_add_i32 s11, s5, 1
	s_sub_i32 s12, s6, s9
	s_cmp_ge_u32 s6, s9
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_and_b32_e32 v3, 32, v44
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s5, s11, s5
	s_cselect_b32 s6, s12, s6
	s_add_i32 s11, s5, 1
	s_cmp_ge_u32 s6, s9
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v17, v44, 4, 1
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s5, s11, s5
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshrrev_b32_e32 v18, 1, v3
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_xor_b32 s5, s5, s7
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[55:58], off offset:16
	scratch_store_b128 off, v[59:62], off offset:32
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[55:58], v7
	ds_load_b128 v[59:62], v8
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_sub_i32 s44, s5, s7
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[55:58], off offset:48 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[59:62], off offset:64 ; 16-byte Folded Spill
	.loc	1 0 0                           ; attention_backward.py:0
	ds_load_b128 v[55:58], v9
	ds_load_b128 v[59:62], v10
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_cmp_lt_i32 s44, 1
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[55:58], off offset:80 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[59:62], off offset:96 ; 16-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[55:58], v16
	ds_load_b128 v[59:62], v11
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[55:58], off offset:112 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[59:62], off offset:128 ; 16-byte Folded Spill
	.loc	1 717 21 is_stmt 1              ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	s_waitcnt vmcnt(16)
	ds_store_b16 v49, v28
	s_waitcnt vmcnt(8)
	ds_store_b16 v49, v15 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v27
	ds_store_b16 v0, v35 offset:1024
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v26
	ds_store_b16 v0, v34 offset:1024
	scratch_load_b32 v0, off, off offset:8  ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v25
	ds_store_b16 v0, v33 offset:1024
	ds_store_b16 v19, v14
	ds_store_b16 v19, v32 offset:1024
	ds_store_b16 v53, v13
	ds_store_b16 v53, v31 offset:1024
	ds_store_b16 v20, v12
	ds_store_b16 v20, v30 offset:1024
	ds_store_b16 v54, v21
	ds_store_b16 v54, v29 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cbranch_scc1 .LBB0_13
; %bb.3:                                ; %.lr.ph101
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[25:28], v11
	ds_load_b128 v[21:24], v16
	ds_load_b128 v[13:16], v10
	ds_load_b128 v[9:12], v9
	v_dual_mov_b32 v105, 0 :: v_dual_lshlrev_b32 v0, 1, v44
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	s_xor_b32 s5, s3, s41
	s_clause 0x3
	s_load_b32 s76, s[0:1], 0x80
	s_load_b64 s[52:53], s[0:1], 0x48
	s_load_b128 s[56:59], s[0:1], 0x38
	s_load_b64 s[60:61], s[0:1], 0x0
	s_ashr_i32 s1, s5, 31
	scratch_store_b32 off, v17, off offset:848 ; 4-byte Folded Spill
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_sub_i32 s0, s72, s47
	s_xor_b32 s5, s8, s1
	s_max_i32 s0, s0, 0
	s_sub_i32 s9, s5, s1
	s_and_b32 s0, s0, 0x7fffffe0
	s_mul_i32 s1, s9, s41
	s_max_u32 s0, s4, s0
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_sub_i32 s3, s3, s1
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_and_b32 s1, s74, exec_lo
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[9:12], off offset:176
	scratch_store_b128 off, v[13:16], off offset:192
	.loc	1 717 21 is_stmt 1              ; attention_backward.py:717:21
	ds_load_b128 v[11:14], v8
	ds_load_b128 v[7:10], v7
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[21:24], off offset:144
	scratch_store_b128 off, v[25:28], off offset:160
	ds_load_b128 v[25:28], v6
	ds_load_b128 v[21:24], v5
	v_dual_mov_b32 v73, 0 :: v_dual_lshlrev_b32 v6, 3, v44
	v_dual_mov_b32 v76, v105 :: v_dual_and_b32 v5, 16, v44
	v_mov_b32_e32 v78, v105
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_cselect_b32 s78, s0, s4
	.loc	1 662 35                        ; attention_backward.py:662:35
	s_mul_i32 s11, s9, s40
	s_delay_alu instid0(VALU_DEP_2)
	v_lshlrev_b32_e32 v5, 2, v5
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s80, s44, s3
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v149, v18, v36
	s_add_i32 s80, s80, s11
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_mul_f32 s79, s76, 0x3fb8aa3b
	s_cmp_lt_i32 s78, s75
	s_mov_b32 s77, 0
	s_cselect_b32 s81, -1, 0
	s_and_b32 s61, s61, 0xffff
	s_waitcnt lgkmcnt(2)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[7:10], off offset:208
	scratch_store_b128 off, v[11:14], off offset:224
	v_dual_mov_b32 v74, v105 :: v_dual_and_b32 v7, 0x70, v0
	v_bfe_i32 v8, v44, 3, 1
	v_cndmask_b32_e64 v9, 0x820, 0, vcc_lo
	v_cndmask_b32_e64 v10, 0x420, 0, vcc_lo
	v_dual_mov_b32 v80, v105 :: v_dual_and_b32 v11, 48, v6
	v_xor_b32_e32 v4, v4, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v7, 0x410, v8, v9
	v_mul_u32_u24_e32 v9, 0x90, v2
	v_and_or_b32 v8, 0x210, v8, v10
	v_lshl_or_b32 v2, v2, 6, v11
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[21:24], off offset:240
	scratch_store_b128 off, v[25:28], off offset:256
	v_dual_mov_b32 v75, v105 :: v_dual_lshlrev_b32 v12, 1, v36
	v_dual_mov_b32 v66, v105 :: v_dual_lshlrev_b32 v13, 6, v44
	v_xor_b32_e32 v6, v6, v0
	v_xor_b32_e32 v23, v8, v2
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v2, s72, v17
	v_lshl_or_b32 v17, v3, 6, v1
	v_or3_b32 v21, v12, v5, v3
	v_and_or_b32 v22, v6, 48, v13
	v_lshl_or_b32 v26, v36, 6, v11
	v_or_b32_e32 v5, 2, v2
	v_or_b32_e32 v6, 4, v2
	v_xor_b32_e32 v11, 16, v17
	v_xor_b32_e32 v0, v7, v9
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s0, s43, v2
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v5, off offset:292
	scratch_store_b32 off, v2, off offset:288
	scratch_store_b32 off, v21, off offset:276
	v_cmp_gt_i32_e64 s1, s43, v5
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v5, 6, v2
	v_or_b32_e32 v7, 8, v2
	scratch_store_b32 off, v6, off offset:296 ; 4-byte Folded Spill
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s4, s43, v6
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v6, 10, v2
	v_or_b32_e32 v8, 12, v2
	v_or_b32_e32 v2, 14, v2
	v_dual_mov_b32 v68, v105 :: v_dual_add_nc_u32 v11, 0, v11
	v_mov_b32_e32 v70, v105
	v_mov_b32_e32 v72, v105
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:316
	scratch_store_b32 off, v11, off offset:336
	v_xor_b32_e32 v11, 32, v17
	v_lshl_or_b32 v25, v44, 7, v4
	v_mul_u32_u24_e32 v1, 0x110, v36
	v_mov_b32_e32 v90, v105
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s9, s43, v2
	v_add_nc_u32_e32 v11, 0, v11
	v_dual_mov_b32 v77, v105 :: v_dual_lshlrev_b32 v2, 2, v44
	v_lshl_or_b32 v24, v3, 7, v1
	v_lshl_add_u32 v1, v3, 1, 0
	scratch_store_b32 off, v11, off offset:340 ; 4-byte Folded Spill
	v_xor_b32_e32 v11, 48, v17
	v_xor_b32_e32 v3, 0x220, v2
	v_mov_b32_e32 v92, v105
	v_lshl_add_u32 v27, v36, 2, v1
	v_xor_b32_e32 v1, 0x110, v2
	v_add_nc_u32_e32 v11, 0, v11
	v_xor_b32_e32 v4, 0x330, v2
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v5, off offset:300
	scratch_store_b32 off, v7, off offset:304
	scratch_store_b32 off, v6, off offset:308
	scratch_store_b32 off, v8, off offset:312
	scratch_store_b32 off, v11, off offset:344
	v_xor_b32_e32 v11, 64, v17
	v_mov_b32_e32 v94, v105
	v_cmp_gt_i32_e64 s5, s43, v5
	v_xor_b32_e32 v5, 0x440, v2
	v_cmp_gt_i32_e64 s7, s43, v6
	v_add_nc_u32_e32 v11, 0, v11
	v_xor_b32_e32 v6, 0x550, v2
	v_cmp_gt_i32_e64 s6, s43, v7
	v_xor_b32_e32 v7, 0x660, v2
	v_cmp_gt_i32_e64 s8, s43, v8
	scratch_store_b32 off, v11, off offset:348 ; 4-byte Folded Spill
	v_xor_b32_e32 v11, 0x50, v17
	v_mov_b32_e32 v96, v105
	v_xor_b32_e32 v8, 0x770, v2
	v_xor_b32_e32 v9, 0x880, v2
	v_xor_b32_e32 v10, 0x990, v2
	v_add_nc_u32_e32 v11, 0, v11
	v_xor_b32_e32 v12, 0xaa0, v2
	v_xor_b32_e32 v13, 0xbb0, v2
	v_xor_b32_e32 v14, 0xcc0, v2
	v_mov_b32_e32 v140, 0
	scratch_store_b32 off, v11, off offset:352 ; 4-byte Folded Spill
	v_xor_b32_e32 v11, 0x60, v17
	v_xor_b32_e32 v15, 0xdd0, v2
	v_xor_b32_e32 v16, 0xee0, v2
	v_xor_b32_e32 v2, 0xff0, v2
	s_mov_b32 s63, 0x31027000
	v_add_nc_u32_e32 v11, 0, v11
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v11, off offset:356
	scratch_store_b32 off, v17, off offset:320
	v_xor_b32_e32 v11, 0x70, v17
	v_mov_b32_e32 v142, v105
	s_mov_b32 s62, 0x7ffffffe
	s_and_b32 s65, s59, 0xffff
	s_mov_b32 s64, s58
	v_add_nc_u32_e32 v11, 0, v11
	s_and_b32 s53, s53, 0xffff
	v_mov_b32_e32 v144, v105
	s_and_b32 s57, s57, 0xffff
	v_mov_b32_e32 v146, v105
	scratch_store_b32 off, v11, off offset:360 ; 4-byte Folded Spill
	v_xor_b32_e32 v11, 16, v25
	v_mov_b32_e32 v79, v105
	v_mov_b32_e32 v65, 0
	v_mov_b32_e32 v67, v105
	v_mov_b32_e32 v69, v105
	v_add_nc_u32_e32 v11, 0, v11
	v_mov_b32_e32 v71, v105
	v_mov_b32_e32 v89, 0
	v_mov_b32_e32 v91, v105
	v_mov_b32_e32 v93, v105
	scratch_store_b32 off, v11, off offset:364 ; 4-byte Folded Spill
	v_xor_b32_e32 v11, 32, v25
	v_mov_b32_e32 v95, v105
	v_mov_b32_e32 v141, v105
	v_mov_b32_e32 v143, v105
	v_mov_b32_e32 v145, v105
	v_add_nc_u32_e32 v11, 0, v11
	v_mov_b32_e32 v147, v105
	scratch_store_b32 off, v11, off offset:368 ; 4-byte Folded Spill
	v_xor_b32_e32 v11, 48, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v11, 0, v11
	scratch_store_b32 off, v11, off offset:372 ; 4-byte Folded Spill
	v_xor_b32_e32 v11, 64, v25
	v_add_nc_u32_e32 v11, 0, v11
	scratch_store_b32 off, v11, off offset:376 ; 4-byte Folded Spill
	v_xor_b32_e32 v11, 0x50, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v11, 0, v11
	scratch_store_b32 off, v11, off offset:380 ; 4-byte Folded Spill
	v_xor_b32_e32 v11, 0x60, v25
	v_add_nc_u32_e32 v11, 0, v11
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v11, off offset:384
	scratch_store_b32 off, v25, off offset:328
	v_xor_b32_e32 v11, 0x70, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v11, 0, v11
	scratch_store_b32 off, v11, off offset:388 ; 4-byte Folded Spill
	v_xor_b32_e32 v11, 16, v0
	v_add_nc_u32_e32 v11, 0, v11
	scratch_store_b32 off, v11, off offset:392 ; 4-byte Folded Spill
	v_xor_b32_e32 v11, 32, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v11, 0, v11
	scratch_store_b32 off, v11, off offset:396 ; 4-byte Folded Spill
	v_xor_b32_e32 v11, 48, v0
	v_add_nc_u32_e32 v11, 0, v11
	scratch_store_b32 off, v11, off offset:400 ; 4-byte Folded Spill
	v_xor_b32_e32 v11, 64, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v11, 0, v11
	scratch_store_b32 off, v11, off offset:404 ; 4-byte Folded Spill
	v_xor_b32_e32 v11, 0x50, v0
	v_add_nc_u32_e32 v11, 0, v11
	scratch_store_b32 off, v11, off offset:408 ; 4-byte Folded Spill
	v_xor_b32_e32 v11, 0x60, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v11, 0, v11
	scratch_store_b32 off, v11, off offset:412 ; 4-byte Folded Spill
	v_xor_b32_e32 v11, 0x70, v0
	v_add_nc_u32_e32 v11, 0, v11
	scratch_store_b32 off, v11, off offset:416 ; 4-byte Folded Spill
	v_xor_b32_e32 v11, 0x1040, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v11, 0, v11
	scratch_store_b32 off, v11, off offset:420 ; 4-byte Folded Spill
	v_xor_b32_e32 v11, 0x1050, v0
	v_add_nc_u32_e32 v11, 0, v11
	scratch_store_b32 off, v11, off offset:424 ; 4-byte Folded Spill
	v_xor_b32_e32 v11, 0x1060, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v11, 0, v11
	scratch_store_b32 off, v11, off offset:428 ; 4-byte Folded Spill
	v_xor_b32_e32 v11, 0x1070, v0
	v_add_nc_u32_e32 v11, 0, v11
	scratch_store_b32 off, v11, off offset:432 ; 4-byte Folded Spill
	v_xor_b32_e32 v11, 0x1010, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v11, 0, v11
	scratch_store_b32 off, v11, off offset:436 ; 4-byte Folded Spill
	v_xor_b32_e32 v11, 0x1020, v0
	v_add_nc_u32_e32 v11, 0, v11
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v11, off offset:440
	scratch_store_b32 off, v0, off offset:272
	v_xor_b32_e32 v11, 0x1030, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v11
	scratch_store_b32 off, v0, off offset:444 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 16, v24
	scratch_store_b32 off, v0, off offset:448 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v3
	scratch_store_b32 off, v0, off offset:452 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v5
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v6
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v7
	scratch_store_b32 off, v0, off offset:468 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v8
	scratch_store_b32 off, v0, off offset:472 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v9
	scratch_store_b32 off, v0, off offset:476 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v10
	scratch_store_b32 off, v0, off offset:480 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v12
	scratch_store_b32 off, v0, off offset:484 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v13
	scratch_store_b32 off, v0, off offset:488 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v14
	scratch_store_b32 off, v0, off offset:492 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v15
	scratch_store_b32 off, v0, off offset:496 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v16
	scratch_store_b32 off, v0, off offset:500 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	scratch_store_b32 off, v0, off offset:504 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 32, v24
	scratch_store_b32 off, v0, off offset:508 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 48, v24
	scratch_store_b32 off, v0, off offset:512 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 64, v24
	scratch_store_b32 off, v0, off offset:516 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 0x50, v24
	scratch_store_b32 off, v0, off offset:520 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 0x60, v24
	scratch_store_b32 off, v0, off offset:524 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 0x70, v24
	scratch_store_b32 off, v0, off offset:528 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 0x80, v24
	scratch_store_b32 off, v0, off offset:532 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 0x90, v24
	scratch_store_b32 off, v0, off offset:536 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 0xa0, v24
	scratch_store_b32 off, v0, off offset:540 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 0xb0, v24
	scratch_store_b32 off, v0, off offset:544 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 0xc0, v24
	scratch_store_b32 off, v0, off offset:548 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 0xd0, v24
	scratch_store_b32 off, v0, off offset:552 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 0xe0, v24
	scratch_store_b32 off, v0, off offset:556 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 0xf0, v24
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:560
	scratch_store_b32 off, v24, off offset:324
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 0x90, v21
	scratch_store_b32 off, v0, off offset:564 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v55, 0, v1
	v_xor_b32_e32 v1, 0x120, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v64, 0, v1
	v_xor_b32_e32 v1, 0x1b0, v21
	v_add_nc_u32_e32 v48, 0, v1
	v_xor_b32_e32 v1, 16, v26
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 32, v26
	scratch_store_b32 off, v0, off offset:568 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 48, v26
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:572
	scratch_store_b32 off, v26, off offset:332
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 16, v22
	scratch_store_b32 off, v0, off offset:576 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v138, off, off offset:572
	scratch_load_b32 v148, off, off offset:576
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 32, v22
	scratch_store_b32 off, v0, off offset:580 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 48, v22
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:584
	scratch_store_b32 off, v22, off offset:280
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 16, v23
	scratch_store_b32 off, v0, off offset:588 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 32, v23
	scratch_store_b32 off, v0, off offset:592 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 48, v23
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:596
	scratch_store_b32 off, v23, off offset:284
	v_add_nc_u32_e32 v0, 0, v1
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v1, s68, v44
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:600
	scratch_store_b32 off, v1, off offset:608
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, s70, v44
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v1, s68, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:604
	scratch_store_b32 off, v1, off offset:616
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, s70, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v1, s68, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:612
	scratch_store_b32 off, v1, off offset:624
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, s70, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v1, s68, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:620
	scratch_store_b32 off, v1, off offset:632
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, s70, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v1, s68, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:628
	scratch_store_b32 off, v1, off offset:640
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, s70, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v1, s68, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:636
	scratch_store_b32 off, v1, off offset:648
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, s70, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v1, s68, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:644
	scratch_store_b32 off, v1, off offset:656
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, s70, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v1, s68, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:652
	scratch_store_b32 off, v1, off offset:664
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, s70, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v1, s68, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:660
	scratch_store_b32 off, v1, off offset:672
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, s70, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v1, s68, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:668
	scratch_store_b32 off, v1, off offset:680
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, s70, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v1, s68, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:676
	scratch_store_b32 off, v1, off offset:688
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, s70, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v1, s68, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:684
	scratch_store_b32 off, v1, off offset:696
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, s70, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v1, s68, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:692
	scratch_store_b32 off, v1, off offset:704
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, s70, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v1, s68, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:700
	scratch_store_b32 off, v1, off offset:712
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, s70, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v1, s68, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:708
	scratch_store_b32 off, v1, off offset:720
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v0, s70, v0
	v_add_nc_u32_e32 v1, s68, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:716
	scratch_store_b32 off, v1, off offset:728
	v_add_nc_u32_e32 v0, s70, v0
	v_add_nc_u32_e32 v1, s68, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:724
	scratch_store_b32 off, v1, off offset:736
	v_add_nc_u32_e32 v0, s70, v0
	v_add_nc_u32_e32 v1, s68, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:732
	scratch_store_b32 off, v1, off offset:744
	v_add_nc_u32_e32 v0, s70, v0
	v_add_nc_u32_e32 v1, s68, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:740
	scratch_store_b32 off, v1, off offset:752
	v_add_nc_u32_e32 v0, s70, v0
	v_add_nc_u32_e32 v1, s68, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:748
	scratch_store_b32 off, v1, off offset:760
	v_add_nc_u32_e32 v0, s70, v0
	v_add_nc_u32_e32 v1, s68, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:756
	scratch_store_b32 off, v1, off offset:768
	v_add_nc_u32_e32 v0, s70, v0
	v_add_nc_u32_e32 v1, s68, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:764
	scratch_store_b32 off, v1, off offset:776
	v_add_nc_u32_e32 v0, s70, v0
	v_add_nc_u32_e32 v1, s68, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:772
	scratch_store_b32 off, v1, off offset:784
	v_add_nc_u32_e32 v0, s70, v0
	v_add_nc_u32_e32 v1, s68, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:780
	scratch_store_b32 off, v1, off offset:792
	v_add_nc_u32_e32 v0, s70, v0
	v_add_nc_u32_e32 v1, s68, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:788
	scratch_store_b32 off, v1, off offset:800
	v_add_nc_u32_e32 v0, s70, v0
	v_add_nc_u32_e32 v1, s68, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:796
	scratch_store_b32 off, v1, off offset:808
	v_add_nc_u32_e32 v0, s70, v0
	v_add_nc_u32_e32 v1, s68, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:804
	scratch_store_b32 off, v1, off offset:816
	v_add_nc_u32_e32 v0, s70, v0
	v_add_nc_u32_e32 v1, s68, v1
	scratch_store_b32 off, v0, off offset:812 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s70, v0
	scratch_store_b32 off, v0, off offset:820 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s70, v0
	scratch_store_b32 off, v1, off offset:824 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s68, v1
	scratch_store_b32 off, v0, off offset:828 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s70, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:836
	scratch_store_b32 off, v1, off offset:832
	v_add_nc_u32_e32 v0, s68, v1
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:840
	scratch_store_b32 off, v36, off offset:844
	scratch_store_b32 off, v18, off offset:852
	s_branch .LBB0_5
.LBB0_4:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_add_i32 s77, s77, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s77, s44
	s_cbranch_scc0 .LBB0_12
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s81
	s_cbranch_vccnz .LBB0_4
; %bb.6:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 662 35                        ; attention_backward.py:662:35
	s_add_i32 s82, s80, s77
	s_mov_b32 s83, s78
	.loc	1 662 34 is_stmt 0              ; attention_backward.py:662:34
	s_mul_i32 s82, s82, s42
	s_branch .LBB0_8
.LBB0_7:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	scratch_load_b32 v0, off, off offset:608 ; 4-byte Folded Reload
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s11, s41, s68
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s59
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v1, s11, v44, 2
	s_mov_b32 s59, s63
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v111, v105 :: v_dual_add_nc_u32 v8, 0x1800, v27
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v4, 0x800, v27
	v_add_nc_u32_e32 v6, 0x1000, v27
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v115.h, v21.l
	v_mov_b16_e32 v116.h, v43.l
	v_mov_b16_e32 v113.h, v50.l
	v_mov_b16_e32 v114.h, v26.l
	v_mov_b16_e64 v117.h, v132.l
	v_mov_b16_e64 v118.h, v131.l
	v_mov_b16_e64 v119.h, v130.l
	v_mov_b16_e64 v120.h, v129.l
	v_mov_b16_e64 v121.h, v137.l
	v_mov_b16_e64 v122.h, v135.l
	v_mov_b16_e64 v123.h, v134.l
	v_mov_b16_e64 v124.h, v133.l
	v_mov_b16_e32 v125.h, v42.l
	v_mov_b16_e32 v126.h, v41.l
	v_mov_b16_e32 v127.h, v40.l
	v_mov_b16_e64 v128.h, v136.l
	.loc	1 607 13 is_stmt 1              ; attention_backward.py:607:13
	s_add_i32 s83, s83, 32
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v110, v105
	v_mov_b32_e32 v112, v105
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s11, v0, 2
	scratch_load_b32 v0, off, off offset:616 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s58
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s58, s62
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b32 v98, v1, s[56:59], 0 offen
	buffer_load_b32 v99, v2, s[56:59], 0 offen
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s103
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v1, s11, v0, 2
	scratch_load_b32 v0, off, off offset:624 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s102
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v100, v1, s[56:59], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s11, v0, 2
	scratch_load_b32 v0, off, off offset:632 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s101
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v101, v1, s[56:59], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s11, v0, 2
	scratch_load_b32 v0, off, off offset:640 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s100
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s11, v0, 2
	scratch_load_b32 v0, off, off offset:648 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b32 v11, v1, s[56:59], 0 offen
	buffer_load_b32 v12, v2, s[56:59], 0 offen
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s99
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v1, s11, v0, 2
	scratch_load_b32 v0, off, off offset:656 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s98
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v13, v1, s[56:59], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s11, v0, 2
	scratch_load_b32 v0, off, off offset:664 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s97
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v14, v1, s[56:59], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s11, v0, 2
	scratch_load_b32 v0, off, off offset:672 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s96
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s11, v0, 2
	scratch_load_b32 v0, off, off offset:680 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b32 v15, v1, s[56:59], 0 offen
	buffer_load_b32 v16, v2, s[56:59], 0 offen
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s95
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v1, s11, v0, 2
	scratch_load_b32 v0, off, off offset:688 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s94
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v17, v1, s[56:59], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s11, v0, 2
	scratch_load_b32 v0, off, off offset:696 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s93
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v18, v1, s[56:59], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s11, v0, 2
	scratch_load_b32 v0, off, off offset:704 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s92
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s11, v0, 2
	scratch_load_b32 v0, off, off offset:712 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b32 v56, v1, s[56:59], 0 offen
	buffer_load_b32 v57, v2, s[56:59], 0 offen
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s91
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v1, s11, v0, 2
	scratch_load_b32 v0, off, off offset:720 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s90
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v58, v1, s[56:59], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s11, v0, 2
	scratch_load_b32 v0, off, off offset:728 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s89
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v59, v1, s[56:59], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s11, v0, 2
	scratch_load_b32 v0, off, off offset:736 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s88
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s11, v0, 2
	scratch_load_b32 v0, off, off offset:744 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b32 v60, v1, s[56:59], 0 offen
	buffer_load_b32 v61, v2, s[56:59], 0 offen
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s87
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v1, s11, v0, 2
	scratch_load_b32 v0, off, off offset:752 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s86
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v62, v1, s[56:59], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s11, v0, 2
	scratch_load_b32 v0, off, off offset:760 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s85
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v63, v1, s[56:59], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s11, v0, 2
	scratch_load_b32 v0, off, off offset:768 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s84
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s11, v0, 2
	scratch_load_b32 v0, off, off offset:776 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b32 v81, v1, s[56:59], 0 offen
	buffer_load_b32 v82, v2, s[56:59], 0 offen
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s67
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s67, s63
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v1, s11, v0, 2
	scratch_load_b32 v0, off, off offset:784 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s66
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s66, s62
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v83, v1, s[56:59], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s11, v0, 2
	scratch_load_b32 v0, off, off offset:792 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s55
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s55, s63
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v84, v1, s[56:59], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s11, v0, 2
	scratch_load_b32 v0, off, off offset:800 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s54
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s54, s62
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s11, v0, 2
	scratch_load_b32 v0, off, off offset:808 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b32 v85, v1, s[56:59], 0 offen
	buffer_load_b32 v86, v2, s[56:59], 0 offen
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s40
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v1, s11, v0, 2
	scratch_load_b32 v0, off, off offset:816 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s39
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v87, v1, s[56:59], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s11, v0, 2
	scratch_load_b32 v0, off, off offset:824 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s38
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v88, v1, s[56:59], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s11, v0, 2
	scratch_load_b32 v0, off, off offset:832 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s37
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s11, v0, 2
	scratch_load_b32 v0, off, off offset:840 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b32 v106, v1, s[56:59], 0 offen
	buffer_load_b32 v107, v2, s[56:59], 0 offen
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s36
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v1, s11, v0, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s10, s35
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_i32 s83, s75
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v108, v1, s[56:59], 0 offen
	v_add_nc_u32_e32 v1, s68, v0
	v_add_lshl_u32 v1, s11, v1, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_b32 v109, v1, s[56:59], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_add_lshl_u32 v1, s41, v149, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	buffer_load_b32 v52, v1, s[64:67], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v51, v1, s[52:55], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, 0, v0
	scratch_load_b32 v0, off, off offset:364 ; 4-byte Folded Reload
	ds_store_b128 v1, v[98:101]
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[11:14]
	scratch_load_b32 v0, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[15:18]
	scratch_load_b32 v0, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[56:59]
	scratch_load_b32 v0, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[60:63]
	scratch_load_b32 v0, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[81:84]
	scratch_load_b32 v0, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[85:88]
	scratch_load_b32 v0, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[106:109]
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, 0, v0
	scratch_load_b32 v0, off, off offset:392 ; 4-byte Folded Reload
	ds_load_b128 v[186:189], v1
	ds_load_b128 v[22:25], v1 offset:4096
	scratch_load_b32 v1, off, off offset:440 ; 4-byte Folded Reload
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v9, 0x1c00, v27
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(1)
	ds_load_b128 v[198:201], v0
	scratch_load_b32 v0, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[194:197], v0
	scratch_load_b32 v0, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[190:193], v0
	scratch_load_b32 v0, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[166:169], v0
	scratch_load_b32 v0, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[162:165], v0
	scratch_load_b32 v0, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[158:161], v0
	scratch_load_b32 v0, off, off offset:416 ; 4-byte Folded Reload
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v3, 0x400, v27
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(0)
	ds_load_b128 v[154:157], v0
	scratch_load_b32 v0, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[182:185], v0
	scratch_load_b32 v0, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[178:181], v0
	scratch_load_b32 v0, off, off offset:428 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[174:177], v0
	scratch_load_b32 v0, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[170:173], v0
	scratch_load_b32 v0, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[150:153], v0
	v_mov_b32_e32 v0, v44
	ds_load_b128 v[44:47], v1
	scratch_load_b32 v1, off, off offset:444 ; 4-byte Folded Reload
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v5, 0xc00, v27
	v_add_nc_u32_e32 v7, 0x1400, v27
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(0)
	ds_load_b128 v[36:39], v1
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v97, v49, v1
	ds_store_2addr_stride64_b32 v97, v98, v99 offset1:1
	ds_store_2addr_stride64_b32 v97, v100, v101 offset0:2 offset1:3
	ds_store_2addr_stride64_b32 v97, v11, v12 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v97, v13, v14 offset0:6 offset1:7
	ds_store_2addr_stride64_b32 v97, v15, v16 offset0:8 offset1:9
	ds_store_2addr_stride64_b32 v97, v17, v18 offset0:10 offset1:11
	ds_store_2addr_stride64_b32 v97, v56, v57 offset0:12 offset1:13
	ds_store_2addr_stride64_b32 v97, v58, v59 offset0:14 offset1:15
	ds_store_2addr_stride64_b32 v97, v60, v61 offset0:16 offset1:17
	ds_store_2addr_stride64_b32 v97, v62, v63 offset0:18 offset1:19
	ds_store_2addr_stride64_b32 v97, v81, v82 offset0:20 offset1:21
	ds_store_2addr_stride64_b32 v97, v83, v84 offset0:22 offset1:23
	ds_store_2addr_stride64_b32 v97, v85, v86 offset0:24 offset1:25
	ds_store_2addr_stride64_b32 v97, v87, v88 offset0:26 offset1:27
	ds_store_2addr_stride64_b32 v97, v106, v107 offset0:28 offset1:29
	ds_store_2addr_stride64_b32 v97, v108, v109 offset0:30 offset1:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[1:2], v3 offset1:32
	ds_load_2addr_b32 v[254:255], v3 offset0:64 offset1:96
	ds_load_2addr_b32 v[252:253], v3 offset0:128 offset1:160
	ds_load_2addr_b32 v[250:251], v3 offset0:192 offset1:224
	ds_load_2addr_b32 v[248:249], v4 offset1:32
	ds_load_2addr_b32 v[246:247], v4 offset0:64 offset1:96
	ds_load_2addr_b32 v[244:245], v4 offset0:128 offset1:160
	ds_load_2addr_b32 v[242:243], v4 offset0:192 offset1:224
	ds_load_2addr_b32 v[240:241], v5 offset1:32
	ds_load_2addr_b32 v[238:239], v5 offset0:64 offset1:96
	ds_load_2addr_b32 v[236:237], v5 offset0:128 offset1:160
	ds_load_2addr_b32 v[234:235], v5 offset0:192 offset1:224
	ds_load_2addr_b32 v[232:233], v6 offset1:32
	ds_load_2addr_b32 v[230:231], v6 offset0:64 offset1:96
	ds_load_2addr_b32 v[228:229], v6 offset0:128 offset1:160
	ds_load_2addr_b32 v[226:227], v6 offset0:192 offset1:224
	ds_load_2addr_b32 v[224:225], v7 offset1:32
	ds_load_2addr_b32 v[222:223], v7 offset0:64 offset1:96
	ds_load_2addr_b32 v[220:221], v7 offset0:128 offset1:160
	ds_load_2addr_b32 v[218:219], v7 offset0:192 offset1:224
	ds_load_2addr_b32 v[216:217], v8 offset1:32
	ds_load_2addr_b32 v[214:215], v8 offset0:64 offset1:96
	ds_load_2addr_b32 v[212:213], v8 offset0:128 offset1:160
	ds_load_2addr_b32 v[210:211], v8 offset0:192 offset1:224
	ds_load_2addr_b32 v[208:209], v9 offset1:32
	ds_load_2addr_b32 v[206:207], v9 offset0:64 offset1:96
	ds_load_2addr_b32 v[204:205], v9 offset0:128 offset1:160
	ds_load_2addr_b32 v[202:203], v9 offset0:192 offset1:224
	ds_load_2addr_b32 v[9:10], v27 offset1:32
	ds_load_2addr_b32 v[7:8], v27 offset0:64 offset1:96
	ds_load_2addr_b32 v[5:6], v27 offset0:128 offset1:160
	ds_load_2addr_b32 v[3:4], v27 offset0:192 offset1:224
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b32 v97, v98, v60 offset1:16
	scratch_load_b32 v60, off, off offset:448 ; 4-byte Folded Reload
	v_cmp_o_f32_e64 s25, v233, v233
	v_cmp_o_f32_e64 s35, v215, v215
	v_cmp_o_f32_e64 s36, v213, v213
	v_cmp_o_f32_e64 s37, v211, v211
	v_cmp_o_f32_e64 s38, v209, v209
	v_cmp_o_f32_e64 s39, v207, v207
	v_cmp_o_f32_e64 s40, v205, v205
	v_cmp_o_f32_e64 s41, v203, v203
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v60, v99, v61 offset1:16
	scratch_load_b32 v60, off, off offset:452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v60, v100, v62 offset1:16
	scratch_load_b32 v60, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v60, v101, v63 offset1:16
	scratch_load_b32 v60, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v60, v11, v81 offset1:16
	scratch_load_b32 v11, off, off offset:464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v11, v12, v82 offset1:16
	scratch_load_b32 v11, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v11, v13, v83 offset1:16
	scratch_load_b32 v11, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v11, v14, v84 offset1:16
	scratch_load_b32 v11, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v11, v15, v85 offset1:16
	scratch_load_b32 v11, off, off offset:480 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v11, v16, v86 offset1:16
	scratch_load_b32 v11, off, off offset:484 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v11, v17, v87 offset1:16
	scratch_load_b32 v11, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v11, v18, v88 offset1:16
	scratch_load_b32 v11, off, off offset:492 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v11, v56, v106 offset1:16
	scratch_load_b32 v11, off, off offset:496 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v106, v105
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v11, v57, v107 offset1:16
	scratch_load_b32 v11, off, off offset:500 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v107, v105
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v11, v58, v108 offset1:16
	scratch_load_b32 v11, off, off offset:504 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v108, v105
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v11, v59, v109 offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:324
	scratch_load_b32 v15, off, off offset:508
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v109, v105
	v_dual_mov_b32 v97, v105 :: v_dual_mov_b32 v98, v106
	v_dual_mov_b32 v99, v107 :: v_dual_mov_b32 v100, v108
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v101, v109 :: v_dual_mov_b32 v102, v110
	v_dual_mov_b32 v103, v111 :: v_dual_mov_b32 v104, v112
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v11, 0, v11
	s_waitcnt vmcnt(0)
	ds_load_b128 v[15:18], v15
	ds_load_b128 v[11:14], v11
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s13, v15, v15
	v_cmp_o_f32_e64 s14, v16, v16
	v_cmp_o_f32_e64 s15, v17, v17
	v_cmp_o_f32_e64 s16, v18, v18
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v56, v11, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_cmp_o_f32_e64 s3, v12, v12
	v_cmp_o_f32_e64 s11, v13, v13
	v_cmp_o_f32_e64 s12, v14, v14
	v_add3_u32 v56, v11, v56, 0x7fff
	v_bfe_u32 v11, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v56.l, 0x7fff, v56.h, vcc_lo
	v_add3_u32 v57, v12, v11, 0x7fff
	v_bfe_u32 v11, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v56.h, 0x7fff, v57.h, s3
	v_add3_u32 v58, v13, v11, 0x7fff
	v_bfe_u32 v11, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v57.l, 0x7fff, v58.h, s11
	v_add3_u32 v59, v14, v11, 0x7fff
	v_bfe_u32 v11, v15, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v57.h, 0x7fff, v59.h, s12
	v_add3_u32 v60, v15, v11, 0x7fff
	v_bfe_u32 v11, v16, 16, 1
	scratch_load_b32 v15, off, off offset:516 ; 4-byte Folded Reload
	v_cndmask_b16 v58.l, 0x7fff, v60.h, s13
	v_add3_u32 v61, v16, v11, 0x7fff
	v_bfe_u32 v11, v17, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v58.h, 0x7fff, v61.h, s14
	v_add3_u32 v62, v17, v11, 0x7fff
	v_bfe_u32 v11, v18, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v59.l, 0x7fff, v62.h, s15
	v_add3_u32 v63, v18, v11, 0x7fff
	scratch_load_b32 v11, off, off offset:512 ; 4-byte Folded Reload
	v_cndmask_b16 v59.h, 0x7fff, v63.h, s16
	s_waitcnt vmcnt(1)
	ds_load_b128 v[15:18], v15
	s_waitcnt vmcnt(0)
	ds_load_b128 v[11:14], v11
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s21, v15, v15
	v_cmp_o_f32_e64 s22, v16, v16
	v_cmp_o_f32_e64 s23, v17, v17
	v_cmp_o_f32_e64 s24, v18, v18
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v81, v11, 16, 1
	v_cmp_o_f32_e64 s17, v11, v11
	v_cmp_o_f32_e64 s18, v12, v12
	v_cmp_o_f32_e64 s19, v13, v13
	v_cmp_o_f32_e64 s20, v14, v14
	v_add3_u32 v11, v11, v81, 0x7fff
	v_bfe_u32 v81, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v60.l, 0x7fff, v11.h, s17
	v_add3_u32 v12, v12, v81, 0x7fff
	v_bfe_u32 v81, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v60.h, 0x7fff, v12.h, s18
	v_add3_u32 v13, v13, v81, 0x7fff
	v_bfe_u32 v81, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v61.l, 0x7fff, v13.h, s19
	v_add3_u32 v14, v14, v81, 0x7fff
	v_bfe_u32 v81, v15, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v61.h, 0x7fff, v14.h, s20
	v_add3_u32 v15, v15, v81, 0x7fff
	v_bfe_u32 v81, v16, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v62.l, 0x7fff, v15.h, s21
	v_add3_u32 v16, v16, v81, 0x7fff
	v_bfe_u32 v81, v17, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v62.h, 0x7fff, v16.h, s22
	v_add3_u32 v17, v17, v81, 0x7fff
	v_bfe_u32 v81, v18, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v63.l, 0x7fff, v17.h, s23
	v_add3_u32 v18, v18, v81, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v63.h, 0x7fff, v18.h, s24
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[11:14], off, off offset:240
	scratch_load_b128 v[15:18], off, off offset:256
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[11:18], v[56:63], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:520
	scratch_load_b32 v15, off, off offset:524
	s_waitcnt vmcnt(1)
	ds_load_b128 v[11:14], v11
	s_waitcnt vmcnt(0)
	ds_load_b128 v[15:18], v15
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v56, v11, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s13, v15, v15
	v_cmp_o_f32_e64 s3, v12, v12
	v_cmp_o_f32_e64 s11, v13, v13
	v_add3_u32 v56, v11, v56, 0x7fff
	v_bfe_u32 v11, v12, 16, 1
	v_cmp_o_f32_e64 s12, v14, v14
	v_cmp_o_f32_e64 s14, v16, v16
	v_cmp_o_f32_e64 s15, v17, v17
	v_cmp_o_f32_e64 s16, v18, v18
	v_add3_u32 v57, v12, v11, 0x7fff
	v_bfe_u32 v11, v13, 16, 1
	v_cndmask_b16 v56.l, 0x7fff, v56.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v56.h, 0x7fff, v57.h, s3
	v_add3_u32 v58, v13, v11, 0x7fff
	v_bfe_u32 v11, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v57.l, 0x7fff, v58.h, s11
	v_add3_u32 v59, v14, v11, 0x7fff
	v_bfe_u32 v11, v15, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v57.h, 0x7fff, v59.h, s12
	v_add3_u32 v60, v15, v11, 0x7fff
	v_bfe_u32 v11, v16, 16, 1
	scratch_load_b32 v15, off, off offset:532 ; 4-byte Folded Reload
	v_cndmask_b16 v58.l, 0x7fff, v60.h, s13
	v_add3_u32 v61, v16, v11, 0x7fff
	v_bfe_u32 v11, v17, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v58.h, 0x7fff, v61.h, s14
	v_add3_u32 v62, v17, v11, 0x7fff
	v_bfe_u32 v11, v18, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v59.l, 0x7fff, v62.h, s15
	v_add3_u32 v63, v18, v11, 0x7fff
	scratch_load_b32 v11, off, off offset:528 ; 4-byte Folded Reload
	v_cndmask_b16 v59.h, 0x7fff, v63.h, s16
	s_waitcnt vmcnt(1)
	ds_load_b128 v[15:18], v15
	s_waitcnt vmcnt(0)
	ds_load_b128 v[11:14], v11
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s21, v15, v15
	v_cmp_o_f32_e64 s22, v16, v16
	v_cmp_o_f32_e64 s23, v17, v17
	v_cmp_o_f32_e64 s24, v18, v18
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v81, v11, 16, 1
	v_cmp_o_f32_e64 s17, v11, v11
	v_cmp_o_f32_e64 s18, v12, v12
	v_cmp_o_f32_e64 s19, v13, v13
	v_cmp_o_f32_e64 s20, v14, v14
	v_add3_u32 v11, v11, v81, 0x7fff
	v_bfe_u32 v81, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v60.l, 0x7fff, v11.h, s17
	v_add3_u32 v12, v12, v81, 0x7fff
	v_bfe_u32 v81, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v60.h, 0x7fff, v12.h, s18
	v_add3_u32 v13, v13, v81, 0x7fff
	v_bfe_u32 v81, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v61.l, 0x7fff, v13.h, s19
	v_add3_u32 v14, v14, v81, 0x7fff
	v_bfe_u32 v81, v15, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v61.h, 0x7fff, v14.h, s20
	v_add3_u32 v81, v15, v81, 0x7fff
	v_bfe_u32 v15, v16, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v62.l, 0x7fff, v81.h, s21
	v_add3_u32 v15, v16, v15, 0x7fff
	v_bfe_u32 v16, v17, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v62.h, 0x7fff, v15.h, s22
	v_add3_u32 v16, v17, v16, 0x7fff
	v_bfe_u32 v17, v18, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v63.l, 0x7fff, v16.h, s23
	v_add3_u32 v17, v18, v17, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v63.h, 0x7fff, v17.h, s24
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[11:14], off, off offset:208
	scratch_load_b128 v[15:18], off, off offset:224
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[11:18], v[56:63], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:536
	scratch_load_b32 v15, off, off offset:540
	s_waitcnt vmcnt(1)
	ds_load_b128 v[11:14], v11
	s_waitcnt vmcnt(0)
	ds_load_b128 v[15:18], v15
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v56, v11, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s13, v15, v15
	v_cmp_o_f32_e64 s3, v12, v12
	v_cmp_o_f32_e64 s11, v13, v13
	v_add3_u32 v56, v11, v56, 0x7fff
	v_bfe_u32 v11, v12, 16, 1
	v_cmp_o_f32_e64 s12, v14, v14
	v_cmp_o_f32_e64 s14, v16, v16
	v_cmp_o_f32_e64 s15, v17, v17
	v_cmp_o_f32_e64 s16, v18, v18
	v_add3_u32 v57, v12, v11, 0x7fff
	v_bfe_u32 v11, v13, 16, 1
	v_cndmask_b16 v56.l, 0x7fff, v56.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v56.h, 0x7fff, v57.h, s3
	v_add3_u32 v58, v13, v11, 0x7fff
	v_bfe_u32 v11, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v57.l, 0x7fff, v58.h, s11
	v_add3_u32 v59, v14, v11, 0x7fff
	v_bfe_u32 v11, v15, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v57.h, 0x7fff, v59.h, s12
	v_add3_u32 v60, v15, v11, 0x7fff
	v_bfe_u32 v11, v16, 16, 1
	scratch_load_b32 v15, off, off offset:548 ; 4-byte Folded Reload
	v_cndmask_b16 v58.l, 0x7fff, v60.h, s13
	v_add3_u32 v61, v16, v11, 0x7fff
	v_bfe_u32 v11, v17, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v58.h, 0x7fff, v61.h, s14
	v_add3_u32 v62, v17, v11, 0x7fff
	v_bfe_u32 v11, v18, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v59.l, 0x7fff, v62.h, s15
	v_add3_u32 v63, v18, v11, 0x7fff
	scratch_load_b32 v11, off, off offset:544 ; 4-byte Folded Reload
	v_cndmask_b16 v59.h, 0x7fff, v63.h, s16
	s_waitcnt vmcnt(1)
	ds_load_b128 v[15:18], v15
	s_waitcnt vmcnt(0)
	ds_load_b128 v[11:14], v11
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s21, v15, v15
	v_cmp_o_f32_e64 s22, v16, v16
	v_cmp_o_f32_e64 s23, v17, v17
	v_cmp_o_f32_e64 s24, v18, v18
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v81, v11, 16, 1
	v_cmp_o_f32_e64 s17, v11, v11
	v_cmp_o_f32_e64 s18, v12, v12
	v_cmp_o_f32_e64 s19, v13, v13
	v_cmp_o_f32_e64 s20, v14, v14
	v_add3_u32 v81, v11, v81, 0x7fff
	v_bfe_u32 v11, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v60.l, 0x7fff, v81.h, s17
	v_add3_u32 v11, v12, v11, 0x7fff
	v_bfe_u32 v12, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v60.h, 0x7fff, v11.h, s18
	v_add3_u32 v12, v13, v12, 0x7fff
	v_bfe_u32 v13, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v61.l, 0x7fff, v12.h, s19
	v_add3_u32 v13, v14, v13, 0x7fff
	v_bfe_u32 v14, v15, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v61.h, 0x7fff, v13.h, s20
	v_add3_u32 v14, v15, v14, 0x7fff
	v_bfe_u32 v15, v16, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v62.l, 0x7fff, v14.h, s21
	v_add3_u32 v15, v16, v15, 0x7fff
	v_bfe_u32 v16, v17, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v62.h, 0x7fff, v15.h, s22
	v_add3_u32 v16, v17, v16, 0x7fff
	v_bfe_u32 v17, v18, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v63.l, 0x7fff, v16.h, s23
	v_add3_u32 v17, v18, v17, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v63.h, 0x7fff, v17.h, s24
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[11:14], off, off offset:176
	scratch_load_b128 v[15:18], off, off offset:192
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[11:18], v[56:63], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:552
	scratch_load_b32 v15, off, off offset:556
	s_waitcnt vmcnt(1)
	ds_load_b128 v[11:14], v11
	s_waitcnt vmcnt(0)
	ds_load_b128 v[15:18], v15
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v56, v11, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s13, v15, v15
	v_cmp_o_f32_e64 s3, v12, v12
	v_cmp_o_f32_e64 s11, v13, v13
	v_add3_u32 v56, v11, v56, 0x7fff
	v_bfe_u32 v11, v12, 16, 1
	v_cmp_o_f32_e64 s12, v14, v14
	v_cmp_o_f32_e64 s14, v16, v16
	v_cmp_o_f32_e64 s15, v17, v17
	v_cmp_o_f32_e64 s16, v18, v18
	v_add3_u32 v57, v12, v11, 0x7fff
	v_bfe_u32 v11, v13, 16, 1
	v_cndmask_b16 v56.l, 0x7fff, v56.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v56.h, 0x7fff, v57.h, s3
	v_add3_u32 v58, v13, v11, 0x7fff
	v_bfe_u32 v11, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v57.l, 0x7fff, v58.h, s11
	v_add3_u32 v59, v14, v11, 0x7fff
	v_bfe_u32 v11, v15, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v57.h, 0x7fff, v59.h, s12
	v_add3_u32 v60, v15, v11, 0x7fff
	v_bfe_u32 v11, v16, 16, 1
	scratch_load_b32 v15, off, off offset:564 ; 4-byte Folded Reload
	v_cndmask_b16 v58.l, 0x7fff, v60.h, s13
	v_add3_u32 v61, v16, v11, 0x7fff
	v_bfe_u32 v11, v17, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v58.h, 0x7fff, v61.h, s14
	v_add3_u32 v62, v17, v11, 0x7fff
	v_bfe_u32 v11, v18, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v59.l, 0x7fff, v62.h, s15
	v_add3_u32 v63, v18, v11, 0x7fff
	scratch_load_b32 v11, off, off offset:560 ; 4-byte Folded Reload
	v_cndmask_b16 v59.h, 0x7fff, v63.h, s16
	s_waitcnt vmcnt(1)
	ds_load_b128 v[15:18], v15
	s_waitcnt vmcnt(0)
	ds_load_b128 v[11:14], v11
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s21, v15, v15
	v_cmp_o_f32_e64 s22, v16, v16
	v_cmp_o_f32_e64 s23, v17, v17
	v_cmp_o_f32_e64 s24, v18, v18
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v81, v11, 16, 1
	v_cmp_o_f32_e64 s17, v11, v11
	v_cmp_o_f32_e64 s18, v12, v12
	v_cmp_o_f32_e64 s19, v13, v13
	v_cmp_o_f32_e64 s20, v14, v14
	v_add3_u32 v81, v11, v81, 0x7fff
	v_bfe_u32 v11, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v60.l, 0x7fff, v81.h, s17
	v_add3_u32 v11, v12, v11, 0x7fff
	v_bfe_u32 v12, v13, 16, 1
	v_cmp_o_f32_e64 s17, v249, v249
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v60.h, 0x7fff, v11.h, s18
	v_add3_u32 v12, v13, v12, 0x7fff
	v_bfe_u32 v13, v14, 16, 1
	v_cmp_o_f32_e64 s18, v247, v247
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v61.l, 0x7fff, v12.h, s19
	v_add3_u32 v13, v14, v13, 0x7fff
	v_bfe_u32 v14, v15, 16, 1
	v_cmp_o_f32_e64 s19, v245, v245
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v61.h, 0x7fff, v13.h, s20
	v_add3_u32 v14, v15, v14, 0x7fff
	v_bfe_u32 v15, v16, 16, 1
	v_cmp_o_f32_e64 s20, v243, v243
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v62.l, 0x7fff, v14.h, s21
	v_add3_u32 v15, v16, v15, 0x7fff
	v_bfe_u32 v16, v17, 16, 1
	v_cmp_o_f32_e64 s21, v241, v241
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v62.h, 0x7fff, v15.h, s22
	v_add3_u32 v16, v17, v16, 0x7fff
	v_bfe_u32 v17, v18, 16, 1
	v_cmp_o_f32_e64 s22, v239, v239
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v63.l, 0x7fff, v16.h, s23
	v_add3_u32 v17, v18, v17, 0x7fff
	v_cmp_o_f32_e64 s23, v237, v237
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v63.h, 0x7fff, v17.h, s24
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[11:14], off, off offset:144
	scratch_load_b128 v[15:18], off, off offset:160
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s24, v235, v235
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[11:18], v[56:63], v[97:104]
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v11, s79, v28, -v52
	v_fma_f32 v12, s79, v29, -v52
	v_fma_f32 v13, s79, v30, -v52
	v_fma_f32 v14, s79, v31, -v52
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v28, v97, v51
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v11, v11
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v29, v98, v51
	v_sub_f32_e32 v30, v99, v51
	v_sub_f32_e32 v31, v100, v51
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v15, s79, v32, -v52
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v32, v101, v51
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v16, s79, v33, -v52
	v_fma_f32 v17, s79, v34, -v52
	v_fma_f32 v18, s79, v35, -v52
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v33, v102, v51
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v59, 0, v11, s34
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v34, v103, v51
	v_sub_f32_e32 v35, v104, v51
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s34, v217, v217
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v11, v59, v28
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v11, s76, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v21, v11, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_add3_u32 v21, v11, v21, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v11, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v58, 0, v11, s33
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s33, v219, v219
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v11, v58, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v11, s76, v11
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v12, v11, 16, 1
	v_cmp_o_f32_e64 s3, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v11, v13
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v43, 0, v11, s31
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s31, v221, v221
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v11, v43, v30
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v11, s76, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v13, v11, 16, 1
	v_cmp_o_f32_e64 s11, v11, v11
	v_add3_u32 v13, v11, v13, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v11, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v50, 0, v11, s30
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s30, v223, v223
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v11, v50, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v11, s76, v11
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v14, v11, 16, 1
	v_cmp_o_f32_e64 s12, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v14, v11, v14, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v11, v15
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v15, 0, v11, s29
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s29, v225, v225
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v11, v15, v32
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v11, s76, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v26, v11, 16, 1
	v_cmp_o_f32_e64 s13, v11, v11
	v_add3_u32 v26, v11, v26, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v11, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v51, 0, v11, s28
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s28, v227, v227
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v11, v51, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v11, s76, v11
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v16, v11, 16, 1
	v_cmp_o_f32_e64 s14, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v16, v11, v16, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v11, v17
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v52, 0, v11, s27
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s27, v229, v229
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v11, v52, v34
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v11, s76, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v17, v11, 16, 1
	v_cmp_o_f32_e64 s15, v11, v11
	v_add3_u32 v17, v11, v17, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v11, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v56, 0, v11, s26
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s26, v231, v231
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v11, v56, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v11, s76, v11
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v18, v11, 16, 1
	v_cmp_o_f32_e64 s16, v11, v11
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v18, v11, v18, 0x7fff
	v_cndmask_b16 v11.l, 0x7fff, v21.h, vcc_lo
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	scratch_load_b32 v21, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v11.h, 0x7fff, v26.h, s13
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v59, v59
	v_cmp_o_f32_e64 s13, v50, v50
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v57, 0, v21
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_mov_b16_e32 v21.l, 0
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v57, v11
	ds_store_b16_d16_hi v57, v11 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v11.l, 0x7fff, v12.h, s3
	v_cndmask_b16 v11.h, 0x7fff, v16.h, s14
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v15, v15
	v_cmp_o_f32_e64 s14, v52, v52
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v42.l, v21.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v55, v11
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v11.l, 0x7fff, v13.h, s11
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v55, v11 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v11.h, 0x7fff, v17.h, s15
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s11, v58, v58
	v_cmp_o_f32_e64 s15, v56, v56
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v64, v11
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v11.l, 0x7fff, v14.h, s12
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v64, v11 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v11.h, 0x7fff, v18.h, s16
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v48, v11
	ds_store_b16_d16_hi v48, v11 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:332
	scratch_load_b32 v85, off, off offset:568
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s12, v43, v43
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v60.l, v21.l
	v_mov_b16_e32 v61.l, v21.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v18.l, v21.l
	v_mov_b16_e32 v17.l, v21.l
	v_mov_b16_e32 v16.l, v21.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s16, v251, v251
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v62.l, v21.l
	v_mov_b16_e32 v63.l, v21.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	ds_load_b128 v[101:104], v85
	ds_load_b128 v[28:31], v138
	ds_load_b128 v[32:35], v148
	v_add_nc_u32_e32 v26, 0, v11
	ds_load_b128 v[97:100], v26
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v11, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v11, 0, v11
	ds_store_b128 v11, v[113:116]
	scratch_load_b32 v11, off, off offset:580 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v11, v[117:120]
	scratch_load_b32 v11, off, off offset:584 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v11, v[121:124]
	scratch_load_b32 v11, off, off offset:588 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v11, v[125:128]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v11, off, off offset:284
	scratch_load_b32 v12, off, off offset:592
	scratch_load_b32 v14, off, off offset:600
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v11, 0, v11
	s_waitcnt vmcnt(1)
	ds_load_b128 v[110:113], v12
	ds_load_b128 v[106:109], v11
	ds_load_b128 v[114:117], v11 offset:2048
	ds_load_b128 v[118:121], v12 offset:2048
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v11, v59, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v11, v59, v11, 0x7fff
	v_cndmask_b16 v21.h, 0x7fff, v11.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v11, v59, v21
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e32 v59.l, v21.l
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[106:113], v[97:104], v[89:96]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v106.l, v21.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[140:147], v[114:121], v[97:104], v[140:147]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v12, v11, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	ds_load_b128 v[118:121], v14
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v107.l, v21.l
	v_mov_b16_e32 v108.l, v21.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v40, v11, v12, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v11, v15, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v109.l, v21.l
	v_mov_b16_e32 v110.l, v21.l
	v_mov_b16_e32 v111.l, v21.l
	v_mov_b16_e32 v112.l, v21.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v11, v15, v11, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v11.l, v21.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v113.l, v21.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s3
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v12, v15, v11
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v15, v56, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v13, v12, 16, 1
	v_cmp_o_f32_e64 s3, v12, v12
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v15, v56, v15, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v15.l, v21.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v41, v12, v13, 0x7fff
	scratch_load_b32 v13, off, off offset:596 ; 4-byte Folded Reload
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v12, v58, 16, 1
	v_cndmask_b16 v61.h, 0x7fff, v15.h, s15
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s15, v253, v253
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	ds_load_b128 v[114:117], v13
	ds_load_b128 v[122:125], v13 offset:2048
	ds_load_b128 v[126:129], v14 offset:2048
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v12, v58, v12, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v12.l, v21.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v14, v52, 16, 1
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s11
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v57, v11 offset:512
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v11, v51, 16, 1
	v_cmp_o_f32_e64 s11, v51, v51
	v_add3_u32 v14, v52, v14, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v13, v58, v12
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v55, v12
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v11, v51, v11, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v58.l, v21.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v60.h, 0x7fff, v14.h, s14
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v14.l, v21.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s14, v255, v255
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v42.h, 0x7fff, v11.h, s11
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v11, v13, 16, 1
	v_cmp_o_f32_e64 s11, v13, v13
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[89:96], v[114:121], v[28:35], v[89:96]
	v_wmma_f32_16x16x16_bf16 v[140:147], v[122:129], v[28:35], v[140:147]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v12, v13, v11, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v11, v43, 16, 1
	v_bfe_u32 v13, v50, 16, 1
	v_add3_u32 v11, v43, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v13, v50, v13, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v11.l, 0x7fff, v40.h, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v40, v51, v42
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v58.h, 0x7fff, v11.h, s12
	v_cndmask_b16 v59.h, 0x7fff, v13.h, s13
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v57, v21
	ds_store_b16_d16_hi v55, v42 offset:512
	ds_store_b16_d16_hi v64, v58
	ds_store_b16_d16_hi v64, v60 offset:512
	ds_store_b16_d16_hi v48, v59
	ds_store_b16_d16_hi v48, v61 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[130:133], v26
	ds_load_b128 v[134:137], v85
	ds_load_b128 v[97:100], v138
	ds_load_b128 v[101:104], v148
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v11.h, 0x7fff, v41.h, s3
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v57, v11
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v11.l, 0x7fff, v12.h, s11
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v12, v7, 16, 1
	v_cmp_o_f32_e64 s3, v3, v3
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v57, v11 offset:512
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v41, v52, v60
	v_sub_f32_e32 v42, v56, v61
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v12, v7, v12, 0x7fff
	v_bfe_u32 v7, v3, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s11, v40, v40
	v_cmp_o_f32_e64 s12, v41, v41
	v_cmp_o_f32_e64 s13, v42, v42
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v106.h, 0x7fff, v12.h, vcc_lo
	v_add3_u32 v7, v3, v7, 0x7fff
	v_bfe_u32 v3, v254, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v254, v254
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v12.l, v21.l
	v_mov_b16_e32 v13.l, v21.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v107.h, 0x7fff, v7.h, s3
	v_add3_u32 v3, v254, v3, 0x7fff
	v_bfe_u32 v7, v226, 16, 1
	v_cmp_o_f32_e64 s3, v226, v226
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v51.l, v21.l
	v_mov_b16_e32 v56.l, v21.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v108.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v250, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v250, v250
	v_add3_u32 v7, v226, v7, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v226.l, v21.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v199, v199, v108
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v3, v250, v3, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v52.l, v21.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v12.h, 0x7fff, v7.h, s3
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v7, v50, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v109.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v246, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v246, v246
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v7, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v246, v3, 0x7fff
	v_cndmask_b16 v110.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v242, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v242, v242
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v195, v195, v110
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v242, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v111.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v238, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v238, v238
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v197, v197, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v238, v3, 0x7fff
	v_cndmask_b16 v112.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v234, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v234, v234
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v191, v191, v112
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v234, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v113.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v230, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v230, v230
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v193, v193, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v230, v3, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v222, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v222, v222
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v3, v222, v3, 0x7fff
	v_cndmask_b16 v13.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v218, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v218, v218
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v3, v218, v3, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v218, v187, v106
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v14.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v214, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v214, v214
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v57, v165, v14
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v214, v3, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v214.l, v21.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v15.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v210, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v210, v210
	v_add3_u32 v3, v210, v3, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v210.l, v21.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v16.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v206, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v206, v206
	v_add3_u32 v3, v206, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v17.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v202, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v202, v202
	v_add3_u32 v3, v202, v3, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v202.l, v21.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v18.h, 0x7fff, v3.h, vcc_lo
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v3, v43, v58
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v43, v3, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v43, v3, v43, 0x7fff
	v_bfe_u32 v3, v7, 16, 1
	.loc	1 732 54 is_stmt 1              ; attention_backward.py:732:54
	v_mov_b16_e32 v43.l, v21.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v50, v7, v3, 0x7fff
	v_bfe_u32 v3, v40, 16, 1
	v_bfe_u32 v7, v41, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v50.l, v21.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v3, v40, v3, 0x7fff
	v_add3_u32 v7, v41, v7, 0x7fff
	v_bfe_u32 v40, v42, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v41.l, v21.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s11
	v_cndmask_b16 v3.h, 0x7fff, v43.h, vcc_lo
	v_add3_u32 v40, v42, v40, 0x7fff
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v55, v11
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v55, v3 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v3.l, 0x7fff, v7.h, s12
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v64, v3
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v3.h, 0x7fff, v50.h, s3
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s3, v1, v1
	v_bfe_u32 v7, v248, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v64, v3 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v3.l, 0x7fff, v40.h, s13
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v48, v3
	ds_store_b16 v48, v3 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v3, v9, 16, 1
	v_cmp_o_f32_e64 s11, v252, v252
	v_add3_u32 v7, v248, v7, 0x7fff
	v_cmp_o_f32_e64 s12, v248, v248
	v_cmp_o_f32_e64 s13, v244, v244
	v_add3_u32 v3, v9, v3, 0x7fff
	v_bfe_u32 v9, v244, 16, 1
	v_bfe_u32 v42, v204, 16, 1
	v_cndmask_b16 v62.h, 0x7fff, v7.h, s12
	v_bfe_u32 v7, v228, 16, 1
	v_cndmask_b16 v58.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v5, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_add3_u32 v9, v244, v9, 0x7fff
	v_add3_u32 v7, v228, v7, 0x7fff
	v_cmp_o_f32_e64 s12, v228, v228
	v_add3_u32 v3, v5, v3, 0x7fff
	v_bfe_u32 v5, v1, 16, 1
	v_cndmask_b16 v63.h, 0x7fff, v9.h, s13
	v_bfe_u32 v9, v224, 16, 1
	v_cmp_o_f32_e64 s13, v224, v224
	v_cndmask_b16 v59.h, 0x7fff, v3.h, vcc_lo
	v_add3_u32 v5, v1, v5, 0x7fff
	v_bfe_u32 v1, v252, 16, 1
	v_bfe_u32 v3, v236, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v240, v240
	v_add3_u32 v9, v224, v9, 0x7fff
	v_cndmask_b16 v60.h, 0x7fff, v5.h, s3
	v_add3_u32 v1, v252, v1, 0x7fff
	v_bfe_u32 v5, v232, 16, 1
	v_add3_u32 v3, v236, v3, 0x7fff
	v_cmp_o_f32_e64 s3, v236, v236
	v_cndmask_b16 v41.h, 0x7fff, v7.h, s12
	v_cndmask_b16 v61.h, 0x7fff, v1.h, s11
	v_bfe_u32 v1, v240, 16, 1
	v_add3_u32 v5, v232, v5, 0x7fff
	v_cmp_o_f32_e64 s11, v232, v232
	v_cndmask_b16 v214.h, 0x7fff, v3.h, s3
	v_bfe_u32 v3, v216, 16, 1
	v_add3_u32 v1, v240, v1, 0x7fff
	v_bfe_u32 v7, v208, 16, 1
	v_cndmask_b16 v40.h, 0x7fff, v5.h, s11
	v_bfe_u32 v5, v212, 16, 1
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s13
	v_cndmask_b16 v210.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v220, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v220, v220
	v_add3_u32 v3, v216, v3, 0x7fff
	v_cmp_o_f32_e64 s3, v216, v216
	v_add3_u32 v5, v212, v5, 0x7fff
	v_add3_u32 v1, v220, v1, 0x7fff
	v_cmp_o_f32_e64 s11, v212, v212
	v_add3_u32 v7, v208, v7, 0x7fff
	v_cmp_o_f32_e64 s12, v208, v208
	v_add3_u32 v42, v204, v42, 0x7fff
	v_cmp_o_f32_e64 s13, v204, v204
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[81:84], v26
	ds_load_b128 v[85:88], v85
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v56.h, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v51.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v52.h, 0x7fff, v5.h, s11
	v_cndmask_b16 v43.h, 0x7fff, v7.h, s12
	v_cndmask_b16 v50.h, 0x7fff, v42.h, s13
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v11.l, v21.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v113.l, v214.h
	v_mov_b16_e64 v112.l, v210.h
	v_mov_b16_e32 v111.l, v63.h
	v_mov_b16_e32 v110.l, v62.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v212, v201, v109
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v109.l, v61.h
	v_mov_b16_e32 v108.l, v60.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v216, v189, v107
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v107.l, v59.h
	v_mov_b16_e32 v106.l, v58.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v5, v157, v18
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v18.l, v50.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v7, v155, v17
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v17.l, v43.h
	v_wmma_f32_16x16x16_bf16 v[73:80], v[106:113], v[130:137], v[73:80]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v42, v161, v16
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v16.l, v52.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v26, v159, v15
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v15.l, v51.h
	v_mov_b16_e32 v14.l, v56.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v155, v163, v13
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v13.l, v9.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v157, v169, v12
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v12.l, v41.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v159, v167, v11
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v11.l, v40.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v3, v8, 16, 1
	v_cmp_o_f32_e64 s3, v8, v8
	v_cmp_o_f32_e64 s11, v6, v6
	v_bfe_u32 v1, v10, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[11:18], v[97:104], v[73:80]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v8, v3, 0x7fff
	v_bfe_u32 v8, v6, 16, 1
	v_cmp_o_f32_e64 s12, v4, v4
	v_add3_u32 v1, v10, v1, 0x7fff
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[106:113], v[81:88], v[73:80]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v106, v251, 16, 1
	v_add3_u32 v8, v6, v8, 0x7fff
	v_bfe_u32 v6, v4, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_cmp_o_f32_e64 s13, v2, v2
	v_add3_u32 v109, v251, v106, 0x7fff
	v_bfe_u32 v106, v249, 16, 1
	v_add3_u32 v6, v4, v6, 0x7fff
	v_bfe_u32 v4, v2, 16, 1
	v_bfe_u32 v10, v253, 16, 1
	v_cndmask_b16 v109.h, 0x7fff, v109.h, s16
	v_add3_u32 v139, v249, v106, 0x7fff
	v_bfe_u32 v106, v247, 16, 1
	v_add3_u32 v4, v2, v4, 0x7fff
	v_bfe_u32 v2, v255, 16, 1
	v_add3_u32 v10, v253, v10, 0x7fff
	v_cndmask_b16 v107.h, 0x7fff, v6.h, s12
	v_add3_u32 v110, v247, v106, 0x7fff
	v_bfe_u32 v106, v245, 16, 1
	v_add3_u32 v2, v255, v2, 0x7fff
	v_cndmask_b16 v224.h, 0x7fff, v139.h, s17
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v107.l, v21.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v110.h, 0x7fff, v110.h, s18
	v_add3_u32 v161, v245, v106, 0x7fff
	v_bfe_u32 v106, v243, 16, 1
	v_cndmask_b16 v108.h, 0x7fff, v2.h, s14
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v108.l, v21.l
	v_mov_b16_e32 v109.l, v21.l
	v_mov_b16_e32 v110.l, v21.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v111, v243, v106, 0x7fff
	v_bfe_u32 v106, v241, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v111.l, v21.l
	v_mov_b16_e64 v201.l, v21.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v175, v175, v110
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v111.h, 0x7fff, v111.h, s20
	v_add3_u32 v163, v241, v106, 0x7fff
	v_bfe_u32 v106, v239, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v110.l, v224.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v181, v181, v109
	v_sub_f32_e32 v177, v177, v111
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v226.h, 0x7fff, v163.h, s21
	v_add3_u32 v112, v239, v106, 0x7fff
	v_bfe_u32 v106, v237, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v112.l, v21.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v179, v179, v108
	v_sub_f32_e32 v185, v185, v107
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v112.h, 0x7fff, v112.h, s22
	v_add3_u32 v165, v237, v106, 0x7fff
	v_bfe_u32 v106, v235, 16, 1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s12, v216, v216
	v_cmp_o_f32_e64 s14, v199, v199
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v171, v171, v112
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v112.l, v226.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v113, v235, v106, 0x7fff
	v_bfe_u32 v106, v233, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v113.l, v21.l
	v_mov_b16_e64 v224.l, v21.l
	v_mov_b16_e32 v9.l, v21.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v113.h, 0x7fff, v113.h, s24
	v_add3_u32 v167, v233, v106, 0x7fff
	v_bfe_u32 v106, v231, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v40.l, v21.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v9, v162, v9
	v_sub_f32_e32 v173, v173, v113
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v167.l, v21.l
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v169, v231, v106, 0x7fff
	v_bfe_u32 v106, v229, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v169.l, v21.l
	v_mov_b16_e64 v165.l, v21.l
	v_mov_b16_e64 v163.l, v21.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v201.h, 0x7fff, v169.h, s26
	v_add3_u32 v189, v229, v106, 0x7fff
	v_bfe_u32 v106, v227, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v189.l, v21.l
	v_mov_b16_e64 v161.l, v21.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v139, v23, v201
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v189.h, 0x7fff, v189.h, s27
	v_add3_u32 v187, v227, v106, 0x7fff
	v_bfe_u32 v106, v225, 16, 1
	v_cndmask_b16 v227.h, 0x7fff, v165.h, s23
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v227.l, v21.l
	v_mov_b16_e64 v187.l, v21.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v202.h, 0x7fff, v187.h, s28
	v_add3_u32 v220, v225, v106, 0x7fff
	v_bfe_u32 v106, v223, 16, 1
	v_cndmask_b16 v225.h, 0x7fff, v161.h, s19
	v_cndmask_b16 v187.h, 0x7fff, v167.h, s25
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v113.l, v227.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v167.h, 0x7fff, v220.h, s29
	v_add3_u32 v204, v223, v106, 0x7fff
	v_bfe_u32 v106, v221, 16, 1
	v_cndmask_b16 v223.h, 0x7fff, v10.h, s15
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v204.l, v21.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v111.l, v225.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v25, v202
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v222, v221, v106, 0x7fff
	v_bfe_u32 v106, v219, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v109.l, v223.h
	v_mov_b16_e64 v202.l, v189.h
	v_mov_b16_e64 v201.l, v187.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v169.h, 0x7fff, v222.h, s31
	v_add3_u32 v206, v219, v106, 0x7fff
	v_bfe_u32 v106, v217, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v206.l, v21.l
	v_mov_b16_e64 v223.l, v21.l
	v_mov_b16_e64 v225.l, v21.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v219, v217, v106, 0x7fff
	v_bfe_u32 v106, v215, 16, 1
	v_cndmask_b16 v163.h, 0x7fff, v219.h, s34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v208, v215, v106, 0x7fff
	v_bfe_u32 v106, v213, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v208.l, v21.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v215, v213, v106, 0x7fff
	v_bfe_u32 v106, v211, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v165.h, 0x7fff, v215.h, s36
	v_add3_u32 v213, v211, v106, 0x7fff
	v_bfe_u32 v106, v209, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v213.l, v21.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v211, v209, v106, 0x7fff
	v_bfe_u32 v106, v207, 16, 1
	v_cndmask_b16 v161.h, 0x7fff, v211.h, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v209, v207, v106, 0x7fff
	v_bfe_u32 v106, v205, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v207.l, v21.l
	v_mov_b16_e64 v209.l, v21.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v207.h, 0x7fff, v209.h, s39
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v217, v205, v106, 0x7fff
	v_bfe_u32 v106, v203, 16, 1
	v_cndmask_b16 v205.h, 0x7fff, v208.h, s35
	v_cndmask_b16 v209.h, 0x7fff, v1.h, vcc_lo
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v205.l, v21.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v21.h, 0x7fff, v217.h, s40
	v_add3_u32 v221, v203, v106, 0x7fff
	v_cndmask_b16 v106.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v203.h, 0x7fff, v204.h, s30
	v_cndmask_b16 v204.h, 0x7fff, v206.h, s33
	v_cndmask_b16 v206.h, 0x7fff, v213.h, s37
	v_cndmask_b16 v208.h, 0x7fff, v221.h, s41
	v_cndmask_b16 v213.h, 0x7fff, v8.h, s11
	v_cndmask_b16 v221.h, 0x7fff, v4.h, s13
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v106.l, v21.l
	v_mov_b16_e64 v203.l, v21.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v39, v208
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v107.l, v213.h
	v_mov_b16_e64 v108.l, v221.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v183, v183, v106
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v106.l, v209.h
	v_mov_b16_e64 v208.l, v21.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v37, v207
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v207.l, v161.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v3, v47, v206
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[106:113], v[130:137], v[65:72]
	v_mov_b16_e64 v206.l, v165.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v4, v45, v205
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v205.l, v163.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v6, v153, v204
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v204.l, v169.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v8, v151, v203
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v203.l, v167.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v218, v218
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v221.l, v21.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[201:208], v[97:104], v[65:72]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[106:113], v[81:88], v[65:72]
	ds_load_b128 v[81:84], v138
	ds_load_b128 v[85:88], v148
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[11:18], v[81:88], v[73:80]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v12, v188, v59 :: v_dual_sub_f32 v11, v186, v58
	v_sub_f32_e32 v13, v198, v60
	v_dual_sub_f32 v15, v194, v62 :: v_dual_sub_f32 v14, v200, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v25, v12, 16, 1
	v_bfe_u32 v23, v11, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_bfe_u32 v37, v13, 16, 1
	v_cmp_o_f32_e64 s11, v12, v12
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_add3_u32 v25, v12, v25, 0x7fff
	v_bfe_u32 v12, v216, 16, 1
	v_add3_u32 v23, v11, v23, 0x7fff
	v_bfe_u32 v11, v218, 16, 1
	v_add3_u32 v37, v13, v37, 0x7fff
	v_cmp_o_f32_e64 s13, v13, v13
	v_bfe_u32 v13, v199, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v16, v196, v63
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v12, v216, v12, 0x7fff
	v_add3_u32 v11, v218, v11, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v25.h, s11
	v_add3_u32 v13, v199, v13, 0x7fff
	v_bfe_u32 v25, v15, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v23.h, vcc_lo
	v_cndmask_b16 v13.l, 0x7fff, v37.h, s13
	v_bfe_u32 v23, v14, 16, 1
	v_bfe_u32 v37, v16, 16, 1
	v_add3_u32 v25, v15, v25, 0x7fff
	v_cmp_o_f32_e64 s11, v15, v15
	v_bfe_u32 v15, v195, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v17, v190, v210
	v_sub_f32_e32 v18, v192, v214
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v23, v14, v23, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_bfe_u32 v14, v212, 16, 1
	v_add3_u32 v37, v16, v37, 0x7fff
	v_cmp_o_f32_e64 s13, v16, v16
	v_add3_u32 v15, v195, v15, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s3
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s12
	v_add3_u32 v14, v212, v14, 0x7fff
	v_cmp_o_f32_e64 s3, v212, v212
	v_cmp_o_f32_e64 s12, v195, v195
	v_cndmask_b16 v15.l, 0x7fff, v25.h, s11
	v_cndmask_b16 v16.l, 0x7fff, v37.h, s13
	v_bfe_u32 v25, v17, 16, 1
	v_bfe_u32 v37, v18, 16, 1
	v_cndmask_b16 v14.l, 0x7fff, v23.h, vcc_lo
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s3
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s12
	v_bfe_u32 v23, v197, 16, 1
	v_add3_u32 v25, v17, v25, 0x7fff
	v_cmp_o_f32_e64 s3, v17, v17
	v_bfe_u32 v17, v191, 16, 1
	v_add3_u32 v37, v18, v37, 0x7fff
	v_cmp_o_f32_e64 s12, v18, v18
	v_bfe_u32 v18, v193, 16, 1
	v_add3_u32 v23, v197, v23, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v197, v197
	v_add3_u32 v17, v191, v17, 0x7fff
	v_cmp_o_f32_e64 s11, v191, v191
	v_add3_u32 v18, v193, v18, 0x7fff
	v_cmp_o_f32_e64 s13, v193, v193
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s14
	v_cndmask_b16 v16.h, 0x7fff, v23.h, vcc_lo
	v_cndmask_b16 v17.l, 0x7fff, v25.h, s3
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s11
	v_cndmask_b16 v18.l, 0x7fff, v37.h, s12
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s13
	v_cmp_o_f32_e64 s3, v183, v183
	v_cmp_o_f32_e64 s12, v185, v185
	v_cmp_o_f32_e64 s14, v179, v179
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[201:208], v[81:88], v[65:72]
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[11:18], v[130:137], v[73:80]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v12, v184, v213
	v_sub_f32_e32 v11, v182, v209
	v_sub_f32_e32 v13, v178, v221
	v_dual_sub_f32 v15, v174, v224 :: v_dual_sub_f32 v14, v180, v223
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v25, v12, 16, 1
	v_bfe_u32 v23, v11, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_bfe_u32 v37, v13, 16, 1
	v_cmp_o_f32_e64 s11, v12, v12
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_add3_u32 v25, v12, v25, 0x7fff
	v_bfe_u32 v12, v185, 16, 1
	v_add3_u32 v23, v11, v23, 0x7fff
	v_bfe_u32 v11, v183, 16, 1
	v_add3_u32 v37, v13, v37, 0x7fff
	v_cmp_o_f32_e64 s13, v13, v13
	v_bfe_u32 v13, v179, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v16, v176, v225
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v12, v185, v12, 0x7fff
	v_add3_u32 v11, v183, v11, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v25.h, s11
	v_add3_u32 v13, v179, v13, 0x7fff
	v_bfe_u32 v25, v15, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v23.h, vcc_lo
	v_cndmask_b16 v13.l, 0x7fff, v37.h, s13
	v_bfe_u32 v23, v14, 16, 1
	v_bfe_u32 v37, v16, 16, 1
	v_add3_u32 v25, v15, v25, 0x7fff
	v_cmp_o_f32_e64 s11, v15, v15
	v_bfe_u32 v15, v175, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v17, v170, v226 :: v_dual_sub_f32 v18, v172, v227
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v23, v14, v23, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_bfe_u32 v14, v181, 16, 1
	v_add3_u32 v37, v16, v37, 0x7fff
	v_cmp_o_f32_e64 s13, v16, v16
	v_add3_u32 v15, v175, v15, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s3
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s12
	v_add3_u32 v14, v181, v14, 0x7fff
	v_cmp_o_f32_e64 s3, v181, v181
	v_cmp_o_f32_e64 s12, v175, v175
	v_cndmask_b16 v15.l, 0x7fff, v25.h, s11
	v_cndmask_b16 v16.l, 0x7fff, v37.h, s13
	v_bfe_u32 v25, v17, 16, 1
	v_bfe_u32 v37, v18, 16, 1
	v_cndmask_b16 v14.l, 0x7fff, v23.h, vcc_lo
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s3
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s12
	v_bfe_u32 v23, v177, 16, 1
	v_add3_u32 v25, v17, v25, 0x7fff
	v_cmp_o_f32_e64 s3, v17, v17
	v_bfe_u32 v17, v171, 16, 1
	v_add3_u32 v37, v18, v37, 0x7fff
	v_cmp_o_f32_e64 s12, v18, v18
	v_bfe_u32 v18, v173, 16, 1
	v_add3_u32 v23, v177, v23, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v177, v177
	v_add3_u32 v17, v171, v17, 0x7fff
	v_cmp_o_f32_e64 s11, v171, v171
	v_add3_u32 v18, v173, v18, 0x7fff
	v_cmp_o_f32_e64 s13, v173, v173
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s14
	v_cndmask_b16 v16.h, 0x7fff, v23.h, vcc_lo
	v_cndmask_b16 v17.l, 0x7fff, v25.h, s3
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s11
	v_cndmask_b16 v18.l, 0x7fff, v37.h, s12
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s13
	v_bfe_u32 v25, v9, 16, 1
	v_cmp_o_f32_e64 s13, v9, v9
	v_cmp_o_f32_e64 s14, v155, v155
	v_cmp_o_f32_e64 s3, v159, v159
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[11:18], v[130:137], v[65:72]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v12, v168, v41 :: v_dual_sub_f32 v11, v166, v40
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v25, v9, v25, 0x7fff
	v_bfe_u32 v9, v155, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v15, v158, v51
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v23, v12, 16, 1
	v_bfe_u32 v13, v11, 16, 1
	v_cmp_o_f32_e64 s11, v12, v12
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v14, v164, v56
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v23, v12, v23, 0x7fff
	v_bfe_u32 v12, v157, 16, 1
	v_add3_u32 v13, v11, v13, 0x7fff
	v_bfe_u32 v11, v159, 16, 1
	v_add3_u32 v9, v155, v9, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v17, v154, v43
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v12, v157, v12, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v23.h, s11
	v_add3_u32 v11, v159, v11, 0x7fff
	v_bfe_u32 v23, v15, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v13.h, vcc_lo
	v_cndmask_b16 v13.h, 0x7fff, v9.h, s14
	v_bfe_u32 v9, v14, 16, 1
	v_cmp_o_f32_e64 s11, v15, v15
	v_add3_u32 v23, v15, v23, 0x7fff
	v_bfe_u32 v15, v26, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_add3_u32 v9, v14, v9, 0x7fff
	v_bfe_u32 v14, v57, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s3
	v_add3_u32 v15, v26, v15, 0x7fff
	v_cmp_o_f32_e64 s3, v57, v57
	v_cndmask_b16 v15.l, 0x7fff, v23.h, s11
	v_add3_u32 v14, v57, v14, 0x7fff
	v_bfe_u32 v23, v17, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v16, v160, v52
	v_sub_f32_e32 v18, v156, v50
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s12, v157, v157
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s3
	v_add3_u32 v23, v17, v23, 0x7fff
	v_cmp_o_f32_e64 s3, v17, v17
	v_bfe_u32 v17, v7, 16, 1
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s12
	v_cndmask_b16 v13.l, 0x7fff, v25.h, s13
	v_cmp_o_f32_e64 s12, v26, v26
	v_bfe_u32 v25, v16, 16, 1
	v_add3_u32 v17, v7, v17, 0x7fff
	v_cmp_o_f32_e64 s11, v7, v7
	v_bfe_u32 v7, v18, 16, 1
	v_cmp_o_f32_e64 s13, v16, v16
	v_add3_u32 v25, v16, v25, 0x7fff
	v_cndmask_b16 v14.l, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s12
	v_bfe_u32 v9, v42, 16, 1
	v_add3_u32 v7, v18, v7, 0x7fff
	v_cmp_o_f32_e64 s12, v18, v18
	v_bfe_u32 v18, v5, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v25.h, s13
	v_add3_u32 v9, v42, v9, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_cmp_o_f32_e64 s13, v5, v5
	v_add3_u32 v18, v5, v18, 0x7fff
	v_cndmask_b16 v17.l, 0x7fff, v23.h, s3
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s11
	v_cndmask_b16 v16.h, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v18.l, 0x7fff, v7.h, s12
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s13
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v7, v24, v189
	v_sub_f32_e32 v5, v22, v187
	v_sub_f32_e32 v9, v150, v167
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v139, v139
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[11:18], v[97:104], v[73:80]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v17, v7, 16, 1
	v_bfe_u32 v16, v5, 16, 1
	v_cmp_o_f32_e64 s11, v7, v7
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v152, v169
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v17, v7, v17, 0x7fff
	v_bfe_u32 v7, v10, 16, 1
	v_add3_u32 v16, v5, v16, 0x7fff
	v_bfe_u32 v5, v139, 16, 1
	v_cmp_o_f32_e64 s12, v10, v10
	v_cmp_o_f32_e64 s13, v9, v9
	v_add3_u32 v18, v10, v7, 0x7fff
	v_bfe_u32 v7, v9, 16, 1
	v_add3_u32 v5, v139, v5, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v13, v46, v165 :: v_dual_sub_f32 v12, v44, v163
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v8, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v10, v9, v7, 0x7fff
	v_bfe_u32 v7, v8, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v14, v36, v161
	v_dual_sub_f32 v15, v38, v21 :: v_dual_mov_b32 v44, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v9, v8, v7, 0x7fff
	v_cndmask_b16 v7.h, 0x7fff, v5.h, s3
	v_bfe_u32 v5, v11, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v16.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_cndmask_b16 v8.h, 0x7fff, v18.h, s12
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s13
	v_add3_u32 v5, v11, v5, 0x7fff
	v_bfe_u32 v11, v4, 16, 1
	v_bfe_u32 v10, v6, 16, 1
	v_cmp_o_f32_e64 s12, v4, v4
	v_cmp_o_f32_e64 s3, v6, v6
	v_cmp_o_f32_e64 s13, v13, v13
	v_add3_u32 v11, v4, v11, 0x7fff
	v_bfe_u32 v4, v13, 16, 1
	v_add3_u32 v10, v6, v10, 0x7fff
	v_bfe_u32 v6, v12, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v17.h, s11
	v_cmp_o_f32_e64 s11, v12, v12
	v_add3_u32 v4, v13, v4, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v5.h, vcc_lo
	v_add3_u32 v6, v12, v6, 0x7fff
	v_bfe_u32 v5, v2, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_cndmask_b16 v12.l, 0x7fff, v4.h, s13
	v_bfe_u32 v4, v3, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v6.h, s11
	v_add3_u32 v5, v2, v5, 0x7fff
	v_cmp_o_f32_e64 s11, v2, v2
	v_bfe_u32 v2, v15, 16, 1
	v_add3_u32 v4, v3, v4, 0x7fff
	v_bfe_u32 v3, v14, 16, 1
	v_bfe_u32 v6, v1, 16, 1
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s3
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s12
	v_cmp_o_f32_e64 s3, v14, v14
	v_add3_u32 v3, v14, v3, 0x7fff
	v_add3_u32 v2, v15, v2, 0x7fff
	v_cmp_o_f32_e64 s12, v15, v15
	v_add3_u32 v6, v1, v6, 0x7fff
	v_cmp_o_f32_e64 s13, v1, v1
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s14
	v_cndmask_b16 v12.h, 0x7fff, v4.h, vcc_lo
	v_cndmask_b16 v13.l, 0x7fff, v3.h, s3
	v_cndmask_b16 v13.h, 0x7fff, v5.h, s11
	v_cndmask_b16 v14.l, 0x7fff, v2.h, s12
	v_cndmask_b16 v14.h, 0x7fff, v6.h, s13
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[7:14], v[97:104], v[65:72]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 663 37                        ; attention_backward.py:663:37
	scratch_load_b32 v0, off, off offset:612 ; 4-byte Folded Reload
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s3, s83, 1
	s_or_b32 s11, s83, 2
	s_or_b32 s12, s83, 3
	s_or_b32 s13, s83, 4
	s_or_b32 s14, s83, 5
	s_or_b32 s15, s83, 6
	s_or_b32 s16, s83, 7
	s_or_b32 s17, s83, 8
	s_or_b32 s18, s83, 9
	s_or_b32 s19, s83, 10
	s_or_b32 s20, s83, 11
	s_or_b32 s21, s83, 12
	s_or_b32 s22, s83, 13
	s_or_b32 s23, s83, 14
	s_or_b32 s24, s83, 15
	s_or_b32 s25, s83, 16
	s_or_b32 s26, s83, 17
	s_or_b32 s27, s83, 18
	s_or_b32 s28, s83, 19
	s_or_b32 s29, s83, 20
	s_or_b32 s30, s83, 21
	s_or_b32 s31, s83, 22
	s_or_b32 s33, s83, 23
	s_or_b32 s34, s83, 24
	s_or_b32 s35, s83, 25
	s_or_b32 s36, s83, 26
	s_or_b32 s37, s83, 27
	s_or_b32 s38, s83, 28
	s_or_b32 s41, s83, 29
	s_or_b32 s104, s83, 30
	s_or_b32 vcc_lo, s83, 31
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s83, s42
	scratch_load_b32 v9, off, off offset:836 ; 4-byte Folded Reload
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s3, s42
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v109, v105
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s11, s42
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v111, v105
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s103, -1, 0
	s_cmp_lt_i32 s12, s42
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v106, v105
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s102, -1, 0
	s_cmp_lt_i32 s13, s42
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v108, v105
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s101, -1, 0
	s_cmp_lt_i32 s14, s42
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v110, v105
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s100, -1, 0
	s_cmp_lt_i32 s15, s42
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v112, v105
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s99, -1, 0
	s_cmp_lt_i32 s16, s42
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v107, v105
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s98, -1, 0
	s_cmp_lt_i32 s17, s42
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v28, v105
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s97, -1, 0
	s_cmp_lt_i32 s18, s42
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v29, v106
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s96, -1, 0
	s_cmp_lt_i32 s19, s42
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v31, v108
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s20, s42
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v33, v110
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s21, s42
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v35, v112
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s22, s42
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v30, v107
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s23, s42
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v32, v109
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s24, s42
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v34, v111
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s25, s42
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s26, s42
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s27, s42
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s28, s42
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s29, s42
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s30, s42
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s31, s42
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s33, s42
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s34, s42
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s35, s42
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s36, s42
	s_cselect_b32 s40, -1, 0
	s_cmp_lt_i32 s37, s42
	s_cselect_b32 s39, -1, 0
	s_cmp_lt_i32 s38, s42
	s_cselect_b32 s38, -1, 0
	s_cmp_lt_i32 s41, s42
	s_cselect_b32 s37, -1, 0
	s_cmp_lt_i32 s104, s42
	s_cselect_b32 s36, -1, 0
	s_cmp_lt_i32 vcc_lo, s42
	s_cselect_b32 s35, -1, 0
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_add_i32 s41, s83, s82
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s59
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_mul_i32 s3, s41, s70
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v1, s3, v44, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v2, s3, v0, 1
	scratch_load_b32 v0, off, off offset:628 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s103
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_u16 v113, v1, s[60:63], 0 offen
	buffer_load_u16 v114, v2, s[60:63], 0 offen
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s101
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v1, s3, v0, 1
	scratch_load_b32 v0, off, off offset:644 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s99
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v115, v1, s[60:63], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s3, v0, 1
	scratch_load_b32 v0, off, off offset:660 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s97
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v116, v1, s[60:63], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s3, v0, 1
	scratch_load_b32 v0, off, off offset:676 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s95
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s3, v0, 1
	scratch_load_b32 v0, off, off offset:692 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_u16 v117, v1, s[60:63], 0 offen
	buffer_load_u16 v118, v2, s[60:63], 0 offen
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s93
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v1, s3, v0, 1
	scratch_load_b32 v0, off, off offset:708 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s91
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v119, v1, s[60:63], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s3, v0, 1
	scratch_load_b32 v0, off, off offset:724 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s89
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v120, v1, s[60:63], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s3, v0, 1
	scratch_load_b32 v0, off, off offset:740 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s87
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s3, v0, 1
	scratch_load_b32 v0, off, off offset:756 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_u16 v121, v1, s[60:63], 0 offen
	buffer_load_u16 v122, v2, s[60:63], 0 offen
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s85
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v1, s3, v0, 1
	scratch_load_b32 v0, off, off offset:772 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s67
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v123, v1, s[60:63], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s3, v0, 1
	scratch_load_b32 v0, off, off offset:788 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s55
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v124, v1, s[60:63], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s3, v0, 1
	scratch_load_b32 v0, off, off offset:804 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s40
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s3, v0, 1
	scratch_load_b32 v0, off, off offset:820 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_u16 v125, v1, s[60:63], 0 offen
	buffer_load_u16 v126, v2, s[60:63], 0 offen
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s38
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v1, s3, v0, 1
	scratch_load_b32 v0, off, off offset:604 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s36
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v127, v1, s[60:63], 0 offen
	v_add_lshl_u32 v1, s3, v9, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s58
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v128, v1, s[60:63], 0 offen
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v1, s3, v0, 1
	scratch_load_b32 v0, off, off offset:620 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s102
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s3, v0, 1
	scratch_load_b32 v0, off, off offset:636 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s100
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v3, s3, v0, 1
	scratch_load_b32 v0, off, off offset:668 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s96
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v4, s3, v0, 1
	scratch_load_b32 v0, off, off offset:684 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s94
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v5, s3, v0, 1
	scratch_load_b32 v0, off, off offset:700 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s92
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v6, s3, v0, 1
	scratch_load_b32 v0, off, off offset:652 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s98
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v7, s3, v0, 1
	scratch_load_b32 v0, off, off offset:716 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s90
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v8, s3, v0, 1
	scratch_load_b32 v0, off, off offset:732 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x7
	buffer_load_u16 v43, v7, s[60:63], 0 offen
	buffer_load_u16 v21, v3, s[60:63], 0 offen
	buffer_load_u16 v26, v2, s[60:63], 0 offen
	buffer_load_u16 v50, v1, s[60:63], 0 offen
	buffer_load_u16 v129, v8, s[60:63], 0 offen
	buffer_load_u16 v130, v6, s[60:63], 0 offen
	buffer_load_u16 v131, v5, s[60:63], 0 offen
	buffer_load_u16 v132, v4, s[60:63], 0 offen
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s88
	v_add_nc_u32_e32 v8, s70, v9
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v8, s3, v8, 1
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v1, s3, v0, 1
	scratch_load_b32 v0, off, off offset:748 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s86
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s3, v0, 1
	scratch_load_b32 v0, off, off offset:796 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s54
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v3, s3, v0, 1
	scratch_load_b32 v0, off, off offset:764 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s84
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v4, s3, v0, 1
	scratch_load_b32 v0, off, off offset:812 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s39
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v5, s3, v0, 1
	scratch_load_b32 v0, off, off offset:828 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s37
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v6, s3, v0, 1
	scratch_load_b32 v0, off, off offset:780 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s66
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v7, s3, v0, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s2, s35
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x7
	buffer_load_u16 v133, v7, s[60:63], 0 offen
	buffer_load_u16 v134, v4, s[60:63], 0 offen
	buffer_load_u16 v135, v2, s[60:63], 0 offen
	buffer_load_u16 v137, v1, s[60:63], 0 offen
	buffer_load_u16 v136, v8, s[60:63], 0 offen
	buffer_load_u16 v40, v6, s[60:63], 0 offen
	buffer_load_u16 v41, v5, s[60:63], 0 offen
	buffer_load_u16 v42, v3, s[60:63], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	ds_store_b16 v49, v113
	ds_store_b16 v49, v117 offset:1024
	ds_store_b16 v49, v121 offset:2048
	ds_store_b16 v49, v125 offset:3072
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_and_not1_b32 vcc_lo, exec_lo, s74
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v50
	ds_store_b16 v0, v132 offset:1024
	ds_store_b16 v0, v137 offset:2048
	ds_store_b16 v0, v42 offset:3072
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v114
	ds_store_b16 v0, v118 offset:1024
	ds_store_b16 v0, v122 offset:2048
	ds_store_b16 v0, v126 offset:3072
	scratch_load_b32 v0, off, off offset:8  ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v26
	ds_store_b16 v0, v131 offset:1024
	ds_store_b16 v0, v135 offset:2048
	ds_store_b16 v0, v41 offset:3072
	ds_store_b16 v19, v115
	ds_store_b16 v19, v119 offset:1024
	ds_store_b16 v19, v123 offset:2048
	ds_store_b16 v19, v127 offset:3072
	ds_store_b16 v53, v21
	ds_store_b16 v53, v130 offset:1024
	ds_store_b16 v53, v134 offset:2048
	ds_store_b16 v53, v40 offset:3072
	ds_store_b16 v20, v116
	ds_store_b16 v20, v120 offset:1024
	ds_store_b16 v20, v124 offset:2048
	ds_store_b16 v20, v128 offset:3072
	ds_store_b16 v54, v43
	ds_store_b16 v54, v129 offset:1024
	ds_store_b16 v54, v133 offset:2048
	ds_store_b16 v54, v136 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 36-byte Folded Reload
	scratch_load_b32 v0, off, off offset:320
	scratch_load_b128 v[9:12], off, off offset:16
	scratch_load_b128 v[13:16], off, off offset:32
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v1, 0, v0
	scratch_load_b32 v0, off, off offset:336 ; 4-byte Folded Reload
	ds_load_b128 v[1:4], v1
	s_waitcnt vmcnt(0)
	ds_load_b128 v[5:8], v0
	scratch_load_b32 v0, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[28:35], v[9:16], v[1:8], v[28:35]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[9:12], off, off offset:48
	scratch_load_b128 v[13:16], off, off offset:64
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	ds_load_b128 v[1:4], v0
	scratch_load_b32 v0, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[5:8], v0
	scratch_load_b32 v0, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[28:35], v[9:16], v[1:8], v[28:35]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[9:12], off, off offset:80
	scratch_load_b128 v[13:16], off, off offset:96
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	ds_load_b128 v[1:4], v0
	scratch_load_b32 v0, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[5:8], v0
	scratch_load_b32 v0, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[28:35], v[9:16], v[1:8], v[28:35]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[9:12], off, off offset:112
	scratch_load_b128 v[13:16], off, off offset:128
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	ds_load_b128 v[1:4], v0
	scratch_load_b32 v0, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[5:8], v0
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[28:35], v[9:16], v[1:8], v[28:35]
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s83, v149
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s3, s42, v1
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v1, s47, v1
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s34, s0, s3
	s_and_b32 s33, s1, s3
	s_and_b32 s31, s4, s3
	s_and_b32 s30, s5, s3
	s_and_b32 s29, s6, s3
	s_and_b32 s28, s7, s3
	s_and_b32 s27, s8, s3
	s_and_b32 s26, s9, s3
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	scratch_load_b32 v0, off, off offset:288 ; 4-byte Folded Reload
	s_and_not1_b32 s19, s34, exec_lo
	s_and_not1_b32 s20, s33, exec_lo
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v0, v1
	scratch_load_b32 v0, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s18, s34, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s18, s18, exec_lo
	s_or_b32 s34, s19, s18
	s_and_not1_b32 s18, s30, exec_lo
	.loc	1 676 30                        ; attention_backward.py:676:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s11, v0, v1
	scratch_load_b32 v0, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s11, s33, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s11, s11, exec_lo
	s_or_b32 s33, s20, s11
	s_and_not1_b32 s11, s31, exec_lo
	.loc	1 676 30                        ; attention_backward.py:676:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s12, v0, v1
	scratch_load_b32 v0, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s12, s31, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s12, s12, exec_lo
	s_or_b32 s31, s11, s12
	s_and_not1_b32 s11, s29, exec_lo
	.loc	1 676 30                        ; attention_backward.py:676:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s13, v0, v1
	scratch_load_b32 v0, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s13, s30, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s13, s13, exec_lo
	s_or_b32 s30, s18, s13
	s_and_not1_b32 s13, s28, exec_lo
	.loc	1 676 30                        ; attention_backward.py:676:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s14, v0, v1
	scratch_load_b32 v0, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s14, s29, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s12, s14, exec_lo
	s_or_b32 s29, s11, s12
	s_and_not1_b32 s11, s27, exec_lo
	.loc	1 676 30                        ; attention_backward.py:676:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s15, v0, v1
	scratch_load_b32 v0, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s15, s28, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s28, s13, s14
	s_and_not1_b32 s13, s26, exec_lo
	.loc	1 676 30                        ; attention_backward.py:676:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s16, v0, v1
	scratch_load_b32 v0, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s16, s27, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s12, s16, exec_lo
	s_or_b32 s27, s11, s12
	.loc	1 676 30                        ; attention_backward.py:676:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s17, v0, v1
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s17, s26, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s26, s13, s14
.LBB0_10:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 677 17 is_stmt 1              ; attention_backward.py:677:17
	s_and_not1_b32 vcc_lo, exec_lo, s73
	s_cbranch_vccnz .LBB0_7
; %bb.11:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 17 is_stmt 0                ; attention_backward.py:0:17
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v0, off, off offset:288
	scratch_load_b32 v3, off, off offset:292
	scratch_load_b32 v4, off, off offset:296
	scratch_load_b32 v5, off, off offset:300
	scratch_load_b32 v6, off, off offset:304
	scratch_load_b32 v7, off, off offset:308
	scratch_load_b32 v8, off, off offset:312
	scratch_load_b32 v9, off, off offset:316
	.loc	1 678 47 is_stmt 1              ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v2, s45, v1
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v1, s46, v1
	.loc	1 678 30                        ; attention_backward.py:678:30
	s_waitcnt vmcnt(7)
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_ge_i32_e32 vcc_lo, v0, v2
	s_waitcnt vmcnt(6)
	v_cmp_ge_i32_e64 s11, v3, v2
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s18, v0, v1
	v_cmp_le_i32_e64 s19, v3, v1
	.loc	1 678 30                        ; attention_backward.py:678:30
	s_waitcnt vmcnt(5)
	v_cmp_ge_i32_e64 s12, v4, v2
	s_waitcnt vmcnt(4)
	v_cmp_ge_i32_e64 s13, v5, v2
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s20, v4, v1
	v_cmp_le_i32_e64 s21, v5, v1
	.loc	1 678 30                        ; attention_backward.py:678:30
	s_waitcnt vmcnt(3)
	v_cmp_ge_i32_e64 s14, v6, v2
	s_waitcnt vmcnt(2)
	v_cmp_ge_i32_e64 s15, v7, v2
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s22, v6, v1
	v_cmp_le_i32_e64 s23, v7, v1
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s18, vcc_lo, s18
	s_and_b32 s11, s11, s19
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	s_waitcnt vmcnt(1)
	v_cmp_ge_i32_e64 s16, v8, v2
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s17, v9, v2
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s24, v8, v1
	v_cmp_le_i32_e64 s25, v9, v1
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s18, s18, s34
	s_and_b32 s11, s11, s33
	s_and_b32 s12, s12, s20
	s_and_b32 s13, s13, s21
	s_and_b32 s12, s12, s31
	s_and_b32 s13, s13, s30
	s_and_b32 s14, s14, s22
	s_and_b32 s15, s15, s23
	s_and_not1_b32 s19, s34, exec_lo
	s_and_b32 s18, s18, exec_lo
	s_and_not1_b32 s20, s33, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_b32 s14, s14, s29
	s_and_b32 s15, s15, s28
	s_and_b32 s16, s16, s24
	s_and_b32 s17, s17, s25
	s_or_b32 s34, s19, s18
	s_or_b32 s33, s20, s11
	s_and_not1_b32 s11, s31, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s18, s30, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s27
	s_and_b32 s17, s17, s26
	s_or_b32 s31, s11, s12
	s_or_b32 s30, s18, s13
	s_and_not1_b32 s11, s29, exec_lo
	s_and_b32 s12, s14, exec_lo
	s_and_not1_b32 s13, s28, exec_lo
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s29, s11, s12
	s_or_b32 s28, s13, s14
	s_and_not1_b32 s11, s27, exec_lo
	s_and_b32 s12, s16, exec_lo
	s_and_not1_b32 s13, s26, exec_lo
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s27, s11, s12
	s_or_b32 s26, s13, s14
	s_branch .LBB0_7
.LBB0_12:                               ; %Flow398
	.loc	1 0 21                          ; attention_backward.py:0:21
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v36, off, off offset:844
	scratch_load_b32 v17, off, off offset:848
	scratch_load_b32 v18, off, off offset:852
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
	v_mov_b32_e32 v147, v72
	v_mov_b32_e32 v146, v72
	v_mov_b32_e32 v145, v72
	v_mov_b32_e32 v144, v72
	v_mov_b32_e32 v143, v72
	v_mov_b32_e32 v142, v72
	v_mov_b32_e32 v141, v72
	v_mov_b32_e32 v140, v72
	v_mov_b32_e32 v96, v72
	v_mov_b32_e32 v95, v72
	v_mov_b32_e32 v94, v72
	v_mov_b32_e32 v93, v72
	v_mov_b32_e32 v92, v72
	v_mov_b32_e32 v91, v72
	v_mov_b32_e32 v90, v72
	v_mov_b32_e32 v89, v72
.LBB0_14:                               ; %._crit_edge102
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, v17, v18
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v16, s70, v36
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s72, v36
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s37, s49, 0xffff
	s_mov_b32 s39, 0x31027000
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v15, 2, v1
	v_or_b32_e32 v14, 4, v1
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s43, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s16, s70, v1
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v17, v16, v1
	v_add_nc_u32_e32 v18, v16, v15
	v_add_nc_u32_e32 v19, v16, v14
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s17, s70, v15
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v13, 6, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v17, v17, s69, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s18, s70, v14
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v18, v18, s69, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v12, 8, v1
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s16
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v19, v19, s69, 2
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
	v_cmp_gt_i32_e64 s19, s70, v13
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_mov_b32 s36, s48
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v22, v16, v11
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s20, s70, v12
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v89, v17, s[36:39], 0 offen
	v_add_lshl_u32 v17, v20, s69, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v9, 14, v1
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v23, v16, v10
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s21, s70, v11
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v90, v18, s[36:39], 0 offen
	buffer_store_b32 v91, v19, s[36:39], 0 offen
	v_add_lshl_u32 v18, v21, s69, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v8, 32, v1
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s19
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s22, s70, v10
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	v_add_lshl_u32 v19, v22, s69, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v7, 34, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s20
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v24, v16, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v23, s69, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v6, 36, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s21
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v25, v16, v8
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s23, s70, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s22
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v26, v16, v7
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s24, s70, v8
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s16
	s_clause 0x1
	buffer_store_b32 v92, v17, s[36:39], 0 offen
	buffer_store_b32 v93, v18, s[36:39], 0 offen
	v_add_lshl_u32 v17, v24, s69, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v5, 38, v1
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v27, v16, v6
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s25, s70, v7
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v18, v25, s69, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v4, 40, v1
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s23
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s26, s70, v6
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v94, v19, s[36:39], 0 offen
	buffer_store_b32 v95, v20, s[36:39], 0 offen
	v_add_lshl_u32 v19, v26, s69, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v21, s68, v36
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v3, 42, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s24
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v28, v16, v5
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v27, s69, 2
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
	v_cmp_gt_i32_e64 s27, s70, v5
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s26
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v30, v16, v3
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s28, s70, v4
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s16
	s_clause 0x1
	buffer_store_b32 v96, v17, s[36:39], 0 offen
	buffer_store_b32 v140, v18, s[36:39], 0 offen
	v_add_lshl_u32 v17, v28, s69, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s15, s68, v1
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v31, v16, v2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v1, v21, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s29, s70, v3
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v18, v29, s69, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v16, v16, v0
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s27
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s30, s70, v2
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v141, v19, s[36:39], 0 offen
	buffer_store_b32 v142, v20, s[36:39], 0 offen
	v_add_lshl_u32 v19, v30, s69, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s28
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s31, s70, v0
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v31, s69, 2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v1, v1, s71, 2
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s29
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v16, v16, s69, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s30
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s15, vcc_lo, s15
	.loc	1 580 44 is_stmt 0              ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s12, s68, v13
	v_cmp_gt_i32_e64 s14, s68, v15
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
	v_cmp_gt_i32_e64 s11, s68, v12
	v_cmp_gt_i32_e64 s13, s68, v14
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v14, v21, v14
	v_add_nc_u32_e32 v12, v21, v12
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v16, 0x80000000, v16, s16
	s_clause 0x4
	buffer_store_b32 v143, v17, s[36:39], 0 offen
	buffer_store_b32 v144, v18, s[36:39], 0 offen
	buffer_store_b32 v145, v19, s[36:39], 0 offen
	buffer_store_b32 v146, v20, s[36:39], 0 offen
	buffer_store_b32 v147, v16, s[36:39], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s37, s51, 0xffff
	s_mov_b32 s36, s50
	v_add_lshl_u32 v15, v15, s71, 2
	buffer_store_b32 v73, v1, s[36:39], 0 offen
	v_add_lshl_u32 v1, v13, s71, 2
	v_add_lshl_u32 v14, v14, s71, 2
	v_add_lshl_u32 v12, v12, s71, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s14, vcc_lo, s14
	s_and_b32 s12, vcc_lo, s12
	s_and_b32 s13, vcc_lo, s13
	s_and_b32 s11, vcc_lo, s11
	.loc	1 580 44 is_stmt 0              ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s8, s68, v9
	v_cmp_gt_i32_e64 s10, s68, v11
	.loc	1 759 13 is_stmt 1              ; attention_backward.py:759:13
	v_add_nc_u32_e32 v11, v21, v11
	v_add_nc_u32_e32 v9, v21, v9
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v15, 0x80000000, v15, s14
	v_cndmask_b32_e64 v1, 0x80000000, v1, s12
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s7, s68, v8
	v_cmp_gt_i32_e64 s9, s68, v10
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v10, v21, v10
	v_add_nc_u32_e32 v8, v21, v8
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v14, 0x80000000, v14, s13
	v_cndmask_b32_e64 v12, 0x80000000, v12, s11
	s_clause 0x1
	buffer_store_b32 v74, v15, s[36:39], 0 offen
	buffer_store_b32 v75, v14, s[36:39], 0 offen
	v_add_lshl_u32 v11, v11, s71, 2
	s_clause 0x1
	buffer_store_b32 v76, v1, s[36:39], 0 offen
	buffer_store_b32 v77, v12, s[36:39], 0 offen
	v_add_lshl_u32 v1, v9, s71, 2
	v_add_lshl_u32 v10, v10, s71, 2
	v_add_lshl_u32 v8, v8, s71, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s10, vcc_lo, s10
	s_and_b32 s8, vcc_lo, s8
	s_and_b32 s9, vcc_lo, s9
	s_and_b32 s7, vcc_lo, s7
	.loc	1 580 44 is_stmt 0              ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s4, s68, v5
	v_cmp_gt_i32_e64 s6, s68, v7
	.loc	1 759 13 is_stmt 1              ; attention_backward.py:759:13
	v_add_nc_u32_e32 v7, v21, v7
	v_add_nc_u32_e32 v5, v21, v5
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v11, 0x80000000, v11, s10
	v_cndmask_b32_e64 v1, 0x80000000, v1, s8
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s3, s68, v4
	v_cmp_gt_i32_e64 s5, s68, v6
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v6, v21, v6
	v_add_nc_u32_e32 v4, v21, v4
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v10, 0x80000000, v10, s9
	v_cndmask_b32_e64 v8, 0x80000000, v8, s7
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s2, s68, v3
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v3, v21, v3
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s1, s68, v2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v2, v21, v2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s0, s68, v0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v0, v21, v0
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_clause 0x1
	buffer_store_b32 v78, v11, s[36:39], 0 offen
	buffer_store_b32 v79, v10, s[36:39], 0 offen
	v_add_lshl_u32 v7, v7, s71, 2
	s_clause 0x1
	buffer_store_b32 v80, v1, s[36:39], 0 offen
	buffer_store_b32 v65, v8, s[36:39], 0 offen
	v_add_lshl_u32 v1, v5, s71, 2
	v_add_lshl_u32 v6, v6, s71, 2
	v_add_lshl_u32 v4, v4, s71, 2
	v_add_lshl_u32 v3, v3, s71, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s6, vcc_lo, s6
	s_and_b32 s4, vcc_lo, s4
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v2, v2, s71, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s5, vcc_lo, s5
	s_and_b32 s3, vcc_lo, s3
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v0, v0, s71, 2
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
	buffer_store_b32 v66, v7, s[36:39], 0 offen
	buffer_store_b32 v67, v6, s[36:39], 0 offen
	buffer_store_b32 v68, v1, s[36:39], 0 offen
	buffer_store_b32 v69, v4, s[36:39], 0 offen
	buffer_store_b32 v70, v3, s[36:39], 0 offen
	buffer_store_b32 v71, v2, s[36:39], 0 offen
	buffer_store_b32 v72, v0, s[36:39], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 860
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 860
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 24580
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 860
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 860
    .sgpr_count:     107
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 214
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
