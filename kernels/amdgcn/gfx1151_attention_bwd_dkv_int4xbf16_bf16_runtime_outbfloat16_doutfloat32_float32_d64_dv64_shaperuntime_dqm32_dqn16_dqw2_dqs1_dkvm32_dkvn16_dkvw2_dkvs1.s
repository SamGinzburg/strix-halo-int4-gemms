	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[36:39], s[0:1], 0x94
	s_load_b128 s[48:51], s[0:1], 0x64
	v_mov_b32_e32 v38, v0
	s_clause 0x2
	s_load_b64 s[76:77], s[0:1], 0x78
	s_load_b128 s[16:19], s[0:1], 0x8
	s_load_b64 s[12:13], s[0:1], 0x20
.Ltmp0:
	.loc	1 514 33 prologue_end           ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v8, 5, v38
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v1, 2, v8
	v_or_b32_e32 v2, 4, v8
	v_or_b32_e32 v3, 6, v8
	v_or_b32_e32 v5, 10, v8
	v_or_b32_e32 v4, 8, v8
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v1, off offset:48
	scratch_store_b32 off, v2, off offset:52
	scratch_store_b32 off, v3, off offset:56
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s36
	s_bitcmp1_b32 s36, 8
	v_or_b32_e32 v6, 12, v8
	s_cselect_b32 s80, -1, 0
	s_cmp_eq_u32 s4, 1
	v_or_b32_e32 v7, 14, v8
	s_cselect_b32 s81, -1, 0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_abs_i32 s25, s49
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_abs_i32 s5, s3
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cvt_f32_u32 s4, s25
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s11, s2, 4
	scratch_store_b32 off, v5, off offset:64 ; 4-byte Folded Spill
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v1, s11, v1
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_rcp_iflag_f32_e32 v0, s4
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v2, s11, v2
	v_or_b32_e32 v3, s11, v3
	v_or_b32_e32 v5, s11, v5
	.loc	1 521 24                        ; attention_backward.py:521:24
	s_mul_i32 s79, s3, s51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_readfirstlane_b32 s4, v0
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s11, v8
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s51, v0
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cvt_u32_f32 s14, s4
	s_sub_i32 s4, 0, s25
	s_mul_i32 s4, s4, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s14, s4
	s_add_i32 s14, s14, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_mul_hi_u32 s4, s5, s14
	s_mul_i32 s6, s4, s25
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s2, s5, s6
	s_add_i32 s5, s4, 1
	s_sub_i32 s6, s2, s25
	s_cmp_ge_u32 s2, s25
	s_cselect_b32 s4, s5, s4
	s_cselect_b32 s2, s6, s2
	s_add_i32 s5, s4, 1
	s_cmp_ge_u32 s2, s25
	s_cselect_b32 s24, s5, s4
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_ashr_i32 s26, s48, 31
	s_ashr_i32 s27, s49, 31
	s_abs_i32 s28, s48
	.loc	1 514 23                        ; attention_backward.py:514:23
	s_or_b32 s2, s11, 1
	s_or_b32 s4, s11, 2
	s_or_b32 s5, s11, 3
	s_or_b32 s6, s11, 4
	s_or_b32 s7, s11, 5
	s_or_b32 s8, s11, 6
	s_or_b32 s9, s11, 7
	s_or_b32 s10, s11, 8
	s_or_b32 s15, s11, 9
	s_or_b32 s20, s11, 10
	s_or_b32 s21, s11, 11
	s_or_b32 s22, s11, 12
	s_or_b32 s23, s11, 13
	s_or_b32 s43, s11, 14
	s_or_b32 s45, s11, 15
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cmp_lt_i32 s11, s51
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s2, s51
	v_cmp_gt_i32_e64 s2, s51, v1
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s4, s51
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_and_b32_e32 v1, 31, v38
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s5, s51
	v_cmp_gt_i32_e64 s4, s51, v2
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s6, s51
	v_cmp_gt_i32_e64 s5, s51, v3
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s7, s51
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[2:3], null, s76, v8, v[1:2]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s41, -1, 0
	s_cmp_lt_i32 s8, s51
	v_cmp_gt_i32_e64 s8, s51, v5
	s_cselect_b32 s40, -1, 0
	s_cmp_lt_i32 s9, s51
	s_cselect_b32 s35, -1, 0
	s_cmp_lt_i32 s10, s51
	v_mov_b32_e32 v0, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:60
	scratch_store_b32 off, v8, off offset:44
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v4, s11, v4
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s33, -1, 0
	s_cmp_lt_i32 s15, s51
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v5, s76, 2, v2
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s31, -1, 0
	s_cmp_lt_i32 s20, s51
	scratch_store_b32 off, v7, off offset:72 ; 4-byte Folded Spill
	s_cselect_b32 s30, -1, 0
	s_cmp_lt_i32 s21, s51
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v7, s11, v7
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s6, s51, v4
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v4, s76, 1, v2
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v6, off offset:68
	scratch_store_b64 off, v[0:1], off offset:36
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v6, s11, v6
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s29, -1, 0
	s_cmp_lt_i32 s22, s51
	v_cmp_gt_i32_e64 s10, s51, v7
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s23, s51
	v_cmp_gt_i32_e64 s9, s51, v6
	s_cselect_b32 s34, -1, 0
	s_cmp_lt_i32 s43, s51
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[6:7], null, s76, 6, v[2:3]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s45, s51
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[8:9], null, s76, 10, v[2:3]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s45, -1, 0
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_add_i32 s56, s79, s11
	v_mad_u64_u32 v[9:10], null, s76, 12, v[2:3]
	s_mul_i32 s20, s56, s76
	v_lshl_add_u32 v7, s76, 3, v2
	v_mad_u64_u32 v[10:11], null, s76, 14, v[2:3]
	v_add_nc_u32_e32 v0, s20, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:76
	scratch_store_b32 off, v7, off offset:92
	v_add_nc_u32_e32 v2, s20, v4
	v_mov_b32_e32 v4, v6
	scratch_store_b32 off, v5, off offset:80 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s20, v5
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xor_b32_e32 v13, 0x88, v38
	v_add_nc_u32_e32 v23, 0, v38
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[4:5], off offset:84 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v4, s20, v6
	v_mov_b32_e32 v6, v8
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_cmp_gt_i32_e64 s7, s76, v1
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_add_nc_u32_e32 v5, s20, v7
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xor_b32_e32 v14, 0x110, v38
	v_add_nc_u32_e32 v24, 0, v13
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[6:7], off offset:96 ; 8-byte Folded Spill
	v_mov_b32_e32 v7, v9
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, vcc_lo, s7
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_add_nc_u32_e32 v6, s20, v8
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s2, s7
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xor_b32_e32 v16, 0x198, v38
	v_add_nc_u32_e32 v27, 0, v14
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[7:8], off offset:104 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v7, s20, v9
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s4, s7
	v_dual_mov_b32 v8, v10 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_mul_i32 s78, s56, s77
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v28, 0, v16
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s5, s7
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[8:9], off offset:112 ; 8-byte Folded Spill
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v9, s78, v38
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_add_nc_u32_e32 v8, s20, v10
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s6, s7
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s4, s77, v38
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v10, s77, v9
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s8, s7
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_lshlrev_b32 v9, 1, v9
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s9, s7
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v11, s77, v10
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s10, s7
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_and_b32 s21, s17, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s16
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s52, s4
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v12, s77, v11
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	v_lshlrev_b32_e32 v11, 1, v11
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_clause 0x7
	buffer_load_u8 v0, v0, s[20:23], 0 offen
	buffer_load_u8 v2, v2, s[20:23], 0 offen
	buffer_load_u8 v3, v3, s[20:23], 0 offen
	buffer_load_u8 v4, v4, s[20:23], 0 offen
	buffer_load_u8 v5, v5, s[20:23], 0 offen
	buffer_load_u8 v6, v6, s[20:23], 0 offen
	buffer_load_u8 v7, v7, s[20:23], 0 offen
	buffer_load_u8 v8, v8, s[20:23], 0 offen
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s47, s4
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v15, s77, v12
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s21, s19, 0xffff
	s_mov_b32 s20, s18
	.loc	1 587 22                        ; attention_backward.py:587:22
	s_add_i32 s5, s50, 31
	s_mov_b32 s8, 0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v13, s77, v15
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v15, 1, v15
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_ashr_i32 s6, s5, 31
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_hi_u32 s2, s28, s14
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_lshr_b32 s6, s6, 27
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v14, s77, v13
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_add_i32 s5, s5, s6
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s22
	.loc	1 587 20                        ; attention_backward.py:587:20
	s_and_b32 s83, s5, 0xffffffe0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v16, s77, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v17, s77, v16
	v_add_nc_u32_e32 v18, s77, v17
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v17, 1, v17
	v_lshlrev_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v19, s77, v18
	v_add_nc_u32_e32 v20, s77, v19
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v19, 1, v19
	v_lshlrev_b32_e32 v16, 1, v16
	v_lshlrev_b32_e32 v14, 1, v14
	v_lshlrev_b32_e32 v13, 1, v13
	v_lshlrev_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s46, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s44, s4
	scratch_store_b32 off, v24, off offset:124 ; 4-byte Folded Spill
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s42, s4
	scratch_store_b32 off, v23, off offset:120 ; 4-byte Folded Spill
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s41, s4
	scratch_store_b32 off, v28, off offset:132 ; 4-byte Folded Spill
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s40, s4
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt vmcnt(6)
	ds_store_b8 v23, v2 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v24, v3
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s35, s4
	.loc	1 522 24                        ; attention_backward.py:522:24
	ds_store_b8 v23, v0
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v25, 0x80000000, v16 :: v_dual_lshlrev_b32 v16, 1, v18
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v18, s77, v20
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s33, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_lshlrev_b32 v20, 1, v20
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s31, s4
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt vmcnt(0)
	ds_store_b8 v28, v8 offset:64
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v26, 0x80000000, v16, vcc_lo
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v16, s77, v18
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s30, s4
	.loc	1 522 24                        ; attention_backward.py:522:24
	ds_store_b8 v24, v4 offset:64
	ds_store_b8 v27, v5
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s29, s4
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v21, s77, v16
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v16, 1, v16
	v_lshlrev_b32_e32 v18, 1, v18
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s15, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v22, 1, v21
	v_add_lshl_u32 v21, v21, s77, 1
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s34, s4
	scratch_store_b32 off, v27, off offset:128 ; 4-byte Folded Spill
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v29, 0x80000000, v16, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s43, s4
	.loc	1 522 24                        ; attention_backward.py:522:24
	ds_store_b8 v27, v6 offset:64
	ds_store_b8 v28, v7
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v30, 0x80000000, v22, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s45, s4
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(0)
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v31, 0x80000000, v21, vcc_lo
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_barrier
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_clause 0xf
	buffer_load_u16 v24, v9, s[20:23], 0 offen
	buffer_load_u16 v23, v10, s[20:23], 0 offen
	buffer_load_u16 v22, v11, s[20:23], 0 offen
	buffer_load_u16 v21, v12, s[20:23], 0 offen
	buffer_load_u16 v16, v15, s[20:23], 0 offen
	buffer_load_u16 v15, v13, s[20:23], 0 offen
	buffer_load_u16 v14, v14, s[20:23], 0 offen
	buffer_load_u16 v13, v25, s[20:23], 0 offen
	buffer_load_u16 v28, v17, s[20:23], 0 offen
	buffer_load_u16 v27, v26, s[20:23], 0 offen
	buffer_load_u16 v26, v19, s[20:23], 0 offen
	buffer_load_u16 v25, v20, s[20:23], 0 offen
	buffer_load_u16 v20, v18, s[20:23], 0 offen
	buffer_load_u16 v19, v29, s[20:23], 0 offen
	buffer_load_u16 v18, v30, s[20:23], 0 offen
	buffer_load_u16 v17, v31, s[20:23], 0 offen
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v31, v38, 4, 1
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_and_b32_e32 v12, 12, v38
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v0, 32, v38
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_mov_b32 s15, s23
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_bfe_u32 s5, s36, 0x10008
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v2, s11, v31
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_add_lshl_u32 v35, s56, v31, 1
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshlrev_b32_e32 v11, 1, v12
	scratch_store_b32 off, v31, off offset:996 ; 4-byte Folded Spill
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s51, v2
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v65, 15, v38
	.loc	1 514 23 is_stmt 0              ; attention_backward.py:514:23
	v_or_b32_e32 v3, 2, v2
	v_or_b32_e32 v4, 4, v2
	v_or_b32_e32 v5, 6, v2
	v_or_b32_e32 v7, 8, v2
	v_or_b32_e32 v8, 10, v2
	v_or_b32_e32 v9, 12, v2
	v_or_b32_e32 v32, 14, v2
	.loc	1 527 29 is_stmt 1              ; attention_backward.py:527:29
	v_cndmask_b32_e32 v2, 0x80000000, v35, vcc_lo
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshlrev_b32_e32 v10, 5, v65
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s51, v3
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v34, 20, v35
	v_add_nc_u32_e32 v33, 8, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_or_b32_e32 v6, v10, v11
	v_add_nc_u32_e32 v29, 0, v6
	v_xad_u32 v30, v6, 8, 0
	v_xad_u32 v31, v6, 16, 0
	v_xad_u32 v37, v6, 24, 0
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v6, 4, v35
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v3, 0x80000000, v6, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s51, v4
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v6, 12, v35
	v_cndmask_b32_e32 v4, 0x80000000, v33, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s51, v5
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v33, 16, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v5, 0x80000000, v6, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s51, v7
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v6, 24, v35
	v_add_nc_u32_e32 v7, 28, v35
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s51, v8
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s51, v9
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e32 v35, 0x80000000, v6, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s51, v32
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e32 v36, 0x80000000, v7, vcc_lo
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s5, s11, s37
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_add_i32 s8, s38, s39
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s5, s5, s39
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_sub_i32 s8, s11, s8
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s5, s5, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 592 17                        ; attention_backward.py:592:17
	s_min_i32 s5, s50, s5
	.loc	1 590 24                        ; attention_backward.py:590:24
	s_max_i32 s5, s5, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 600 19                        ; attention_backward.py:600:19
	s_add_i32 s5, s5, 31
	.loc	1 600 18 is_stmt 0              ; attention_backward.py:600:18
	s_ashr_i32 s6, s5, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s6, s6, 27
	s_add_i32 s5, s5, s6
	.loc	1 589 24 is_stmt 1              ; attention_backward.py:589:24
	s_max_i32 s6, s8, 0
	.loc	1 600 17                        ; attention_backward.py:600:17
	s_and_not1_b32 s5, s5, 31
	.loc	1 597 45                        ; attention_backward.py:597:45
	s_and_b32 s8, s6, 0x7fffffe0
	.loc	1 598 24                        ; attention_backward.py:598:24
	s_min_i32 s83, s83, s5
.LBB0_2:
	.loc	1 0 24 is_stmt 0                ; attention_backward.py:0:24
	s_clause 0x7
	buffer_load_u16 v9, v2, s[12:15], 0 offen
	buffer_load_u16 v8, v3, s[12:15], 0 offen
	buffer_load_u16 v7, v4, s[12:15], 0 offen
	buffer_load_u16 v6, v5, s[12:15], 0 offen
	buffer_load_u16 v5, v33, s[12:15], 0 offen
	buffer_load_u16 v4, v34, s[12:15], 0 offen
	buffer_load_u16 v3, v35, s[12:15], 0 offen
	buffer_load_u16 v2, v36, s[12:15], 0 offen
	ds_load_b64 v[32:33], v29
	ds_load_b64 v[29:30], v30
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_mul_i32 s5, s2, s25
	s_clause 0x1
	s_load_b128 s[52:55], s[0:1], 0x50
	s_load_b32 s82, s[0:1], 0x74
	s_sub_i32 s5, s28, s5
	s_xor_b32 s6, s26, s27
	s_add_i32 s9, s2, 1
	s_sub_i32 s10, s5, s25
	s_cmp_ge_u32 s5, s25
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v243, s11, v65
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s2, s9, s2
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s2, 1
	s_cmp_ge_u32 s5, s25
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v66, 1, v0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s2, s9, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s6
	s_sub_i32 s84, s2, s6
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[32:33], off offset:136
	scratch_store_b64 off, v[29:30], off offset:144
	ds_load_b64 v[29:30], v31
	.loc	1 717 21 is_stmt 1              ; attention_backward.py:717:21
	v_lshlrev_b32_e32 v33, 1, v38
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, s51, v243
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cmp_lt_i32 s84, 1
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v32, 0x240, v33, 0
	v_xad_u32 v31, 0x1b0, v33, 0
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[29:30], off offset:152 ; 8-byte Folded Spill
	ds_load_b64 v[29:30], v37
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[29:30], off offset:160 ; 8-byte Folded Spill
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_add_nc_u32_e32 v29, 0, v38
	v_xad_u32 v30, 0x120, v33, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v34, v29, v38
	v_xad_u32 v29, 0x90, v33, 0
	s_waitcnt vmcnt(15)
	ds_store_b16 v34, v28 offset:1024
	ds_store_b16 v29, v23
	s_waitcnt vmcnt(14)
	ds_store_b16 v29, v27 offset:1024
	ds_store_b16 v30, v22
	s_waitcnt vmcnt(13)
	ds_store_b16 v30, v26 offset:1024
	ds_store_b16 v31, v21
	s_waitcnt vmcnt(12)
	ds_store_b16 v31, v25 offset:1024
	v_xad_u32 v21, 0x2d0, v33, 0
	v_xad_u32 v22, 0x360, v33, 0
	ds_store_b16 v34, v24
	scratch_store_b32 off, v34, off offset:168 ; 4-byte Folded Spill
	v_xad_u32 v23, 0x3f0, v33, 0
	ds_store_b16 v32, v16
	s_waitcnt vmcnt(11)
	ds_store_b16 v32, v20 offset:1024
	ds_store_b16 v21, v15
	s_waitcnt vmcnt(10)
	ds_store_b16 v21, v19 offset:1024
	ds_store_b16 v22, v14
	s_waitcnt vmcnt(9)
	ds_store_b16 v22, v18 offset:1024
	ds_store_b16 v23, v13
	s_waitcnt vmcnt(8)
	ds_store_b16 v23, v17 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cbranch_scc1 .LBB0_13
; %bb.3:                                ; %.lr.ph103
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_dual_mov_b32 v158, 0 :: v_dual_and_b32 v13, 7, v38
	v_dual_mov_b32 v41, 0 :: v_dual_lshlrev_b32 v14, 4, v0
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	v_lshlrev_b32_e32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v44, v158 :: v_dual_lshlrev_b32 v15, 4, v13
	v_or3_b32 v20, v11, v14, v10
	v_mov_b32_e32 v42, v158
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v18, 1, v1
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshl_or_b32 v19, v65, 7, v15
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	s_load_b32 s10, s[0:1], 0x90
	v_writelane_b32 v255, s56, 0
	s_load_b128 s[56:59], s[0:1], 0x80
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s6, s82, v18
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v10, 0x70, v19, 0
	v_xad_u32 v11, 0x60, v19, 0
	v_xad_u32 v14, 0x50, v19, 0
	v_xad_u32 v18, v19, 64, 0
	s_xor_b32 s9, s3, s49
	ds_load_b128 v[25:28], v10
	ds_load_b128 v[21:24], v11
	v_xad_u32 v10, v19, 48, 0
	v_xad_u32 v11, v19, 32, 0
	v_dual_mov_b32 v43, v158 :: v_dual_lshlrev_b32 v16, 2, v38
	s_ashr_i32 s9, s9, 31
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_sub_i32 s11, s11, s39
	s_xor_b32 s12, s24, s9
	s_max_i32 s11, s11, 0
	s_sub_i32 s9, s12, s9
	v_dual_mov_b32 v45, v158 :: v_dual_lshlrev_b32 v12, 5, v12
	v_dual_mov_b32 v46, v158 :: v_dual_and_b32 v17, 2, v38
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s5, s82, v1
	v_dual_mov_b32 v48, v158 :: v_dual_and_b32 v1, 52, v16
	s_mul_i32 s12, s9, s49
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_and_b32 s11, s11, 0x7fffffe0
	s_sub_i32 s3, s3, s12
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[21:24], off offset:184
	scratch_store_b128 off, v[25:28], off offset:200
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[25:28], v14
	ds_load_b128 v[21:24], v18
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_max_u32 s11, s8, s11
	s_and_b32 s12, s81, exec_lo
	v_or3_b32 v1, v12, v1, v17
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v12, v19, 16, 0
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_cselect_b32 s49, s11, s8
	v_dual_mov_b32 v47, v158 :: v_dual_add_nc_u32 v14, 0, v19
	s_cmp_lt_i32 s49, s83
	s_mul_i32 s13, s59, 20
	s_cselect_b32 s51, -1, 0
	s_lshl_b32 s8, s59, 2
	s_lshl_b32 s12, s59, 4
	s_mul_i32 s11, s59, 12
	s_mul_i32 s14, s59, 24
	s_mul_i32 s15, s59, 28
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v8.h, v8.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v7.h, v7.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v6.h, v6.l
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[21:24], off offset:216
	scratch_store_b128 off, v[25:28], off offset:232
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[25:28], v10
	ds_load_b128 v[21:24], v11
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v10, 4, v38
	v_mul_lo_u32 v11, s10, v243
	s_lshl_b32 s10, s59, 3
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v5.h, v5.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v4.h, v4.l
	scratch_store_b32 off, v10, off offset:280 ; 4-byte Folded Spill
	v_mul_lo_u32 v10, s59, v10
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v3.h, v3.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v2.h, v2.l
	v_lshrrev_b32_e32 v18, 4, v0
	s_clause 0x2
	s_load_b256 s[40:47], s[0:1], 0x30
	s_load_b64 s[60:61], s[0:1], 0x0
	s_load_b64 s[64:65], s[0:1], 0x18
	v_mov_b32_e32 v40, v158
	v_mov_b32_e32 v58, v158
	v_mov_b32_e32 v60, v158
	v_add3_u32 v17, v10, s8, v11
	v_add3_u32 v19, v10, s12, v11
	v_mov_b32_e32 v62, v158
	v_mov_b32_e32 v64, v158
	v_mov_b32_e32 v50, v158
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[21:24], off offset:248
	scratch_store_b128 off, v[25:28], off offset:264
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[25:28], v12
	ds_load_b128 v[21:24], v14
	v_dual_mov_b32 v35, v158 :: v_dual_add_nc_u32 v14, v11, v10
	v_and_b32_e32 v12, 14, v38
	v_mov_b32_e32 v52, v158
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v17, off offset:320
	scratch_store_b32 off, v14, off offset:316
	scratch_store_b32 off, v19, off offset:332
	v_add3_u32 v17, v10, s10, v11
	v_add3_u32 v19, v10, s13, v11
	v_dual_mov_b32 v37, v158 :: v_dual_and_b32 v14, 16, v38
	v_mov_b32_e32 v36, v158
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v17, off offset:324
	scratch_store_b32 off, v19, off offset:336
	v_add3_u32 v17, v10, s11, v11
	v_add3_u32 v19, v10, s14, v11
	v_add3_u32 v10, v10, s15, v11
	v_lshlrev_b32_e32 v11, 7, v13
	v_lshrrev_b32_e32 v13, 2, v14
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v17, off offset:328
	scratch_store_b32 off, v19, off offset:340
	scratch_store_b32 off, v10, off offset:344
	v_lshrrev_b32_e32 v17, 1, v14
	v_lshrrev_b32_e32 v19, 5, v38
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[21:24], off offset:284
	scratch_store_b128 off, v[25:28], off offset:300
	v_cndmask_b32_e64 v10, 0x820, 0, vcc_lo
	v_dual_mov_b32 v34, v158 :: v_dual_lshlrev_b32 v23, 3, v65
	v_or3_b32 v22, v1, v17, v19
	v_bfe_i32 v1, v38, 3, 1
	v_mul_u32_u24_e32 v12, 0x48, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v25, v13, v18, v23
	v_mov_b32_e32 v54, v158
	v_mov_b32_e32 v56, v158
	v_and_or_b32 v1, 0x410, v1, v10
	v_cndmask_b32_e64 v10, 0x90, 0, vcc_lo
	v_and_or_b32 v12, v16, 4, v12
	v_mov_b16_e64 v168.l, 0
	.loc	1 641 25                        ; attention_backward.py:641:25
	s_mul_f32 s87, s56, 0x3fb8aa3b
	s_mov_b32 s85, 0
	v_xor_b32_e32 v10, v10, v23
	v_or3_b32 v21, v12, v17, v18
	v_lshrrev_b32_e32 v12, 1, v38
	v_xor_b32_e32 v17, 0xee0, v16
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s86, s84, s3
	v_or_b32_e32 v24, v10, v13
	v_or_b32_e32 v10, v11, v15
	v_and_or_b32 v12, v12, 12, v15
	v_xor_b32_e32 v13, 0xbb0, v16
	.loc	1 613 26                        ; attention_backward.py:613:26
	s_mul_i32 s48, s9, s48
	.loc	1 683 27                        ; attention_backward.py:683:27
	s_mul_i32 s57, s9, s57
	v_xor_b32_e32 v26, v1, v10
	v_mov_b16_e32 v1.l, 0
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v1.h, v9.l
	v_or3_b32 v18, v12, v11, v18
	v_mov_b32_e32 v39, v158
	v_and_b32_e32 v11, 0x70, v33
	v_mov_b16_e32 v8.l, v1.l
	v_mov_b16_e32 v7.l, v1.l
	v_mov_b16_e32 v6.l, v1.l
	v_mov_b16_e32 v5.l, v1.l
	v_mov_b16_e32 v4.l, v1.l
	v_mov_b16_e32 v3.l, v1.l
	v_mov_b16_e32 v2.l, v1.l
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v8, off offset:380
	scratch_store_b32 off, v7, off offset:384
	scratch_store_b32 off, v6, off offset:388
	scratch_store_b32 off, v5, off offset:392
	scratch_store_b32 off, v4, off offset:396
	scratch_store_b32 off, v3, off offset:400
	scratch_store_b32 off, v2, off offset:404
	scratch_store_b32 off, v1, off offset:376
	v_mul_u32_u24_e32 v2, 0x110, v65
	v_lshlrev_b32_e32 v1, 2, v14
	v_mov_b32_e32 v57, 0
	v_mov_b32_e32 v59, v158
	v_xor_b32_e32 v11, v15, v11
	v_lshl_or_b32 v27, v0, 7, v2
	v_lshlrev_b32_e32 v2, 1, v65
	v_xor_b32_e32 v3, 0x330, v16
	v_mov_b32_e32 v61, v158
	v_lshl_or_b32 v29, v38, 7, v11
	v_xor_b32_e32 v4, 0x440, v16
	v_or3_b32 v28, v2, v1, v0
	v_add3_u32 v6, 0, v0, v2
	v_lshl_add_u32 v0, v0, 1, 0
	v_xor_b32_e32 v1, 0x110, v16
	v_xor_b32_e32 v2, 0x220, v16
	v_xor_b32_e32 v5, 0x550, v16
	v_xor_b32_e32 v7, 0x660, v16
	v_lshl_add_u32 v8, v65, 2, v0
	v_dual_mov_b32 v63, v158 :: v_dual_lshlrev_b32 v0, 3, v38
	v_xor_b32_e32 v9, 0x770, v16
	v_xor_b32_e32 v10, 0x880, v16
	v_xor_b32_e32 v11, 0x990, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v0, 48, v0
	v_xor_b32_e32 v12, 0xaa0, v16
	v_xor_b32_e32 v14, 0xcc0, v16
	v_xor_b32_e32 v15, 0xdd0, v16
	v_mov_b32_e32 v49, 0
	v_lshl_or_b32 v30, v65, 6, v0
	v_xor_b32_e32 v0, 8, v20
	v_xor_b32_e32 v16, 0xff0, v16
	s_and_b32 s61, s61, 0xffff
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	v_add_nc_u32_e32 v0, 0, v0
	s_and_b32 s65, s65, 0xffff
	s_and_b32 s41, s41, 0xffff
	v_mov_b32_e32 v51, v158
	s_and_b32 s45, s45, 0xffff
	scratch_store_b32 off, v0, off offset:424 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v20
	s_and_b32 s69, s47, 0xffff
	s_mov_b32 s68, s46
	s_and_b32 s73, s43, 0xffff
	s_mov_b32 s72, s42
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:428
	scratch_store_b32 off, v20, off offset:180
	v_xor_b32_e32 v0, 24, v20
	v_mov_b32_e32 v53, v158
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v55, v158 :: v_dual_add_nc_u32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:432 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x120, v24
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:436 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x240, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:440
	scratch_store_b32 off, v24, off offset:360
	v_xor_b32_e32 v0, 0x360, v24
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:444 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:448 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v21
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:452 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v21
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x50, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v21
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:468
	scratch_store_b32 off, v21, off offset:348
	v_xor_b32_e32 v0, 0x70, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:472 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x90, v25
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:476 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x120, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:480
	scratch_store_b32 off, v25, off offset:364
	v_xor_b32_e32 v0, 0x1b0, v25
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:484 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:488 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v22
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:492
	scratch_store_b32 off, v22, off offset:352
	v_xor_b32_e32 v0, 48, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:496 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v29
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:500 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:504 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v29
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:508 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:512 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x50, v29
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:516 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:520
	scratch_store_b32 off, v29, off offset:416
	v_xor_b32_e32 v0, 0x70, v29
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:524 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:528 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v26
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:532 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:536 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v26
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:540 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x50, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:544 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v26
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:548 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x70, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:552 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1040, v26
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:556 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1050, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:560 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1060, v26
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:564 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1070, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:568 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1010, v26
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:572 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1020, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:576
	scratch_store_b32 off, v26, off offset:372
	v_xor_b32_e32 v0, 0x1030, v26
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:580 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v1, 16, v19
	scratch_store_b32 off, v0, off offset:584 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	scratch_store_b32 off, v0, off offset:588 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v3
	scratch_store_b32 off, v0, off offset:592 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	scratch_store_b32 off, v0, off offset:596 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v5
	scratch_store_b32 off, v0, off offset:600 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v7
	scratch_store_b32 off, v0, off offset:604 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v9
	scratch_store_b32 off, v0, off offset:608 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v10
	scratch_store_b32 off, v0, off offset:612 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v11
	scratch_store_b32 off, v0, off offset:616 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v12
	scratch_store_b32 off, v0, off offset:620 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v13
	scratch_store_b32 off, v0, off offset:624 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v14
	scratch_store_b32 off, v0, off offset:628 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v15
	scratch_store_b32 off, v0, off offset:632 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v17
	scratch_store_b32 off, v0, off offset:636 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v16
	scratch_store_b32 off, v0, off offset:640 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:644 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v27
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:648 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:652 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v27
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:656 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x50, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:660 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v27
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:664 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x70, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:668 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x80, v27
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:672 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x90, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:676 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xa0, v27
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:680 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xb0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:684 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xc0, v27
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:688 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xd0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:692 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xe0, v27
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:696
	scratch_store_b32 off, v27, off offset:408
	v_xor_b32_e32 v0, 0xf0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:700 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x90, v28
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:704 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x120, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:708
	scratch_store_b32 off, v28, off offset:412
	v_xor_b32_e32 v0, 0x1b0, v28
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:712 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:716 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v30
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:720
	scratch_store_b32 off, v30, off offset:420
	v_xor_b32_e32 v0, 48, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:724 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v18
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:728 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:732 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v18
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:736 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:740 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x50, v18
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:744 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:748
	scratch_store_b32 off, v18, off offset:368
	v_xor_b32_e32 v0, 0x70, v18
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:752 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x90, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:756 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x120, v23
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:760 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1b0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:764 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x240, v23
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:768 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x2d0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:772 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x360, v23
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:776
	scratch_store_b32 off, v23, off offset:356
	v_xor_b32_e32 v0, 0x3f0, v23
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:780 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, v38
	scratch_store_b32 off, v33, off offset:176 ; 4-byte Folded Spill
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v38, v158
	scratch_store_b32 off, v0, off offset:172 ; 4-byte Folded Spill
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:784 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:788 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:792 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:796 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:800 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:804 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:808 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:812 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:816 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:820 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:824 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:828 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:832 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:836 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:840 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:844 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:848 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:852 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:856 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:860 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:864 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:868 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:872 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:876 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:880 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:888
	scratch_store_b32 off, v0, off offset:884
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v1, 18, v19
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v1, off offset:896 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 20, v19
	scratch_store_b32 off, v1, off offset:900 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 22, v19
	scratch_store_b32 off, v1, off offset:904 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 24, v19
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:908
	scratch_store_b32 off, v0, off offset:892
	v_or_b32_e32 v1, 26, v19
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v1, off offset:916 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 28, v19
	scratch_store_b32 off, v1, off offset:920 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 30, v19
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v1, off offset:924
	scratch_store_b32 off, v65, off offset:1000
	scratch_store_b32 off, v66, off offset:1004
	v_or_b32_e32 v1, v66, v65
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:928
	scratch_store_b32 off, v0, off offset:912
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:932 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:936 ; 4-byte Folded Spill
	scratch_load_b64 v[0:1], off, off offset:36 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[1:2], null, s76, 18, v[0:1]
	scratch_store_b64 off, v[1:2], off offset:940 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s76, 20, v[0:1]
	scratch_store_b64 off, v[1:2], off offset:948 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s76, 22, v[0:1]
	scratch_store_b64 off, v[1:2], off offset:956 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s76, 24, v[0:1]
	scratch_store_b64 off, v[1:2], off offset:964 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s76, 26, v[0:1]
	scratch_store_b64 off, v[1:2], off offset:972 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s76, 28, v[0:1]
	scratch_store_b64 off, v[1:2], off offset:980 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s76, 30, v[0:1]
	.loc	1 605 9                         ; attention_backward.py:605:9
	scratch_store_b64 off, v[0:1], off offset:988 ; 8-byte Folded Spill
	s_branch .LBB0_5
.LBB0_4:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_add_i32 s85, s85, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s85, s84
	s_cbranch_scc0 .LBB0_12
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s51
	s_cbranch_vccnz .LBB0_4
; %bb.6:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_add_i32 s0, s85, s86
	s_mov_b32 s90, s49
	.loc	1 613 26                        ; attention_backward.py:613:26
	s_add_i32 s88, s0, s48
	.loc	1 684 27                        ; attention_backward.py:684:27
	s_mul_i32 s89, s0, s58
	.loc	1 613 25                        ; attention_backward.py:613:25
	s_mul_i32 s88, s88, s50
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_add_i32 s89, s89, s57
	s_branch .LBB0_8
.LBB0_7:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v1, off, off offset:332
	scratch_load_b32 v9, off, off offset:340
	scratch_load_b32 v2, off, off offset:316
	scratch_load_b32 v4, off, off offset:320
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s1, s90, 1
	s_or_b32 s3, s90, 2
	s_or_b32 s8, s90, 3
	s_or_b32 s9, s90, 4
	s_or_b32 s10, s90, 5
	s_or_b32 s11, s90, 6
	s_or_b32 s12, s90, 7
	s_or_b32 s19, s90, 8
	s_or_b32 s20, s90, 9
	s_or_b32 s23, s90, 10
	s_or_b32 s25, s90, 11
	s_or_b32 s26, s90, 12
	s_or_b32 s27, s90, 13
	s_or_b32 s28, s90, 14
	s_or_b32 s29, s90, 15
	s_or_b32 s30, s90, 16
	s_or_b32 s42, s90, 17
	s_or_b32 s43, s90, 18
	s_or_b32 s74, s90, 19
	s_or_b32 s96, s90, 20
	s_or_b32 s97, s90, 21
	s_or_b32 s98, s90, 22
	s_or_b32 s99, s90, 23
	s_or_b32 s100, s90, 24
	s_or_b32 s101, s90, 25
	s_or_b32 s102, s90, 26
	s_or_b32 s103, s90, 27
	s_or_b32 s104, s90, 28
	s_or_b32 vcc_lo, s90, 29
	s_or_b32 vcc_hi, s90, 30
	s_or_b32 s79, s90, 31
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s90, s50
	.loc	1 691 36                        ; attention_backward.py:691:36
	scratch_load_b32 v3, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s1, s50
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_mul_i32 s1, s90, s59
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s3, s50
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v168.h, v23.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s8, s50
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s21, s21, s77
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s9, s50
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v87, 0xc00, v8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s10, s50
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v88, 0x1000, v8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s11, s50
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v163, 0x1400, v8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s12, s50
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v164, 0x1800, v8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s19, s50
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v165, 0x1c00, v8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s20, s50
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v5.h, v5.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s23, s50
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v5.l, v168.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s25, s50
	.loc	1 697 25                        ; attention_backward.py:697:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s26, s50
	.loc	1 697 25                        ; attention_backward.py:697:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s36, -1, 0
	s_cmp_lt_i32 s27, s50
	.loc	1 697 25                        ; attention_backward.py:697:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s35, -1, 0
	s_cmp_lt_i32 s28, s50
	.loc	1 697 25                        ; attention_backward.py:697:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s34, -1, 0
	s_cmp_lt_i32 s29, s50
	.loc	1 697 25                        ; attention_backward.py:697:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s33, -1, 0
	s_cmp_lt_i32 s30, s50
	.loc	1 697 25                        ; attention_backward.py:697:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s31, -1, 0
	s_cmp_lt_i32 s42, s50
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_mov_b32 s42, s62
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s30, -1, 0
	s_cmp_lt_i32 s43, s50
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_mov_b32 s43, s63
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s29, -1, 0
	s_cmp_lt_i32 s74, s50
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s74, s62
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s28, -1, 0
	s_cmp_lt_i32 s96, s50
	.loc	1 697 25                        ; attention_backward.py:697:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s97, s50
	.loc	1 697 25                        ; attention_backward.py:697:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s98, s50
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s99, s50
	.loc	1 640 41 is_stmt 1              ; attention_backward.py:640:41
	v_mul_f32_e32 v175, s87, v168
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s100, s50
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s101, s50
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s102, s50
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s103, s50
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s104, s50
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 vcc_lo, s50
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 vcc_hi, s50
	s_cselect_b32 s8, -1, 0
	s_cmp_lt_i32 s79, s50
	s_cselect_b32 s96, -1, 0
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_add_i32 s1, s89, s1
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s90, s90, 32
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v10, s1, v9, 1
	scratch_load_b32 v9, off, off offset:324 ; 4-byte Folded Reload
	v_add_lshl_u32 v1, s1, v1, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v2, s1, v2, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v4, s1, v4, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s16
	v_cndmask_b32_e64 v1, 0x80000000, v1, s24
	v_cndmask_b32_e64 v2, 0x80000000, v2, s22
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v4, 0x80000000, v4, s17
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v11, s1, v9, 1
	scratch_load_b32 v9, off, off offset:344 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v11, 0x80000000, v11, s15
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v12, s1, v9, 1
	scratch_load_b32 v9, off, off offset:328 ; 4-byte Folded Reload
	v_add_lshl_u32 v3, s1, v3, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v3, 0x80000000, v3, s18
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v13, s1, v9, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s13
	s_clause 0x7
	buffer_load_u16 v1, v1, s[40:43], 0 offen
	buffer_load_u16 v2, v2, s[40:43], 0 offen
	buffer_load_u16 v3, v3, s[40:43], 0 offen
	buffer_load_u16 v4, v4, s[40:43], 0 offen
	buffer_load_u16 v10, v10, s[40:43], 0 offen
	buffer_load_u16 v11, v11, s[40:43], 0 offen
	buffer_load_u16 v12, v12, s[40:43], 0 offen
	buffer_load_u16 v13, v13, s[40:43], 0 offen
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v9, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_waitcnt vmcnt(8)
	v_cndmask_b16 v1.h, 0xff80, v1.l, s24
	s_waitcnt vmcnt(7)
	v_cndmask_b16 v1.l, 0xff80, v2.l, s22
	s_waitcnt vmcnt(6)
	v_cndmask_b16 v2.h, 0xff80, v3.l, s18
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v2.l, 0xff80, v4.l, s17
	s_waitcnt vmcnt(4)
	v_cndmask_b16 v3.h, 0xff80, v10.l, s16
	s_waitcnt vmcnt(3)
	v_cndmask_b16 v3.l, 0xff80, v11.l, s15
	v_mov_b16_e64 v168.h, v1.l
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v4.h, 0xff80, v12.l, s14
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v4.l, 0xff80, v13.l, s13
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, 0, v9
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v168
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_mov_b16_e64 v168.h, v2.l
	.loc	1 696 35                        ; attention_backward.py:696:35
	ds_store_b32 v10, v1
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_mov_b16_e64 v1.l, v168.l
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_and_b32 s1, s22, s1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 697 34 is_stmt 0              ; attention_backward.py:697:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v1
	.loc	1 696 35 is_stmt 1              ; attention_backward.py:696:35
	scratch_load_b32 v1, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_and_b32 s24, s24, vcc_lo
	.loc	1 697 34 is_stmt 0              ; attention_backward.py:697:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v168
	.loc	1 691 36 is_stmt 1              ; attention_backward.py:691:36
	v_mov_b16_e64 v168.h, v3.l
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	ds_store_b32 v1, v2
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_mov_b16_e64 v2.l, v168.l
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v1, 0, 1, s24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 697 34 is_stmt 0              ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v2
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v2, 0, 1, s1
	v_lshlrev_b16 v0.h, 8, v1.l
	s_and_b32 s1, s18, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v1, 0, 1, s1
	s_and_b32 s1, s17, vcc_lo
	v_or_b16 v0.h, v2.l, v0.h
	v_cndmask_b32_e64 v2, 0, 1, s1
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v168
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_lshlrev_b16 v1.l, 8, v1.l
	.loc	1 691 36 is_stmt 1              ; attention_backward.py:691:36
	v_mov_b16_e64 v168.h, v4.l
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_and_b32 s1, s15, s1
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b16 v1.l, v2.l, v1.l
	.loc	1 696 35                        ; attention_backward.py:696:35
	scratch_load_b32 v2, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v2, v3
	scratch_load_b32 v2, off, off offset:444 ; 4-byte Folded Reload
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_mov_b16_e64 v3.l, v168.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v3
	.loc	1 697 25 is_stmt 0              ; attention_backward.py:697:25
	v_cndmask_b32_e64 v3, 0, 1, s1
	s_and_b32 s16, s16, vcc_lo
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v168
	.loc	1 696 35 is_stmt 1              ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	ds_store_b32 v2, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v2, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_mov_b16_e64 v4.l, v168.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v4
	.loc	1 697 25 is_stmt 0              ; attention_backward.py:697:25
	s_and_b32 s1, s14, s3
	.loc	1 696 35 is_stmt 1              ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, 0, v2
	.loc	1 691 36                        ; attention_backward.py:691:36
	ds_load_u16 v27, v2
	scratch_load_b32 v2, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 696 35                        ; attention_backward.py:696:35
	v_mul_f32_e32 v27, 0x3fb8aa3b, v27
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_waitcnt vmcnt(0)
	ds_load_u16 v174, v2
	scratch_load_b32 v2, off, off offset:452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u16 v24, v2
	scratch_load_b32 v2, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u16 v23, v2
	scratch_load_b32 v2, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u16 v26, v2
	scratch_load_b32 v2, off, off offset:464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u16 v157, v2
	scratch_load_b32 v2, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u16 v253, v2
	scratch_load_b32 v2, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u16 v176, v2
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v2, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, 0, v2
	ds_store_b16_d16_hi v2, v0
	v_cndmask_b32_e64 v2, 0, 1, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v2.l
	v_cndmask_b32_e64 v2, 0, 1, s1
	s_and_b32 s1, s13, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s95
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_or_b16 v0.h, v3.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v1.h, 8, v2.l
	scratch_load_b32 v2, off, off offset:476 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v3, 0, 1, s1
	v_or_b16 v1.h, v3.l, v1.h
	s_waitcnt vmcnt(0)
	ds_store_b16 v2, v1
	scratch_load_b32 v2, off, off offset:480 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v2, v0
	scratch_load_b32 v2, off, off offset:484 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v2, v1
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:172
	scratch_load_b32 v2, off, off offset:784
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v9, off, off offset:876
	scratch_load_b32 v3, off, off offset:868
	scratch_load_b32 v4, off, off offset:872
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v1, s21, v1, 2
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v2, s21, v2, 2
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v17, s21, v9, 2
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s75
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s75, s63
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b32 v65, v1, s[72:75], 0 offen
	buffer_load_b32 v66, v2, s[72:75], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:788
	scratch_load_b32 v2, off, off offset:800
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s94
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v9, off, off offset:880 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v4, s21, v4, 2
	v_add_lshl_u32 v3, s21, v3, 2
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v1, s21, v1, 2
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v2, s21, v2, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v18, s21, v9, 2
	scratch_load_b32 v9, off, off offset:884 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s93
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v67, v1, s[72:75], 0 offen
	scratch_load_b32 v1, off, off offset:792 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v19, s21, v9, 2
	scratch_load_b32 v9, off, off offset:892 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s21, v1, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s92
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v68, v1, s[72:75], 0 offen
	scratch_load_b32 v1, off, off offset:796 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v20, s21, v9, 2
	scratch_load_b32 v9, off, off offset:912 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s21, v1, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s91
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b32 v69, v1, s[72:75], 0 offen
	buffer_load_b32 v70, v2, s[72:75], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:804
	scratch_load_b32 v2, off, off offset:816
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s71
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s71, s63
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v28, s21, v9, 2
	scratch_load_b32 v9, off, off offset:932 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v1, s21, v1, 2
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v2, s21, v2, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s70
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s70, s62
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v71, v1, s[72:75], 0 offen
	scratch_load_b32 v1, off, off offset:808 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v29, s21, v9, 2
	scratch_load_b32 v9, off, off offset:936 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s21, v1, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s67
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v72, v1, s[72:75], 0 offen
	scratch_load_b32 v1, off, off offset:812 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s21, v1, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s66
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b32 v82, v1, s[72:75], 0 offen
	buffer_load_b32 v83, v2, s[72:75], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:820
	scratch_load_b32 v2, off, off offset:832
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s47
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s47, s63
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s21, v1, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s21, v2, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s46
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s46, s62
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v84, v1, s[72:75], 0 offen
	scratch_load_b32 v1, off, off offset:824 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s21, v1, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s36
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v85, v1, s[72:75], 0 offen
	scratch_load_b32 v1, off, off offset:828 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s21, v1, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s35
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b32 v159, v1, s[72:75], 0 offen
	buffer_load_b32 v160, v2, s[72:75], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:836
	scratch_load_b32 v2, off, off offset:848
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s34
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s21, v1, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s21, v2, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s33
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v161, v1, s[72:75], 0 offen
	scratch_load_b32 v1, off, off offset:840 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s21, v1, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s31
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v162, v1, s[72:75], 0 offen
	scratch_load_b32 v1, off, off offset:844 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s21, v1, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b32 v10, v1, s[72:75], 0 offen
	buffer_load_b32 v11, v2, s[72:75], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:852
	scratch_load_b32 v2, off, off offset:864
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s29
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v1, s21, v1, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s21, v2, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s28
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v12, v1, s[72:75], 0 offen
	scratch_load_b32 v1, off, off offset:856 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s21, v1, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s27
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v13, v1, s[72:75], 0 offen
	scratch_load_b32 v1, off, off offset:860 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s21, v1, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s26
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s25
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x1
	buffer_load_b32 v1, v1, s[72:75], 0 offen
	buffer_load_b32 v2, v2, s[72:75], 0 offen
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s23
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s20
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s19
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v4, v4, s[72:75], 0 offen
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s12
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x1
	buffer_load_b32 v17, v17, s[72:75], 0 offen
	buffer_load_b32 v18, v18, s[72:75], 0 offen
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s11
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s10
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v19, v19, s[72:75], 0 offen
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s9
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v20, v20, s[72:75], 0 offen
	v_cndmask_b32_e32 v30, 0x80000000, v29, vcc_lo
	s_clause 0x1
	buffer_load_b32 v29, v28, s[72:75], 0 offen
	buffer_load_b32 v30, v30, s[72:75], 0 offen
	v_add_lshl_u32 v28, s21, v9, 2
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s8
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v3, v3, s[72:75], 0 offen
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s96
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_i32 s90, s83
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v31, v28, s[72:75], 0 offen
	v_add_nc_u32_e32 v28, s77, v9
	.loc	1 697 25                        ; attention_backward.py:697:25
	scratch_load_b32 v9, off, off offset:352 ; 4-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v28, s21, v28, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	buffer_load_b32 v32, v28, s[72:75], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v28, 2, v81
	v_cndmask_b32_e64 v28, 0x80000000, v28, s0
	buffer_load_b32 v247, v28, s[44:47], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v28, v28, s[68:71], 0 offen
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v81, 0, v9
	scratch_load_b32 v9, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8_d16_hi v155, v9
	ds_load_u8_d16 v154, v9 offset:64
	scratch_load_b32 v9, off, off offset:492 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(1)
	ds_load_u8_d16 v155, v9
	ds_load_u8_d16_hi v89, v9 offset:64
	scratch_load_b32 v9, off, off offset:496 ; 4-byte Folded Reload
	ds_load_u8_d16_hi v156, v81
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16 v156, v81 offset:64
	s_waitcnt vmcnt(0)
	ds_load_u8_d16_hi v154, v9
	ds_load_u8_d16 v89, v9 offset:64
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v9, off, off offset:416 ; 4-byte Folded Reload
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_and_b16 v0.h, 1, v156.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v81, 0, v9
	scratch_load_b32 v9, off, off offset:500 ; 4-byte Folded Reload
	ds_store_b128 v81, v[65:68]
	s_waitcnt vmcnt(0)
	ds_store_b128 v9, v[69:72]
	scratch_load_b32 v9, off, off offset:504 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v9, v[82:85]
	scratch_load_b32 v9, off, off offset:508 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v9, v[159:162]
	scratch_load_b32 v9, off, off offset:512 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v9, v[10:13]
	scratch_load_b32 v9, off, off offset:516 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v9, v[1:4]
	scratch_load_b32 v9, off, off offset:520 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v9, v[17:20]
	scratch_load_b32 v9, off, off offset:524 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v9, v[29:32]
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v9, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v81, 0, v9
	scratch_load_b32 v9, off, off offset:528 ; 4-byte Folded Reload
	ds_load_b128 v[138:141], v81
	ds_load_b128 v[90:93], v81 offset:4096
	s_waitcnt vmcnt(0)
	ds_load_b128 v[150:153], v9
	scratch_load_b32 v9, off, off offset:532 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[146:149], v9
	scratch_load_b32 v9, off, off offset:536 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[142:145], v9
	scratch_load_b32 v9, off, off offset:540 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[118:121], v9
	scratch_load_b32 v9, off, off offset:544 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[114:117], v9
	scratch_load_b32 v9, off, off offset:548 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[110:113], v9
	scratch_load_b32 v9, off, off offset:552 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[106:109], v9
	scratch_load_b32 v9, off, off offset:556 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[134:137], v9
	scratch_load_b32 v9, off, off offset:560 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[130:133], v9
	scratch_load_b32 v9, off, off offset:564 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[126:129], v9
	scratch_load_b32 v9, off, off offset:568 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[122:125], v9
	scratch_load_b32 v9, off, off offset:572 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[102:105], v9
	scratch_load_b32 v9, off, off offset:576 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[98:101], v9
	scratch_load_b32 v9, off, off offset:580 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[94:97], v9
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v81, off, off offset:176
	scratch_load_b32 v86, off, off offset:168
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v173, v86, v81
	v_add_nc_u32_e32 v81, 0x400, v8
	v_add_nc_u32_e32 v86, 0x800, v8
	ds_store_2addr_stride64_b32 v173, v65, v66 offset1:1
	ds_store_2addr_stride64_b32 v173, v67, v68 offset0:2 offset1:3
	ds_store_2addr_stride64_b32 v173, v69, v70 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v173, v71, v72 offset0:6 offset1:7
	ds_store_2addr_stride64_b32 v173, v82, v83 offset0:8 offset1:9
	ds_store_2addr_stride64_b32 v173, v84, v85 offset0:10 offset1:11
	ds_store_2addr_stride64_b32 v173, v159, v160 offset0:12 offset1:13
	ds_store_2addr_stride64_b32 v173, v161, v162 offset0:14 offset1:15
	ds_store_2addr_stride64_b32 v173, v10, v11 offset0:16 offset1:17
	ds_store_2addr_stride64_b32 v173, v12, v13 offset0:18 offset1:19
	ds_store_2addr_stride64_b32 v173, v1, v2 offset0:20 offset1:21
	ds_store_2addr_stride64_b32 v173, v3, v4 offset0:22 offset1:23
	ds_store_2addr_stride64_b32 v173, v17, v18 offset0:24 offset1:25
	ds_store_2addr_stride64_b32 v173, v19, v20 offset0:26 offset1:27
	ds_store_2addr_stride64_b32 v173, v29, v30 offset0:28 offset1:29
	ds_store_2addr_stride64_b32 v173, v31, v32 offset0:30 offset1:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[231:232], v81 offset1:32
	ds_load_2addr_b32 v[229:230], v81 offset0:64 offset1:96
	ds_load_2addr_b32 v[227:228], v81 offset0:128 offset1:160
	ds_load_2addr_b32 v[225:226], v81 offset0:192 offset1:224
	ds_load_2addr_b32 v[223:224], v86 offset1:32
	ds_load_2addr_b32 v[221:222], v86 offset0:64 offset1:96
	ds_load_2addr_b32 v[219:220], v86 offset0:128 offset1:160
	ds_load_2addr_b32 v[217:218], v86 offset0:192 offset1:224
	ds_load_2addr_b32 v[215:216], v87 offset1:32
	ds_load_2addr_b32 v[213:214], v87 offset0:64 offset1:96
	ds_load_2addr_b32 v[211:212], v87 offset0:128 offset1:160
	ds_load_2addr_b32 v[209:210], v87 offset0:192 offset1:224
	ds_load_2addr_b32 v[207:208], v88 offset1:32
	ds_load_2addr_b32 v[205:206], v88 offset0:64 offset1:96
	ds_load_2addr_b32 v[203:204], v88 offset0:128 offset1:160
	ds_load_2addr_b32 v[201:202], v88 offset0:192 offset1:224
	ds_load_2addr_b32 v[199:200], v163 offset1:32
	ds_load_2addr_b32 v[197:198], v163 offset0:64 offset1:96
	ds_load_2addr_b32 v[195:196], v163 offset0:128 offset1:160
	ds_load_2addr_b32 v[193:194], v163 offset0:192 offset1:224
	ds_load_2addr_b32 v[191:192], v164 offset1:32
	ds_load_2addr_b32 v[189:190], v164 offset0:64 offset1:96
	ds_load_2addr_b32 v[187:188], v164 offset0:128 offset1:160
	ds_load_2addr_b32 v[185:186], v164 offset0:192 offset1:224
	ds_load_2addr_b32 v[183:184], v165 offset1:32
	ds_load_2addr_b32 v[181:182], v165 offset0:64 offset1:96
	ds_load_2addr_b32 v[179:180], v165 offset0:128 offset1:160
	ds_load_2addr_b32 v[177:178], v165 offset0:192 offset1:224
	ds_load_2addr_b32 v[239:240], v8 offset1:32
	ds_load_2addr_b32 v[237:238], v8 offset0:64 offset1:96
	ds_load_2addr_b32 v[235:236], v8 offset0:128 offset1:160
	ds_load_2addr_b32 v[233:234], v8 offset0:192 offset1:224
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v9, off, off offset:584 ; 4-byte Folded Reload
	ds_store_2addr_stride64_b32 v173, v65, v10 offset1:16
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v163, v158
	v_mov_b32_e32 v164, v158
	v_mov_b32_e32 v165, v158
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s21, v205, v205
	v_cmp_o_f32_e64 s22, v203, v203
	v_cmp_o_f32_e64 s29, v189, v189
	v_cmp_o_f32_e64 s30, v187, v187
	v_cmp_o_f32_e64 s31, v185, v185
	v_cmp_o_f32_e64 s33, v183, v183
	v_cmp_o_f32_e64 s28, v191, v191
	v_cmp_o_f32_e64 s20, v207, v207
	v_cmp_o_f32_e64 s36, v177, v177
	v_cmp_o_f32_e64 s23, v201, v201
	v_cmp_o_f32_e64 s24, v199, v199
	v_cmp_o_f32_e64 s25, v197, v197
	v_cmp_o_f32_e64 s26, v195, v195
	v_cmp_o_f32_e64 s27, v193, v193
	v_cmp_o_f32_e64 s34, v181, v181
	v_cmp_o_f32_e64 s35, v179, v179
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v9, v66, v11 offset1:16
	scratch_load_b32 v9, off, off offset:588 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v9, v67, v12 offset1:16
	scratch_load_b32 v9, off, off offset:592 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v9, v68, v13 offset1:16
	scratch_load_b32 v9, off, off offset:596 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v9, v69, v1 offset1:16
	scratch_load_b32 v1, off, off offset:600 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v70, v2 offset1:16
	scratch_load_b32 v1, off, off offset:604 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v71, v3 offset1:16
	scratch_load_b32 v1, off, off offset:608 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v72, v4 offset1:16
	scratch_load_b32 v1, off, off offset:612 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v82, v17 offset1:16
	scratch_load_b32 v1, off, off offset:616 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v83, v18 offset1:16
	scratch_load_b32 v1, off, off offset:620 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v84, v19 offset1:16
	scratch_load_b32 v1, off, off offset:624 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v85, v20 offset1:16
	scratch_load_b32 v1, off, off offset:628 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v159, v29 offset1:16
	scratch_load_b32 v1, off, off offset:632 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v159, v158
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v160, v30 offset1:16
	scratch_load_b32 v1, off, off offset:636 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v160, v158
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v161, v31 offset1:16
	scratch_load_b32 v1, off, off offset:640 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v161, v158
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v162, v32 offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:408
	scratch_load_b32 v9, off, off offset:644
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v162, v158 :: v_dual_add_nc_u32 v1, 0, v1
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_load_b128 v[10:13], v9
	scratch_load_b32 v9, off, off offset:652 ; 4-byte Folded Reload
	ds_load_b128 v[1:4], v1
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s8, v10, v10
	v_cmp_o_f32_e64 s9, v11, v11
	v_cmp_o_f32_e64 s10, v12, v12
	v_cmp_o_f32_e64 s11, v13, v13
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v17, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cmp_o_f32_e64 s0, v2, v2
	v_cmp_o_f32_e64 s1, v3, v3
	v_cmp_o_f32_e64 s3, v4, v4
	v_add3_u32 v17, v1, v17, 0x7fff
	v_bfe_u32 v1, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v81.l, 0x7fff, v17.h, vcc_lo
	v_add3_u32 v18, v2, v1, 0x7fff
	v_bfe_u32 v1, v3, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v81.h, 0x7fff, v18.h, s0
	v_add3_u32 v19, v3, v1, 0x7fff
	v_bfe_u32 v1, v4, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v82.l, 0x7fff, v19.h, s1
	v_add3_u32 v20, v4, v1, 0x7fff
	v_bfe_u32 v1, v10, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v82.h, 0x7fff, v20.h, s3
	v_add3_u32 v29, v10, v1, 0x7fff
	v_bfe_u32 v1, v11, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.l, 0x7fff, v29.h, s8
	v_add3_u32 v30, v11, v1, 0x7fff
	v_bfe_u32 v1, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v30.h, s9
	v_add3_u32 v31, v12, v1, 0x7fff
	v_bfe_u32 v1, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v31.h, s10
	v_add3_u32 v32, v13, v1, 0x7fff
	scratch_load_b32 v1, off, off offset:648 ; 4-byte Folded Reload
	v_cndmask_b16 v84.h, 0x7fff, v32.h, s11
	s_waitcnt vmcnt(1)
	ds_load_b128 v[10:13], v9
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s16, v10, v10
	v_cmp_o_f32_e64 s17, v11, v11
	v_cmp_o_f32_e64 s18, v12, v12
	v_cmp_o_f32_e64 s19, v13, v13
	s_waitcnt vmcnt(0)
	ds_load_b128 v[1:4], v1
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v65, v1, 16, 1
	v_cmp_o_f32_e64 s12, v1, v1
	v_cmp_o_f32_e64 s13, v2, v2
	v_cmp_o_f32_e64 s14, v3, v3
	v_cmp_o_f32_e64 s15, v4, v4
	v_add3_u32 v1, v1, v65, 0x7fff
	v_bfe_u32 v65, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.l, 0x7fff, v1.h, s12
	v_add3_u32 v2, v2, v65, 0x7fff
	v_bfe_u32 v65, v3, 16, 1
	scratch_load_b32 v1, off, off offset:656 ; 4-byte Folded Reload
	v_cndmask_b16 v85.h, 0x7fff, v2.h, s13
	v_add3_u32 v3, v3, v65, 0x7fff
	v_bfe_u32 v65, v4, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.l, 0x7fff, v3.h, s14
	v_add3_u32 v4, v4, v65, 0x7fff
	v_bfe_u32 v65, v10, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.h, 0x7fff, v4.h, s15
	v_add3_u32 v10, v10, v65, 0x7fff
	v_bfe_u32 v65, v11, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.l, 0x7fff, v10.h, s16
	v_add3_u32 v11, v11, v65, 0x7fff
	v_bfe_u32 v65, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.h, 0x7fff, v11.h, s17
	v_add3_u32 v12, v12, v65, 0x7fff
	v_bfe_u32 v65, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v88.l, 0x7fff, v12.h, s18
	v_add3_u32 v13, v13, v65, 0x7fff
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v65, v158 :: v_dual_mov_b32 v66, v159
	v_dual_mov_b32 v67, v160 :: v_dual_mov_b32 v68, v161
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v88.h, 0x7fff, v13.h, s19
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[9:12], off, off offset:284
	scratch_load_b128 v[13:16], off, off offset:300
	v_dual_mov_b32 v69, v162 :: v_dual_mov_b32 v70, v163
	v_dual_mov_b32 v71, v164 :: v_dual_mov_b32 v72, v165
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[9:16], v[81:88], v[65:72]
	.loc	1 716 21                        ; attention_backward.py:716:21
	scratch_load_b32 v9, off, off offset:660 ; 4-byte Folded Reload
	ds_load_b128 v[1:4], v1
	s_waitcnt vmcnt(0)
	ds_load_b128 v[10:13], v9
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v17, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	scratch_load_b32 v9, off, off offset:668 ; 4-byte Folded Reload
	v_cmp_o_f32_e64 s0, v2, v2
	v_cmp_o_f32_e64 s1, v3, v3
	v_add3_u32 v17, v1, v17, 0x7fff
	v_bfe_u32 v1, v2, 16, 1
	v_cmp_o_f32_e64 s3, v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v18, v2, v1, 0x7fff
	v_bfe_u32 v1, v3, 16, 1
	v_add3_u32 v19, v3, v1, 0x7fff
	v_bfe_u32 v1, v4, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s8, v10, v10
	v_cmp_o_f32_e64 s9, v11, v11
	v_cmp_o_f32_e64 s10, v12, v12
	v_cmp_o_f32_e64 s11, v13, v13
	v_add3_u32 v20, v4, v1, 0x7fff
	v_bfe_u32 v1, v10, 16, 1
	v_cndmask_b16 v82.l, 0x7fff, v19.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v82.h, 0x7fff, v20.h, s3
	v_add3_u32 v29, v10, v1, 0x7fff
	v_bfe_u32 v1, v11, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.l, 0x7fff, v29.h, s8
	v_add3_u32 v30, v11, v1, 0x7fff
	v_bfe_u32 v1, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v30.h, s9
	v_add3_u32 v31, v12, v1, 0x7fff
	v_bfe_u32 v1, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v31.h, s10
	v_add3_u32 v32, v13, v1, 0x7fff
	scratch_load_b32 v1, off, off offset:664 ; 4-byte Folded Reload
	v_cndmask_b16 v84.h, 0x7fff, v32.h, s11
	s_waitcnt vmcnt(1)
	ds_load_b128 v[10:13], v9
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s16, v10, v10
	v_cmp_o_f32_e64 s17, v11, v11
	v_cmp_o_f32_e64 s18, v12, v12
	v_cmp_o_f32_e64 s19, v13, v13
	s_waitcnt vmcnt(0)
	ds_load_b128 v[1:4], v1
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v81, v1, 16, 1
	v_cmp_o_f32_e64 s12, v1, v1
	v_cmp_o_f32_e64 s13, v2, v2
	v_cmp_o_f32_e64 s14, v3, v3
	v_cmp_o_f32_e64 s15, v4, v4
	v_add3_u32 v1, v1, v81, 0x7fff
	v_bfe_u32 v81, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.l, 0x7fff, v1.h, s12
	v_add3_u32 v2, v2, v81, 0x7fff
	v_bfe_u32 v81, v3, 16, 1
	scratch_load_b32 v1, off, off offset:672 ; 4-byte Folded Reload
	v_cndmask_b16 v85.h, 0x7fff, v2.h, s13
	v_add3_u32 v3, v3, v81, 0x7fff
	v_bfe_u32 v81, v4, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.l, 0x7fff, v3.h, s14
	v_add3_u32 v4, v4, v81, 0x7fff
	v_bfe_u32 v81, v10, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.h, 0x7fff, v4.h, s15
	v_add3_u32 v10, v10, v81, 0x7fff
	v_bfe_u32 v81, v11, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.l, 0x7fff, v10.h, s16
	v_add3_u32 v11, v11, v81, 0x7fff
	v_bfe_u32 v81, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.h, 0x7fff, v11.h, s17
	v_add3_u32 v12, v12, v81, 0x7fff
	v_bfe_u32 v81, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v88.l, 0x7fff, v12.h, s18
	v_add3_u32 v13, v13, v81, 0x7fff
	v_cndmask_b16 v81.l, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v81.h, 0x7fff, v18.h, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v88.h, 0x7fff, v13.h, s19
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[9:12], off, off offset:248
	scratch_load_b128 v[13:16], off, off offset:264
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[9:16], v[81:88], v[65:72]
	.loc	1 716 21                        ; attention_backward.py:716:21
	scratch_load_b32 v9, off, off offset:676 ; 4-byte Folded Reload
	ds_load_b128 v[1:4], v1
	s_waitcnt vmcnt(0)
	ds_load_b128 v[10:13], v9
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v17, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	scratch_load_b32 v9, off, off offset:684 ; 4-byte Folded Reload
	v_cmp_o_f32_e64 s0, v2, v2
	v_cmp_o_f32_e64 s1, v3, v3
	v_add3_u32 v17, v1, v17, 0x7fff
	v_bfe_u32 v1, v2, 16, 1
	v_cmp_o_f32_e64 s3, v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v18, v2, v1, 0x7fff
	v_bfe_u32 v1, v3, 16, 1
	v_add3_u32 v19, v3, v1, 0x7fff
	v_bfe_u32 v1, v4, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s8, v10, v10
	v_cmp_o_f32_e64 s9, v11, v11
	v_cmp_o_f32_e64 s10, v12, v12
	v_cmp_o_f32_e64 s11, v13, v13
	v_add3_u32 v20, v4, v1, 0x7fff
	v_bfe_u32 v1, v10, 16, 1
	v_cndmask_b16 v82.l, 0x7fff, v19.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v82.h, 0x7fff, v20.h, s3
	v_add3_u32 v29, v10, v1, 0x7fff
	v_bfe_u32 v1, v11, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.l, 0x7fff, v29.h, s8
	v_add3_u32 v30, v11, v1, 0x7fff
	v_bfe_u32 v1, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v30.h, s9
	v_add3_u32 v31, v12, v1, 0x7fff
	v_bfe_u32 v1, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v31.h, s10
	v_add3_u32 v32, v13, v1, 0x7fff
	scratch_load_b32 v1, off, off offset:680 ; 4-byte Folded Reload
	v_cndmask_b16 v84.h, 0x7fff, v32.h, s11
	s_waitcnt vmcnt(1)
	ds_load_b128 v[10:13], v9
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s16, v10, v10
	v_cmp_o_f32_e64 s17, v11, v11
	v_cmp_o_f32_e64 s18, v12, v12
	v_cmp_o_f32_e64 s19, v13, v13
	s_waitcnt vmcnt(0)
	ds_load_b128 v[1:4], v1
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v81, v1, 16, 1
	v_cmp_o_f32_e64 s12, v1, v1
	v_cmp_o_f32_e64 s13, v2, v2
	v_cmp_o_f32_e64 s14, v3, v3
	v_cmp_o_f32_e64 s15, v4, v4
	v_add3_u32 v1, v1, v81, 0x7fff
	v_bfe_u32 v81, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.l, 0x7fff, v1.h, s12
	v_add3_u32 v2, v2, v81, 0x7fff
	v_bfe_u32 v81, v3, 16, 1
	scratch_load_b32 v1, off, off offset:688 ; 4-byte Folded Reload
	v_cndmask_b16 v85.h, 0x7fff, v2.h, s13
	v_add3_u32 v3, v3, v81, 0x7fff
	v_bfe_u32 v81, v4, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.l, 0x7fff, v3.h, s14
	v_add3_u32 v4, v4, v81, 0x7fff
	v_bfe_u32 v81, v10, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.h, 0x7fff, v4.h, s15
	v_add3_u32 v10, v10, v81, 0x7fff
	v_bfe_u32 v81, v11, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.l, 0x7fff, v10.h, s16
	v_add3_u32 v11, v11, v81, 0x7fff
	v_bfe_u32 v81, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.h, 0x7fff, v11.h, s17
	v_add3_u32 v12, v12, v81, 0x7fff
	v_bfe_u32 v81, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v88.l, 0x7fff, v12.h, s18
	v_add3_u32 v13, v13, v81, 0x7fff
	v_cndmask_b16 v81.l, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v81.h, 0x7fff, v18.h, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v88.h, 0x7fff, v13.h, s19
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[9:12], off, off offset:216
	scratch_load_b128 v[13:16], off, off offset:232
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[9:16], v[81:88], v[65:72]
	.loc	1 716 21                        ; attention_backward.py:716:21
	scratch_load_b32 v9, off, off offset:692 ; 4-byte Folded Reload
	ds_load_b128 v[1:4], v1
	s_waitcnt vmcnt(0)
	ds_load_b128 v[10:13], v9
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v17, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	scratch_load_b32 v9, off, off offset:700 ; 4-byte Folded Reload
	v_cmp_o_f32_e64 s0, v2, v2
	v_cmp_o_f32_e64 s1, v3, v3
	v_add3_u32 v17, v1, v17, 0x7fff
	v_bfe_u32 v1, v2, 16, 1
	v_cmp_o_f32_e64 s3, v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v18, v2, v1, 0x7fff
	v_bfe_u32 v1, v3, 16, 1
	v_add3_u32 v19, v3, v1, 0x7fff
	v_bfe_u32 v1, v4, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s8, v10, v10
	v_cmp_o_f32_e64 s9, v11, v11
	v_cmp_o_f32_e64 s10, v12, v12
	v_cmp_o_f32_e64 s11, v13, v13
	v_add3_u32 v20, v4, v1, 0x7fff
	v_bfe_u32 v1, v10, 16, 1
	v_cndmask_b16 v82.l, 0x7fff, v19.h, s1
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v19, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v82.h, 0x7fff, v20.h, s3
	v_add3_u32 v29, v10, v1, 0x7fff
	v_bfe_u32 v1, v11, 16, 1
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v20, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v83.l, 0x7fff, v29.h, s8
	v_add3_u32 v30, v11, v1, 0x7fff
	v_bfe_u32 v1, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v20, v175, v20
	v_cvt_f32_i32_e32 v29, v78
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v83.h, 0x7fff, v30.h, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v31, v12, v1, 0x7fff
	v_bfe_u32 v1, v13, 16, 1
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v30, v79
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v84.l, 0x7fff, v31.h, s10
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v32, v13, v1, 0x7fff
	scratch_load_b32 v1, off, off offset:696 ; 4-byte Folded Reload
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v31, v80
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v84.h, 0x7fff, v32.h, s11
	v_cmp_o_f32_e64 s11, v225, v225
	s_waitcnt vmcnt(1)
	ds_load_b128 v[10:13], v9
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s16, v10, v10
	v_cmp_o_f32_e64 s17, v11, v11
	v_cmp_o_f32_e64 s18, v12, v12
	v_cmp_o_f32_e64 s19, v13, v13
	s_waitcnt vmcnt(0)
	ds_load_b128 v[1:4], v1
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v81, v1, 16, 1
	v_cmp_o_f32_e64 s12, v1, v1
	v_cmp_o_f32_e64 s13, v2, v2
	v_cmp_o_f32_e64 s14, v3, v3
	v_cmp_o_f32_e64 s15, v4, v4
	v_add3_u32 v1, v1, v81, 0x7fff
	v_bfe_u32 v81, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.l, 0x7fff, v1.h, s12
	v_add3_u32 v2, v2, v81, 0x7fff
	v_bfe_u32 v81, v3, 16, 1
	v_cmp_o_f32_e64 s12, v223, v223
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v85.h, 0x7fff, v2.h, s13
	v_add3_u32 v3, v3, v81, 0x7fff
	v_bfe_u32 v81, v4, 16, 1
	v_cmp_o_f32_e64 s13, v221, v221
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v86.l, 0x7fff, v3.h, s14
	v_add3_u32 v4, v4, v81, 0x7fff
	v_bfe_u32 v81, v10, 16, 1
	v_cmp_o_f32_e64 s14, v219, v219
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v86.h, 0x7fff, v4.h, s15
	v_add3_u32 v10, v10, v81, 0x7fff
	v_bfe_u32 v81, v11, 16, 1
	v_cmp_o_f32_e64 s15, v217, v217
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v87.l, 0x7fff, v10.h, s16
	v_add3_u32 v11, v11, v81, 0x7fff
	v_bfe_u32 v81, v12, 16, 1
	v_cmp_o_f32_e64 s16, v215, v215
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v87.h, 0x7fff, v11.h, s17
	v_add3_u32 v12, v12, v81, 0x7fff
	v_bfe_u32 v81, v13, 16, 1
	v_cmp_o_f32_e64 s17, v213, v213
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v88.l, 0x7fff, v12.h, s18
	v_add3_u32 v13, v13, v81, 0x7fff
	v_cndmask_b16 v81.l, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v81.h, 0x7fff, v18.h, s0
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v17, v74
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v0.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v88.h, 0x7fff, v13.h, s19
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[9:12], off, off offset:184
	scratch_load_b128 v[13:16], off, off offset:200
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_and_b16 v0.h, 1, v156.l
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v17, v175, v17
	v_cvt_f32_i32_e32 v18, v75
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s18, v211, v211
	v_cmp_o_f32_e64 s19, v209, v209
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e64 s0, 1, v0.h
	v_and_b16 v0.h, 1, v155.h
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s1, 1, v0.h
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[9:16], v[81:88], v[65:72]
	.loc	1 696 25                        ; attention_backward.py:696:25
	scratch_load_b32 v9, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v13, v73
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v88.l, v168.l
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v12, v71, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_sub_f32 v10, v69, v28 :: v_dual_mul_f32 v13, v175, v13
	v_sub_f32_e32 v2, v66, v28
	s_waitcnt vmcnt(0)
	v_dual_sub_f32 v4, v68, v28 :: v_dual_fmac_f32 v27, v13, v9
	.loc	1 696 25                        ; attention_backward.py:696:25
	scratch_load_b32 v9, off, off offset:392 ; 4-byte Folded Reload
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_lshlrev_b32_e32 v13, 16, v26
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v26, v175, v31
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v31.l, v168.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 696 35                        ; attention_backward.py:696:35
	v_mul_f32_e32 v13, 0x3fb8aa3b, v13
	.loc	1 696 25 is_stmt 0              ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v13, v20, v9
	scratch_load_b32 v9, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 691 36 is_stmt 1              ; attention_backward.py:691:36
	v_lshlrev_b32_e32 v20, 16, v174
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_dual_sub_f32 v13, v13, v247 :: v_dual_mul_f32 v20, 0x3fb8aa3b, v20
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v156, 0, v13, s0
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v10, v156, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v10, s56, v10
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v13, v10, 16, 1
	v_cmp_o_f32_e64 s0, v10, v10
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v10, v10, v13, 0x7fff
	.loc	1 696 25 is_stmt 1              ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v20, v17, v9
	.loc	1 722 33                        ; attention_backward.py:722:33
	scratch_load_b32 v9, off, off offset:412 ; 4-byte Folded Reload
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v11, v70, v28
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v17, v27, v247
	v_sub_f32_e32 v13, v20, v247
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v17, v17
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e32 v82, 0, v17, vcc_lo
	v_cndmask_b32_e64 v174, 0, v13, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_dual_sub_f32 v1, v65, v28 :: v_dual_mul_f32 v2, v174, v2
	v_sub_f32_e32 v3, v67, v28
	v_dual_sub_f32 v28, v72, v28 :: v_dual_mul_f32 v1, v82, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_dual_mul_f32 v2, s56, v2 :: v_dual_mul_f32 v1, s56, v1
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v13, v2, 16, 1
	v_cmp_o_f32_e64 s1, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_bfe_u32 v17, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_add3_u32 v2, v2, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v1, v17, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v10.h, s0
	v_cndmask_b16 v0.h, 0x7fff, v1.h, vcc_lo
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, 0, v9
	.loc	1 696 25                        ; attention_backward.py:696:25
	scratch_load_b32 v9, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v10, v0
	ds_store_b16 v10, v1 offset:512
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v1, v170, 0, 8
	.loc	1 721 37 is_stmt 1              ; attention_backward.py:721:37
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v2.l, v1.l
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v10, 15, v2
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v1.l, v2.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v13, -16, v10
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v1.l
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v1, v167, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v1.h, v168.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v10, v10, v13, vcc_lo
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v13.l, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v1.l, v13.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v17, 15, v13
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e64 v13.h, v172.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v1.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v1.l, 4, v2.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v20, -16, v17
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v1.l, v1.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v17, v17, v20, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v2.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v10, v10
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v20, -16, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v17, v17
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v2, v1, v20, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v1.l, 4, v13.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v13.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v13.l, v168.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v1.l, v1.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v10, v10, v13
	v_mul_f32_e32 v2, v2, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v20, -16, v1
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v13.h, v171.l
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_dual_cndmask_b32 v1, v1, v20 :: v_dual_mul_f32 v20, v175, v30
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v30.l, v168.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v1, v1
	v_mul_f32_e32 v1, v13, v1
	v_mul_f32_e32 v13, v13, v17
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v17.h, v168.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0, v1, s6
	v_mov_b16_e32 v17.l, v1.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_and_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v17, v1, v17, 0x7fff
	v_cndmask_b32_e64 v1, 0, v13, s5
	v_mov_b16_e64 v13.h, v168.l
	v_cndmask_b16 v17.h, 0x7fff, v17.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v13.l, v1.h
	v_cmp_o_f32_e64 s0, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cndmask_b32_e64 v1, 0, v10, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v17.l, 0x7fff, v13.h, s0
	v_bfe_u32 v10, v1, 16, 1
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_lshlrev_b32_e32 v13, 16, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v10, v1, v10, 0x7fff
	v_cndmask_b32_e64 v1, 0, v2, s6
	.loc	1 696 35                        ; attention_backward.py:696:35
	v_mul_f32_e32 v13, 0x3fb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v2, v1, 16, 1
	v_cmp_o_f32_e64 s3, v1, v1
	v_add3_u32 v2, v1, v2, 0x7fff
	v_cndmask_b16 v2.l, 0x7fff, v10.h, s1
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_dual_mul_f32 v1, v175, v18 :: v_dual_lshlrev_b32 v10, 16, v24
	v_mul_f32_e32 v18, v175, v19
	v_mul_f32_e32 v19, v175, v29
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 696 35                        ; attention_backward.py:696:35
	v_mul_f32_e32 v10, 0x3fb8aa3b, v10
	.loc	1 696 25 is_stmt 0              ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v10, v1, v9
	scratch_load_b32 v9, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 691 36 is_stmt 1              ; attention_backward.py:691:36
	v_lshlrev_b32_e32 v1, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_dual_sub_f32 v10, v10, v247 :: v_dual_mul_f32 v1, 0x3fb8aa3b, v1
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v10, v10
	.loc	1 696 25 is_stmt 1              ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, v18, v9
	scratch_load_b32 v9, off, off offset:396 ; 4-byte Folded Reload
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_lshlrev_b32_e32 v18, 16, v253
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v18, 0x3fb8aa3b, v18 :: v_dual_fmac_f32 v13, v19, v9
	.loc	1 696 25 is_stmt 0              ; attention_backward.py:696:25
	scratch_load_b32 v9, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 691 36 is_stmt 1              ; attention_backward.py:691:36
	v_lshlrev_b32_e32 v19, 16, v176
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v13, v13, v247
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v19, 0x3fb8aa3b, v19 :: v_dual_fmac_f32 v18, v20, v9
	.loc	1 696 25 is_stmt 0              ; attention_backward.py:696:25
	scratch_load_b32 v9, off, off offset:404 ; 4-byte Folded Reload
	.loc	1 703 34 is_stmt 1              ; attention_backward.py:703:34
	v_sub_f32_e32 v20, v1, v247
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_and_b16 v1.l, 1, v155.l
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v18, v18, v247
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v1.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v155, 0, v10, vcc_lo
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v10, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v1, v155, v3
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v1, s56, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v3, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 697 25 is_stmt 1              ; attention_backward.py:697:25
	v_and_b16 v1.l, 1, v154.h
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s0, 1, v1.l
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v167, 0, v10, s0
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v10, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v1, v167, v4
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v1, s56, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v4, v1, 16, 1
	v_cmp_o_f32_e64 s0, v1, v1
	v_add3_u32 v4, v1, v4, 0x7fff
	.loc	1 697 25 is_stmt 1              ; attention_backward.py:697:25
	v_and_b16 v1.l, 1, v154.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s1, 1, v1.l
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v154, 0, v10, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v1, v154, v11
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v11, v18
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v1, s56, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v10, v1, 16, 1
	v_cmp_o_f32_e64 s1, v1, v1
	v_add3_u32 v10, v1, v10, 0x7fff
	.loc	1 697 25 is_stmt 1              ; attention_backward.py:697:25
	v_and_b16 v1.l, 1, v89.h
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s3, 1, v1.l
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v170, 0, v11, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v1, v170, v12
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v1, s56, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v11, v1, 16, 1
	v_cmp_o_f32_e64 s3, v1, v1
	v_add3_u32 v11, v1, v11, 0x7fff
	.loc	1 697 25 is_stmt 1              ; attention_backward.py:697:25
	v_and_b16 v1.l, 1, v89.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v89.l, v168.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e64 s8, 1, v1.l
	.loc	1 696 25                        ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v19, v26, v9
	scratch_load_b32 v9, off, off offset:704 ; 4-byte Folded Reload
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v19, v19, v247
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v12, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v171, 0, v12, s8
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v1, v171, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v1, s56, v1
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v12, v1, 16, 1
	v_cmp_o_f32_e64 s8, v1, v1
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v12, v1, v12, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v10.h, s1
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v9, v0
	ds_store_b16 v9, v1 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v0.h, 0x7fff, v3.h, vcc_lo
	scratch_load_b32 v3, off, off offset:708 ; 4-byte Folded Reload
	v_cndmask_b16 v1.l, 0x7fff, v11.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v3, v0
	ds_store_b16 v3, v1 offset:512
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v1, v166, 0, 8
	.loc	1 721 37 is_stmt 1              ; attention_backward.py:721:37
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v3.l, v1.l
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v4, 15, v3
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v1.l, v3.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v10, -16, v4
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v1.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v1, v4, v10, vcc_lo
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v4, v0, 0, 8
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v10, 15, v4
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.l, v4.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v11, -16, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v3.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v10, v10, v11, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v11.l, v0.l, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e64 v11.h, v168.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v3.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v4.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v10, v10
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v13, -16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v3, v11, v13, vcc_lo
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v11.l, v0.l, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v4.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v0.l, 0x7fff, v12.h, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v3, v3
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v13, -16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v4, v11, v13, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e64 v11.h, v242.l
	v_mov_b16_e64 v11.l, v168.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v1, v1, v11
	v_mul_f32_e32 v3, v3, v11
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v11.h, v25.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v1, 0, v1, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v10, v10, v11
	v_mul_f32_e32 v4, v4, v11
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v11, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v11, v1, v11, 0x7fff
	v_cndmask_b32_e64 v1, 0, v3, s6
	v_bfe_u32 v3, v1, 16, 1
	v_cmp_o_f32_e64 s0, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b32_e64 v1, 0, v10, s5
	v_bfe_u32 v10, v1, 16, 1
	v_cmp_o_f32_e64 s1, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v1, v10, 0x7fff
	v_cndmask_b32_e64 v1, 0, v4, s6
	v_cndmask_b16 v3.l, 0x7fff, v10.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v4, v1, 16, 1
	v_cmp_o_f32_e64 s3, v1, v1
	v_add3_u32 v4, v1, v4, 0x7fff
	scratch_load_b32 v1, off, off offset:712 ; 4-byte Folded Reload
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v1, v0
	ds_store_b16 v1, v0 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v1.l, 0x7fff, v11.h, vcc_lo
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s0
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, 0, v0
	ds_load_b128 v[74:77], v0
	scratch_load_b32 v0, off, off offset:716 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[78:81], v0
	scratch_load_b32 v0, off, off offset:720 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[66:69], v0
	scratch_load_b32 v0, off, off offset:724 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[70:73], v0
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v0, v248, 0, 8
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b32 v173, v17, v2 offset1:1
	ds_store_2addr_stride64_b32 v173, v1, v3 offset0:2 offset1:3
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v2.l, v0.l
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	scratch_load_b32 v9, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v4, 15, v2
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.l, v2.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v10, -16, v4
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v0, v250, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v0.h, v168.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v4, v4, v10, vcc_lo
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v10.l, v0.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.l, v10.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_dual_mul_f32 v4, v4, v5 :: v_dual_and_b32 v11, 15, v10
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v2.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v12, -16, v11
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v4, 0, v4, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v11, v11, v12, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v2.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v12, -16, v0
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v2, v0, v12, vcc_lo
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v10.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v10.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v10, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v2, v2, v5
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v12, -16, v0
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v5.h, v244.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v2, 0, v2, s6
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v0, v0, v12, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v10, v10, v5
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_cmp_o_f32_e64 s0, v2, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v0, v0
	v_mul_f32_e32 v0, v0, v5
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v5, v4, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v0, 0, v0, s6
	v_add3_u32 v5, v4, v5, 0x7fff
	v_bfe_u32 v4, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_add3_u32 v4, v2, v4, 0x7fff
	v_cndmask_b32_e64 v2, 0, v10, s5
	v_cndmask_b16 v4.l, 0x7fff, v5.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s0
	v_bfe_u32 v10, v2, 16, 1
	v_cmp_o_f32_e64 s1, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v10, v2, v10, 0x7fff
	v_bfe_u32 v2, v0, 16, 1
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v0, v251, 0, 8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v2.l, 0x7fff, v10.h, s1
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v1.l, v0.l
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v3, 15, v1
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.l, v1.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v5, -16, v3
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v0, v22, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v0.h, v168.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v3, v3, v5, vcc_lo
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v5.l, v0.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v3, v3
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.l, v5.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v10, 15, v5
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e64 v5.h, v252.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v1.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v11, -16, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v10, v10, v11, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v11, -16, v0
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v1, v0, v11, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v5.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v5.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v5.l, v168.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v3, v3, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v1, v1, v5
	.loc	1 623 39                        ; attention_backward.py:623:39
	scratch_load_b32 v5, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v11, -16, v0
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v3, 0, v3, s5
	v_cndmask_b32_e64 v1, 0, v1, s6
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v0, v0, v11, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_cmp_o_f32_e64 s0, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v0, v0
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v5.h, v5.l
	v_mov_b16_e64 v5.l, v168.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v10, v10, v5
	v_mul_f32_e32 v0, v0, v5
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v5, v3, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v0, 0, v0, s6
	v_add3_u32 v5, v3, v5, 0x7fff
	v_bfe_u32 v3, v1, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b32_e64 v1, 0, v10, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v10, v1, 16, 1
	v_cmp_o_f32_e64 s1, v1, v1
	v_add3_u32 v10, v1, v10, 0x7fff
	v_bfe_u32 v1, v0, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v1, v0, v1, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v5.h, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s0
	v_cndmask_b16 v1.l, 0x7fff, v10.h, s1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s3
	ds_store_2addr_stride64_b32 v173, v4, v2 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v173, v0, v1 offset0:6 offset1:7
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v0, v241, 0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v1.l, v0.l
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v2, 15, v1
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.l, v1.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v3, -16, v2
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v0, v7, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v0.h, v168.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v2, v2, v3, vcc_lo
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v3.l, v0.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.l, v3.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v4, 15, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 42 is_stmt 1              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v1.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v5, -16, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v4, v4, v5, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v5, -16, v0
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v1, v0, v5, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v3.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v3.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	scratch_load_b32 v3, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v1, v1
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v5, -16, v0
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v0, v0, v5, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v0, v0
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v3.h, v3.l
	v_mov_b16_e64 v3.l, v168.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v2, v2, v3
	v_mul_f32_e32 v1, v1, v3
	.loc	1 623 39                        ; attention_backward.py:623:39
	scratch_load_b32 v3, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v2, 0, v2, s5
	v_cndmask_b32_e64 v1, 0, v1, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v3.h, v3.l
	v_mov_b16_e64 v3.l, v168.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v4, v4, v3
	v_mul_f32_e32 v0, v0, v3
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v3, v2, 16, 1
	v_cndmask_b32_e64 v0, 0, v0, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v3, v2, v3, 0x7fff
	v_bfe_u32 v2, v1, 16, 1
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v2, v1, v2, 0x7fff
	v_cndmask_b32_e64 v1, 0, v4, s5
	v_cndmask_b16 v2.l, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v4, v1, 16, 1
	v_cmp_o_f32_e64 s1, v1, v1
	v_add3_u32 v4, v1, v4, 0x7fff
	v_bfe_u32 v1, v0, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v1, v0, v1, 0x7fff
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v0, v21, 0, 8
	v_mov_b16_e32 v1.l, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v0.l, v1.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v3, 15, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 42 is_stmt 1              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v0, v246, 0, 8
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v5, -16, v3
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v0.h, v168.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v4.l, v0.l
	.loc	1 650 33 is_stmt 1              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v3, v3, v5, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.l, v4.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v5, 15, v4
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v1.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v7, -16, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v5, v5, v7, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v7, -16, v0
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v7, v0, v7, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v4.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v4.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v7, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v10, -16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v0, v0, v10, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v10.h, v9.l
	scratch_load_b32 v9, off, off offset:16 ; 4-byte Folded Reload
	v_mov_b16_e64 v10.l, v168.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v0, v0
	v_mul_f32_e32 v3, v3, v10
	v_mul_f32_e32 v7, v7, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v3, 0, v3, s5
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v10.h, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v5, v5, v10
	v_mul_f32_e32 v0, v0, v10
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v10, v3, 16, 1
	v_cndmask_b32_e64 v0, 0, v0, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v10, v3, v10, 0x7fff
	v_cndmask_b32_e64 v3, 0, v7, s6
	v_cmp_o_f32_e64 s9, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v1.l, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v7, v3, 16, 1
	v_cmp_o_f32_e64 s0, v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v7, v3, v7, 0x7fff
	v_cndmask_b32_e64 v3, 0, v5, s5
	v_bfe_u32 v5, v3, 16, 1
	v_cmp_o_f32_e64 s8, v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v5, v3, v5, 0x7fff
	v_bfe_u32 v3, v0, 16, 1
	v_add3_u32 v3, v0, v3, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v4.h, s1
	v_cndmask_b16 v0.h, 0x7fff, v1.h, s3
	v_cndmask_b16 v1.h, 0x7fff, v7.h, s0
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s8
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s9
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s8, v170, v170
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_store_2addr_stride64_b32 v173, v2, v0 offset0:8 offset1:9
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v0, v169, 0, 8
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s9, v171, v171
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_store_2addr_stride64_b32 v173, v1, v3 offset0:10 offset1:11
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v2.l, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v4, 15, v2
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.l, v2.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v5, -16, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v0, v254, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v0.h, v168.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v4, v4, v5, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v5.l, v0.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.l, v5.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v7, 15, v5
	.loc	1 650 42 is_stmt 1              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v2.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v9, -16, v7
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v7, v7, v9, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v2.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v9, -16, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v2, v0, v9, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v5.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v5.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	scratch_load_b32 v5, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v9, -16, v0
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v0, v0, v9, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v0, v0
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v5.h, v5.l
	v_mov_b16_e64 v5.l, v168.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v4, v4, v5
	v_mul_f32_e32 v2, v2, v5
	.loc	1 623 39                        ; attention_backward.py:623:39
	scratch_load_b32 v5, off, off offset:8  ; 4-byte Folded Reload
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v4, 0, v4, s5
	v_cndmask_b32_e64 v2, 0, v2, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_cmp_o_f32_e64 s0, v2, v2
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v5.h, v5.l
	v_mov_b16_e64 v5.l, v168.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v7, v7, v5
	v_mul_f32_e32 v0, v0, v5
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v5, v4, 16, 1
	v_cndmask_b32_e64 v0, 0, v0, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v5, v4, v5, 0x7fff
	v_bfe_u32 v4, v2, 16, 1
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v4, v2, v4, 0x7fff
	v_cndmask_b32_e64 v2, 0, v7, s5
	v_cndmask_b16 v4.l, 0x7fff, v5.h, vcc_lo
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v7, v2, 16, 1
	v_cmp_o_f32_e64 s1, v2, v2
	v_add3_u32 v7, v2, v7, 0x7fff
	v_bfe_u32 v2, v0, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v0, v245, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v2.l, 0x7fff, v7.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s3
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v1.l, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v3, 15, v1
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.l, v1.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v5, -16, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v0, v249, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v0.h, v168.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v3, v3, v5, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v5.l, v0.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.l, v5.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v7, 15, v5
	.loc	1 650 42 is_stmt 1              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v9, -16, v7
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v7, v7, v9, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v1.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v9, -16, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v1, v0, v9, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v5.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v5.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	scratch_load_b32 v5, off, off offset:4  ; 4-byte Folded Reload
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v1, v1
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v9, -16, v0
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v0, v0, v9, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v0, v0
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v5.h, v5.l
	v_mov_b16_e64 v5.l, v168.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v3, v3, v5
	v_mul_f32_e32 v1, v1, v5
	.loc	1 623 39                        ; attention_backward.py:623:39
	scratch_load_b32 v5, off, off           ; 4-byte Folded Reload
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v3, 0, v3, s5
	v_cndmask_b32_e64 v1, 0, v1, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v5.h, v5.l
	v_mov_b16_e64 v5.l, v168.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v7, v7, v5
	v_mul_f32_e32 v0, v0, v5
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v5, v3, 16, 1
	v_cndmask_b32_e64 v0, 0, v0, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v5, v3, v5, 0x7fff
	v_bfe_u32 v3, v1, 16, 1
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b32_e64 v1, 0, v7, s5
	v_bfe_u32 v7, v1, 16, 1
	v_cmp_o_f32_e64 s1, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v7, v1, v7, 0x7fff
	v_bfe_u32 v1, v0, 16, 1
	v_add3_u32 v1, v0, v1, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v5.h, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s0
	v_cndmask_b16 v1.l, 0x7fff, v7.h, s1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v82, v82
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s3
	ds_store_2addr_stride64_b32 v173, v4, v2 offset0:12 offset1:13
	ds_store_2addr_stride64_b32 v173, v0, v1 offset0:14 offset1:15
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v16, v6 offset:512
	ds_load_u16_d16 v17, v6 offset:768
	ds_load_u16_d16 v18, v6 offset:1024
	ds_load_u16_d16 v21, v6 offset:1792
	ds_load_u16_d16 v19, v6 offset:1280
	ds_load_u16_d16 v26, v6 offset:1088
	ds_load_u16_d16 v25, v6 offset:832
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16_hi v26, v6 offset:1216
	ds_load_u16_d16 v15, v6 offset:256
	ds_load_u16_d16 v14, v6
	ds_load_u16_d16 v20, v6 offset:1536
	ds_load_u16_d16_hi v16, v6 offset:640
	ds_load_u16_d16_hi v17, v6 offset:896
	ds_load_u16_d16_hi v18, v6 offset:1152
	ds_load_u16_d16 v27, v6 offset:1344
	ds_load_u16_d16 v163, v6 offset:3072
	ds_load_u16_d16 v248, v6 offset:2624
	ds_load_u16_d16 v247, v6 offset:2368
	ds_load_u16_d16 v159, v6 offset:2048
	ds_load_u16_d16 v160, v6 offset:2304
	ds_load_u16_d16 v161, v6 offset:2560
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v0, v82, 16, 1
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v248, v6 offset:2752
	ds_load_u16_d16_hi v20, v6 offset:1664
	ds_load_u16_d16_hi v21, v6 offset:1920
	ds_load_u16_d16_hi v19, v6 offset:1408
	ds_load_u16_d16 v22, v6 offset:64
	ds_load_u16_d16_hi v15, v6 offset:384
	ds_load_u16_d16 v24, v6 offset:576
	ds_load_u16_d16 v23, v6 offset:320
	ds_load_u16_d16_hi v14, v6 offset:128
	ds_load_u16_d16 v28, v6 offset:1600
	ds_load_u16_d16 v246, v6 offset:2112
	ds_load_u16_d16 v29, v6 offset:1856
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v0, v82, v0, 0x7fff
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_load_u16_d16_hi v27, v6 offset:1472
	s_waitcnt lgkmcnt(3)
	ds_load_u16_d16_hi v28, v6 offset:1728
	s_waitcnt lgkmcnt(2)
	ds_load_u16_d16_hi v29, v6 offset:1984
	ds_load_u16_d16_hi v159, v6 offset:2176
	ds_load_u16_d16 v249, v6 offset:2880
	ds_load_u16_d16_hi v247, v6 offset:2496
	ds_load_u16_d16_hi v246, v6 offset:2240
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v168.h, 0x7fff, v0.h, vcc_lo
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_load_u16_d16 v162, v6 offset:2816
	ds_load_u16_d16 v166, v6 offset:3840
	ds_load_u16_d16 v164, v6 offset:3328
	ds_load_u16_d16 v250, v6 offset:3136
	ds_load_u16_d16 v165, v6 offset:3584
	ds_load_u16_d16 v253, v6 offset:3904
	ds_load_u16_d16 v252, v6 offset:3648
	ds_load_u16_d16 v251, v6 offset:3392
	ds_load_u16_d16_hi v160, v6 offset:2432
	ds_load_u16_d16_hi v161, v6 offset:2688
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s0, v174, v174
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_load_u16_d16_hi v22, v6 offset:192
	ds_load_u16_d16_hi v25, v6 offset:960
	ds_load_u16_d16_hi v24, v6 offset:704
	ds_load_u16_d16_hi v23, v6 offset:448
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[57:64], v[14:21], v[74:81], v[57:64]
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v0, v82, v168
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v162, v6 offset:2944
	ds_load_u16_d16_hi v163, v6 offset:3200
	ds_load_u16_d16_hi v249, v6 offset:3008
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v164, v6 offset:3456
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v250, v6 offset:3264
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v165, v6 offset:3712
	ds_load_u16_d16_hi v166, v6 offset:3968
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v253, v6 offset:4032
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v252, v6 offset:3776
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v251, v6 offset:3520
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v1, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v11, off, off offset:728
	scratch_load_b32 v12, off, off offset:732
	scratch_load_b32 v13, off, off offset:736
	scratch_load_b32 v16, off, off offset:740
	scratch_load_b32 v17, off, off offset:744
	scratch_load_b32 v18, off, off offset:748
	scratch_load_b32 v19, off, off offset:752
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v5, v0, v1, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v0, v174, 16, 1
	v_bfe_u32 v1, v155, 16, 1
	v_bfe_u32 v7, v170, 16, 1
	v_cmp_o_f32_e64 s1, v155, v155
	v_bfe_u32 v3, v156, 16, 1
	v_add3_u32 v0, v174, v0, 0x7fff
	v_add3_u32 v1, v155, v1, 0x7fff
	v_bfe_u32 v4, v154, 16, 1
	v_add3_u32 v9, v170, v7, 0x7fff
	v_bfe_u32 v7, v171, 16, 1
	v_cndmask_b16 v2.h, 0x7fff, v0.h, s0
	v_bfe_u32 v0, v167, 16, 1
	v_cmp_o_f32_e64 s0, v167, v167
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s1
	v_add3_u32 v3, v156, v3, 0x7fff
	v_cmp_o_f32_e64 s1, v156, v156
	v_add3_u32 v0, v167, v0, 0x7fff
	v_add3_u32 v4, v154, v4, 0x7fff
	v_cmp_o_f32_e64 s3, v154, v154
	v_add3_u32 v10, v171, v7, 0x7fff
	v_cndmask_b16 v14.h, 0x7fff, v3.h, s1
	v_cndmask_b16 v15.h, 0x7fff, v0.h, s0
	scratch_load_b32 v0, off, off offset:368 ; 4-byte Folded Reload
	v_cndmask_b16 v7.h, 0x7fff, v4.h, s3
	v_cndmask_b16 v4.h, 0x7fff, v9.h, s8
	v_cndmask_b16 v3.h, 0x7fff, v10.h, s9
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v1.l, 0x7fff, v5.h, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v5, v238, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v238, v238
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[57:64], v[159:166], v[66:73], v[57:64]
	v_wmma_f32_16x16x16_bf16 v[49:56], v[22:29], v[74:81], v[49:56]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v25.l, v168.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v5, v238, v5, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v2.l, v168.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s0, v234, v234
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[49:56], v[246:253], v[66:73], v[49:56]
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v15.l, v168.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v159.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v230, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v230, v230
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v27.l, v168.l
	v_mov_b16_e64 v29.l, v168.l
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v14.l, v168.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v5, v230, v5, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v7.l, v168.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v160.l, v168.l
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v4.l, v168.l
	v_mov_b16_e64 v3.l, v168.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v161.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v226, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v226, v226
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v159.l, v168.l
	v_mov_b16_e64 v161.l, v168.l
	v_mov_b16_e64 v162.l, v168.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v5, v226, v5, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v163.l, v168.l
	v_mov_b16_e64 v164.l, v168.l
	v_mov_b16_e64 v165.l, v168.l
	v_mov_b16_e64 v166.l, v168.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v162.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v222, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v222, v222
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v135, v159
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v135, v215, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v28.l, v168.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v5, v222, v5, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v135, v215, v135, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v135.l, v168.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v163.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v218, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v218, v218
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v5, v218, v5, 0x7fff
	v_cndmask_b16 v164.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v214, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v214, v214
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v5, v214, v5, 0x7fff
	v_cndmask_b16 v165.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v210, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v210, v210
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v5, v210, v5, 0x7fff
	v_cndmask_b16 v166.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v206, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v206, v206
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v26, v125, v166
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v5, v206, v5, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, 0, v0
	ds_store_b16_d16_hi v9, v168
	ds_store_b16_d16_hi v11, v2
	ds_store_b16_d16_hi v12, v1
	ds_store_b16_d16_hi v13, v15
	ds_store_b16_d16_hi v16, v14
	ds_store_b16_d16_hi v17, v7
	ds_store_b16_d16_hi v18, v4
	ds_store_b16_d16_hi v19, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v169, off, off offset:756
	scratch_load_b32 v175, off, off offset:772
	scratch_load_b32 v157, off, off offset:760
	scratch_load_b32 v172, off, off offset:764
	scratch_load_b32 v241, off, off offset:776
	scratch_load_b32 v242, off, off offset:780
	scratch_load_b32 v176, off, off offset:768
	scratch_load_b32 v0, off, off offset:356
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v2, v174, v2
	v_sub_f32_e32 v7, v154, v7
	v_sub_f32_e32 v4, v170, v4
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v154.l, v168.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v10, v2, 16, 1
	v_cmp_o_f32_e64 s8, v7, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s9, v4, v4
	v_add3_u32 v10, v2, v10, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt vmcnt(7)
	ds_load_b64 v[69:70], v169
	s_waitcnt vmcnt(6)
	ds_load_b64 v[71:72], v175
	s_waitcnt vmcnt(3)
	ds_load_b64 v[66:67], v241
	s_waitcnt vmcnt(2)
	ds_load_b64 v[84:85], v242
	s_waitcnt vmcnt(1)
	ds_load_b64 v[86:87], v176
	ds_load_b64 v[76:77], v157
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, 0, v0
	ds_load_b64 v[82:83], v172
	ds_load_b64 v[79:80], v0
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v9, v1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v9, v234, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v1.l, v168.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v74.h, v69.l
	v_mov_b16_e32 v78.h, v70.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v9, v234, v9, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v1, v155, v1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v81.l, v67.l
	v_mov_b16_e32 v81.h, v85.l
	v_mov_b16_e32 v85.l, v67.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v160.h, 0x7fff, v9.h, s0
	v_bfe_u32 v9, v202, 16, 1
	v_cmp_o_f32_e64 s0, v202, v202
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v75.l, v76.l
	v_mov_b16_e32 v75.h, v82.l
	v_mov_b16_e32 v82.l, v76.h
	v_mov_b16_e32 v69.l, v79.h
	v_mov_b16_e32 v79.h, v83.l
	v_mov_b16_e32 v83.l, v77.h
	v_mov_b16_e32 v77.h, v84.l
	v_mov_b32_e32 v67, v82
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v82.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v198, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v84.l, v66.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v198, v198
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v74.l, v79.l
	v_mov_b16_e32 v79.l, v77.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v5, v198, v5, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v77.l, v66.l
	v_dual_mov_b32 v66, v69 :: v_dual_mov_b32 v69, v84
	v_mov_b32_e32 v73, v85
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v84.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v194, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v194, v194
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v76.h, v71.l
	v_mov_b16_e32 v71.l, v86.h
	v_mov_b16_e32 v70.l, v80.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v5, v194, v5, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v80.h, v72.l
	v_mov_b16_e32 v72.l, v87.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v82.l, v168.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v9, v202, v9, 0x7fff
	v_cndmask_b16 v85.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v190, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v190, v190
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v24, v91, v82
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v91, v237, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v85.l, v168.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v5, v190, v5, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v68, v71
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v32, v137, v160
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v91, v237, v91, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v21, v105, v85
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v86.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v186, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v186, v186
	v_bfe_u32 v105, v223, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v91.l, v168.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v71, v83
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v5, v186, v5, 0x7fff
	v_cndmask_b16 v83.h, 0x7fff, v9.h, s0
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v105, v223, v105, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v105.l, v168.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v87.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v182, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v182, v182
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v9, v156, v14
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v137, v213, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v78.l, v80.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v5, v182, v5, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v76.l, v86.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v9, v9
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v137, v213, v137, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v137.l, v168.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v88.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v178, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v178, v178
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v3, v171, v3
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v80.l, v87.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v83.l, v168.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v5, v178, v5, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v84.l, v168.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s10, v3, v3
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v86.l, v168.l
	v_mov_b16_e64 v87.l, v168.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v89.h, 0x7fff, v5.h, vcc_lo
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v5, v167, v15
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_bfe_u32 v2, v1, 16, 1
	.loc	1 732 54 is_stmt 1              ; attention_backward.py:732:54
	v_mov_b16_e64 v155.l, v168.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v20, v99, v86
	.loc	1 728 34 is_stmt 1              ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s1, v5, v5
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v22, v103, v84
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v2, v1, v2, 0x7fff
	v_bfe_u32 v1, v5, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v93, v83
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v93, v235, 16, 1
	v_bfe_u32 v103, v225, 16, 1
	v_bfe_u32 v99, v229, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v1, v5, v1, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v5, v9, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v240, v240
	v_bfe_u32 v10, v180, 16, 1
	v_add3_u32 v93, v235, v93, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v11, v1
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s0
	v_add3_u32 v5, v9, v5, 0x7fff
	v_bfe_u32 v9, v7, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v2, v232, 16, 1
	v_cmp_o_f32_e64 s0, v232, v232
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v12, v1
	v_cndmask_b16 v1.l, 0x7fff, v1.h, s1
	v_add3_u32 v9, v7, v9, 0x7fff
	v_bfe_u32 v7, v4, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v2, v232, v2, 0x7fff
	v_cmp_o_f32_e64 s1, v228, v228
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v13, v1
	v_cndmask_b16 v1.l, 0x7fff, v5.h, s3
	v_add3_u32 v7, v4, v7, 0x7fff
	v_bfe_u32 v4, v3, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s3, v224, v224
	v_bfe_u32 v5, v220, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v16, v1
	v_cndmask_b16 v1.l, 0x7fff, v9.h, s8
	v_add3_u32 v4, v3, v4, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v3, v228, 16, 1
	v_add3_u32 v5, v220, v5, 0x7fff
	v_cmp_o_f32_e64 s8, v220, v220
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v17, v1
	v_cndmask_b16 v1.l, 0x7fff, v7.h, s9
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v228, v3, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v2.h, s0
	v_bfe_u32 v2, v212, 16, 1
	v_cndmask_b16 v28.h, 0x7fff, v5.h, s8
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v18, v1
	v_cndmask_b16 v1.l, 0x7fff, v4.h, s10
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v4, v224, 16, 1
	v_cndmask_b16 v30.h, 0x7fff, v3.h, s1
	v_bfe_u32 v3, v208, 16, 1
	v_add3_u32 v2, v212, v2, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v19, v1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v1, v240, 16, 1
	v_add3_u32 v4, v224, v4, 0x7fff
	v_cmp_o_f32_e64 s0, v212, v212
	v_add3_u32 v3, v208, v3, 0x7fff
	v_cmp_o_f32_e64 s1, v208, v208
	v_add3_u32 v1, v240, v1, 0x7fff
	v_cndmask_b16 v27.h, 0x7fff, v4.h, s3
	v_bfe_u32 v4, v204, 16, 1
	v_cmp_o_f32_e64 s3, v204, v204
	v_bfe_u32 v5, v200, 16, 1
	v_cndmask_b16 v25.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v236, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v236, v236
	v_add3_u32 v4, v204, v4, 0x7fff
	v_add3_u32 v5, v200, v5, 0x7fff
	v_cmp_o_f32_e64 s8, v200, v200
	v_add3_u32 v1, v236, v1, 0x7fff
	v_cndmask_b16 v155.h, 0x7fff, v2.h, s0
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s1
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s3
	v_bfe_u32 v4, v196, 16, 1
	v_cndmask_b16 v31.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v216, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v216, v216
	v_bfe_u32 v7, v188, 16, 1
	v_bfe_u32 v9, v184, 16, 1
	v_add3_u32 v4, v196, v4, 0x7fff
	v_add3_u32 v1, v216, v1, 0x7fff
	v_cmp_o_f32_e64 s1, v188, v188
	v_add3_u32 v7, v188, v7, 0x7fff
	v_add3_u32 v9, v184, v9, 0x7fff
	v_cmp_o_f32_e64 s3, v184, v184
	v_cndmask_b16 v154.h, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v1.h, 0x7fff, v5.h, s8
	v_cmp_o_f32_e32 vcc_lo, v196, v196
	v_add3_u32 v10, v180, v10, 0x7fff
	v_cmp_o_f32_e64 s8, v180, v180
	v_bfe_u32 v5, v192, 16, 1
	v_cndmask_b16 v15.h, 0x7fff, v7.h, s1
	v_cndmask_b16 v16.h, 0x7fff, v4.h, vcc_lo
	v_cndmask_b16 v4.h, 0x7fff, v9.h, s3
	v_cndmask_b16 v7.h, 0x7fff, v10.h, s8
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[9:10], v0
	ds_load_b64 v[11:12], v157
	ds_load_b64 v[156:157], v172
	ds_load_b64 v[172:173], v169
	ds_load_b64 v[174:175], v175
	ds_load_b64 v[169:170], v241
	ds_load_b64 v[240:241], v242
	ds_load_b64 v[244:245], v176
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v5, v192, v5, 0x7fff
	v_cmp_o_f32_e64 s0, v192, v192
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v166.l, v155.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v123, v123, v165
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v165.l, v154.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v13, v131, v161
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v14.h, 0x7fff, v5.h, s0
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v161.l, v29.h
	v_mov_b16_e64 v160.l, v31.h
	v_mov_b16_e64 v159.l, v25.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v2.l, v168.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v125, v129, v164
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v164.l, v28.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v3.l, v168.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v5, v133, v162
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v162.l, v30.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v4.l, v168.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v127, v127, v163
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v163.l, v27.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v17, v97, v89
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v89.l, v7.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v95, v88
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v88.l, v4.h
	v_wmma_f32_16x16x16_bf16 v[33:40], v[159:166], v[74:81], v[33:40]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v19, v101, v87
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v87.l, v15.h
	v_mov_b16_e32 v86.l, v14.h
	v_mov_b16_e32 v85.l, v16.h
	v_mov_b16_e32 v84.l, v1.h
	v_mov_b16_e32 v83.l, v3.h
	v_mov_b16_e32 v82.l, v2.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(7)
	v_mov_b16_e64 v246.l, v9.l
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e64 v246.h, v172.l
	v_mov_b16_e64 v247.l, v11.l
	v_mov_b16_e64 v247.h, v156.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[82:89], v[66:73], v[33:40]
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e64 v248.l, v244.l
	v_mov_b16_e64 v248.h, v174.l
	v_mov_b16_e64 v249.l, v169.l
	v_mov_b16_e64 v249.h, v240.l
	v_mov_b16_e64 v250.l, v10.l
	v_mov_b16_e64 v250.h, v173.l
	v_mov_b16_e64 v251.l, v12.l
	v_mov_b16_e64 v251.h, v157.l
	v_mov_b16_e64 v252.l, v245.l
	v_mov_b16_e64 v252.h, v175.l
	v_mov_b16_e64 v253.l, v170.l
	v_mov_b16_e64 v253.h, v241.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v0, v239, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v239, v239
	v_bfe_u32 v129, v221, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v172.l, v9.h
	v_wmma_f32_16x16x16_bf16 v[33:40], v[159:166], v[246:253], v[33:40]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v160, v209, 16, 1
	v_bfe_u32 v159, v211, 16, 1
	v_add3_u32 v0, v239, v0, 0x7fff
	v_add3_u32 v129, v221, v129, 0x7fff
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v156.l, v11.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v166, v209, v160, 0x7fff
	v_bfe_u32 v160, v207, 16, 1
	v_add3_u32 v159, v211, v159, 0x7fff
	v_cndmask_b16 v159.l, 0x7fff, v0.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v157.l, v12.h
	v_mov_b16_e64 v174.l, v244.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v167, v207, v160, 0x7fff
	v_bfe_u32 v160, v205, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v240.l, v169.h
	v_mov_b16_e64 v241.l, v170.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s0, v237, v237
	v_cndmask_b16 v163.h, 0x7fff, v129.h, s13
	v_add3_u32 v171, v205, v160, 0x7fff
	v_bfe_u32 v160, v203, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v173.l, v10.h
	v_mov_b16_e64 v175.l, v245.h
	v_mov_b32_e32 v170, v156
	v_mov_b32_e32 v169, v172
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v176, v203, v160, 0x7fff
	v_bfe_u32 v160, v201, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v172, v240
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v168.h, v159.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s1, v235, v235
	v_cndmask_b16 v129.h, 0x7fff, v176.h, s22
	v_add3_u32 v178, v201, v160, 0x7fff
	v_bfe_u32 v160, v199, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v176, v241
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v95, v233, 16, 1
	v_add3_u32 v103, v225, v103, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v91.h, s0
	v_add3_u32 v186, v199, v160, 0x7fff
	v_bfe_u32 v160, v197, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v0.l, v168.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v95, v233, v95, 0x7fff
	v_cmp_o_f32_e64 s3, v233, v233
	v_bfe_u32 v97, v231, 16, 1
	v_add3_u32 v180, v197, v160, 0x7fff
	v_bfe_u32 v160, v195, 16, 1
	v_cndmask_b16 v162.h, 0x7fff, v103.h, s11
	v_cndmask_b16 v91.h, 0x7fff, v93.h, s1
	v_cndmask_b16 v103.h, 0x7fff, v159.h, s18
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v159.h, v0.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v188, v195, v160, 0x7fff
	v_bfe_u32 v160, v193, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v139, v0
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v97, v231, v97, 0x7fff
	v_cmp_o_f32_e64 s8, v231, v231
	v_add3_u32 v99, v229, v99, 0x7fff
	v_add3_u32 v182, v193, v160, 0x7fff
	v_bfe_u32 v160, v191, 16, 1
	v_cmp_o_f32_e64 s9, v229, v229
	v_bfe_u32 v101, v227, 16, 1
	v_cndmask_b16 v93.h, 0x7fff, v97.h, s8
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v93.l, v168.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v190, v191, v160, 0x7fff
	v_bfe_u32 v160, v189, 16, 1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v101, v227, v101, 0x7fff
	v_cmp_o_f32_e64 s10, v227, v227
	v_bfe_u32 v131, v219, 16, 1
	v_add3_u32 v184, v189, v160, 0x7fff
	v_bfe_u32 v160, v187, 16, 1
	v_cndmask_b16 v161.h, 0x7fff, v99.h, s9
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v161.l, v168.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v9, v150, v93
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v131, v219, v131, 0x7fff
	v_add3_u32 v189, v187, v160, 0x7fff
	v_bfe_u32 v160, v185, 16, 1
	v_bfe_u32 v133, v217, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v151, v151, v161
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v95.l, v168.l
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v97.h, 0x7fff, v105.h, s12
	v_add3_u32 v187, v185, v160, 0x7fff
	v_bfe_u32 v160, v183, 16, 1
	v_add3_u32 v133, v217, v133, 0x7fff
	v_cndmask_b16 v99.h, 0x7fff, v131.h, s14
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v162.l, v168.l
	v_mov_b16_e64 v97.l, v168.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v185, v183, v160, 0x7fff
	v_bfe_u32 v160, v181, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v99.l, v168.l
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v9, v9
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v164.h, 0x7fff, v133.h, s15
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v163.l, v168.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v183, v181, v160, 0x7fff
	v_bfe_u32 v160, v179, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v164.l, v168.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v153, v153, v162
	v_dual_sub_f32 v11, v146, v97 :: v_dual_sub_f32 v12, v148, v99
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v191, v179, v160, 0x7fff
	v_bfe_u32 v160, v177, 16, 1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v151, v151
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v165.h, 0x7fff, v137.h, s17
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v165.l, v168.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v149, v149, v164
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v192, v177, v160, 0x7fff
	v_cndmask_b16 v177.h, 0x7fff, v171.h, s21
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_dual_mov_b32 v171, v174 :: v_dual_mov_b32 v174, v157
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v160.h, 0x7fff, v95.h, s3
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v160.l, v168.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v95.h, 0x7fff, v101.h, s10
	v_cndmask_b16 v101.h, 0x7fff, v135.h, s16
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[82:89], v[169:176], v[33:40]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v83, v138, v168 :: v_dual_sub_f32 v82, v140, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_sub_f32 v141, v141, v160 :: v_dual_sub_f32 v10, v152, v95
	v_sub_f32_e32 v147, v147, v163
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v84, v83, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v83, v83
	v_cmp_o_f32_e64 s1, v82, v82
	v_cmp_o_f32_e64 s3, v141, v141
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v101.l, v168.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v84, v83, v84, 0x7fff
	v_bfe_u32 v83, v0, 16, 1
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v166.h, 0x7fff, v166.h, s19
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v166.l, v168.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v143, v143, v165
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v103.l, v168.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v83, v0, v83, 0x7fff
	v_bfe_u32 v0, v82, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v88, v142, v101
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v178.h, 0x7fff, v178.h, s23
	v_cndmask_b16 v179.h, 0x7fff, v180.h, s25
	v_cndmask_b16 v180.h, 0x7fff, v182.h, s27
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v0, v82, v0, 0x7fff
	v_bfe_u32 v82, v141, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v181.h, 0x7fff, v184.h, s29
	v_cndmask_b16 v182.h, 0x7fff, v187.h, s31
	v_cndmask_b16 v183.h, 0x7fff, v183.h, s34
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v83.l, 0x7fff, v0.h, s1
	v_add3_u32 v85, v141, v82, 0x7fff
	v_bfe_u32 v82, v9, 16, 1
	v_bfe_u32 v0, v10, 16, 1
	v_cmp_o_f32_e64 s1, v11, v11
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v184.h, 0x7fff, v192.h, s36
	v_cndmask_b16 v105.h, 0x7fff, v167.h, s20
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v86, v9, v82, 0x7fff
	v_bfe_u32 v9, v151, 16, 1
	v_cndmask_b16 v82.l, 0x7fff, v84.h, vcc_lo
	v_cndmask_b16 v82.h, 0x7fff, v83.h, s0
	v_cndmask_b16 v83.h, 0x7fff, v85.h, s3
	v_add3_u32 v0, v10, v0, 0x7fff
	v_add3_u32 v9, v151, v9, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	v_bfe_u32 v85, v12, 16, 1
	v_cmp_o_f32_e64 s0, v153, v153
	v_cndmask_b16 v84.h, 0x7fff, v9.h, s9
	v_bfe_u32 v9, v153, 16, 1
	v_add3_u32 v10, v11, v10, 0x7fff
	v_bfe_u32 v11, v147, 16, 1
	v_add3_u32 v87, v12, v85, 0x7fff
	v_cndmask_b16 v85.l, 0x7fff, v0.h, vcc_lo
	v_add3_u32 v9, v153, v9, 0x7fff
	v_bfe_u32 v0, v149, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v131.h, 0x7fff, v186.h, s24
	v_cndmask_b16 v133.h, 0x7fff, v188.h, s26
	v_cndmask_b16 v135.h, 0x7fff, v190.h, s28
	v_cndmask_b16 v137.h, 0x7fff, v189.h, s30
	v_cndmask_b16 v167.h, 0x7fff, v185.h, s33
	v_cndmask_b16 v185.h, 0x7fff, v191.h, s35
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v177.l, v168.l
	v_mov_b16_e64 v178.l, v168.l
	v_mov_b16_e64 v179.l, v168.l
	v_mov_b16_e64 v180.l, v168.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v145, v145, v166
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v166.l, v103.h
	v_mov_b16_e64 v165.l, v101.h
	v_mov_b16_e64 v164.l, v99.h
	v_mov_b16_e64 v163.l, v97.h
	v_mov_b16_e64 v162.l, v95.h
	v_mov_b16_e64 v161.l, v93.h
	v_mov_b16_e64 v160.l, v91.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v184.l, v168.l
	v_mov_b16_e64 v181.l, v168.l
	v_mov_b16_e64 v183.l, v168.l
	v_mov_b16_e64 v182.l, v168.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v89, v144, v103
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v84.l, 0x7fff, v86.h, s8
	v_add3_u32 v11, v147, v11, 0x7fff
	v_cmp_o_f32_e64 s3, v147, v147
	v_cmp_o_f32_e64 s8, v12, v12
	v_cndmask_b16 v85.h, 0x7fff, v9.h, s0
	v_cndmask_b16 v86.l, 0x7fff, v10.h, s1
	v_add3_u32 v0, v149, v0, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v149, v149
	v_bfe_u32 v9, v88, 16, 1
	v_bfe_u32 v10, v143, 16, 1
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[159:166], v[74:81], v[41:48]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v109, v109, v184
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v184.l, v185.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v107, v107, v183
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v183.l, v167.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v113, v113, v182
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v182.l, v137.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v111, v111, v181
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v181.l, v135.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v117, v117, v180
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v180.l, v133.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v115, v115, v179
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v179.l, v131.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v121, v121, v178
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v178.l, v129.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v119, v119, v177
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v177.l, v105.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v86.h, 0x7fff, v11.h, s3
	v_cndmask_b16 v87.l, 0x7fff, v87.h, s8
	v_add3_u32 v9, v88, v9, 0x7fff
	v_cmp_o_f32_e64 s0, v88, v88
	v_add3_u32 v10, v143, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v143, v143
	v_bfe_u32 v11, v89, 16, 1
	v_cndmask_b16 v87.h, 0x7fff, v0.h, vcc_lo
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v134, v25
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[177:184], v[66:73], v[41:48]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v89, v89
	v_add3_u32 v11, v89, v11, 0x7fff
	v_bfe_u32 v12, v145, 16, 1
	v_cndmask_b16 v88.l, 0x7fff, v9.h, s0
	v_cndmask_b16 v88.h, 0x7fff, v10.h, s1
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v9, v136, v31 :: v_dual_sub_f32 v10, v130, v29
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v29, v0, 16, 1
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[159:166], v[246:253], v[41:48]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v12, v145, v12, 0x7fff
	v_cmp_o_f32_e64 s8, v145, v145
	v_cndmask_b16 v89.l, 0x7fff, v11.h, s3
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v132, v30
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v29, v0, v29, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_bfe_u32 v0, v65, 16, 1
	v_bfe_u32 v30, v9, 16, 1
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[177:184], v[169:176], v[41:48]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v89.h, 0x7fff, v12.h, s8
	v_cmp_o_f32_e64 s0, v65, v65
	v_add3_u32 v0, v65, v0, 0x7fff
	v_add3_u32 v30, v9, v30, 0x7fff
	v_cmp_o_f32_e64 s1, v9, v9
	v_bfe_u32 v9, v32, 16, 1
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[82:89], v[74:81], v[41:48]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v32, v32
	v_bfe_u32 v31, v10, 16, 1
	v_cndmask_b16 v82.h, 0x7fff, v0.h, s0
	v_add3_u32 v9, v32, v9, 0x7fff
	v_bfe_u32 v0, v11, 16, 1
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v12, v126, v27 :: v_dual_sub_f32 v25, v128, v28
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v31, v10, v31, 0x7fff
	v_cmp_o_f32_e64 s8, v10, v10
	v_bfe_u32 v10, v13, 16, 1
	v_cndmask_b16 v82.l, 0x7fff, v29.h, vcc_lo
	v_cndmask_b16 v83.h, 0x7fff, v9.h, s3
	v_add3_u32 v0, v11, v0, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_bfe_u32 v9, v5, 16, 1
	v_add3_u32 v10, v13, v10, 0x7fff
	v_cmp_o_f32_e64 s9, v13, v13
	v_cmp_o_f32_e64 s0, v5, v5
	v_bfe_u32 v11, v25, 16, 1
	v_add3_u32 v9, v5, v9, 0x7fff
	v_bfe_u32 v5, v12, 16, 1
	v_cndmask_b16 v85.l, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v125, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v27, v122, v154 :: v_dual_sub_f32 v28, v124, v155
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v83.l, 0x7fff, v30.h, s1
	v_cndmask_b16 v84.l, 0x7fff, v31.h, s8
	v_cndmask_b16 v84.h, 0x7fff, v10.h, s9
	v_add3_u32 v5, v12, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v12, v12
	v_add3_u32 v11, v25, v11, 0x7fff
	v_cmp_o_f32_e64 s8, v25, v25
	v_cndmask_b16 v85.h, 0x7fff, v9.h, s0
	v_add3_u32 v0, v125, v0, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v125, v125
	v_bfe_u32 v9, v123, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v4, v94, v4
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v10, v127, 16, 1
	v_cmp_o_f32_e64 s3, v127, v127
	v_cndmask_b16 v86.l, 0x7fff, v5.h, s1
	v_cndmask_b16 v87.l, 0x7fff, v11.h, s8
	v_bfe_u32 v5, v27, 16, 1
	v_add3_u32 v10, v127, v10, 0x7fff
	v_add3_u32 v9, v123, v9, 0x7fff
	v_cmp_o_f32_e64 s1, v123, v123
	v_bfe_u32 v11, v26, 16, 1
	v_cndmask_b16 v87.h, 0x7fff, v0.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v118, v105
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v131.l, v168.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v86.h, 0x7fff, v10.h, s3
	v_add3_u32 v5, v27, v5, 0x7fff
	v_cmp_o_f32_e64 s0, v27, v27
	v_bfe_u32 v10, v28, 16, 1
	v_add3_u32 v11, v26, v11, 0x7fff
	v_cmp_o_f32_e64 s8, v26, v26
	v_cndmask_b16 v88.h, 0x7fff, v9.h, s1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v129.l, v168.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v9, v114, v131
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v26, v0, 16, 1
	v_add3_u32 v10, v28, v10, 0x7fff
	v_cmp_o_f32_e64 s3, v28, v28
	v_cndmask_b16 v88.l, 0x7fff, v5.h, s0
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v5, v120, v129
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v133.l, v168.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v26, v0, v26, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_bfe_u32 v0, v119, 16, 1
	v_bfe_u32 v28, v9, 16, 1
	v_cndmask_b16 v89.l, 0x7fff, v10.h, s3
	v_cndmask_b16 v89.h, 0x7fff, v11.h, s8
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v116, v133
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v0, v119, v0, 0x7fff
	v_cmp_o_f32_e64 s0, v119, v119
	v_bfe_u32 v27, v5, 16, 1
	v_add3_u32 v28, v9, v28, 0x7fff
	v_cmp_o_f32_e64 s8, v9, v9
	v_bfe_u32 v9, v115, 16, 1
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[82:89], v[74:81], v[33:40]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v110, v135
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v27, v5, v27, 0x7fff
	v_cmp_o_f32_e64 s1, v5, v5
	v_bfe_u32 v5, v121, 16, 1
	v_add3_u32 v9, v115, v9, 0x7fff
	v_cmp_o_f32_e64 s9, v115, v115
	v_cndmask_b16 v74.h, 0x7fff, v0.h, s0
	v_bfe_u32 v0, v10, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v12, v112, v137
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v185.l, v168.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v5, v121, v5, 0x7fff
	v_cmp_o_f32_e64 s3, v121, v121
	v_cndmask_b16 v74.l, 0x7fff, v26.h, vcc_lo
	v_cndmask_b16 v76.h, 0x7fff, v9.h, s9
	v_add3_u32 v0, v10, v0, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_bfe_u32 v9, v11, 16, 1
	v_bfe_u32 v10, v111, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v25, v108, v185
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v75.l, 0x7fff, v27.h, s1
	v_cndmask_b16 v75.h, 0x7fff, v5.h, s3
	v_add3_u32 v9, v11, v9, 0x7fff
	v_cmp_o_f32_e64 s1, v11, v11
	v_add3_u32 v10, v111, v10, 0x7fff
	v_cmp_o_f32_e64 s3, v111, v111
	v_bfe_u32 v11, v12, 16, 1
	v_cndmask_b16 v77.l, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v113, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v167.l, v168.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v76.l, 0x7fff, v28.h, s8
	v_bfe_u32 v5, v117, 16, 1
	v_add3_u32 v11, v12, v11, 0x7fff
	v_cmp_o_f32_e64 s8, v12, v12
	v_cndmask_b16 v78.h, 0x7fff, v10.h, s3
	v_add3_u32 v0, v113, v0, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v113, v113
	v_bfe_u32 v10, v25, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v1.l, v168.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v13, v106, v167
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v5, v117, v5, 0x7fff
	v_cmp_o_f32_e64 s0, v117, v117
	v_cndmask_b16 v79.l, 0x7fff, v11.h, s8
	v_add3_u32 v10, v25, v10, 0x7fff
	v_cmp_o_f32_e64 s3, v25, v25
	v_bfe_u32 v11, v109, 16, 1
	v_cndmask_b16 v79.h, 0x7fff, v0.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v90, v2
	v_sub_f32_e32 v1, v102, v1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v77.h, 0x7fff, v5.h, s0
	v_cndmask_b16 v78.l, 0x7fff, v9.h, s1
	v_bfe_u32 v5, v13, 16, 1
	v_bfe_u32 v9, v107, 16, 1
	v_add3_u32 v11, v109, v11, 0x7fff
	v_cmp_o_f32_e64 s8, v109, v109
	v_cndmask_b16 v81.l, 0x7fff, v10.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v92, v3
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v10, v0, 16, 1
	v_bfe_u32 v12, v1, 16, 1
	v_add3_u32 v5, v13, v5, 0x7fff
	v_cmp_o_f32_e64 s0, v13, v13
	v_add3_u32 v9, v107, v9, 0x7fff
	v_cmp_o_f32_e64 s1, v107, v107
	v_cndmask_b16 v81.h, 0x7fff, v11.h, s8
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v16.l, v168.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v10, v0, v10, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_bfe_u32 v0, v24, 16, 1
	v_bfe_u32 v11, v2, 16, 1
	v_add3_u32 v12, v1, v12, 0x7fff
	v_cmp_o_f32_e64 s8, v1, v1
	v_bfe_u32 v1, v22, 16, 1
	v_cndmask_b16 v80.l, 0x7fff, v5.h, s0
	v_cndmask_b16 v80.h, 0x7fff, v9.h, s1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v3, v104, v16
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v0, v24, v0, 0x7fff
	v_cmp_o_f32_e64 s0, v24, v24
	v_add3_u32 v11, v2, v11, 0x7fff
	v_cmp_o_f32_e64 s1, v2, v2
	v_bfe_u32 v2, v23, 16, 1
	v_add3_u32 v1, v22, v1, 0x7fff
	v_cmp_o_f32_e64 s9, v22, v22
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v5, v98, v14
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v23, v23
	v_add3_u32 v2, v23, v2, 0x7fff
	v_cndmask_b16 v22.h, 0x7fff, v0.h, s0
	v_cndmask_b16 v24.h, 0x7fff, v1.h, s9
	v_bfe_u32 v0, v3, 16, 1
	v_bfe_u32 v1, v21, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v9, v100, v15
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v7.l, v168.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v22.l, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v23.h, 0x7fff, v2.h, s3
	v_add3_u32 v0, v3, v0, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_add3_u32 v1, v21, v1, 0x7fff
	v_cmp_o_f32_e64 s0, v21, v21
	v_bfe_u32 v2, v5, 16, 1
	v_bfe_u32 v3, v20, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v7, v96, v7
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v23.l, 0x7fff, v11.h, s1
	v_cmp_o_f32_e64 s1, v5, v5
	v_add3_u32 v2, v5, v2, 0x7fff
	v_add3_u32 v3, v20, v3, 0x7fff
	v_cmp_o_f32_e64 s3, v20, v20
	v_bfe_u32 v5, v9, 16, 1
	v_cndmask_b16 v25.h, 0x7fff, v1.h, s0
	v_bfe_u32 v1, v4, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v12.h, s8
	v_cmp_o_f32_e64 s8, v9, v9
	v_add3_u32 v5, v9, v5, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v26.l, 0x7fff, v2.h, s1
	v_cndmask_b16 v26.h, 0x7fff, v3.h, s3
	v_bfe_u32 v0, v19, 16, 1
	v_add3_u32 v1, v4, v1, 0x7fff
	v_cmp_o_f32_e64 s0, v4, v4
	v_bfe_u32 v2, v18, 16, 1
	v_bfe_u32 v3, v7, 16, 1
	v_bfe_u32 v4, v17, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v5.h, s8
	v_add3_u32 v0, v19, v0, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v2, v18, v2, 0x7fff
	v_cmp_o_f32_e64 s1, v18, v18
	v_add3_u32 v3, v7, v3, 0x7fff
	v_cmp_o_f32_e64 s3, v7, v7
	v_add3_u32 v4, v17, v4, 0x7fff
	v_cmp_o_f32_e64 s8, v17, v17
	v_cndmask_b16 v27.h, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v28.l, 0x7fff, v1.h, s0
	v_cndmask_b16 v28.h, 0x7fff, v2.h, s1
	v_cndmask_b16 v29.l, 0x7fff, v3.h, s3
	v_cndmask_b16 v29.h, 0x7fff, v4.h, s8
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[74:81], v[66:73], v[41:48]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[22:29], v[66:73], v[33:40]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_clause 0xf                            ; 72-byte Folded Reload
	scratch_load_b32 v1, off, off offset:44
	scratch_load_b32 v2, off, off offset:48
	scratch_load_b32 v3, off, off offset:52
	scratch_load_b32 v4, off, off offset:56
	scratch_load_b32 v5, off, off offset:60
	scratch_load_b32 v7, off, off offset:64
	scratch_load_b32 v9, off, off offset:68
	scratch_load_b64 v[21:22], off, off offset:36
	scratch_load_b32 v10, off, off offset:72
	scratch_load_b32 v11, off, off offset:888
	scratch_load_b32 v12, off, off offset:896
	scratch_load_b32 v13, off, off offset:900
	scratch_load_b32 v14, off, off offset:904
	scratch_load_b32 v15, off, off offset:908
	scratch_load_b64 v[26:27], off, off offset:96
	scratch_load_b32 v16, off, off offset:916
	s_add_i32 s21, s90, s88
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v163, v158
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_mul_i32 s22, s21, s76
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v165, v158
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v162, v158
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[22:23], off, off offset:84
	scratch_load_b32 v23, off, off offset:92
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v160, v158
	v_mov_b32_e32 v161, v158
	v_mov_b32_e32 v164, v158
	v_mov_b32_e32 v159, v158
	v_dual_mov_b32 v73, v158 :: v_dual_mov_b32 v78, v163
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v76, v161 :: v_dual_mov_b32 v79, v164
	v_mov_b32_e32 v74, v159
	v_dual_mov_b32 v80, v165 :: v_dual_mov_b32 v75, v160
	v_mov_b32_e32 v77, v162
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(17)
	v_or_b32_e32 v0, s90, v1
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v1, s21, v1, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s1, s50, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(16)
	v_or_b32_e32 v0, s90, v2
	s_waitcnt vmcnt(10)
	v_mov_b32_e32 v25, v21
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b32 v21, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v2, s21, v2, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s3, s50, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s90, v3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s7, s1
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v3, s21, v3, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v17, s21, v16, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s8, s50, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s90, v4
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v4, s21, v4, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v3, 0x80000000, v3, s8
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s9, s50, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s90, v5
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v22, s22, v22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v23, s22, v23
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v5, s21, v5, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s9
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s10, s50, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s90, v7
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v7, s21, v7, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v5, 0x80000000, v5, s10
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s11, s50, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s90, v9
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v9, s21, v9, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v24, 0x80000000, v7, s11
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s12, s50, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s90, v10
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_add_nc_u32_e32 v7, s22, v26
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v10, s21, v10, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s50, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s90, v11
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v11, s21, v11, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s13, s50, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s90, v12
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v12, s21, v12, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v11, 0x80000000, v11, s13
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s14, s50, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s90, v13
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v13, s21, v13, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v12, 0x80000000, v12, s14
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s15, s50, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s90, v14
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v14, s21, v14, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v13, 0x80000000, v13, s15
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s16, s50, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s90, v15
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v15, s21, v15, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v14, 0x80000000, v14, s16
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s17, s50, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s90, v16
	scratch_load_b32 v16, off, off offset:920 ; 4-byte Folded Reload
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v15, 0x80000000, v15, s17
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s18, s50, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v17, 0x80000000, v17, s18
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v21, s22, v21
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s90, v16
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v18, s21, v16, 1
	scratch_load_b32 v16, off, off offset:924 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s19, s50, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v18, 0x80000000, v18, s19
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s90, v16
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v19, s21, v16, 1
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b32 v16, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s20, s50, v0
	scratch_load_b32 v0, off, off offset:928 ; 4-byte Folded Reload
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v19, 0x80000000, v19, s20
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v16, s22, v16
	.loc	1 624 25                        ; attention_backward.py:624:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v81, s21, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s90, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s0, s50, v0
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_add_nc_u32_e32 v0, s22, v25
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s7, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v16, 0x80000000, v16, s1
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s7, s8
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s7, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s7, s10
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s7, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v7, 0x80000000, v7, s1
	s_clause 0x5
	buffer_load_u8 v167, v0, s[60:63], 0 offen
	buffer_load_u8 v170, v16, s[60:63], 0 offen
	buffer_load_u8 v166, v21, s[60:63], 0 offen
	buffer_load_u8 v0, v22, s[60:63], 0 offen
	buffer_load_u8 v248, v23, s[60:63], 0 offen
	buffer_load_u8 v250, v7, s[60:63], 0 offen
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b64 v[21:22], off, off offset:104 ; 8-byte Folded Reload
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s7, s12
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v23, 0x80000000, v9, s12
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v7, s22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v22, 0x80000000, v7, s1
	v_lshl_add_u32 v7, s76, 4, v25
	scratch_load_b64 v[25:26], off, off offset:940 ; 8-byte Folded Reload
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s7, s13
	v_add_nc_u32_e32 v7, s22, v7
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v7, 0x80000000, v7, s1
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s7, s14
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s22, v25
	scratch_load_b64 v[25:26], off, off offset:948 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v9, 0x80000000, v9, s1
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s7, s15
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s22, v25
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[25:26], off, off offset:956
	scratch_load_b64 v[26:27], off, off offset:112
	scratch_load_b64 v[27:28], off, off offset:964
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s7, s16
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v25, s22, v25
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v26, s22, v26
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v25, 0x80000000, v25, s1
	s_clause 0x3
	buffer_load_u8 v241, v7, s[60:63], 0 offen
	buffer_load_u8 v7, v9, s[60:63], 0 offen
	buffer_load_u8 v21, v21, s[60:63], 0 offen
	buffer_load_u8 v246, v25, s[60:63], 0 offen
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s22, v27
	scratch_load_b64 v[27:28], off, off offset:972 ; 8-byte Folded Reload
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s7, vcc_lo
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s22, v27
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[27:28], off, off offset:980
	scratch_load_b64 v[28:29], off, off offset:988
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s7, s17
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s7, s18
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s7, s19
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v27, s22, v27
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v28, s22, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_lshlrev_b32 v20, 1, v81
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s7, s20
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v20, 0x80000000, v20, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	s_clause 0x5
	buffer_load_u8 v169, v9, s[60:63], 0 offen
	buffer_load_u8 v254, v25, s[60:63], 0 offen
	buffer_load_u8 v251, v22, s[60:63], 0 offen
	buffer_load_u8 v22, v26, s[60:63], 0 offen
	buffer_load_u8 v245, v27, s[60:63], 0 offen
	buffer_load_u8 v249, v28, s[60:63], 0 offen
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_clause 0x8
	buffer_load_u16 v9, v10, s[64:67], 0 offen
	buffer_load_u16 v171, v1, s[64:67], 0 offen
	buffer_load_u16 v172, v2, s[64:67], 0 offen
	buffer_load_u16 v242, v3, s[64:67], 0 offen
	buffer_load_u16 v25, v4, s[64:67], 0 offen
	buffer_load_u16 v5, v5, s[64:67], 0 offen
	buffer_load_u16 v244, v24, s[64:67], 0 offen
	buffer_load_u16 v252, v23, s[64:67], 0 offen
	buffer_load_u16 v23, v20, s[64:67], 0 offen
	s_waitcnt vmcnt(8)
	scratch_store_b32 off, v9, off offset:32 ; 4-byte Folded Spill
	buffer_load_u16 v9, v11, s[64:67], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v9, off offset:28 ; 4-byte Folded Spill
	buffer_load_u16 v9, v12, s[64:67], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v9, off offset:24 ; 4-byte Folded Spill
	buffer_load_u16 v9, v13, s[64:67], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v9, off offset:20 ; 4-byte Folded Spill
	buffer_load_u16 v9, v14, s[64:67], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v9, off offset:16 ; 4-byte Folded Spill
	buffer_load_u16 v9, v15, s[64:67], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v9, off offset:12 ; 4-byte Folded Spill
	buffer_load_u16 v9, v17, s[64:67], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v9, off offset:8 ; 4-byte Folded Spill
	buffer_load_u16 v9, v18, s[64:67], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v9, off offset:4 ; 4-byte Folded Spill
	buffer_load_u16 v9, v19, s[64:67], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v9, off          ; 4-byte Folded Spill
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v1, v167
	ds_store_b8 v1, v170 offset:64
	ds_store_b8 v1, v241 offset:512
	ds_store_b8 v1, v7 offset:576
	scratch_load_b32 v1, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v1, v166
	ds_store_b8 v1, v0 offset:64
	ds_store_b8 v1, v21 offset:512
	ds_store_b8 v1, v246 offset:576
	scratch_load_b32 v1, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v1, v248
	ds_store_b8 v1, v250 offset:64
	ds_store_b8 v1, v169 offset:512
	ds_store_b8 v1, v254 offset:576
	scratch_load_b32 v1, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v1, v251
	ds_store_b8 v1, v22 offset:64
	ds_store_b8 v1, v245 offset:512
	ds_store_b8 v1, v249 offset:576
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 20-byte Folded Reload
	scratch_load_b32 v1, off, off offset:180
	scratch_load_b32 v3, off, off offset:424
	scratch_load_b32 v9, off, off offset:428
	scratch_load_b64 v[17:18], off, off offset:136
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v1, 0, v1
	s_waitcnt vmcnt(2)
	ds_load_b64 v[3:4], v3
	s_waitcnt vmcnt(1)
	ds_load_b64 v[10:11], v9
	scratch_load_b32 v9, off, off offset:432 ; 4-byte Folded Reload
	ds_load_b64 v[1:2], v1
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[17:18], v[1:2], v[73:80] neg_lo:[1,1,0]
	scratch_load_b64 v[1:2], off, off offset:144 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt vmcnt(1)
	ds_load_b64 v[12:13], v9
	scratch_load_b32 v9, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[1:2], v[3:4], v[73:80] neg_lo:[1,1,0]
	scratch_load_b64 v[1:2], off, off offset:152 ; 8-byte Folded Reload
	.loc	1 520 26                        ; attention_backward.py:520:26
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v3, 20, v9
	v_or_b32_e32 v4, 4, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v3, s90, v3
	v_or_b32_e32 v4, s90, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s3, s50, v3
	v_cmp_gt_i32_e64 s8, s50, v4
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v28, s39, v4
	v_add_nc_u32_e32 v69, s39, v3
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s18, s2, s3
	s_and_b32 s17, s2, s8
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[1:2], v[10:11], v[73:80] neg_lo:[1,1,0]
	scratch_load_b64 v[1:2], off, off offset:160 ; 8-byte Folded Reload
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v10, 24, v9
	v_or_b32_e32 v11, 8, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v10, s90, v10
	v_or_b32_e32 v11, s90, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s9, s50, v10
	v_cmp_gt_i32_e64 s10, s50, v11
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v66, s39, v11
	v_add_nc_u32_e32 v26, s39, v10
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s16, s2, s9
	s_and_b32 s15, s2, s10
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[1:2], v[12:13], v[73:80] neg_lo:[1,1,0]
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v1, 16, v9
	v_or_b32_e32 v12, 28, v9
	v_or_b32_e32 v13, 12, v9
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v2, s90, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v1, s90, v1
	v_or_b32_e32 v12, s90, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v13, s90, v13
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s1, s50, v2
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v24, s39, v2
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s50, v1
	v_cmp_gt_i32_e64 s11, s50, v12
	v_cmp_gt_i32_e64 s12, s50, v13
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v67, s39, v13
	v_add_nc_u32_e32 v68, s39, v1
	v_add_nc_u32_e32 v27, s39, v12
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s22, s2, s1
	s_and_b32 s13, s2, s12
	s_and_b32 s24, s2, vcc_lo
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_and_not1_b32 vcc_lo, exec_lo, s81
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s14, s2, s11
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s1, v243, v28
	v_cmp_le_i32_e64 s3, v243, v66
	v_cmp_le_i32_e64 s8, v243, v67
	v_cmp_le_i32_e64 s9, v243, v68
	v_cmp_le_i32_e64 s10, v243, v69
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s1, s17, s1
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e32 vcc_lo, v243, v24
	v_cmp_le_i32_e64 s11, v243, v26
	v_cmp_le_i32_e64 s12, v243, v27
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s3, s15, s3
	s_and_b32 s8, s13, s8
	s_and_not1_b32 s17, s17, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_b32 s9, s24, s9
	s_and_b32 s10, s18, s10
	s_or_b32 s17, s17, s1
	s_and_not1_b32 s1, s15, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s13, s13, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_and_b32 s19, s22, vcc_lo
	s_and_b32 s11, s16, s11
	s_and_b32 s12, s14, s12
	s_or_b32 s15, s1, s3
	s_or_b32 s13, s13, s8
	s_and_not1_b32 s1, s24, exec_lo
	s_and_b32 s3, s9, exec_lo
	s_and_not1_b32 s8, s18, exec_lo
	s_and_b32 s9, s10, exec_lo
	s_and_not1_b32 s20, s22, exec_lo
	s_and_b32 s19, s19, exec_lo
	s_or_b32 s24, s1, s3
	s_or_b32 s18, s8, s9
	s_and_not1_b32 s1, s16, exec_lo
	s_and_b32 s3, s11, exec_lo
	s_and_not1_b32 s8, s14, exec_lo
	s_and_b32 s9, s12, exec_lo
	s_or_b32 s22, s20, s19
	s_or_b32 s16, s1, s3
	s_or_b32 s14, s8, s9
.LBB0_10:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 677 17 is_stmt 1              ; attention_backward.py:677:17
	s_and_not1_b32 vcc_lo, exec_lo, s80
	s_cbranch_vccnz .LBB0_7
; %bb.11:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v1, s37, v24
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v17, s38, v24
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v10, s37, v68
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v24, s38, v68
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v2, s37, v28
	v_subrev_nc_u32_e32 v11, s37, v69
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v18, s38, v28
	v_add_nc_u32_e32 v28, s38, v69
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v243, v1
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s1, v243, v17
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s3, v243, v10
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s8, v243, v24
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v3, s37, v66
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v19, s38, v66
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s11, vcc_lo, s1
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v243, v11
	v_cmp_ge_i32_e64 s1, v243, v2
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s9, v243, v28
	v_cmp_le_i32_e64 s10, v243, v18
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s3, s3, s8
	.loc	1 678 47 is_stmt 1              ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v4, s37, v67
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v20, s38, v67
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s12, s3, s24
	s_and_b32 s3, vcc_lo, s9
	s_and_b32 s8, s1, s10
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v243, v3
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s1, v243, v19
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v12, s37, v26
	v_subrev_nc_u32_e32 v13, s37, v27
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v1, s38, v26
	v_add_nc_u32_e32 v17, s38, v27
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s23, vcc_lo, s1
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s1, v243, v4
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s9, v243, v20
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s19, s8, s17
	s_and_b32 s20, s3, s18
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s3, v243, v12
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s8, v243, v1
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v243, v13
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s10, v243, v17
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s11, s11, s22
	s_and_b32 s1, s1, s9
	s_and_b32 s3, s3, s8
	s_and_b32 s8, s23, s15
	s_and_b32 s9, vcc_lo, s10
	s_and_b32 s1, s1, s13
	s_and_not1_b32 s10, s22, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_or_b32 s22, s10, s11
	s_and_not1_b32 s10, s15, exec_lo
	s_and_not1_b32 s11, s13, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_b32 s3, s3, s16
	s_and_b32 s9, s9, s14
	s_or_b32 s15, s10, s8
	s_or_b32 s13, s11, s1
	s_and_not1_b32 s1, s24, exec_lo
	s_and_b32 s8, s12, exec_lo
	s_and_not1_b32 s17, s17, exec_lo
	s_and_b32 s19, s19, exec_lo
	s_and_not1_b32 s10, s18, exec_lo
	s_and_b32 s11, s20, exec_lo
	s_or_b32 s24, s1, s8
	s_and_not1_b32 s1, s16, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s8, s14, exec_lo
	s_and_b32 s9, s9, exec_lo
	s_or_b32 s17, s17, s19
	s_or_b32 s18, s10, s11
	s_or_b32 s16, s1, s3
	s_or_b32 s14, s8, s9
	s_branch .LBB0_7
.LBB0_12:                               ; %Flow427
	.loc	1 0 21                          ; attention_backward.py:0:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:1000
	scratch_load_b32 v66, off, off offset:1004
	v_readlane_b32 s56, v255, 0
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
.LBB0_14:                               ; %._crit_edge104
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	scratch_load_b32 v0, off, off offset:996 ; 4-byte Folded Reload
	.loc	1 753 13                        ; attention_backward.py:753:13
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v16, s56, v65
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s37, s53, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b32 s36, s52
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v16, v16, s82
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v21, s77, v65
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, v0, v66
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v15, 2, v0
	v_or_b32_e32 v14, 4, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s16, s82, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v17, v16, v0, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v13, 6, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s17, s82, v15
	v_cmp_gt_i32_e64 s18, s82, v14
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v18, v16, v15, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s2, s16
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v19, v16, v14, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s2, s17
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v12, 8, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s2, s18
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v11, 10, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s19, s82, v13
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v10, 12, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s20, s82, v12
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v57, v17, s[36:39], 0 offen
	v_add_lshl_u32 v17, v16, v13, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s21, s82, v11
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v58, v18, s[36:39], 0 offen
	buffer_store_b32 v59, v19, s[36:39], 0 offen
	v_add_lshl_u32 v18, v16, v12, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, s2, s19
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v9, 14, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s22, s82, v10
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v19, v16, v11, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, s2, s20
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v8, 32, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v16, v10, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, s2, s21
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v7, 34, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s23, s82, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, s2, s22
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v6, 36, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s24, s82, v8
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s17
	s_clause 0x1
	buffer_store_b32 v60, v17, s[36:39], 0 offen
	buffer_store_b32 v61, v18, s[36:39], 0 offen
	v_add_lshl_u32 v17, v16, v9, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s25, s82, v7
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v18, v16, v8, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, s2, s23
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s26, s82, v6
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v62, v19, s[36:39], 0 offen
	buffer_store_b32 v63, v20, s[36:39], 0 offen
	v_add_lshl_u32 v19, v16, v7, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, s2, s24
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v16, v6, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, s2, s25
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v1, 46, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, s2, s26
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v2, 44, v0
	v_or_b32_e32 v3, 42, v0
	v_or_b32_e32 v4, 40, v0
	v_or_b32_e32 v5, 38, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s17
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e32 vcc_lo, s77, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s16, s82, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v64, v17, s[36:39], 0 offen
	buffer_store_b32 v49, v18, s[36:39], 0 offen
	v_add_lshl_u32 v17, v16, v5, 2
	s_clause 0x1
	buffer_store_b32 v50, v19, s[36:39], 0 offen
	buffer_store_b32 v51, v20, s[36:39], 0 offen
	v_add_lshl_u32 v18, v16, v4, 2
	v_add_lshl_u32 v19, v16, v3, 2
	v_add_lshl_u32 v20, v16, v2, 2
	v_add_lshl_u32 v16, v16, v1, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v1, v21, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s27, s82, v5
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s15, s77, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s28, s82, v4
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v1, v1, s78, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v0, v21, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s29, s82, v3
	.loc	1 755 18 is_stmt 0              ; attention_backward.py:755:18
	s_and_b32 s17, s2, s27
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s30, s82, v2
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, s2, s28
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_add_lshl_u32 v0, v0, s78, 2
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, s2, s29
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s15, s2, s15
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, s2, s30
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s12, s77, v13
	v_cmp_gt_i32_e64 s14, s77, v15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s2, s16
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v15, v21, v15
	v_add_nc_u32_e32 v13, v21, v13
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s15
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s11, s77, v12
	v_cmp_gt_i32_e64 s13, s77, v14
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s17
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v14, v21, v14
	v_add_nc_u32_e32 v12, v21, v12
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v16, 0x80000000, v16, s16
	s_clause 0x4
	buffer_store_b32 v52, v17, s[36:39], 0 offen
	buffer_store_b32 v53, v18, s[36:39], 0 offen
	buffer_store_b32 v54, v19, s[36:39], 0 offen
	buffer_store_b32 v55, v20, s[36:39], 0 offen
	buffer_store_b32 v56, v16, s[36:39], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s37, s55, 0xffff
	s_mov_b32 s36, s54
	v_add_lshl_u32 v15, v15, s78, 2
	buffer_store_b32 v41, v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, v13, s78, 2
	v_add_lshl_u32 v14, v14, s78, 2
	v_add_lshl_u32 v12, v12, s78, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s14, s2, s14
	s_and_b32 s12, s2, s12
	s_and_b32 s13, s2, s13
	s_and_b32 s11, s2, s11
	.loc	1 580 44 is_stmt 0              ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s8, s77, v9
	v_cmp_gt_i32_e64 s10, s77, v11
	.loc	1 759 13 is_stmt 1              ; attention_backward.py:759:13
	v_add_nc_u32_e32 v11, v21, v11
	v_add_nc_u32_e32 v9, v21, v9
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v15, 0x80000000, v15, s14
	v_cndmask_b32_e64 v0, 0x80000000, v0, s12
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s7, s77, v8
	v_cmp_gt_i32_e64 s9, s77, v10
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v10, v21, v10
	v_add_nc_u32_e32 v8, v21, v8
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v14, 0x80000000, v14, s13
	v_cndmask_b32_e64 v12, 0x80000000, v12, s11
	s_clause 0x1
	buffer_store_b32 v42, v15, s[36:39], 0 offen
	buffer_store_b32 v43, v14, s[36:39], 0 offen
	v_add_lshl_u32 v11, v11, s78, 2
	s_clause 0x1
	buffer_store_b32 v44, v0, s[36:39], 0 offen
	buffer_store_b32 v45, v12, s[36:39], 0 offen
	v_add_lshl_u32 v0, v9, s78, 2
	v_add_lshl_u32 v10, v10, s78, 2
	v_add_lshl_u32 v8, v8, s78, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s10, s2, s10
	s_and_b32 s8, s2, s8
	s_and_b32 s9, s2, s9
	s_and_b32 s7, s2, s7
	.loc	1 580 44 is_stmt 0              ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s4, s77, v5
	v_cmp_gt_i32_e64 s6, s77, v7
	.loc	1 759 13 is_stmt 1              ; attention_backward.py:759:13
	v_add_nc_u32_e32 v7, v21, v7
	v_add_nc_u32_e32 v5, v21, v5
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v11, 0x80000000, v11, s10
	v_cndmask_b32_e64 v0, 0x80000000, v0, s8
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s3, s77, v4
	v_cmp_gt_i32_e64 s5, s77, v6
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v6, v21, v6
	v_add_nc_u32_e32 v4, v21, v4
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v10, 0x80000000, v10, s9
	v_cndmask_b32_e64 v8, 0x80000000, v8, s7
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s1, s77, v3
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v3, v21, v3
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s0, s77, v2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v2, v21, v2
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_clause 0x1
	buffer_store_b32 v46, v11, s[36:39], 0 offen
	buffer_store_b32 v47, v10, s[36:39], 0 offen
	v_add_lshl_u32 v7, v7, s78, 2
	s_clause 0x1
	buffer_store_b32 v48, v0, s[36:39], 0 offen
	buffer_store_b32 v33, v8, s[36:39], 0 offen
	v_add_lshl_u32 v0, v5, s78, 2
	v_add_lshl_u32 v6, v6, s78, 2
	v_add_lshl_u32 v4, v4, s78, 2
	v_add_lshl_u32 v3, v3, s78, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s6, s2, s6
	s_and_b32 s4, s2, s4
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v2, v2, s78, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s5, s2, s5
	s_and_b32 s3, s2, s3
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v7, 0x80000000, v7, s6
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s1, s2, s1
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s5
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s0, s2, s0
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	s_clause 0x6
	buffer_store_b32 v34, v7, s[36:39], 0 offen
	buffer_store_b32 v35, v6, s[36:39], 0 offen
	buffer_store_b32 v36, v0, s[36:39], 0 offen
	buffer_store_b32 v37, v4, s[36:39], 0 offen
	buffer_store_b32 v38, v3, s[36:39], 0 offen
	buffer_store_b32 v39, v2, s[36:39], 0 offen
	buffer_store_b32 v40, v1, s[36:39], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1012
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 1012
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 32088
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 1012
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 1012
    .sgpr_count:     107
    .sgpr_spill_count: 1
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 252
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
