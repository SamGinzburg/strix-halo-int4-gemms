	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x94
	s_load_b128 s[36:39], s[0:1], 0x64
	v_mov_b32_e32 v37, v0
	s_clause 0x2
	s_load_b64 s[34:35], s[0:1], 0x78
	s_load_b128 s[16:19], s[0:1], 0x8
	s_load_b64 s[12:13], s[0:1], 0x20
.Ltmp0:
	.loc	1 514 33 prologue_end           ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v38, 5, v37
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v1, 2, v38
	v_or_b32_e32 v2, 4, v38
	v_or_b32_e32 v3, 6, v38
	v_or_b32_e32 v4, 8, v38
	v_or_b32_e32 v5, 10, v38
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v1, off
	scratch_store_b32 off, v2, off offset:4
	scratch_store_b32 off, v3, off offset:8
	scratch_store_b32 off, v4, off offset:12
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	v_or_b32_e32 v6, 12, v38
	s_cselect_b32 s65, -1, 0
	s_cmp_eq_u32 s4, 1
	v_or_b32_e32 v7, 14, v38
	s_cselect_b32 s66, -1, 0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_abs_i32 s29, s37
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_abs_i32 s5, s3
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cvt_f32_u32 s4, s29
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s11, s2, 4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off offset:16
	scratch_store_b32 off, v6, off offset:20
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_rcp_iflag_f32_e32 v0, s4
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v1, s11, v1
	v_or_b32_e32 v2, s11, v2
	v_or_b32_e32 v5, s11, v5
	v_or_b32_e32 v6, s11, v6
	v_or_b32_e32 v3, s11, v3
	v_or_b32_e32 v4, s11, v4
	.loc	1 521 24                        ; attention_backward.py:521:24
	s_mul_i32 s64, s3, s39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_readfirstlane_b32 s4, v0
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s11, v38
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s39, v0
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cvt_u32_f32 s41, s4
	s_sub_i32 s4, 0, s29
	s_mul_i32 s4, s4, s41
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s41, s4
	s_add_i32 s41, s41, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_mul_hi_u32 s4, s5, s41
	s_mul_i32 s6, s4, s29
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s2, s5, s6
	s_add_i32 s5, s4, 1
	s_sub_i32 s6, s2, s29
	s_cmp_ge_u32 s2, s29
	s_cselect_b32 s4, s5, s4
	s_cselect_b32 s2, s6, s2
	s_add_i32 s5, s4, 1
	s_cmp_ge_u32 s2, s29
	s_cselect_b32 s28, s5, s4
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_ashr_i32 s30, s36, 31
	s_ashr_i32 s31, s37, 31
	s_abs_i32 s40, s36
	.loc	1 514 23                        ; attention_backward.py:514:23
	s_or_b32 s2, s11, 1
	s_or_b32 s4, s11, 2
	s_or_b32 s5, s11, 3
	s_or_b32 s6, s11, 4
	s_or_b32 s7, s11, 5
	s_or_b32 s8, s11, 6
	s_or_b32 s9, s11, 7
	s_or_b32 s10, s11, 8
	s_or_b32 s14, s11, 9
	s_or_b32 s15, s11, 10
	s_or_b32 s24, s11, 11
	s_or_b32 s25, s11, 12
	s_or_b32 s26, s11, 13
	s_or_b32 s27, s11, 14
	s_or_b32 s33, s11, 15
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cmp_lt_i32 s11, s39
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s2, s39
	v_cmp_gt_i32_e64 s2, s39, v1
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s4, s39
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_and_b32_e32 v1, 31, v37
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s5, s39
	v_cmp_gt_i32_e64 s4, s39, v2
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s6, s39
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[154:155], null, s34, v38, v[1:2]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s7, s39
	v_cmp_gt_i32_e64 s5, s39, v3
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s8, s39
	v_cmp_gt_i32_e64 s8, s39, v5
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s9, s39
	v_cmp_gt_i32_e64 s9, s39, v6
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s10, s39
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v2, s34, 1, v154
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s14, s39
	scratch_store_b32 off, v7, off offset:24 ; 4-byte Folded Spill
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s15, s39
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v7, s11, v7
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s24, s39
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[5:6], null, s34, 6, v[154:155]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s25, s39
	v_cmp_gt_i32_e64 s10, s39, v7
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s26, s39
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[7:8], null, s34, 10, v[154:155]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s27, s39
	v_cmp_gt_i32_e64 s6, s39, v4
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s33, s39
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v3, s34, 2, v154
	v_lshl_add_u32 v6, s34, 3, v154
	v_mov_b32_e32 v4, v5
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s54, -1, 0
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_add_i32 s58, s64, s11
	v_mad_u64_u32 v[8:9], null, s34, 12, v[154:155]
	s_mul_i32 s14, s58, s34
	v_mad_u64_u32 v[9:10], null, s34, 14, v[154:155]
	v_add_nc_u32_e32 v0, s14, v154
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v3, off offset:32
	scratch_store_b64 off, v[4:5], off offset:36
	v_add_nc_u32_e32 v3, s14, v3
	v_add_nc_u32_e32 v4, s14, v5
	v_add_nc_u32_e32 v5, s14, v6
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v17, v37, 4, 1
	scratch_store_b32 off, v6, off offset:44 ; 4-byte Folded Spill
	v_mov_b32_e32 v6, v7
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_cmp_gt_i32_e64 s7, s34, v1
	scratch_store_b32 off, v2, off offset:28 ; 4-byte Folded Spill
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_add_nc_u32_e32 v2, s14, v2
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xor_b32_e32 v10, 0x110, v37
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[6:7], off offset:48 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v6, s14, v7
	v_mov_b32_e32 v7, v8
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, vcc_lo, s7
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_and_b32 s25, s17, 0xffff
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s2, s7
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[7:8], off offset:56 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v7, s14, v8
	v_mov_b32_e32 v8, v9
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s4, s7
	s_mov_b32 s27, 0x31027000
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s5, s7
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[8:9], off offset:64 ; 8-byte Folded Spill
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s6, s7
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_add_nc_u32_e32 v8, s14, v9
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s8, s7
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_add_nc_u32 v215, 0, v37
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s9, s7
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_mov_b32 s24, s16
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s10, s7
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_add_nc_u32 v217, 0, v10
	s_clause 0x7
	buffer_load_u8 v0, v0, s[24:27], 0 offen
	buffer_load_u8 v2, v2, s[24:27], 0 offen
	buffer_load_u8 v3, v3, s[24:27], 0 offen
	buffer_load_u8 v4, v4, s[24:27], 0 offen
	buffer_load_u8 v5, v5, s[24:27], 0 offen
	buffer_load_u8 v6, v6, s[24:27], 0 offen
	buffer_load_u8 v7, v7, s[24:27], 0 offen
	buffer_load_u8 v8, v8, s[24:27], 0 offen
	v_xor_b32_e32 v9, 0x88, v37
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v12, s11, v17
	scratch_store_b32 off, v17, off offset:520 ; 4-byte Folded Spill
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_add_lshl_u32 v17, s58, v17, 1
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xor_b32_e32 v11, 0x198, v37
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_mul_i32 s33, s58, s35
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s39, v12
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v10, 4, v12
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v20, 8, v17
	v_add_nc_u32_e32 v19, 4, v17
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v216, 0, v9
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v9, 2, v12
	v_or_b32_e32 v13, 8, v12
	v_or_b32_e32 v14, 10, v12
	v_or_b32_e32 v15, 12, v12
	v_or_b32_e32 v16, 14, v12
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v22, 12, v17
	v_add_nc_u32_e32 v23, 16, v17
	v_add_nc_u32_e32 v24, 20, v17
	v_add_nc_u32_e32 v25, 24, v17
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v218, 0, v11
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v11, 6, v12
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e32 v12, 0x80000000, v17, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s39, v9
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v18, s33, v37
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s4, s35, v37
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	v_cndmask_b32_e32 v9, 0x80000000, v19, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s39, v10
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v21, s35, v18
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_and_b32 s13, s13, 0xffff
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s25, s19, 0xffff
	s_mov_b32 s24, s18
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e32 v10, 0x80000000, v20, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s39, v11
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v26, s35, v21
	.loc	1 587 22                        ; attention_backward.py:587:22
	s_add_i32 s2, s38, 31
	s_mov_b32 s5, 0
	.loc	1 587 21 is_stmt 0              ; attention_backward.py:587:21
	s_ashr_i32 s6, s2, 31
	.loc	1 527 29 is_stmt 1              ; attention_backward.py:527:29
	v_cndmask_b32_e32 v20, 0x80000000, v22, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s39, v13
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v19, s35, v26
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_lshr_b32 s6, s6, 27
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s6, s2, s6
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e32 v13, 0x80000000, v23, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s39, v14
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v11, s35, v19
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v19, 1, v19
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_hi_u32 s2, s40, s41
	.loc	1 587 20                        ; attention_backward.py:587:20
	s_and_b32 s68, s6, 0xffffffe0
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e32 v14, 0x80000000, v24, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s39, v15
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v22, s35, v11
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v24, 1, v26
	v_lshlrev_b32_e32 v21, 1, v21
	v_lshlrev_b32_e32 v18, 1, v18
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v17, 28, v17
	v_cndmask_b32_e32 v15, 0x80000000, v25, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s39, v16
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt vmcnt(7)
	ds_store_b8 v215, v0
	s_waitcnt vmcnt(6)
	ds_store_b8 v215, v2 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v216, v3
	s_waitcnt vmcnt(4)
	ds_store_b8 v216, v4 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v217, v5
	s_waitcnt vmcnt(2)
	ds_store_b8 v217, v6 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v218, v7
	s_waitcnt vmcnt(0)
	ds_store_b8 v218, v8 offset:64
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e32 v16, 0x80000000, v17, vcc_lo
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v17, s35, v22
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s57, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v22, 1, v22
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s56, s4
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v23, s35, v17
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s55, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_lshlrev_b32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v25, s35, v23
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s53, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v23, 1, v23
	v_cndmask_b32_e32 v26, 0x80000000, v19, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s51, s4
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v19, s35, v25
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v27, 0x80000000, v11, vcc_lo
	v_lshlrev_b32_e32 v11, 1, v17
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s50, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v25, 1, v25
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v17, s35, v19
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s49, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v19, 1, v19
	v_cndmask_b32_e32 v28, 0x80000000, v11, vcc_lo
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v11, s35, v17
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s48, s4
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(0)
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v29, 0x80000000, v23, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s46, s4
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v23, s35, v11
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s45, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v30, 0x80000000, v19 :: v_dual_lshlrev_b32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v19, s35, v23
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v11, 1, v11
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s44, s4
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_barrier
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v31, 0x80000000, v17, vcc_lo
	v_lshlrev_b32_e32 v17, 1, v23
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v23, s35, v19
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s43, s4
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_and_b32_e32 v2, 12, v37
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v32, 0x80000000, v11, vcc_lo
	v_lshlrev_b32_e32 v11, 1, v19
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s42, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_lshl_u32 v19, v23, s35, 1
	v_cndmask_b32_e32 v33, 0x80000000, v17, vcc_lo
	v_lshlrev_b32_e32 v17, 1, v23
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s47, s4
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshlrev_b32_e32 v4, 1, v2
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v34, 0x80000000, v11, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s52, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v35, 0x80000000, v17, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s54, s4
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_bfe_u32 s6, s20, 0x10008
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v36, 0x80000000, v19, vcc_lo
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_clause 0x7
	buffer_load_u16 v12, v12, s[12:15], 0 offen
	buffer_load_u16 v11, v9, s[12:15], 0 offen
	buffer_load_u16 v10, v10, s[12:15], 0 offen
	buffer_load_u16 v9, v20, s[12:15], 0 offen
	buffer_load_u16 v8, v13, s[12:15], 0 offen
	buffer_load_u16 v7, v14, s[12:15], 0 offen
	buffer_load_u16 v6, v15, s[12:15], 0 offen
	buffer_load_u16 v5, v16, s[12:15], 0 offen
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_clause 0xf
	buffer_load_u16 v23, v18, s[24:27], 0 offen
	buffer_load_u16 v21, v21, s[24:27], 0 offen
	buffer_load_u16 v19, v24, s[24:27], 0 offen
	buffer_load_u16 v17, v26, s[24:27], 0 offen
	buffer_load_u16 v16, v27, s[24:27], 0 offen
	buffer_load_u16 v15, v22, s[24:27], 0 offen
	buffer_load_u16 v14, v28, s[24:27], 0 offen
	buffer_load_u16 v13, v29, s[24:27], 0 offen
	buffer_load_u16 v28, v25, s[24:27], 0 offen
	buffer_load_u16 v27, v30, s[24:27], 0 offen
	buffer_load_u16 v26, v31, s[24:27], 0 offen
	buffer_load_u16 v25, v32, s[24:27], 0 offen
	buffer_load_u16 v24, v33, s[24:27], 0 offen
	buffer_load_u16 v22, v34, s[24:27], 0 offen
	buffer_load_u16 v20, v35, s[24:27], 0 offen
	buffer_load_u16 v18, v36, s[24:27], 0 offen
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v33, 15, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshlrev_b32_e32 v3, 5, v33
	v_or_b32_e32 v0, v3, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v29, 0, v0
	v_xad_u32 v30, v0, 8, 0
	v_xad_u32 v31, v0, 16, 0
	v_xad_u32 v0, v0, 24, 0
	ds_load_b64 v[34:35], v29
	ds_load_b64 v[29:30], v30
	s_waitcnt lgkmcnt(1)
	scratch_store_b64 off, v[34:35], off offset:72 ; 8-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[29:30], off offset:80 ; 8-byte Folded Spill
	ds_load_b64 v[29:30], v31
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[29:30], off offset:88 ; 8-byte Folded Spill
	ds_load_b64 v[29:30], v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v0, 32, v37
	.loc	1 587 22                        ; attention_backward.py:587:22
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[29:30], off offset:96 ; 8-byte Folded Spill
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s5, s11, s21
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_add_i32 s8, s22, s23
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s5, s5, s23
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_sub_i32 s8, s11, s8
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s5, s5, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 592 17                        ; attention_backward.py:592:17
	s_min_i32 s5, s38, s5
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
	s_and_b32 s8, s5, 0xffffffe0
	.loc	1 597 45                        ; attention_backward.py:597:45
	s_and_b32 s5, s6, 0x7fffffe0
	.loc	1 598 24                        ; attention_backward.py:598:24
	s_min_i32 s68, s68, s8
.LBB0_2:
	.loc	1 0 24 is_stmt 0                ; attention_backward.py:0:24
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x50
	s_load_b32 s67, s[0:1], 0x74
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_mul_i32 s6, s2, s29
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshlrev_b32_e32 v35, 1, v37
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_sub_i32 s6, s40, s6
	s_xor_b32 s8, s30, s31
	s_add_i32 s9, s2, 1
	s_sub_i32 s10, s6, s29
	s_cmp_ge_u32 s6, s29
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xor_b32_e32 v29, 0x90, v35
	v_xor_b32_e32 v30, 0x120, v35
	v_xor_b32_e32 v31, 0x1b0, v35
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s2, s9, s2
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s2, 1
	s_cmp_ge_u32 s6, s29
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v220, s11, v33
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xor_b32_e32 v32, 0x240, v35
	v_add_nc_u32_e32 v223, 0, v29
	v_add_nc_u32_e32 v224, 0, v30
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v255, s12, 0
	v_add_nc_u32_e32 v225, 0, v31
	v_xor_b32_e32 v29, 0x2d0, v35
	v_xor_b32_e32 v30, 0x360, v35
	v_xor_b32_e32 v31, 0x3f0, v35
	v_writelane_b32 v255, s13, 1
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s2, s9, s2
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v34, 1, v0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_xor_b32 s2, s2, s8
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_add_nc_u32_e32 v222, v215, v37
	v_writelane_b32 v255, s14, 2
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_sub_i32 s69, s2, s8
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, s39, v220
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_add_nc_u32_e32 v226, 0, v32
	v_add_nc_u32_e32 v227, 0, v29
	v_writelane_b32 v255, s15, 3
	v_add_nc_u32_e32 v228, 0, v30
	v_add_nc_u32_e32 v229, 0, v31
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cmp_lt_i32 s69, 1
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_store_b32 off, v35, off offset:104 ; 4-byte Folded Spill
	s_waitcnt vmcnt(15)
	ds_store_b16 v222, v23
	s_waitcnt vmcnt(7)
	ds_store_b16 v222, v28 offset:1024
	ds_store_b16 v223, v21
	s_waitcnt vmcnt(6)
	ds_store_b16 v223, v27 offset:1024
	ds_store_b16 v224, v19
	s_waitcnt vmcnt(5)
	ds_store_b16 v224, v26 offset:1024
	ds_store_b16 v225, v17
	s_waitcnt vmcnt(4)
	ds_store_b16 v225, v25 offset:1024
	ds_store_b16 v226, v16
	s_waitcnt vmcnt(3)
	ds_store_b16 v226, v24 offset:1024
	ds_store_b16 v227, v15
	s_waitcnt vmcnt(2)
	ds_store_b16 v227, v22 offset:1024
	ds_store_b16 v228, v14
	s_waitcnt vmcnt(1)
	ds_store_b16 v228, v20 offset:1024
	ds_store_b16 v229, v13
	s_waitcnt vmcnt(0)
	ds_store_b16 v229, v18 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cbranch_scc1 .LBB0_29
; %bb.3:                                ; %.lr.ph166
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	s_xor_b32 s6, s3, s37
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	v_lshlrev_b32_e32 v1, 1, v1
	s_ashr_i32 s6, s6, 31
	s_clause 0x1
	s_load_b32 s8, s[0:1], 0x90
	s_load_b128 s[44:47], s[0:1], 0x80
	s_xor_b32 s9, s28, s6
	s_load_b256 s[24:31], s[0:1], 0x30
	s_sub_i32 s6, s9, s6
	s_clause 0x1
	s_load_b64 s[48:49], s[0:1], 0x0
	s_load_b64 s[52:53], s[0:1], 0x18
	s_mul_i32 s0, s6, s37
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_sub_i32 s1, s11, s23
	s_sub_i32 s0, s3, s0
	s_max_i32 s1, s1, 0
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v14, 1, v1
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s70, s69, s0
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v15, 4, v37
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s0, s67, v1
	v_mov_b16_e32 v1.l, 0
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_and_b32 s1, s1, 0x7fffffe0
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v1.h, v12.l
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_max_u32 s1, s5, s1
	s_and_b32 s3, s66, exec_lo
	s_cselect_b32 s39, s1, s5
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s1, s67, v14
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v14, 4, v15
	v_or_b32_e32 v20, 24, v15
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v22.l, v1.l
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_and_b32_e32 v12, 7, v37
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v22.h, v11.l
	v_mov_b16_e32 v11.l, v1.l
	v_mov_b16_e32 v11.h, v10.l
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v21, 28, v15
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshlrev_b32_e32 v10, 4, v12
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v9.h, v8.l
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v14, off offset:112
	scratch_store_b32 off, v11, off offset:148
	scratch_store_b32 off, v20, off offset:136
	scratch_store_b32 off, v22, off offset:144
	scratch_store_b32 off, v15, off offset:108
	scratch_store_b32 off, v21, off offset:140
	v_mov_b16_e32 v11.h, v9.l
	v_mov_b16_e32 v9.l, v1.l
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshl_or_b32 v8, v33, 7, v10
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v7.h, v6.l
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v16, 8, v15
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v11, off offset:152
	scratch_store_b32 off, v9, off offset:156
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v9.h, v7.l
	v_mov_b16_e32 v7.l, v1.l
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v7, off offset:164
	scratch_store_b32 off, v1, off offset:128
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v1, 0x70, v8, 0
	v_xad_u32 v6, 0x60, v8, 0
	ds_load_b128 v[26:29], v1
	ds_load_b128 v[22:25], v6
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v7.h, v5.l
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v5, 0x50, v8, 0
	scratch_store_b32 off, v9, off offset:160 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_clause 0x2                            ; 36-byte Folded Spill
	scratch_store_b128 off, v[22:25], off offset:172
	scratch_store_b128 off, v[26:29], off offset:188
	scratch_store_b32 off, v7, off offset:168
	v_xad_u32 v7, v8, 64, 0
	ds_load_b128 v[26:29], v5
	ds_load_b128 v[22:25], v7
	v_xad_u32 v1, v8, 48, 0
	v_xad_u32 v6, v8, 32, 0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[22:25], off offset:204
	scratch_store_b128 off, v[26:29], off offset:220
	ds_load_b128 v[26:29], v1
	ds_load_b128 v[22:25], v6
	v_xad_u32 v5, v8, 16, 0
	v_lshlrev_b32_e32 v1, 4, v0
	v_add_nc_u32_e32 v7, 0, v8
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[22:25], off offset:236
	scratch_store_b128 off, v[26:29], off offset:252
	ds_load_b128 v[26:29], v5
	ds_load_b128 v[22:25], v7
	v_or3_b32 v5, v4, v1, v3
	v_mul_lo_u32 v1, s8, v220
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v17, 12, v15
	v_or_b32_e32 v18, 16, v15
	v_or_b32_e32 v19, 20, v15
	v_and_b32_e32 v13, 16, v37
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[22:25], off offset:268
	scratch_store_b128 off, v[26:29], off offset:284
	v_mad_u64_u32 v[6:7], null, s47, v14, v[1:2]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[6:7], off offset:456
	scratch_store_b32 off, v16, off offset:116
	v_mad_u64_u32 v[6:7], null, s47, v16, v[1:2]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[6:7], off offset:464
	scratch_store_b32 off, v17, off offset:120
	v_mad_u64_u32 v[6:7], null, s47, v17, v[1:2]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[6:7], off offset:472
	scratch_store_b32 off, v18, off offset:124
	v_mad_u64_u32 v[6:7], null, s47, v18, v[1:2]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[6:7], off offset:480
	scratch_store_b32 off, v19, off offset:132
	v_mad_u64_u32 v[6:7], null, s47, v19, v[1:2]
	v_mad_u64_u32 v[16:17], null, s47, v20, v[1:2]
	v_mad_u64_u32 v[14:15], null, s47, v15, v[1:2]
	v_dual_mov_b32 v171, 0 :: v_dual_lshlrev_b32 v24, 3, v33
	scratch_store_b64 off, v[6:7], off offset:488 ; 8-byte Folded Spill
	v_lshrrev_b32_e32 v6, 2, v13
	scratch_store_b64 off, v[16:17], off offset:496 ; 8-byte Folded Spill
	v_mad_u64_u32 v[16:17], null, s47, v21, v[1:2]
	v_lshrrev_b32_e32 v7, 4, v0
	v_lshlrev_b32_e32 v9, 2, v37
	v_dual_mov_b32 v202, v24 :: v_dual_and_b32 v11, 24, v37
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_mov_b32_e32 v41, 0
	scratch_store_b64 off, v[16:17], off offset:504 ; 8-byte Folded Spill
	v_or3_b32 v16, v6, v7, v24
	v_lshrrev_b32_e32 v6, 1, v13
	v_and_b32_e32 v9, 52, v9
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v5, off offset:300
	scratch_store_b64 off, v[14:15], off offset:512
	v_xor_b32_e32 v14, 0x120, v16
	v_and_or_b32 v1, v37, 2, v6
	v_lshl_or_b32 v2, v2, 5, v9
	v_lshrrev_b32_e32 v6, 1, v11
	v_xor_b32_e32 v9, 0x90, v16
	v_xor_b32_e32 v15, 0x1b0, v16
	v_mov_b32_e32 v43, v171
	v_or3_b32 v17, v1, v2, v38
	v_lshl_or_b32 v1, v12, 7, v6
	v_lshlrev_b32_e32 v2, 3, v37
	scratch_store_b32 off, v16, off offset:304 ; 4-byte Folded Spill
	v_bfe_i32 v6, v37, 3, 1
	v_cndmask_b32_e64 v16, 0x420, 0, vcc_lo
	v_or3_b32 v19, v1, v10, v7
	v_and_b32_e32 v2, 48, v2
	v_lshlrev_b32_e32 v10, 1, v11
	v_xor_b32_e32 v3, 8, v5
	v_xor_b32_e32 v4, 16, v5
	v_and_or_b32 v6, 0x210, v6, v16
	v_dual_mov_b32 v45, v171 :: v_dual_lshlrev_b32 v16, 1, v33
	v_xor_b32_e32 v10, v2, v10
	v_dual_mov_b32 v160, v19 :: v_dual_lshlrev_b32 v13, 2, v13
	v_mov_b32_e32 v42, v171
	v_xor_b32_e32 v1, 16, v17
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v10, v37, 6, v10
	v_xor_b32_e32 v7, 32, v17
	v_xor_b32_e32 v11, 48, v17
	v_lshl_or_b32 v12, v12, 6, v2
	v_lshl_or_b32 v8, v0, 6, v8
	v_add3_u32 v210, 0, v0, v16
	v_lshl_or_b32 v20, v33, 6, v2
	v_dual_mov_b32 v47, v171 :: v_dual_add_nc_u32 v2, 0, v3
	v_dual_mov_b32 v46, v171 :: v_dual_add_nc_u32 v3, 0, v4
	scratch_store_b32 off, v17, off offset:308 ; 4-byte Folded Spill
	v_or3_b32 v17, v16, v13, v0
	v_xor_b32_e32 v0, 16, v10
	v_mov_b32_e32 v57, 0
	v_xor_b32_e32 v6, v6, v12
	v_mov_b32_e32 v59, v171
	v_xor_b32_e32 v5, 24, v5
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:352
	scratch_store_b32 off, v10, off offset:348
	v_xor_b32_e32 v0, 48, v10
	v_mov_b32_e32 v61, v171
	v_dual_mov_b32 v44, v171 :: v_dual_add_nc_u32 v13, s35, v37
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:316
	scratch_store_b32 off, v13, off offset:312
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:364
	scratch_store_b32 off, v6, off offset:368
	v_xor_b32_e32 v0, 48, v6
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v2, s35, v13
	v_mov_b32_e32 v48, v171
	v_dual_mov_b32 v29, v171 :: v_dual_add_nc_u32 v230, 0, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v204, 0, v0
	v_xor_b32_e32 v0, 32, v8
	v_xor_b32_e32 v1, 32, v10
	v_mov_b32_e32 v26, v171
	v_mov_b32_e32 v27, v171
	v_dual_mov_b32 v31, v171 :: v_dual_add_nc_u32 v0, 0, v0
	scratch_store_b32 off, v3, off offset:324 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v5
	v_dual_mov_b32 v32, v171 :: v_dual_add_nc_u32 v1, 0, v1
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_mov_b32_e32 v63, v171
	scratch_store_b32 off, v3, off offset:328 ; 4-byte Folded Spill
	v_dual_mov_b32 v64, v171 :: v_dual_add_nc_u32 v3, 0, v9
	v_mov_b32_e32 v58, v171
	v_mov_b32_e32 v50, v171
	v_mov_b32_e32 v52, v171
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:332
	scratch_store_b32 off, v17, off offset:440
	v_add_nc_u32_e32 v3, 0, v14
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:336
	scratch_store_b32 off, v2, off offset:320
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v2, s35, v2
	v_add_nc_u32_e32 v3, 0, v15
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v54, v171
	v_mov_b32_e32 v53, v171
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:340
	scratch_store_b32 off, v3, off offset:344
	v_add_nc_u32_e32 v2, s35, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:356
	scratch_store_b32 off, v2, off offset:360
	v_xor_b32_e32 v1, 16, v6
	v_add_nc_u32_e32 v3, s35, v2
	v_xor_b32_e32 v2, 32, v6
	v_mov_b32_e32 v55, v171
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v56, v171 :: v_dual_add_nc_u32 v247, 0, v1
	v_mov_b32_e32 v60, v171
	v_xor_b32_e32 v1, 16, v8
	v_dual_mov_b32 v62, v171 :: v_dual_add_nc_u32 v203, 0, v2
	v_xor_b32_e32 v2, 48, v8
	v_dual_mov_b32 v28, v171 :: v_dual_add_nc_u32 v167, 0, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v1, 0, v1
	v_dual_mov_b32 v30, v171 :: v_dual_add_nc_u32 v169, 0, v11
	v_add_nc_u32_e32 v0, 0, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:376
	scratch_store_b32 off, v1, off offset:372
	v_add_nc_u32_e32 v3, s35, v3
	v_xor_b32_e32 v1, 64, v8
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x50, v8
	v_xor_b32_e32 v2, 0x70, v8
	scratch_store_b32 off, v3, off offset:396 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s35, v3
	v_add_nc_u32_e32 v1, 0, v1
	v_add_nc_u32_e32 v0, 0, v0
	v_xor_b32_e32 v5, 64, v19
	v_xor_b32_e32 v9, 0x70, v19
	scratch_store_b32 off, v3, off offset:408 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s35, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:388
	scratch_store_b32 off, v3, off offset:424
	v_xor_b32_e32 v1, 0x60, v8
	v_add_nc_u32_e32 v3, s35, v3
	v_xor_b32_e32 v13, 0x120, v24
	v_xor_b32_e32 v14, 0x1b0, v24
	v_mad_u64_u32 v[208:209], null, s34, 18, v[154:155]
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:392
	scratch_store_b32 off, v3, off offset:432
	v_xor_b32_e32 v0, 0x90, v17
	v_add_nc_u32_e32 v3, s35, v3
	scratch_store_b32 off, v1, off offset:400 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v2
	v_xor_b32_e32 v2, 16, v20
	v_dual_mov_b32 v51, v171 :: v_dual_add_nc_u32 v158, 0, v0
	v_xor_b32_e32 v0, 0x1b0, v17
	v_mad_u64_u32 v[205:206], null, s34, 20, v[154:155]
	v_mad_u64_u32 v[155:156], null, s34, 22, v[154:155]
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v161, 0, v0
	v_add_nc_u32_e32 v0, 0, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:412
	scratch_store_b32 off, v20, off offset:448
	v_xor_b32_e32 v0, 48, v20
	v_xor_b32_e32 v2, 32, v19
	v_mov_b32_e32 v209, v38
	v_mad_u64_u32 v[180:181], null, s34, 28, v[154:155]
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:404
	scratch_store_b32 off, v3, off offset:436
	v_xor_b32_e32 v1, 0x120, v17
	v_add_nc_u32_e32 v3, s35, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v8, off offset:428
	scratch_store_b32 off, v0, off offset:420
	v_xor_b32_e32 v0, 48, v19
	v_add_nc_u32_e32 v159, 0, v1
	v_xor_b32_e32 v1, 32, v20
	scratch_store_b32 off, v3, off offset:444 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s35, v3
	v_xor_b32_e32 v8, 0x60, v19
	v_xor_b32_e32 v17, 0x2d0, v24
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:416
	scratch_store_b32 off, v3, off offset:452
	v_add_nc_u32_e32 v3, s35, v3
	v_xor_b32_e32 v1, 16, v19
	v_xor_b32_e32 v20, 0x3f0, v24
	v_add_nc_u32_e32 v2, 0, v2
	v_mad_u64_u32 v[156:157], null, s34, 24, v[154:155]
	v_add_nc_u32_e32 v7, s35, v3
	v_mov_b32_e32 v21, v3
	v_add_nc_u32_e32 v3, 0, v0
	v_xor_b32_e32 v0, 0x50, v19
	v_mad_u64_u32 v[206:207], null, s34, 26, v[154:155]
	v_dual_mov_b32 v166, v7 :: v_dual_add_nc_u32 v7, s35, v7
	v_mad_u64_u32 v[181:182], null, s34, 30, v[154:155]
	v_add_nc_u32_e32 v1, 0, v1
	v_add_nc_u32_e32 v5, 0, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v22, v7 :: v_dual_add_nc_u32 v11, s35, v7
	v_add_nc_u32_e32 v7, 0, v0
	v_xor_b32_e32 v0, 0x90, v24
	v_dual_mov_b32 v207, v37 :: v_dual_add_nc_u32 v8, 0, v8
	v_dual_mov_b32 v4, v11 :: v_dual_add_nc_u32 v15, s35, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v11, 0, v0
	v_xor_b32_e32 v0, 0x240, v24
	v_add_nc_u32_e32 v9, 0, v9
	v_dual_mov_b32 v16, v15 :: v_dual_add_nc_u32 v19, s35, v15
	v_add_nc_u32_e32 v13, 0, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v15, 0, v0
	v_xor_b32_e32 v0, 0x360, v24
	v_mov_b32_e32 v23, v19
	v_add_nc_u32_e32 v19, s35, v19
	v_add_nc_u32_e32 v14, 0, v14
	v_add_nc_u32_e32 v17, 0, v17
	v_add_nc_u32_e32 v20, 0, v20
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v213, 16, v38
	v_add_nc_u32_e32 v24, s35, v19
	v_dual_mov_b32 v12, v19 :: v_dual_add_nc_u32 v19, 0, v0
	v_or_b32_e32 v18, 18, v38
	v_or_b32_e32 v165, 20, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v211, v24 :: v_dual_add_nc_u32 v0, s35, v24
	v_or_b32_e32 v239, 22, v38
	v_or_b32_e32 v10, 24, v38
	v_or_b32_e32 v164, 26, v38
	v_mov_b32_e32 v24, v0
	v_add_nc_u32_e32 v0, s35, v0
	v_or_b32_e32 v241, 28, v209
	v_or_b32_e32 v242, 30, v209
	v_or_b32_e32 v243, v34, v33
	.loc	1 641 25                        ; attention_backward.py:641:25
	s_mul_f32 s71, s44, 0x3fb8aa3b
	v_mov_b32_e32 v6, v0
	v_add_nc_u32_e32 v0, s35, v0
	s_cmp_lt_i32 s39, s68
	s_mov_b32 s41, s58
	s_mov_b32 s37, 0
	.loc	1 613 26                        ; attention_backward.py:613:26
	s_mul_i32 s36, s6, s36
	v_mov_b32_e32 v212, v0
	v_add_nc_u32_e32 v0, s35, v0
	.loc	1 683 27                        ; attention_backward.py:683:27
	s_mul_i32 s45, s6, s45
	s_cselect_b32 s72, -1, 0
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s51, 0x31027000
	v_dual_mov_b32 v163, v0 :: v_dual_add_nc_u32 v0, s35, v0
	s_mov_b32 s50, 0x7ffffffe
	s_and_b32 s53, s53, 0xffff
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s57, s31, 0xffff
	v_mov_b32_e32 v246, v0
	v_add_nc_u32_e32 v0, s35, v0
	s_mov_b32 s56, s30
	s_and_b32 s61, s27, 0xffff
	s_mov_b32 s60, s26
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:524
	scratch_store_b32 off, v34, off offset:528
	v_add_nc_u32_e32 v168, s35, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v214, s35, v168
	v_add_nc_u32_e32 v162, s35, v214
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v240, s35, v162
	s_branch .LBB0_5
.LBB0_4:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_add_i32 s37, s37, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s37, s69
	s_cbranch_scc0 .LBB0_28
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s72
	s_cbranch_vccnz .LBB0_4
; %bb.6:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_add_i32 s3, s37, s70
	s_mov_b32 s73, s39
	.loc	1 613 26                        ; attention_backward.py:613:26
	s_add_i32 s26, s3, s36
	.loc	1 684 27                        ; attention_backward.py:684:27
	s_mul_i32 s27, s3, s46
	.loc	1 613 25                        ; attention_backward.py:613:25
	s_mul_i32 s26, s26, s38
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_add_i32 s27, s27, s45
	s_branch .LBB0_8
.LBB0_7:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 25 is_stmt 0                ; attention_backward.py:0:25
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 608 29 is_stmt 1              ; attention_backward.py:608:29
	s_or_b32 s3, s73, 1
	s_or_b32 s8, s73, 2
	s_or_b32 s9, s73, 3
	s_or_b32 s10, s73, 4
	s_or_b32 s11, s73, 5
	s_or_b32 s12, s73, 6
	s_or_b32 s13, s73, 7
	s_or_b32 s14, s73, 8
	s_or_b32 s15, s73, 9
	s_or_b32 s16, s73, 10
	s_or_b32 s17, s73, 11
	s_or_b32 s18, s73, 12
	s_or_b32 s79, s73, 13
	s_or_b32 s80, s73, 14
	s_or_b32 s81, s73, 15
	s_or_b32 s82, s73, 16
	s_or_b32 s83, s73, 17
	s_or_b32 s84, s73, 18
	s_or_b32 s95, s73, 19
	s_or_b32 s96, s73, 20
	s_or_b32 s97, s73, 21
	s_or_b32 s98, s73, 22
	s_or_b32 s99, s73, 23
	s_or_b32 s100, s73, 24
	s_or_b32 s101, s73, 25
	s_or_b32 s102, s73, 26
	s_or_b32 s103, s73, 27
	s_or_b32 s104, s73, 28
	s_or_b32 vcc_hi, s73, 29
	s_or_b32 s64, s73, 30
	s_or_b32 s40, s73, 31
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s73, s38
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_and_b16 v33.l, 0xff, v69.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s3, s38
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_waitcnt lgkmcnt(0)
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s8, s38
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e32 vcc_lo, 0, v33.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s9, s38
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_and_b16 v33.l, 0xff, v69.h
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s10, s38
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_barrier
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s11, s38
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s6, 0, v33.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s12, s38
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s30, s30, s35
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s13, s38
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v40, s30, v22, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s14, s38
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v39, s30, v21, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s15, s38
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v173, v171
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s16, s38
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v175, v171
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s17, s38
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v177, v171
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s18, s38
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v244.h, v190.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s79, s38
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v244.l, 0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s80, s38
	.loc	1 689 25                        ; attention_backward.py:689:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s81, s38
	.loc	1 689 25                        ; attention_backward.py:689:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s82, s38
	.loc	1 689 25                        ; attention_backward.py:689:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s83, s38
	.loc	1 689 25                        ; attention_backward.py:689:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 s84, s38
	.loc	1 689 25                        ; attention_backward.py:689:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s95, s38
	.loc	1 689 25                        ; attention_backward.py:689:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s96, s38
	.loc	1 689 25                        ; attention_backward.py:689:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s97, s38
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s98, s38
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s99, s38
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v176, v171
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s100, s38
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v172, v171
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s101, s38
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v174, v171
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s102, s38
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v178, v171
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s103, s38
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s104, s38
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 vcc_hi, s38
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s64, s38
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s40, s38
	s_cselect_b32 s11, -1, 0
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s3, s74, s6
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s73, s73, 32
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v33, 0, 1, s3
	.loc	1 689 34 is_stmt 0              ; attention_backward.py:689:34
	s_waitcnt vmcnt(0)
	v_and_b16 v33.h, 0xff, v68.h
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s3, s63, vcc_lo
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	s_mov_b32 s63, s51
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v34, 0, 1, s3
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 689 34 is_stmt 0              ; attention_backward.py:689:34
	v_cmp_ne_u16_e32 vcc_lo, 0, v33.h
	v_and_b16 v33.h, 0xff, v66.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_or_b16 v33.l, v34.l, v33.l
	s_and_b32 s6, s62, vcc_lo
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s3, 0, v33.h
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v34, 0, 1, s6
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	s_mov_b32 s62, s50
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s3, s59, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.h, 8, v34.l
	v_cndmask_b32_e64 v34, 0, 1, s3
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s59, s51
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_or_b16 v33.h, v34.l, v33.h
	scratch_load_b32 v34, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, 0, v34
	ds_store_b16 v34, v33
	.loc	1 689 34 is_stmt 0              ; attention_backward.py:689:34
	v_and_b16 v33.l, 0xff, v67.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_ne_u16_e32 vcc_lo, 0, v33.l
	v_and_b16 v33.l, 0xff, v66.h
	v_cmp_ne_u16_e64 s3, 0, v33.l
	v_and_b16 v33.l, 0xff, v68.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s3, s31, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s6, 0, v33.l
	v_and_b16 v33.l, 0xff, v67.h
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v35, 0, 1, s3
	.loc	1 715 36 is_stmt 1              ; attention_backward.py:715:36
	v_dual_mov_b32 v65, v171 :: v_dual_mov_b32 v68, v174
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s6, s58, s6
	.loc	1 689 34 is_stmt 0              ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s8, 0, v33.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v34, 0, 1, s6
	s_and_b32 s6, s55, vcc_lo
	.loc	1 712 26 is_stmt 1              ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s94
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s58, s50
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s31, s51
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_mov_b16_e32 v33.l, v34.l
	v_cndmask_b32_e64 v34, 0, 1, s6
	s_and_b32 s6, s54, s8
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v67, v173 :: v_dual_mov_b32 v70, v176
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v69, v175 :: v_dual_mov_b32 v72, v178
	v_mov_b32_e32 v66, v172
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_or_b16 v33.l, v34.l, v33.l
	v_cndmask_b32_e64 v34, 0, 1, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v34.l, 8, v34.l
	v_or_b16 v34.l, v35.l, v34.l
	scratch_load_b32 v35, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v35, v33
	scratch_load_b32 v35, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v35, v33
	scratch_load_b32 v33, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v33, v34
	s_waitcnt lgkmcnt(0)
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v34, off, off offset:320 ; 4-byte Folded Reload
	v_add_lshl_u32 v33, s30, v207, 1
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_barrier
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v36, off, off offset:408
	scratch_load_b32 v38, off, off offset:444
	scratch_load_b32 v35, off, off offset:376
	scratch_load_b32 v37, off, off offset:432
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s93
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v34, s30, v34, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v36, s30, v36, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v38, s30, v38, 1
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	s_clause 0x1
	buffer_load_u16 v98, v33, s[60:63], 0 offen
	buffer_load_u16 v99, v34, s[60:63], 0 offen
	scratch_load_b32 v33, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s92
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v34, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v35, s30, v35, 1
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v37, s30, v37, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v33, s30, v33, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v34, s30, v34, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s91
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v100, v33, s[60:63], 0 offen
	scratch_load_b32 v33, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v33, s30, v33, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s90
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v101, v33, s[60:63], 0 offen
	scratch_load_b32 v33, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v33, s30, v33, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s89
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	s_clause 0x1
	buffer_load_u16 v102, v33, s[60:63], 0 offen
	buffer_load_u16 v103, v34, s[60:63], 0 offen
	scratch_load_b32 v33, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s88
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v34, s30, v23, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v33, s30, v33, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s87
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v104, v33, s[60:63], 0 offen
	v_add_lshl_u32 v33, s30, v166, 1
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s86
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v105, v33, s[60:63], 0 offen
	v_add_lshl_u32 v33, s30, v4, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s85
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	s_clause 0x1
	buffer_load_u16 v146, v33, s[60:63], 0 offen
	buffer_load_u16 v147, v34, s[60:63], 0 offen
	v_add_lshl_u32 v33, s30, v211, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s84
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v34, s30, v0, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s83
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v148, v33, s[60:63], 0 offen
	v_add_lshl_u32 v33, s30, v6, 1
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s82
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v149, v33, s[60:63], 0 offen
	v_add_lshl_u32 v33, s30, v163, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s81
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	s_clause 0x1
	buffer_load_u16 v150, v33, s[60:63], 0 offen
	buffer_load_u16 v151, v34, s[60:63], 0 offen
	v_add_lshl_u32 v33, s30, v214, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s80
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v34, off, off offset:340 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s79
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v152, v33, s[60:63], 0 offen
	v_add_lshl_u32 v33, s30, v240, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s78
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v153, v33, s[60:63], 0 offen
	scratch_load_b32 v33, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v34, s30, v34, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v33, s30, v33, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s77
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s76
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s75
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s20
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s19
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s18
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s17
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	s_clause 0x7
	buffer_load_u16 v113, v36, s[60:63], 0 offen
	buffer_load_u16 v248, v35, s[60:63], 0 offen
	buffer_load_u16 v249, v34, s[60:63], 0 offen
	buffer_load_u16 v252, v33, s[60:63], 0 offen
	buffer_load_u16 v245, v40, s[60:63], 0 offen
	buffer_load_u16 v235, v39, s[60:63], 0 offen
	buffer_load_u16 v251, v38, s[60:63], 0 offen
	buffer_load_u16 v254, v37, s[60:63], 0 offen
	v_add_lshl_u32 v33, s30, v12, 1
	v_add_lshl_u32 v34, s30, v24, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s13
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v35, s30, v212, 1
	v_add_lshl_u32 v36, s30, v16, 1
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s14
	v_add_nc_u32_e32 v39, s35, v240
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s15
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v37, s30, v168, 1
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s10
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v38, s30, v162, 1
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s12
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v39, s30, v39, 1
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s16
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v40, s30, v246, 1
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s11
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s30, s50
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s9
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_i32 s73, s68
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	s_clause 0x7
	buffer_load_u16 v250, v35, s[60:63], 0 offen
	buffer_load_u16 v231, v34, s[60:63], 0 offen
	buffer_load_u16 v234, v33, s[60:63], 0 offen
	buffer_load_u16 v237, v36, s[60:63], 0 offen
	buffer_load_u16 v253, v39, s[60:63], 0 offen
	buffer_load_u16 v233, v38, s[60:63], 0 offen
	buffer_load_u16 v236, v37, s[60:63], 0 offen
	buffer_load_u16 v221, v40, s[60:63], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v33, 2, v114
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v33, 0x80000000, v33, s5
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v37, v33, s[56:59], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v170, v33, s[28:31], 0 offen
	.loc	1 689 25                        ; attention_backward.py:689:25
	scratch_load_b32 v33, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v71, v177
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(18)
	v_mov_b16_e32 v101.h, v113.l
	s_waitcnt vmcnt(17)
	v_mov_b16_e64 v100.h, v248.l
	s_waitcnt vmcnt(16)
	v_mov_b16_e64 v99.h, v249.l
	s_waitcnt vmcnt(15)
	v_mov_b16_e64 v98.h, v252.l
	s_waitcnt vmcnt(14)
	v_mov_b16_e64 v105.h, v245.l
	s_waitcnt vmcnt(13)
	v_mov_b16_e64 v104.h, v235.l
	s_waitcnt vmcnt(12)
	v_mov_b16_e64 v103.h, v251.l
	s_waitcnt vmcnt(11)
	v_mov_b16_e64 v102.h, v254.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e64 v149.h, v250.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e64 v148.h, v231.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v147.h, v234.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v146.h, v237.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v153.h, v253.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v152.h, v233.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v151.h, v236.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v150.h, v221.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, 0, v33
	ds_load_u8_d16 v33, v34
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v33, v34 offset:64
	ds_load_u8_d16 v34, v230
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v34, v230 offset:64
	ds_load_u8_d16 v35, v167
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v35, v167 offset:64
	ds_load_u8_d16 v36, v169
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v36, v169 offset:64
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v38, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v33.l
	v_and_b16 v33.l, 1, v33.h
	v_cmp_eq_u16_e64 s3, 1, v33.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, 0, v38
	ds_store_b128 v38, v[98:101]
	scratch_load_b32 v38, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v38, v[102:105]
	scratch_load_b32 v38, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v38, v[146:149]
	scratch_load_b32 v38, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v38, v[150:153]
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v38, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, 0, v38
	ds_load_b128 v[142:145], v38
	ds_load_b128 v[134:137], v38 offset:2048
	ds_load_b128 v[138:141], v247
	ds_load_b128 v[130:133], v247 offset:2048
	ds_load_b128 v[126:129], v203
	ds_load_b128 v[118:121], v203 offset:2048
	ds_load_b128 v[122:125], v204
	ds_load_b128 v[114:117], v204 offset:2048
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v222, v98
	ds_store_b16 v222, v102 offset:1024
	ds_store_b16 v222, v146 offset:2048
	ds_store_b16 v222, v150 offset:3072
	ds_store_b16 v223, v252
	ds_store_b16 v223, v254 offset:1024
	ds_store_b16 v223, v237 offset:2048
	ds_store_b16 v223, v221 offset:3072
	ds_store_b16 v224, v99
	ds_store_b16 v224, v103 offset:1024
	ds_store_b16 v224, v147 offset:2048
	ds_store_b16 v224, v151 offset:3072
	ds_store_b16 v225, v249
	ds_store_b16 v225, v251 offset:1024
	ds_store_b16 v225, v234 offset:2048
	ds_store_b16 v225, v236 offset:3072
	ds_store_b16 v226, v100
	ds_store_b16 v226, v104 offset:1024
	ds_store_b16 v226, v148 offset:2048
	ds_store_b16 v226, v152 offset:3072
	ds_store_b16 v227, v248
	ds_store_b16 v227, v235 offset:1024
	ds_store_b16 v227, v231 offset:2048
	ds_store_b16 v227, v233 offset:3072
	ds_store_b16 v228, v101
	ds_store_b16 v228, v105 offset:1024
	ds_store_b16 v228, v149 offset:2048
	ds_store_b16 v228, v153 offset:3072
	ds_store_b16 v229, v113
	ds_store_b16 v229, v245 offset:1024
	ds_store_b16 v229, v250 offset:2048
	ds_store_b16 v229, v253 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 36-byte Folded Reload
	scratch_load_b32 v38, off, off offset:428
	scratch_load_b128 v[172:175], off, off offset:268
	scratch_load_b128 v[176:179], off, off offset:284
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v38, 0, v38
	ds_load_b128 v[191:194], v38
	scratch_load_b32 v38, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[195:198], v38
	scratch_load_b32 v38, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[172:179], v[191:198], v[65:72]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[172:175], off, off offset:236
	scratch_load_b128 v[176:179], off, off offset:252
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	ds_load_b128 v[191:194], v38
	scratch_load_b32 v38, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[195:198], v38
	scratch_load_b32 v38, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[172:179], v[191:198], v[65:72]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[172:175], off, off offset:204
	scratch_load_b128 v[176:179], off, off offset:220
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	ds_load_b128 v[191:194], v38
	scratch_load_b32 v38, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[195:198], v38
	scratch_load_b32 v38, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[172:179], v[191:198], v[65:72]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[172:175], off, off offset:172
	scratch_load_b128 v[176:179], off, off offset:188
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	ds_load_b128 v[191:194], v38
	scratch_load_b32 v38, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[195:198], v38
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[172:179], v[191:198], v[65:72]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v40, v67, v37
	v_sub_f32_e32 v67, v70, v37
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v70, v74
	v_cvt_f32_i32_e32 v74, v78
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v78, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v38, v65, v37
	v_sub_f32_e32 v39, v66, v37
	v_sub_f32_e32 v66, v69, v37
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v69, v73
	v_cvt_f32_i32_e32 v73, v77
	.loc	1 640 41                        ; attention_backward.py:640:41
	v_mul_f32_e32 v77, s71, v244
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v65, v68, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v69, v77, v69
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v69, v69, v78, -v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v69, v69
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e32 v191, 0, v69, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v38, v191, v38
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v38, s44, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v69, v38, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	v_add3_u32 v38, v38, v69, 0x7fff
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_mul_f32_e32 v69, v77, v73
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v73, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v69, v69, v73, -v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v69, v69
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v190, 0, v69, s3
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v69, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v68, v71, v37
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v33, v190, v66
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v71, v75
	v_cvt_f32_i32_e32 v75, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v33, s44, v33
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v66, v33, 16, 1
	v_cmp_o_f32_e64 s3, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v33, v33, v66, 0x7fff
	.loc	1 689 25 is_stmt 1              ; attention_backward.py:689:25
	v_and_b16 v33.l, 1, v34.l
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v66, v77, v70
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s5, 1, v33.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v38.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	scratch_load_b32 v38, off, off offset:440 ; 4-byte Folded Reload
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(1)
	v_fma_f32 v66, v66, v69, -v170
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v219, 0, v66, s5
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v39, v219, v39
	.loc	1 721 38                        ; attention_backward.py:721:38
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v39, s44, v39 :: v_dual_add_nc_u32 v38, 0, v38
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v66, v39, 16, 1
	v_cmp_o_f32_e64 s5, v39, v39
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	ds_store_b16 v38, v33
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v39, v39, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b16 v33.l, 0x7fff, v39.h, s5
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v38, v33 offset:512
	v_bfe_i32 v38, v187, 0, 8
	v_mov_b16_e32 v34.l, v38.l
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v37, v72, v37
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v72, v76
	v_cvt_f32_i32_e32 v76, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v38, 15, v34
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v33.h, v34.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v39, -16, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v38, v38, v39, vcc_lo
	v_bfe_i32 v39, v186, 0, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v66, 15, v39
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v33.h, v39.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v69, -16, v66
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v33.h, 4, v34.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v66, v66, v69, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v69.l, v33.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e64 v69.h, v244.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v34.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v33.h, 4, v39.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v70, -16, v69
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v69, v69, v70, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v70.l, v33.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e64 v70.h, v244.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v39.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_and_b16 v33.h, 1, v35.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v69, v69
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v73, -16, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v39, v70, v73, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e64 v70.h, v189.l
	v_mov_b16_e64 v70.l, v244.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v38, v38, v70
	v_mul_f32_e32 v69, v69, v70
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v70.h, v188.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v38, 0, v38, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v39, v70, v39
	v_mul_f32_e32 v66, v70, v66
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v70.h, v244.l
	v_cmp_o_f32_e64 s5, v38, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v39, 0, v39, s1
	v_mov_b16_e32 v70.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	v_and_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v70, v39, v70, 0x7fff
	v_cndmask_b32_e64 v39, 0, v66, s0
	v_mov_b16_e64 v66.h, v244.l
	v_cndmask_b16 v157.h, 0x7fff, v70.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v66.l, v39.h
	v_cmp_o_f32_e64 s3, v39, v39
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v33.h
	v_and_b16 v33.h, 1, v36.l
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v70, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v39, v66, 0x7fff
	v_bfe_u32 v39, v38, 16, 1
	v_cndmask_b16 v157.l, 0x7fff, v66.h, s3
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v66, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v39, v38, v39, 0x7fff
	v_cndmask_b32_e64 v38, 0, v69, s1
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s3, 1, v33.h
	v_and_b16 v33.h, 1, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s5
	v_bfe_u32 v69, v38, 16, 1
	v_cmp_o_f32_e64 s6, v38, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s5, 1, v33.h
	v_and_b16 v33.h, 1, v35.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v69, v38, v69, 0x7fff
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v38, v77, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v39.h, 0x7fff, v69.h, s6
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v69, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s6, 1, v33.h
	v_and_b16 v33.h, 1, v36.h
	v_cmp_eq_u16_e64 s8, 1, v33.h
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(1)
	v_fma_f32 v38, v38, v66, -v170
	scratch_load_b32 v66, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v38, v38
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_mul_f32_e32 v71, v77, v72
	v_mul_f32_e32 v72, v77, v74
	v_mul_f32_e32 v74, v77, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v186, 0, v38, vcc_lo
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(1)
	v_fma_f32 v69, v72, v69, -v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_dual_mul_f32 v38, v186, v40 :: v_dual_mul_f32 v73, v77, v75
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v38, s44, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v70, v73, v70, -v170
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v40, v38, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_add3_u32 v40, v38, v40, 0x7fff
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v66, v71, v66, -v170
	scratch_load_b32 v71, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v38, v66
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v187, 0, v38, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v38, v187, v65
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v38, s44, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v65, v38, 16, 1
	v_cmp_o_f32_e64 s3, v38, v38
	v_add3_u32 v65, v38, v65, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v38, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v188, 0, v38, s5
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v34, v188, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v34, s44, v34
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v38, v34, 16, 1
	v_cmp_o_f32_e64 s5, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v38, v34, v38, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v34, v70
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.h, 0x7fff, v38.h, s5
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v158, v33
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v40.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v158, v33 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v189, 0, v34, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v34, v189, v68
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v34, s44, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v35, v34, 16, 1
	v_cmp_o_f32_e64 s6, v34, v34
	v_add3_u32 v35, v34, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s6
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	ds_store_b16 v159, v33
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v65.h, s3
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add_nc_u32_e32 v65, 0, v160
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v159, v33 offset:512
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v71, v74, v71, -v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v34, v71
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v170, 0, v34, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v34, v170, v37
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v34, s44, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v36, v34, 16, 1
	v_cmp_o_f32_e64 s8, v34, v34
	v_add3_u32 v36, v34, v36, 0x7fff
	v_bfe_i32 v34, v183, 0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v35, 15, v34
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v33.h, v34.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v37, -16, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v35, v35, v37, vcc_lo
	v_bfe_i32 v37, v81, 0, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v35, v35
	v_mov_b16_e32 v36.l, v37.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v37, 15, v36
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v33.h, v36.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v38, -16, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v33.h, 4, v34.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v37, v37, v38, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v38.l, v33.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e64 v38.h, v244.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v34.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v33.h, 4, v36.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v40, -16, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v34, v38, v40, vcc_lo
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v38.l, v33.h, 15
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.h, 0x7fff, v36.h, s8
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v161, v33
	ds_store_b16_d16_hi v161, v33 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v33, off, off offset:448 ; 4-byte Folded Reload
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v40, -16, v38
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v36.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v38, v38, v40, vcc_lo
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v40.h, v185.l
	v_mov_b16_e64 v40.l, v244.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v35, v35, v40
	v_mul_f32_e32 v34, v34, v40
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v40.h, v184.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v35, 0, v35, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v34, 0, v34, s1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v37, v37, v40
	v_mul_f32_e32 v38, v38, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v40, v35, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	v_cmp_o_f32_e64 s3, v34, v34
	v_add3_u32 v40, v35, v40, 0x7fff
	v_bfe_u32 v35, v34, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v34, v35, 0x7fff
	v_cndmask_b32_e64 v34, 0, v37, s0
	v_bfe_u32 v37, v34, 16, 1
	v_cmp_o_f32_e64 s5, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v37, v34, v37, 0x7fff
	v_cndmask_b32_e64 v34, 0, v38, s1
	v_cndmask_b16 v35.l, 0x7fff, v37.h, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v38, v34, 16, 1
	v_cmp_o_f32_e64 s6, v34, v34
	v_add3_u32 v38, v34, v38, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v40.h, vcc_lo
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v35.h, 0x7fff, v38.h, s6
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, 0, v33
	ds_load_b128 v[74:77], v33
	scratch_load_b32 v33, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[78:81], v33
	scratch_load_b32 v33, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[66:69], v33
	scratch_load_b32 v33, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[70:73], v33
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v33, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v183, v222, v33
	v_bfe_i32 v33, v111, 0, 8
	ds_store_2addr_stride64_b32 v183, v157, v39 offset1:1
	ds_store_2addr_stride64_b32 v183, v34, v35 offset0:2 offset1:3
	v_mov_b16_e32 v36.l, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v37, 15, v36
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v33.l, v36.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v38, -16, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.l
	v_bfe_i32 v33, v109, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v33.h, v244.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v37, v37, v38, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v38.l, v33.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v33.l, v38.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v39, 15, v38
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e64 v38.h, v182.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v33.l, 4, v36.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v40, -16, v39
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v33.l, v33.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v39, v39, v40, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v36.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v40, -16, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v36, v33, v40, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v33.l, 4, v38.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v38.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v38.l, v244.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v36, v36
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v33.l, v33.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v37, v37, v38
	v_mul_f32_e32 v36, v36, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v40, -16, v33
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v38.h, v112.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v37, 0, v37, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v36, 0, v36, s1
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v33, v33, v40, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v39, v39, v38
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v36, v36
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v33, v33, v38
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v38, v37, 16, 1
	v_cndmask_b32_e64 v33, 0, v33, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v37, v38, 0x7fff
	v_bfe_u32 v37, v36, 16, 1
	v_cmp_o_f32_e64 s6, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v37, v36, v37, 0x7fff
	v_cndmask_b32_e64 v36, 0, v39, s0
	v_cndmask_b16 v37.l, 0x7fff, v38.h, vcc_lo
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v39, v36, 16, 1
	v_cmp_o_f32_e64 s5, v36, v36
	v_add3_u32 v39, v36, v39, 0x7fff
	v_bfe_u32 v36, v33, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v36, v33, v36, 0x7fff
	v_bfe_i32 v33, v110, 0, 8
	v_cndmask_b16 v36.l, 0x7fff, v39.h, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s6
	v_mov_b16_e32 v34.l, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v35, 15, v34
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v33.l, v34.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v38, -16, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.l
	v_bfe_i32 v33, v107, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v33.h, v244.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v35, v35, v38, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v38.l, v33.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v33.l, v38.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v39, 15, v38
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v38.h, v108.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v33.l, 4, v34.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v40, -16, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v33.l, v33.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v39, v39, v40, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v34.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v40, -16, v33
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v34, v33, v40, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v33.l, 4, v38.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v38.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v38.l, v244.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v34, v34
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v33.l, v33.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v35, v35, v38
	v_mul_f32_e32 v34, v34, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v40, -16, v33
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v38.h, v106.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v35, 0, v35, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v34, 0, v34, s1
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v33, v33, v40, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v39, v39, v38
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v34, v34
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v33, v33, v38
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v38, v35, 16, 1
	v_cndmask_b32_e64 v33, 0, v33, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v35, v38, 0x7fff
	v_bfe_u32 v35, v34, 16, 1
	v_cmp_o_f32_e64 s6, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v34, v35, 0x7fff
	v_cndmask_b32_e64 v34, 0, v39, s0
	v_bfe_u32 v39, v34, 16, 1
	v_cmp_o_f32_e64 s5, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v34, v39, 0x7fff
	v_bfe_u32 v34, v33, 16, 1
	v_add3_u32 v34, v33, v34, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v38.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s3
	v_cndmask_b16 v34.l, 0x7fff, v39.h, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s6
	ds_store_2addr_stride64_b32 v183, v37, v36 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v183, v33, v34 offset0:6 offset1:7
	v_bfe_i32 v33, v97, 0, 8
	v_mov_b16_e32 v34.l, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v35, 15, v34
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v33.l, v34.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v36, -16, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.l
	v_bfe_i32 v33, v95, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v33.h, v244.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v35, v35, v36, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v36.l, v33.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v33.l, v36.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v37, 15, v36
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v36.h, v96.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v33.l, 4, v34.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v38, -16, v37
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v33.l, v33.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v37, v37, v38, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v34.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v38, -16, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v34, v33, v38, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v33.l, 4, v36.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v36.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v36.l, v244.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v34, v34
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v33.l, v33.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v35, v35, v36
	v_mul_f32_e32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v38, -16, v33
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v36.h, v94.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v35, 0, v35, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v34, 0, v34, s1
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v33, v33, v38, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v37, v37, v36
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v34, v34
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v33, v33, v36
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v36, v35, 16, 1
	v_cndmask_b32_e64 v33, 0, v33, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v36, v35, v36, 0x7fff
	v_bfe_u32 v35, v34, 16, 1
	v_cmp_o_f32_e64 s6, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v35, v34, v35, 0x7fff
	v_cndmask_b32_e64 v34, 0, v37, s0
	v_cndmask_b16 v35.l, 0x7fff, v36.h, vcc_lo
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v37, v34, 16, 1
	v_cmp_o_f32_e64 s5, v34, v34
	v_add3_u32 v37, v34, v37, 0x7fff
	v_bfe_u32 v34, v33, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v34, v33, v34, 0x7fff
	v_bfe_i32 v33, v91, 0, 8
	v_mov_b16_e32 v34.l, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v33.l, v34.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v36, 15, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 42 is_stmt 1              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.l
	v_bfe_i32 v33, v90, 0, 8
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v38, -16, v36
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v33.h, v244.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v37.l, v33.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v36, v36, v38, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v33.l, v37.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v38, 15, v37
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v33.l, 4, v34.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v39, -16, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v33.l, v33.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v38, v38, v39, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v34.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v39, -16, v33
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v39, v33, v39, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v33.l, 4, v37.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v37.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v33.l, v33.l, 15
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v40, -16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v33, v33, v40, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v40.h, v93.l
	v_mov_b16_e64 v40.l, v244.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v36, v36, v40
	v_mul_f32_e32 v39, v39, v40
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v40.h, v92.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v36, 0, v36, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v38, v38, v40
	v_mul_f32_e32 v33, v33, v40
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v40, v36, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v33, 0, v33, s1
	v_add3_u32 v40, v36, v40, 0x7fff
	v_cndmask_b32_e64 v36, 0, v39, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s9, v33, v33
	v_cndmask_b16 v34.l, 0x7fff, v40.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v39, v36, 16, 1
	v_cmp_o_f32_e64 s3, v36, v36
	v_add3_u32 v39, v36, v39, 0x7fff
	v_cndmask_b32_e64 v36, 0, v38, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v38, v36, 16, 1
	v_cmp_o_f32_e64 s8, v36, v36
	v_add3_u32 v38, v36, v38, 0x7fff
	v_bfe_u32 v36, v33, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v36, v33, v36, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v37.h, s5
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s6
	v_cndmask_b16 v34.h, 0x7fff, v39.h, s3
	v_cndmask_b16 v36.l, 0x7fff, v38.h, s8
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s9
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s8, v189, v189
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_store_2addr_stride64_b32 v183, v35, v33 offset0:8 offset1:9
	v_bfe_i32 v33, v89, 0, 8
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s9, v170, v170
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_store_2addr_stride64_b32 v183, v34, v36 offset0:10 offset1:11
	v_mov_b16_e32 v35.l, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v37, 15, v35
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v33.l, v35.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v38, -16, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.l
	v_bfe_i32 v33, v88, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v33.h, v244.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v37, v37, v38, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v38.l, v33.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v33.l, v38.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v39, 15, v38
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v38.h, v87.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v33.l, 4, v35.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v40, -16, v39
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v33.l, v33.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v39, v39, v40, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v35.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v40, -16, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v35, v33, v40, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v33.l, 4, v38.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v38.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v38.l, v244.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v35, v35
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v33.l, v33.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v37, v37, v38
	v_mul_f32_e32 v35, v35, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v40, -16, v33
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v38.h, v86.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v37, 0, v37, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v35, 0, v35, s1
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v33, v33, v40, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v39, v39, v38
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v35, v35
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v33, v33, v38
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v38, v37, 16, 1
	v_cndmask_b32_e64 v33, 0, v33, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v37, v38, 0x7fff
	v_bfe_u32 v37, v35, 16, 1
	v_cmp_o_f32_e64 s6, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v37, v35, v37, 0x7fff
	v_cndmask_b32_e64 v35, 0, v39, s0
	v_cndmask_b16 v37.l, 0x7fff, v38.h, vcc_lo
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v39, v35, 16, 1
	v_cmp_o_f32_e64 s5, v35, v35
	v_add3_u32 v39, v35, v39, 0x7fff
	v_bfe_u32 v35, v33, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v35, v33, v35, 0x7fff
	v_bfe_i32 v33, v85, 0, 8
	v_cndmask_b16 v35.l, 0x7fff, v39.h, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s6
	v_mov_b16_e32 v34.l, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v36, 15, v34
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v33.l, v34.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v38, -16, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.l
	v_bfe_i32 v33, v84, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v33.h, v244.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v36, v36, v38, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v38.l, v33.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v33.l, v38.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v39, 15, v38
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v38.h, v83.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v33.l, 4, v34.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v40, -16, v39
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v33.l, v33.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v39, v39, v40, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v34.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v40, -16, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v34, v33, v40, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v33.l, 4, v38.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v38.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v38.l, v244.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v34, v34
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v33.l, v33.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v36, v36, v38
	v_mul_f32_e32 v34, v34, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v40, -16, v33
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v38.h, v82.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v36, 0, v36, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v34, 0, v34, s1
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v33, v33, v40, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v39, v39, v38
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v40, v170, 16, 1
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s3, v34, v34
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v40, v170, v40, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v40.l, v244.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v33, v33, v38
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v38, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s9
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v33, 0, v33, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v36, v38, 0x7fff
	v_bfe_u32 v36, v34, 16, 1
	v_cmp_o_f32_e64 s6, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v36, v34, v36, 0x7fff
	v_cndmask_b32_e64 v34, 0, v39, s0
	v_bfe_u32 v39, v34, 16, 1
	v_cmp_o_f32_e64 s5, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v34, v39, 0x7fff
	v_bfe_u32 v34, v33, 16, 1
	v_add3_u32 v34, v33, v34, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v38.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v36.h, s3
	v_cndmask_b16 v34.l, 0x7fff, v39.h, s5
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v191, v191
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s6
	ds_store_2addr_stride64_b32 v183, v37, v35 offset0:12 offset1:13
	ds_store_2addr_stride64_b32 v183, v33, v34 offset0:14 offset1:15
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v194, v210 offset:512
	ds_load_u16_d16 v195, v210 offset:768
	ds_load_u16_d16 v196, v210 offset:1024
	ds_load_u16_d16 v199, v210 offset:1792
	ds_load_u16_d16 v197, v210 offset:1280
	ds_load_u16_d16 v176, v210 offset:1088
	ds_load_u16_d16 v175, v210 offset:832
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16_hi v176, v210 offset:1216
	ds_load_u16_d16 v193, v210 offset:256
	ds_load_u16_d16 v192, v210
	ds_load_u16_d16 v198, v210 offset:1536
	ds_load_u16_d16_hi v194, v210 offset:640
	ds_load_u16_d16_hi v195, v210 offset:896
	ds_load_u16_d16_hi v196, v210 offset:1152
	ds_load_u16_d16 v177, v210 offset:1344
	ds_load_u16_d16 v85, v210 offset:2816
	ds_load_u16_d16 v86, v210 offset:3072
	ds_load_u16_d16 v92, v210 offset:2624
	ds_load_u16_d16 v91, v210 offset:2368
	ds_load_u16_d16 v82, v210 offset:2048
	ds_load_u16_d16 v83, v210 offset:2304
	ds_load_u16_d16 v84, v210 offset:2560
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v92, v210 offset:2752
	ds_load_u16_d16_hi v198, v210 offset:1664
	ds_load_u16_d16_hi v199, v210 offset:1920
	ds_load_u16_d16_hi v197, v210 offset:1408
	ds_load_u16_d16 v172, v210 offset:64
	ds_load_u16_d16_hi v193, v210 offset:384
	ds_load_u16_d16 v174, v210 offset:576
	ds_load_u16_d16 v173, v210 offset:320
	ds_load_u16_d16_hi v192, v210 offset:128
	ds_load_u16_d16 v178, v210 offset:1600
	ds_load_u16_d16 v90, v210 offset:2112
	ds_load_u16_d16 v179, v210 offset:1856
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v33, v191, 16, 1
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_load_u16_d16 v93, v210 offset:2880
	ds_load_u16_d16 v87, v210 offset:3328
	ds_load_u16_d16 v94, v210 offset:3136
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v91, v210 offset:2496
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v90, v210 offset:2240
	ds_load_u16_d16 v88, v210 offset:3584
	ds_load_u16_d16 v89, v210 offset:3840
	ds_load_u16_d16_hi v86, v210 offset:3200
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v33, v191, v33, 0x7fff
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_load_u16_d16_hi v172, v210 offset:192
	ds_load_u16_d16_hi v175, v210 offset:960
	ds_load_u16_d16_hi v174, v210 offset:704
	ds_load_u16_d16_hi v173, v210 offset:448
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v93, v210 offset:3008
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v87, v210 offset:3456
	ds_load_u16_d16 v97, v210 offset:3904
	ds_load_u16_d16 v96, v210 offset:3648
	ds_load_u16_d16 v95, v210 offset:3392
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v94, v210 offset:3264
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v244.h, 0x7fff, v33.h, vcc_lo
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_load_u16_d16_hi v177, v210 offset:1472
	ds_load_u16_d16_hi v178, v210 offset:1728
	ds_load_u16_d16_hi v179, v210 offset:1984
	ds_load_u16_d16_hi v85, v210 offset:2944
	ds_load_u16_d16_hi v84, v210 offset:2688
	ds_load_u16_d16_hi v83, v210 offset:2432
	ds_load_u16_d16_hi v82, v210 offset:2176
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v35, v186, 16, 1
	v_cmp_o_f32_e64 s3, v219, v219
	v_bfe_u32 v36, v187, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v33, v191, v244
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s5, v186, v186
	v_add3_u32 v35, v186, v35, 0x7fff
	v_bfe_u32 v37, v190, 16, 1
	v_bfe_u32 v38, v188, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v34, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v39, v189, 16, 1
	v_add3_u32 v36, v187, v36, 0x7fff
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s5
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v33, v219, 16, 1
	v_add3_u32 v37, v190, v37, 0x7fff
	v_cmp_o_f32_e64 s5, v190, v190
	v_add3_u32 v38, v188, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v188, v188
	v_add3_u32 v33, v219, v33, 0x7fff
	v_add3_u32 v39, v189, v39, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v34.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add_nc_u32_e32 v34, 0, v202
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s5
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s3
	v_cmp_o_f32_e64 s3, v187, v187
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[57:64], v[192:199], v[74:81], v[57:64]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[172:179], v[74:81], v[49:56]
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_load_u16_d16_hi v88, v210 offset:3712
	ds_load_u16_d16_hi v89, v210 offset:3968
	ds_load_u16_d16_hi v97, v210 offset:4032
	ds_load_u16_d16_hi v96, v210 offset:3776
	ds_load_u16_d16_hi v95, v210 offset:3520
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s6
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s8
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16_d16_hi v65, v244
	ds_store_b16_d16_hi v1, v33
	ds_store_b16_d16_hi v2, v35
	ds_store_b16_d16_hi v3, v36
	ds_store_b16_d16_hi v5, v37
	ds_store_b16_d16_hi v7, v38
	ds_store_b16_d16_hi v8, v39
	ds_store_b16_d16_hi v9, v40
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[77:78], v11
	ds_load_b64 v[79:80], v17
	ds_load_b64 v[198:199], v13
	ds_load_b64 v[192:193], v14
	ds_load_b64 v[200:201], v34
	ds_load_b64 v[74:75], v19
	ds_load_b64 v[194:195], v20
	ds_load_b64 v[196:197], v15
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v65, v33
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e64 v33.l, v244.l
	v_mov_b16_e64 v35.l, v244.l
	v_mov_b16_e64 v36.l, v244.l
	v_mov_b16_e64 v37.l, v244.l
	v_mov_b16_e64 v38.l, v244.l
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v33, v219, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_sub_f32 v35, v186, v35 :: v_dual_sub_f32 v36, v187, v36
	v_dual_sub_f32 v37, v190, v37 :: v_dual_sub_f32 v38, v188, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v65, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s3, v35, v35
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v39.l, v244.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s5, v36, v36
	v_add3_u32 v65, v33, v65, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	v_cmp_o_f32_e64 s6, v37, v37
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v39, v189, v39 :: v_dual_sub_f32 v40, v170, v40
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s8, v38, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v33, v35, v33, 0x7fff
	v_bfe_u32 v35, v36, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v65.h, vcc_lo
	v_cmp_o_f32_e64 s9, v39, v39
	v_cmp_o_f32_e64 s10, v40, v40
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e32 v98.h, v77.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v35, v36, v35, 0x7fff
	v_bfe_u32 v36, v37, 16, 1
	ds_store_b16 v1, v33
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s3
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v77.l, v200.h
	v_mov_b16_e64 v103.h, v193.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v36, v37, v36, 0x7fff
	v_bfe_u32 v37, v38, 16, 1
	ds_store_b16 v2, v33
	v_cndmask_b16 v33.l, 0x7fff, v35.h, s5
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v193.l, v199.h
	v_mov_b16_e32 v100.h, v79.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v37, v38, v37, 0x7fff
	v_bfe_u32 v38, v39, 16, 1
	ds_store_b16 v3, v33
	v_cndmask_b16 v33.l, 0x7fff, v36.h, s6
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v79.l, v196.h
	v_mov_b16_e64 v101.h, v194.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v38, v39, v38, 0x7fff
	v_bfe_u32 v39, v40, 16, 1
	ds_store_b16 v5, v33
	v_cndmask_b16 v33.l, 0x7fff, v37.h, s8
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v194.l, v74.h
	v_mov_b32_e32 v76, v79
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v39, v40, v39, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v79, v193
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v7, v33
	v_cndmask_b16 v33.l, 0x7fff, v38.h, s9
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v99.h, v192.l
	v_mov_b16_e64 v192.l, v198.h
	v_mov_b16_e64 v105.h, v195.l
	v_mov_b16_e64 v195.l, v75.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v8, v33
	v_cndmask_b16 v33.l, 0x7fff, v39.h, s10
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v104.h, v80.l
	v_mov_b16_e64 v80.l, v197.h
	v_mov_b32_e32 v81, v195
	v_mov_b16_e32 v102.h, v78.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v9, v33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[111:112], v17
	ds_load_b64 v[109:110], v11
	ds_load_b64 v[106:107], v13
	ds_load_b64 v[182:183], v14
	ds_load_b64 v[188:189], v34
	ds_load_b64 v[186:187], v19
	ds_load_b64 v[184:185], v20
	ds_load_b64 v[190:191], v15
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v222, v98
	ds_store_b16 v222, v99 offset:256
	ds_store_b16 v222, v100 offset:512
	ds_store_b16 v222, v101 offset:768
	ds_store_b16 v222, v102 offset:1024
	ds_store_b16 v222, v103 offset:1280
	ds_store_b16 v222, v104 offset:1536
	ds_store_b16 v222, v105 offset:1792
	ds_store_b16 v222, v146 offset:2048
	ds_store_b16 v222, v147 offset:2304
	ds_store_b16 v222, v148 offset:2560
	ds_store_b16 v222, v149 offset:2816
	ds_store_b16 v222, v150 offset:3072
	ds_store_b16 v222, v151 offset:3328
	ds_store_b16 v222, v152 offset:3584
	ds_store_b16 v222, v153 offset:3840
	ds_store_b16 v222, v252 offset:128
	ds_store_b16 v222, v249 offset:384
	ds_store_b16 v222, v248 offset:640
	ds_store_b16 v222, v113 offset:896
	ds_store_b16 v222, v254 offset:1152
	ds_store_b16 v222, v251 offset:1408
	ds_store_b16 v222, v235 offset:1664
	ds_store_b16 v222, v245 offset:1920
	ds_store_b16 v222, v237 offset:2176
	ds_store_b16 v222, v234 offset:2432
	ds_store_b16 v222, v231 offset:2688
	ds_store_b16 v222, v250 offset:2944
	ds_store_b16 v222, v221 offset:3200
	ds_store_b16 v222, v236 offset:3456
	ds_store_b16 v222, v233 offset:3712
	ds_store_b16 v222, v253 offset:3968
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v152, v210 offset:1536
	ds_load_u16_d16 v151, v210 offset:1280
	ds_load_u16_d16 v176, v210 offset:1088
	ds_load_u16_d16 v175, v210 offset:832
	ds_load_u16_d16 v148, v210 offset:512
	ds_load_u16_d16 v149, v210 offset:768
	ds_load_u16_d16 v150, v210 offset:1024
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v101.l, v74.l
	v_dual_mov_b32 v74, v77 :: v_dual_mov_b32 v77, v194
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v176, v210 offset:1216
	ds_load_u16_d16 v147, v210 offset:256
	ds_load_u16_d16 v146, v210
	ds_load_u16_d16 v194, v210 offset:2624
	ds_load_u16_d16 v193, v210 offset:2368
	ds_load_u16_d16 v232, v210 offset:2304
	ds_load_u16_d16 v233, v210 offset:2560
	s_waitcnt lgkmcnt(3)
	ds_load_u16_d16_hi v194, v210 offset:2752
	ds_load_u16_d16 v153, v210 offset:1792
	ds_load_u16_d16 v231, v210 offset:2048
	ds_load_u16_d16 v235, v210 offset:3072
	ds_load_u16_d16 v234, v210 offset:2816
	ds_load_u16_d16 v236, v210 offset:3328
	ds_load_u16_d16 v237, v210 offset:3584
	ds_load_u16_d16 v238, v210 offset:3840
	ds_load_u16_d16 v177, v210 offset:1344
	ds_load_u16_d16_hi v152, v210 offset:1664
	ds_load_u16_d16_hi v150, v210 offset:1152
	ds_load_u16_d16_hi v148, v210 offset:640
	ds_load_u16_d16_hi v149, v210 offset:896
	ds_load_u16_d16_hi v151, v210 offset:1408
	ds_load_u16_d16 v172, v210 offset:64
	ds_load_u16_d16_hi v147, v210 offset:384
	ds_load_u16_d16_hi v146, v210 offset:128
	ds_load_u16_d16 v174, v210 offset:576
	ds_load_u16_d16 v173, v210 offset:320
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v99.l, v198.l
	v_mov_b16_e64 v103.l, v199.l
	v_mov_b16_e64 v100.l, v196.l
	v_mov_b16_e64 v104.l, v197.l
	v_mov_b16_e32 v105.l, v75.l
	v_mov_b32_e32 v75, v192
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v153, v210 offset:1920
	ds_load_u16_d16 v192, v210 offset:2112
	ds_load_u16_d16 v179, v210 offset:1856
	ds_load_u16_d16 v178, v210 offset:1600
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v231, v210 offset:2176
	ds_load_u16_d16_hi v232, v210 offset:2432
	ds_load_u16_d16_hi v233, v210 offset:2688
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v234, v210 offset:2944
	ds_load_u16_d16 v195, v210 offset:2880
	ds_load_u16_d16_hi v235, v210 offset:3200
	ds_load_u16_d16 v196, v210 offset:3136
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v236, v210 offset:3456
	ds_load_u16_d16 v199, v210 offset:3904
	ds_load_u16_d16 v198, v210 offset:3648
	ds_load_u16_d16 v197, v210 offset:3392
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v237, v210 offset:3712
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v238, v210 offset:3968
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v172, v210 offset:192
	ds_load_u16_d16_hi v175, v210 offset:960
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v174, v210 offset:704
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v173, v210 offset:448
	ds_load_u16_d16_hi v177, v210 offset:1472
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v178, v210 offset:1728
	ds_load_u16_d16_hi v193, v210 offset:2496
	ds_load_u16_d16_hi v192, v210 offset:2240
	ds_load_u16_d16_hi v179, v210 offset:1984
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v195, v210 offset:3008
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v196, v210 offset:3264
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v199, v210 offset:4032
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v198, v210 offset:3776
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v197, v210 offset:3520
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v98.l, v200.l
	v_mov_b16_e64 v102.l, v201.l
	v_mov_b16_e64 v78.l, v201.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v33.l, v188.l
	v_mov_b16_e32 v33.h, v109.l
	v_mov_b16_e32 v34.l, v106.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[146:153], v[98:105], v[41:48]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v34.h, v182.l
	v_mov_b16_e64 v35.l, v190.l
	v_mov_b16_e32 v35.h, v111.l
	v_mov_b16_e64 v36.l, v186.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(14)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[231:238], v[74:81], v[41:48]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v36.h, v184.l
	v_mov_b16_e64 v37.l, v189.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[172:179], v[98:105], v[25:32]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e32 v37.h, v110.l
	v_mov_b16_e32 v38.l, v107.l
	v_mov_b16_e64 v38.h, v183.l
	v_mov_b16_e64 v39.l, v191.l
	v_mov_b16_e32 v39.h, v112.l
	v_mov_b16_e64 v40.l, v187.l
	v_mov_b16_e64 v40.h, v185.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[192:199], v[74:81], v[25:32]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v109.l, v188.h
	v_mov_b16_e64 v182.l, v106.h
	v_mov_b16_e64 v183.l, v107.h
	v_wmma_f32_16x16x16_bf16 v[41:48], v[146:153], v[33:40], v[41:48]
	v_wmma_f32_16x16x16_bf16 v[25:32], v[172:179], v[33:40], v[25:32]
	v_mov_b16_e64 v111.l, v190.h
	v_mov_b16_e64 v184.l, v186.h
	v_mov_b16_e64 v185.l, v187.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v36, 0xffff0000, v142
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v110.l, v189.h
	v_mov_b16_e64 v112.l, v191.h
	v_dual_mov_b32 v107, v182 :: v_dual_mov_b32 v108, v111
	v_dual_mov_b32 v111, v183 :: v_dual_mov_b32 v106, v109
	v_mov_b32_e32 v109, v184
	v_dual_mov_b32 v113, v185 :: v_dual_sub_f32 v36, v36, v36
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v142.l
	v_and_b32_e32 v37, 0xffff0000, v143
	v_and_b32_e32 v38, 0xffff0000, v144
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[231:238], v[106:113], v[41:48]
	v_wmma_f32_16x16x16_bf16 v[25:32], v[192:199], v[106:113], v[25:32]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v112.l, v36.h
	v_mov_b16_e64 v112.h, v244.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v33, v244, v244
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v143.l
	v_and_b32_e32 v39, 0xffff0000, v145
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v112, 1, v112
	v_cmp_o_f32_e64 s3, v33, v33
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v108, 0xffff0000, v138
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v244, v244
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v144.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v112, v36, v112, 0x7fff
	v_mov_b16_e32 v36.l, v33.h
	v_mov_b16_e64 v36.h, v244.l
	v_cmp_o_f32_e64 s6, v34, v34
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v35, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v145.l
	v_and_b32_e32 v109, 0xffff0000, v139
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v36, 1, v36
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v110, 0xffff0000, v140
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v35, v35
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v40, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v138.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v36, v33, v36, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v33, v37, v37
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v37.h, v244.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v111, 0xffff0000, v141
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v244, v244
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v139.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v37.l, v33.h
	v_cmp_o_f32_e64 s5, v33, v33
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[57:64], v[82:89], v[66:73], v[57:64]
	v_wmma_f32_16x16x16_bf16 v[49:56], v[90:97], v[66:73], v[49:56]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v106, v244, v244 :: v_dual_and_b32 v37, 1, v37
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v140.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v66.h, v244.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v70, 0xffff0000, v116
	v_and_b32_e32 v71, 0xffff0000, v117
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v37, v33, v37, 0x7fff
	v_mov_b16_e32 v33.l, v34.h
	v_mov_b16_e64 v33.h, v244.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v107, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v141.l
	v_and_b32_e32 v69, 0xffff0000, v115
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v72.h, v244.l
	v_and_b32_e32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v113, v34, v33, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v33, v38, v38
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v34.h, v244.l
	v_mov_b16_e32 v34.l, v33.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s8, v33, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v38, v33, v34, 0x7fff
	v_mov_b16_e32 v33.l, v35.h
	v_mov_b16_e64 v33.h, v244.l
	v_cndmask_b16 v34.h, 0x7fff, v37.h, s5
	v_mov_b16_e64 v37.h, v244.l
	v_cndmask_b16 v34.l, 0x7fff, v113.h, s6
	v_cmp_o_f32_e64 s6, v65, v65
	v_and_b32_e32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v138, v35, v33, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v36.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v36, v39, v39
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v33.h, 0x7fff, v112.h, vcc_lo
	v_cndmask_b16 v35.h, 0x7fff, v38.h, s8
	v_mov_b16_e64 v39.h, v244.l
	v_cmp_o_f32_e64 s3, v40, v40
	v_mov_b16_e32 v37.l, v36.h
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	v_cndmask_b16 v35.l, 0x7fff, v138.h, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v37, v36, v37, 0x7fff
	v_mov_b16_e32 v36.l, v40.h
	v_mov_b16_e64 v36.h, v244.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v38, v40, v36, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v36, v108, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v108.h, v244.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v39.l, v36.h
	v_cmp_o_f32_e64 s5, v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v39, v36, v39, 0x7fff
	v_mov_b16_e32 v36.l, v65.h
	v_mov_b16_e64 v36.h, v244.l
	v_mov_b16_e32 v39.l, v106.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v40, v65, v36, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v36, v109, v109
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v65.h, v244.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v37.l, 0x7fff, v40.h, s6
	v_mov_b16_e32 v65.l, v36.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s8, v36, v36
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v40, v110, v110 :: v_dual_and_b32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v65, v36, v65, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v38.h, s3
	v_mov_b16_e32 v65.l, v40.h
	v_cndmask_b16 v36.h, 0x7fff, v37.h, vcc_lo
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s5
	v_cndmask_b16 v38.h, 0x7fff, v65.h, s8
	v_mov_b16_e64 v65.h, v244.l
	v_mov_b16_e64 v39.h, v244.l
	v_cmp_o_f32_e64 s3, v40, v40
	v_cmp_o_f32_e32 vcc_lo, v106, v106
	v_cmp_o_f32_e64 s5, v107, v107
	v_and_b32_e32 v65, 1, v65
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v65, v40, v65, 0x7fff
	v_mov_b16_e32 v40.l, v107.h
	v_mov_b16_e64 v40.h, v244.l
	v_add3_u32 v39, v106, v39, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v106, v111, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v40, 1, v40
	v_cndmask_b16 v38.l, 0x7fff, v39.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s6, v106, v106
	v_cndmask_b16 v39.h, 0x7fff, v65.h, s3
	v_add3_u32 v40, v107, v40, 0x7fff
	v_mov_b16_e32 v107.l, v106.h
	v_mov_b16_e64 v107.h, v244.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v39.l, 0x7fff, v40.h, s5
	v_and_b32_e32 v107, 1, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v107, v106, v107, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v106, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v126.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v40.h, 0x7fff, v107.h, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v108.l, v106.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v127.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v106, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v108, 1, v108
	v_add3_u32 v108, v106, v108, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v106, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v128.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v40.l, 0x7fff, v108.h, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v107, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v129.l
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[33:40], v[98:105], v[41:48]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v36, 0xffff0000, v134
	v_and_b32_e32 v38, 0xffff0000, v136
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v108, v244, v244
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v122.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v136.h, v244.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v36, v36, v36 :: v_dual_and_b32 v37, 0xffff0000, v135
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v39, 0xffff0000, v137
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v109, v244, v244
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v123.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v110, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v124.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v111, v244, v244
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v125.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v112, v244, v244
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v134.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v33, v244, v244
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v135.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v136.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v136.l, v36.h
	v_cmp_o_f32_e64 s6, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v35, v244, v244
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v136, 1, v136
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v137.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v35, v35
	v_add3_u32 v136, v36, v136, 0x7fff
	v_mov_b16_e32 v36.l, v33.h
	v_mov_b16_e64 v36.h, v244.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v40, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v130.l
	v_and_b32_e32 v130, 0xffff0000, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v36, 1, v36
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v113, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v131.l
	v_and_b32_e32 v131, 0xffff0000, v131
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v36, v33, v36, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v33, v37, v37
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v37.h, v244.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v134, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v132.l
	v_and_b32_e32 v132, 0xffff0000, v132
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v37.l, v33.h
	v_cmp_o_f32_e64 s5, v33, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v135, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v133.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v37, 1, v37
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v133, 0xffff0000, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v37, v33, v37, 0x7fff
	v_mov_b16_e32 v33.l, v34.h
	v_mov_b16_e64 v33.h, v244.l
	v_and_b32_e32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v137, v34, v33, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v33, v38, v38
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v34.h, v244.l
	v_mov_b16_e32 v34.l, v33.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s8, v33, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v38, v33, v34, 0x7fff
	v_mov_b16_e32 v33.l, v35.h
	v_mov_b16_e64 v33.h, v244.l
	v_cndmask_b16 v34.h, 0x7fff, v37.h, s5
	v_mov_b16_e64 v37.h, v244.l
	v_cndmask_b16 v34.l, 0x7fff, v137.h, s6
	v_cmp_o_f32_e64 s6, v113, v113
	v_and_b32_e32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v138, v35, v33, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v36.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v36, v39, v39
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v33.h, 0x7fff, v136.h, vcc_lo
	v_cndmask_b16 v35.h, 0x7fff, v38.h, s8
	v_mov_b16_e64 v39.h, v244.l
	v_cmp_o_f32_e64 s3, v40, v40
	v_mov_b16_e32 v37.l, v36.h
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	v_cndmask_b16 v35.l, 0x7fff, v138.h, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v37, v36, v37, 0x7fff
	v_mov_b16_e32 v36.l, v40.h
	v_mov_b16_e64 v36.h, v244.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v38, v40, v36, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v36, v130, v130
	v_sub_f32_e32 v130, v133, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v39.l, v36.h
	v_cmp_o_f32_e64 s5, v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v39, v36, v39, 0x7fff
	v_mov_b16_e32 v36.l, v113.h
	v_mov_b16_e64 v36.h, v244.l
	v_mov_b16_e64 v39.l, v134.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v40, v113, v36, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v36, v131, v131
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v113.h, v244.l
	v_mov_b16_e64 v131.l, v130.h
	v_mov_b16_e64 v131.h, v244.l
	v_cndmask_b16 v37.l, 0x7fff, v40.h, s6
	v_mov_b16_e32 v113.l, v36.h
	v_cmp_o_f32_e64 s8, v36, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v40, v132, v132 :: v_dual_and_b32 v131, 1, v131
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v130, v130
	v_and_b32_e32 v113, 1, v113
	v_mov_b16_e64 v132.h, v244.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v131, v130, v131, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v130, v244, v244
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v113, v36, v113, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v38.h, s3
	v_mov_b16_e32 v113.l, v40.h
	v_cndmask_b16 v36.h, 0x7fff, v37.h, vcc_lo
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s5
	v_cndmask_b16 v38.h, 0x7fff, v113.h, s8
	v_mov_b16_e64 v113.h, v244.l
	v_mov_b16_e64 v39.h, v244.l
	v_cmp_o_f32_e64 s3, v40, v40
	v_mov_b16_e64 v132.l, v130.h
	v_cmp_o_f32_e32 vcc_lo, v134, v134
	v_and_b32_e32 v113, 1, v113
	v_and_b32_e32 v39, 1, v39
	v_cmp_o_f32_e64 s5, v135, v135
	v_and_b32_e32 v132, 1, v132
	v_cmp_o_f32_e64 s8, v130, v130
	v_add3_u32 v113, v40, v113, 0x7fff
	v_mov_b16_e64 v40.l, v135.h
	v_mov_b16_e64 v40.h, v244.l
	v_add3_u32 v39, v134, v39, 0x7fff
	v_add3_u32 v132, v130, v132, 0x7fff
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v118.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v40, 1, v40
	v_cndmask_b16 v38.l, 0x7fff, v39.h, vcc_lo
	v_cndmask_b16 v39.h, 0x7fff, v113.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v40, v135, v40, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v132.h, s8
	v_cndmask_b16 v39.l, 0x7fff, v40.h, s5
	v_cndmask_b16 v40.h, 0x7fff, v131.h, s6
	v_cmp_o_f32_e64 s6, v106, v106
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[25:32], v[33:40], v[98:105], v[25:32]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v33, 0xffff0000, v126
	v_and_b32_e32 v34, 0xffff0000, v127
	v_and_b32_e32 v35, 0xffff0000, v128
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v65, v65
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v36, 0xffff0000, v129
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v33, v33, v33
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v37, 0xffff0000, v122
	v_and_b32_e32 v39, 0xffff0000, v124
	v_and_b32_e32 v38, 0xffff0000, v123
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v36, v36, v36
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v66.l, v33.h
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v39, v39, v39 :: v_dual_and_b32 v40, 0xffff0000, v125
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v107, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v66, v33, v66, 0x7fff
	v_mov_b16_e32 v33.l, v65.h
	v_mov_b16_e64 v33.h, v244.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v33, 1, v33
	v_add3_u32 v67, v65, v33, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v33, v34, v34
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v34.h, v244.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v34.l, v33.h
	v_cmp_o_f32_e64 s5, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v34, v33, v34, 0x7fff
	v_mov_b16_e32 v33.l, v106.h
	v_mov_b16_e64 v33.h, v244.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s5
	v_and_b32_e32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v65, v106, v33, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v33, v35, v35
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v35.h, v244.l
	v_mov_b16_e32 v65.l, v36.h
	v_cndmask_b16 v34.l, 0x7fff, v65.h, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v35.l, v33.h
	v_cmp_o_f32_e64 s8, v33, v33
	v_mov_b16_e64 v65.h, v244.l
	v_cmp_o_f32_e64 s6, v109, v109
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v65, 1, v65
	v_add3_u32 v35, v33, v35, 0x7fff
	v_mov_b16_e32 v33.l, v107.h
	v_mov_b16_e64 v33.h, v244.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v65, v36, v65, 0x7fff
	v_mov_b16_e32 v65.l, v110.h
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s8
	v_and_b32_e32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v68, v107, v33, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v66.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	v_mov_b16_e32 v36.l, v108.h
	v_mov_b16_e64 v36.h, v244.l
	v_cndmask_b16 v33.l, 0x7fff, v67.h, s3
	v_cmp_o_f32_e64 s3, v108, v108
	v_cndmask_b16 v35.l, 0x7fff, v68.h, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v66, v108, v36, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v36, v37, v37
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v37.h, v244.l
	v_mov_b16_e32 v66.l, v39.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v37.l, v36.h
	v_cmp_o_f32_e64 s5, v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v37, v36, v37, 0x7fff
	v_mov_b16_e32 v36.l, v109.h
	v_mov_b16_e64 v36.h, v244.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s5
	v_cmp_o_f32_e64 s5, v111, v111
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v67, v109, v36, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v36, v38, v38
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v38.h, v244.l
	v_cndmask_b16 v37.l, 0x7fff, v67.h, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v38.l, v36.h
	v_cmp_o_f32_e64 s8, v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v38, v36, v38, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v66.h, s3
	v_mov_b16_e64 v66.h, v244.l
	v_cmp_o_f32_e64 s3, v39, v39
	v_cndmask_b16 v36.h, 0x7fff, v65.h, vcc_lo
	v_mov_b16_e64 v65.h, v244.l
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s8
	v_and_b32_e32 v66, 1, v66
	v_cmp_o_f32_e32 vcc_lo, v110, v110
	v_cmp_o_f32_e64 s8, v112, v112
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v66, v39, v66, 0x7fff
	v_mov_b16_e32 v39.l, v111.h
	v_mov_b16_e64 v39.h, v244.l
	v_add3_u32 v65, v110, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v39, 1, v39
	v_cndmask_b16 v38.l, 0x7fff, v65.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v67, v111, v39, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v39, v40, v40
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v40.h, v244.l
	v_mov_b16_e32 v40.l, v39.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s6, v39, v39
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v39, v40, 0x7fff
	v_mov_b16_e32 v39.l, v112.h
	v_mov_b16_e64 v39.h, v244.l
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v68, v112, v39, 0x7fff
	v_cndmask_b16 v39.h, 0x7fff, v66.h, s3
	v_cndmask_b16 v39.l, 0x7fff, v67.h, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v40.l, 0x7fff, v68.h, s8
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v68, 0xffff0000, v114
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[33:40], v[74:81], v[41:48]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v33, v244, v244 :: v_dual_and_b32 v36, 0xffff0000, v118
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v37, 0xffff0000, v119
	v_mov_b16_e64 v244.h, v119.l
	v_and_b32_e32 v38, 0xffff0000, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v36, v36, v36
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v33, v33
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v34, v244, v244 :: v_dual_and_b32 v39, 0xffff0000, v121
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v120.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v72.l, v36.h
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	v_cmp_o_f32_e64 s6, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v72, 1, v72
	v_add3_u32 v72, v36, v72, 0x7fff
	v_mov_b16_e32 v36.l, v33.h
	v_mov_b16_e64 v36.h, v244.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v36, v33, v36, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v33, v37, v37
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v37.h, v244.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v37.l, v33.h
	v_cmp_o_f32_e64 s5, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v37, v33, v37, 0x7fff
	v_mov_b16_e32 v33.l, v34.h
	v_mov_b16_e64 v33.h, v244.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v33, 1, v33
	v_add3_u32 v73, v34, v33, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v33, v38, v38
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v34.h, v244.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v34.l, v33.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v35, v244, v244
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v33, v33
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v121.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v34, 1, v34
	v_cmp_o_f32_e64 s9, v35, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v40, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v114.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v38, v33, v34, 0x7fff
	v_mov_b16_e32 v33.l, v35.h
	v_mov_b16_e64 v33.h, v244.l
	v_cndmask_b16 v34.h, 0x7fff, v37.h, s5
	v_mov_b16_e64 v37.h, v244.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v244, v244
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v34.l, 0x7fff, v73.h, s6
	v_and_b32_e32 v33, 1, v33
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v115.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v65, v65
	v_add3_u32 v82, v35, v33, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v36.h, s3
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v36, v39, v39
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v33.h, 0x7fff, v72.h, vcc_lo
	v_cndmask_b16 v35.h, 0x7fff, v38.h, s8
	v_mov_b16_e64 v39.h, v244.l
	v_cmp_o_f32_e64 s3, v40, v40
	v_mov_b16_e32 v37.l, v36.h
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v66, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v116.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v35.l, 0x7fff, v82.h, s9
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v67, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v117.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v37, v36, v37, 0x7fff
	v_mov_b16_e32 v36.l, v40.h
	v_mov_b16_e64 v36.h, v244.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v38, v40, v36, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v36, v68, v68
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v68.h, v244.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v39.l, v36.h
	v_cmp_o_f32_e64 s5, v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v39, v36, v39, 0x7fff
	v_mov_b16_e32 v36.l, v65.h
	v_mov_b16_e64 v36.h, v244.l
	v_mov_b16_e32 v39.l, v66.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v40, v65, v36, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v36, v69, v69
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v65.h, v244.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v37.l, 0x7fff, v40.h, s6
	v_mov_b16_e32 v65.l, v36.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s8, v36, v36
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v40, v70, v70 :: v_dual_and_b32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v65, v36, v65, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v38.h, s3
	v_mov_b16_e32 v65.l, v40.h
	v_cndmask_b16 v36.h, 0x7fff, v37.h, vcc_lo
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s5
	v_cndmask_b16 v38.h, 0x7fff, v65.h, s8
	v_mov_b16_e64 v65.h, v244.l
	v_mov_b16_e64 v39.h, v244.l
	v_cmp_o_f32_e64 s3, v40, v40
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	v_cmp_o_f32_e64 s5, v67, v67
	v_and_b32_e32 v65, 1, v65
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v65, v40, v65, 0x7fff
	v_mov_b16_e32 v40.l, v67.h
	v_mov_b16_e64 v40.h, v244.l
	v_add3_u32 v39, v66, v39, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v66, v71, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v40, 1, v40
	v_cndmask_b16 v38.l, 0x7fff, v39.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s6, v66, v66
	v_cndmask_b16 v39.h, 0x7fff, v65.h, s3
	v_add3_u32 v40, v67, v40, 0x7fff
	v_mov_b16_e64 v67.h, v244.l
	v_mov_b16_e32 v67.l, v66.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v39.l, 0x7fff, v40.h, s5
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v67, v66, v67, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v66, v244, v244
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v40.h, 0x7fff, v67.h, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v68.l, v66.h
	v_cmp_o_f32_e64 s8, v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v68, 1, v68
	v_add3_u32 v68, v66, v68, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.l, 0x7fff, v68.h, s8
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[25:32], v[33:40], v[74:81], v[25:32]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_clause 0xb                            ; 56-byte Folded Reload
	scratch_load_b32 v35, off, off
	scratch_load_b32 v36, off, off offset:4
	scratch_load_b32 v37, off, off offset:8
	scratch_load_b32 v38, off, off offset:12
	scratch_load_b32 v39, off, off offset:16
	scratch_load_b32 v40, off, off offset:20
	scratch_load_b32 v65, off, off offset:24
	scratch_load_b32 v75, off, off offset:28
	scratch_load_b32 v76, off, off offset:32
	scratch_load_b64 v[77:78], off, off offset:36
	scratch_load_b64 v[79:80], off, off offset:48
	scratch_load_b32 v78, off, off offset:44
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v33, s73, v209
	v_dual_mov_b32 v66, v213 :: v_dual_mov_b32 v67, v18
	v_dual_mov_b32 v68, v165 :: v_dual_mov_b32 v69, v239
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s3, s38, v33
	v_dual_mov_b32 v70, v10 :: v_dual_mov_b32 v71, v164
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_add_i32 s30, s73, s26
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_dual_mov_b32 v173, v171 :: v_dual_add_nc_u32 v114, s30, v243
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v34, s30, v209, 1
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_mul_i32 s31, s30, s34
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v178, v171
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v72, s30, v241, 1
	v_add_lshl_u32 v73, s30, v242, 1
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v172, v171
	v_mov_b32_e32 v174, v171
	v_mov_b32_e32 v176, v171
	v_mov_b32_e32 v177, v171
	v_mov_b32_e32 v175, v171
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(11)
	v_or_b32_e32 v33, s73, v35
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v35, s30, v35, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s6, s38, v33
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(10)
	v_or_b32_e32 v33, s73, v36
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v75, s31, v75
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v76, s31, v76
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v77, s31, v77
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v79, s31, v79
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s8, s38, v33
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v33, s73, v37
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v78, s31, v78
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v36, s30, v36, 1
	v_add_lshl_u32 v37, s30, v37, 1
	v_cndmask_b32_e64 v35, 0x80000000, v35, s6
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s9, s38, v33
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v33, s73, v38
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v38, s30, v38, 1
	v_cndmask_b32_e64 v36, 0x80000000, v36, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v37, 0x80000000, v37, s9
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s10, s38, v33
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v33, s73, v39
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v39, s30, v39, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v38, 0x80000000, v38, s10
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s11, s38, v33
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v33, s73, v40
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v40, s30, v40, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v39, 0x80000000, v39, s11
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s12, s38, v33
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v33, s73, v65
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v65, s30, v65, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s38, v33
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v33, s73, v66
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v74, 1, v114
	v_add_lshl_u32 v66, s30, v66, 1
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s13, s38, v33
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v33, s73, v67
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s7, vcc_lo
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v67, s30, v67, 1
	v_cndmask_b32_e64 v66, 0x80000000, v66, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s14, s38, v33
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v33, s73, v68
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v68, s30, v68, 1
	v_cndmask_b32_e64 v67, 0x80000000, v67, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s15, s38, v33
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v33, s73, v69
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v69, s30, v69, 1
	v_cndmask_b32_e64 v68, 0x80000000, v68, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s16, s38, v33
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v33, s73, v70
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v70, s30, v70, 1
	v_cndmask_b32_e64 v69, 0x80000000, v69, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s17, s38, v33
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v33, s73, v71
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v71, s30, v71, 1
	v_cndmask_b32_e64 v70, 0x80000000, v70, s17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s18, s38, v33
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v33, s73, v241
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v71, 0x80000000, v71, s18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s19, s38, v33
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v33, s73, v242
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v72, 0x80000000, v72, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s20, s38, v33
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v33, s73, v243
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v73, 0x80000000, v73, s20
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s5, s38, v33
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v33, 0x80000000, v34, s3
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_add_nc_u32_e32 v34, s31, v154
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s7, s3
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v34, 0x80000000, v34, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v75, 0x80000000, v75, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s7, s8
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v76, 0x80000000, v76, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s7, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v77, 0x80000000, v77, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s7, s10
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v78, 0x80000000, v78, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s7, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v79, 0x80000000, v79, s3
	s_clause 0x5
	buffer_load_u8 v186, v34, s[48:51], 0 offen
	buffer_load_u8 v187, v75, s[48:51], 0 offen
	buffer_load_u8 v183, v76, s[48:51], 0 offen
	buffer_load_u8 v81, v77, s[48:51], 0 offen
	buffer_load_u8 v111, v78, s[48:51], 0 offen
	buffer_load_u8 v109, v79, s[48:51], 0 offen
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[75:76], off, off offset:56
	scratch_load_b64 v[79:80], off, off offset:64
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v34, 0x80000000, v40, s12
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s7, s12
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v76, s31, v208
	v_add_nc_u32_e32 v77, s31, v205
	v_add_nc_u32_e32 v78, s31, v155
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_add_nc_u32_e32 v40, s31, v75
	v_lshl_add_u32 v75, s34, 4, v154
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v79, s31, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v40, 0x80000000, v40, s3
	v_add_nc_u32_e32 v75, s31, v75
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s7, s13
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v75, 0x80000000, v75, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s7, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v76, 0x80000000, v76, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s7, s15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v77, 0x80000000, v77, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s7, s16
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v78, 0x80000000, v78, s3
	s_clause 0x3
	buffer_load_u8 v97, v75, s[48:51], 0 offen
	buffer_load_u8 v95, v76, s[48:51], 0 offen
	buffer_load_u8 v91, v77, s[48:51], 0 offen
	buffer_load_u8 v90, v78, s[48:51], 0 offen
	v_add_nc_u32_e32 v75, s31, v156
	v_add_nc_u32_e32 v76, s31, v206
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s7, s17
	v_add_nc_u32_e32 v77, s31, v180
	v_add_nc_u32_e32 v78, s31, v181
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s7, s18
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s7, s19
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s7, s20
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	s_clause 0x5
	buffer_load_u8 v89, v75, s[48:51], 0 offen
	buffer_load_u8 v88, v76, s[48:51], 0 offen
	buffer_load_u8 v110, v40, s[48:51], 0 offen
	buffer_load_u8 v107, v79, s[48:51], 0 offen
	buffer_load_u8 v85, v77, s[48:51], 0 offen
	buffer_load_u8 v84, v78, s[48:51], 0 offen
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v40, 0x80000000, v74, s5
	s_clause 0x10
	buffer_load_u16 v106, v65, s[52:55], 0 offen
	buffer_load_u16 v96, v66, s[52:55], 0 offen
	buffer_load_u16 v94, v67, s[52:55], 0 offen
	buffer_load_u16 v93, v68, s[52:55], 0 offen
	buffer_load_u16 v92, v69, s[52:55], 0 offen
	buffer_load_u16 v87, v70, s[52:55], 0 offen
	buffer_load_u16 v86, v71, s[52:55], 0 offen
	buffer_load_u16 v83, v72, s[52:55], 0 offen
	buffer_load_u16 v82, v73, s[52:55], 0 offen
	buffer_load_u16 v188, v33, s[52:55], 0 offen
	buffer_load_u16 v189, v35, s[52:55], 0 offen
	buffer_load_u16 v185, v36, s[52:55], 0 offen
	buffer_load_u16 v184, v37, s[52:55], 0 offen
	buffer_load_u16 v182, v38, s[52:55], 0 offen
	buffer_load_u16 v112, v39, s[52:55], 0 offen
	buffer_load_u16 v108, v34, s[52:55], 0 offen
	buffer_load_u16 v190, v40, s[52:55], 0 offen
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v215, v186
	ds_store_b8 v215, v187 offset:64
	s_waitcnt vmcnt(26)
	ds_store_b8 v215, v97 offset:512
	s_waitcnt vmcnt(25)
	ds_store_b8 v215, v95 offset:576
	ds_store_b8 v216, v183
	ds_store_b8 v216, v81 offset:64
	s_waitcnt vmcnt(24)
	ds_store_b8 v216, v91 offset:512
	s_waitcnt vmcnt(23)
	ds_store_b8 v216, v90 offset:576
	ds_store_b8 v217, v111
	ds_store_b8 v217, v109 offset:64
	s_waitcnt vmcnt(22)
	ds_store_b8 v217, v89 offset:512
	s_waitcnt vmcnt(21)
	ds_store_b8 v217, v88 offset:576
	s_waitcnt vmcnt(20)
	ds_store_b8 v218, v110
	s_waitcnt vmcnt(19)
	ds_store_b8 v218, v107 offset:64
	s_waitcnt vmcnt(18)
	ds_store_b8 v218, v85 offset:512
	s_waitcnt vmcnt(17)
	ds_store_b8 v218, v84 offset:576
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x4                            ; 24-byte Folded Reload
	scratch_load_b32 v33, off, off offset:300
	scratch_load_b64 v[65:66], off, off offset:72
	scratch_load_b32 v35, off, off offset:316
	scratch_load_b32 v37, off, off offset:324
	scratch_load_b32 v39, off, off offset:328
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v33, 0, v33
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_dual_mov_b32 v73, v171 :: v_dual_mov_b32 v74, v172
	v_dual_mov_b32 v75, v173 :: v_dual_mov_b32 v76, v174
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_load_b64 v[33:34], v33
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_dual_mov_b32 v77, v175 :: v_dual_mov_b32 v78, v176
	v_dual_mov_b32 v79, v177 :: v_dual_mov_b32 v80, v178
	s_waitcnt vmcnt(3) lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[65:66], v[33:34], v[73:80] neg_lo:[1,1,0]
	scratch_load_b64 v[33:34], off, off offset:80 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt vmcnt(3)
	ds_load_b64 v[35:36], v35
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[33:34], v[35:36], v[73:80] neg_lo:[1,1,0]
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[33:34], off, off offset:88
	scratch_load_b32 v35, off, off offset:116
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_load_b64 v[37:38], v37
	.loc	1 608 29                        ; attention_backward.py:608:29
	scratch_load_b32 v36, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(2) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[33:34], v[37:38], v[73:80] neg_lo:[1,1,0]
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[33:34], off, off offset:96
	scratch_load_b32 v38, off, off offset:132
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_load_b64 v[39:40], v39
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v35, s73, v35
	scratch_load_b32 v37, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v36, s73, v36
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s6, s38, v35
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v68, s23, v35
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s8, s38, v36
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v69, s23, v36
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s55, s2, s6
	s_and_b32 s31, s2, s8
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(2) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[33:34], v[39:40], v[73:80] neg_lo:[1,1,0]
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v33, off, off offset:108
	scratch_load_b32 v34, off, off offset:112
	scratch_load_b32 v39, off, off offset:136
	scratch_load_b32 v40, off, off offset:140
	s_waitcnt vmcnt(5)
	v_or_b32_e32 v38, s73, v38
	s_waitcnt vmcnt(4)
	v_or_b32_e32 v37, s73, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s10, s38, v38
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v71, s23, v38
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s9, s38, v37
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v70, s23, v37
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s62, s2, s10
	s_and_b32 s74, s2, s9
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v33, s73, v33
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v34, s73, v34
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v39, s73, v39
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v40, s73, v40
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s38, v33
	v_cmp_gt_i32_e64 s3, s38, v34
	v_cmp_gt_i32_e64 s11, s38, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_i32_e64 s12, s38, v40
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v66, s23, v33
	v_add_nc_u32_e32 v67, s23, v34
	v_add_nc_u32_e32 v72, s23, v39
	v_add_nc_u32_e32 v98, s23, v40
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s63, s2, vcc_lo
	s_and_b32 s59, s2, s3
	s_and_b32 s58, s2, s11
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_and_not1_b32 vcc_lo, exec_lo, s66
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s54, s2, s12
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e32 vcc_lo, v220, v66
	v_cmp_le_i32_e64 s3, v220, v67
	v_cmp_le_i32_e64 s6, v220, v68
	v_cmp_le_i32_e64 s8, v220, v69
	v_cmp_le_i32_e64 s9, v220, v70
	v_cmp_le_i32_e64 s10, v220, v71
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s13, s63, vcc_lo
	s_and_b32 s3, s59, s3
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s11, v220, v72
	v_cmp_le_i32_e64 s12, v220, v98
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s6, s55, s6
	s_and_b32 s8, s31, s8
	s_and_not1_b32 s14, s63, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_not1_b32 s15, s59, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s9, s74, s9
	s_and_b32 s10, s62, s10
	s_or_b32 s63, s14, s13
	s_or_b32 s59, s15, s3
	s_and_not1_b32 s3, s55, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_and_not1_b32 s13, s31, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_and_b32 s11, s58, s11
	s_and_b32 s12, s54, s12
	s_or_b32 s55, s3, s6
	s_or_b32 s31, s13, s8
	s_and_not1_b32 s3, s74, exec_lo
	s_and_b32 s6, s9, exec_lo
	s_and_not1_b32 s8, s62, exec_lo
	s_and_b32 s9, s10, exec_lo
	s_or_b32 s74, s3, s6
	s_or_b32 s62, s8, s9
	s_and_not1_b32 s3, s58, exec_lo
	s_and_b32 s6, s11, exec_lo
	s_and_not1_b32 s8, s54, exec_lo
	s_and_b32 s9, s12, exec_lo
	s_or_b32 s58, s3, s6
	s_or_b32 s54, s8, s9
.LBB0_10:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 677 17 is_stmt 1              ; attention_backward.py:677:17
	s_and_not1_b32 vcc_lo, exec_lo, s65
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v33, s21, v66
	v_subrev_nc_u32_e32 v34, s21, v67
	v_subrev_nc_u32_e32 v35, s21, v68
	v_subrev_nc_u32_e32 v36, s21, v69
	v_subrev_nc_u32_e32 v37, s21, v70
	v_subrev_nc_u32_e32 v38, s21, v71
	.loc	1 678 30 is_stmt 0              ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v220, v33
	v_cmp_ge_i32_e64 s3, v220, v34
	.loc	1 679 47 is_stmt 1              ; attention_backward.py:679:47
	v_add_nc_u32_e32 v33, s22, v66
	v_add_nc_u32_e32 v34, s22, v67
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v39, s21, v72
	v_subrev_nc_u32_e32 v40, s21, v98
	.loc	1 678 30 is_stmt 0              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s6, v220, v35
	v_cmp_ge_i32_e64 s8, v220, v36
	.loc	1 679 47 is_stmt 1              ; attention_backward.py:679:47
	v_add_nc_u32_e32 v35, s22, v68
	v_add_nc_u32_e32 v36, s22, v69
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s9, v220, v37
	v_cmp_ge_i32_e64 s10, v220, v38
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v37, s22, v70
	v_add_nc_u32_e32 v38, s22, v71
	.loc	1 679 30 is_stmt 0              ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s13, v220, v33
	v_cmp_le_i32_e64 s14, v220, v34
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s11, v220, v39
	v_cmp_ge_i32_e64 s12, v220, v40
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v39, s22, v72
	v_add_nc_u32_e32 v40, s22, v98
	.loc	1 679 30 is_stmt 0              ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s15, v220, v35
	v_cmp_le_i32_e64 s16, v220, v36
	v_cmp_le_i32_e64 s17, v220, v37
	v_cmp_le_i32_e64 s18, v220, v38
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s13, vcc_lo, s13
	s_and_b32 s3, s3, s14
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s19, v220, v39
	v_cmp_le_i32_e64 s20, v220, v40
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s13, s13, s63
	s_and_b32 s3, s3, s59
	s_and_b32 s6, s6, s15
	s_and_b32 s8, s8, s16
	s_and_b32 s6, s6, s55
	s_and_b32 s8, s8, s31
	s_and_b32 s9, s9, s17
	s_and_b32 s10, s10, s18
	s_and_not1_b32 s14, s63, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_not1_b32 s15, s59, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s9, s9, s74
	s_and_b32 s10, s10, s62
	s_and_b32 s11, s11, s19
	s_and_b32 s12, s12, s20
	s_or_b32 s63, s14, s13
	s_or_b32 s59, s15, s3
	s_and_not1_b32 s3, s55, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_and_not1_b32 s13, s31, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_and_b32 s11, s11, s58
	s_and_b32 s12, s12, s54
	s_or_b32 s55, s3, s6
	s_or_b32 s31, s13, s8
	s_and_not1_b32 s3, s74, exec_lo
	s_and_b32 s6, s9, exec_lo
	s_and_not1_b32 s8, s62, exec_lo
	s_and_b32 s9, s10, exec_lo
	s_or_b32 s74, s3, s6
	s_or_b32 s62, s8, s9
	s_and_not1_b32 s3, s58, exec_lo
	s_and_b32 s6, s11, exec_lo
	s_and_not1_b32 s8, s54, exec_lo
	s_and_b32 s9, s12, exec_lo
	s_or_b32 s58, s3, s6
	s_or_b32 s54, s8, s9
.LBB0_12:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 21                          ; attention_backward.py:0:21
	v_mov_b16_e32 v66.l, 0
	.loc	1 682 25 is_stmt 1              ; attention_backward.py:682:25
	s_mul_i32 s3, s73, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s3, s27, s3
	v_mov_b16_e32 v69.l, v66.l
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s6, s63
	s_cbranch_execz .LBB0_14
; %bb.13:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34 is_stmt 0                ; attention_backward.py:0:34
	scratch_load_b64 v[33:34], off, off offset:512 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s3, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v34, 31, v33
	v_add_co_u32 v33, vcc_lo, s24, v33
	v_add_co_ci_u32_e64 v34, null, s25, v34, vcc_lo
	global_load_d16_u8 v69, v[33:34], off
.LBB0_14:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s6, s59
	s_cbranch_execz .LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[33:34], off, off offset:456 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s3, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v34, 31, v33
	v_add_co_u32 v33, vcc_lo, s24, v33
	v_add_co_ci_u32_e64 v34, null, s25, v34, vcc_lo
	global_load_d16_u8 v66, v[33:34], off
.LBB0_16:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s6
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v66.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v67.l, v66.h
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s6, s55
	s_cbranch_execz .LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[33:34], off, off offset:464 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s3, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v34, 31, v33
	v_add_co_u32 v33, vcc_lo, s24, v33
	v_add_co_ci_u32_e64 v34, null, s25, v34, vcc_lo
	global_load_d16_u8 v67, v[33:34], off
.LBB0_18:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s6, s31
	s_cbranch_execz .LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[33:34], off, off offset:472 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s3, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v34, 31, v33
	v_add_co_u32 v33, vcc_lo, s24, v33
	v_add_co_ci_u32_e64 v34, null, s25, v34, vcc_lo
	global_load_d16_hi_u8 v66, v[33:34], off
.LBB0_20:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s6
	v_mov_b16_e32 v68.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v69.h, v68.h
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s6, s74
	s_cbranch_execz .LBB0_22
; %bb.21:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[33:34], off, off offset:480 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s3, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v34, 31, v33
	v_add_co_u32 v33, vcc_lo, s24, v33
	v_add_co_ci_u32_e64 v34, null, s25, v34, vcc_lo
	global_load_d16_hi_u8 v69, v[33:34], off
.LBB0_22:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s6, s62
	s_cbranch_execz .LBB0_24
; %bb.23:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[33:34], off, off offset:488 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s3, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v34, 31, v33
	v_add_co_u32 v33, vcc_lo, s24, v33
	v_add_co_ci_u32_e64 v34, null, s25, v34, vcc_lo
	global_load_d16_hi_u8 v68, v[33:34], off
.LBB0_24:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s6
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v67.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v68.l, v67.h
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s6, s58
	s_cbranch_execz .LBB0_26
; %bb.25:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[33:34], off, off offset:496 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s3, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v34, 31, v33
	v_add_co_u32 v33, vcc_lo, s24, v33
	v_add_co_ci_u32_e64 v34, null, s25, v34, vcc_lo
	global_load_d16_u8 v68, v[33:34], off
.LBB0_26:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s6, s54
	s_cbranch_execz .LBB0_7
; %bb.27:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[33:34], off, off offset:504 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s3, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v34, 31, v33
	v_add_co_u32 v33, vcc_lo, s24, v33
	v_add_co_ci_u32_e64 v34, null, s25, v34, vcc_lo
	global_load_d16_hi_u8 v67, v[33:34], off
	s_branch .LBB0_7
.LBB0_28:                               ; %Flow338
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:524
	scratch_load_b32 v34, off, off offset:528
	s_mov_b32 s58, s41
	s_branch .LBB0_30
.LBB0_29:
	v_mov_b32_e32 v32, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v31, v32
	v_mov_b32_e32 v30, v32
	v_mov_b32_e32 v29, v32
	v_mov_b32_e32 v28, v32
	v_mov_b32_e32 v27, v32
	v_mov_b32_e32 v26, v32
	v_mov_b32_e32 v25, v32
	v_mov_b32_e32 v48, v32
	v_mov_b32_e32 v47, v32
	v_mov_b32_e32 v46, v32
	v_mov_b32_e32 v45, v32
	v_mov_b32_e32 v44, v32
	v_mov_b32_e32 v43, v32
	v_mov_b32_e32 v42, v32
	v_mov_b32_e32 v41, v32
	v_mov_b32_e32 v56, v32
	v_mov_b32_e32 v55, v32
	v_mov_b32_e32 v54, v32
	v_mov_b32_e32 v53, v32
	v_mov_b32_e32 v52, v32
	v_mov_b32_e32 v51, v32
	v_mov_b32_e32 v50, v32
	v_mov_b32_e32 v49, v32
	v_mov_b32_e32 v64, v32
	v_mov_b32_e32 v63, v32
	v_mov_b32_e32 v62, v32
	v_mov_b32_e32 v61, v32
	v_mov_b32_e32 v60, v32
	v_mov_b32_e32 v59, v32
	v_mov_b32_e32 v58, v32
	v_mov_b32_e32 v57, v32
.LBB0_30:                               ; %._crit_edge167
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	scratch_load_b32 v0, off, off offset:520 ; 4-byte Folded Reload
	.loc	1 753 13                        ; attention_backward.py:753:13
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v16, s58, v33
	v_readlane_b32 s40, v255, 0
	v_readlane_b32 s41, v255, 1
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	v_mul_lo_u32 v16, v16, s67
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_mov_b32 s36, s40
	s_and_b32 s37, s41, 0xffff
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v21, s35, v33
	v_readlane_b32 s42, v255, 2
	v_readlane_b32 s43, v255, 3
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, v0, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v15, 2, v0
	v_or_b32_e32 v14, 4, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s16, s67, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v17, v16, v0, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v13, 6, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s17, s67, v15
	v_cmp_gt_i32_e64 s18, s67, v14
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
	v_cmp_gt_i32_e64 s19, s67, v13
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v10, 12, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s20, s67, v12
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v57, v17, s[36:39], 0 offen
	v_add_lshl_u32 v17, v16, v13, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s21, s67, v11
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
	v_cmp_gt_i32_e64 s22, s67, v10
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
	v_cmp_gt_i32_e64 s23, s67, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, s2, s22
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v6, 36, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s24, s67, v8
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s17
	s_clause 0x1
	buffer_store_b32 v60, v17, s[36:39], 0 offen
	buffer_store_b32 v61, v18, s[36:39], 0 offen
	v_add_lshl_u32 v17, v16, v9, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s25, s67, v7
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v18, v16, v8, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, s2, s23
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s26, s67, v6
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
	v_cmp_gt_i32_e32 vcc_lo, s35, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s16, s67, v1
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
	v_cmp_gt_i32_e64 s27, s67, v5
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s15, s35, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s28, s67, v4
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v1, v1, s33, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v0, v21, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s29, s67, v3
	.loc	1 755 18 is_stmt 0              ; attention_backward.py:755:18
	s_and_b32 s17, s2, s27
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s30, s67, v2
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, s2, s28
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_add_lshl_u32 v0, v0, s33, 2
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
	v_cmp_gt_i32_e64 s12, s35, v13
	v_cmp_gt_i32_e64 s14, s35, v15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s2, s16
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v15, v21, v15
	v_add_nc_u32_e32 v13, v21, v13
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s15
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s11, s35, v12
	v_cmp_gt_i32_e64 s13, s35, v14
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
	s_and_b32 s37, s43, 0xffff
	s_mov_b32 s36, s42
	v_add_lshl_u32 v15, v15, s33, 2
	buffer_store_b32 v41, v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, v13, s33, 2
	v_add_lshl_u32 v14, v14, s33, 2
	v_add_lshl_u32 v12, v12, s33, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s14, s2, s14
	s_and_b32 s12, s2, s12
	s_and_b32 s13, s2, s13
	s_and_b32 s11, s2, s11
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
	buffer_store_b32 v42, v15, s[36:39], 0 offen
	buffer_store_b32 v43, v14, s[36:39], 0 offen
	v_add_lshl_u32 v11, v11, s33, 2
	s_clause 0x1
	buffer_store_b32 v44, v0, s[36:39], 0 offen
	buffer_store_b32 v45, v12, s[36:39], 0 offen
	v_add_lshl_u32 v0, v9, s33, 2
	v_add_lshl_u32 v10, v10, s33, 2
	v_add_lshl_u32 v8, v8, s33, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s10, s2, s10
	s_and_b32 s8, s2, s8
	s_and_b32 s9, s2, s9
	s_and_b32 s7, s2, s7
	.loc	1 580 44 is_stmt 0              ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s4, s35, v5
	v_cmp_gt_i32_e64 s6, s35, v7
	.loc	1 759 13 is_stmt 1              ; attention_backward.py:759:13
	v_add_nc_u32_e32 v7, v21, v7
	v_add_nc_u32_e32 v5, v21, v5
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v11, 0x80000000, v11, s10
	v_cndmask_b32_e64 v0, 0x80000000, v0, s8
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s3, s35, v4
	v_cmp_gt_i32_e64 s5, s35, v6
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
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_clause 0x1
	buffer_store_b32 v46, v11, s[36:39], 0 offen
	buffer_store_b32 v47, v10, s[36:39], 0 offen
	v_add_lshl_u32 v7, v7, s33, 2
	s_clause 0x1
	buffer_store_b32 v48, v0, s[36:39], 0 offen
	buffer_store_b32 v25, v8, s[36:39], 0 offen
	v_add_lshl_u32 v0, v5, s33, 2
	v_add_lshl_u32 v6, v6, s33, 2
	v_add_lshl_u32 v4, v4, s33, 2
	v_add_lshl_u32 v3, v3, s33, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s6, s2, s6
	s_and_b32 s4, s2, s4
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v2, v2, s33, 2
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
	buffer_store_b32 v26, v7, s[36:39], 0 offen
	buffer_store_b32 v27, v6, s[36:39], 0 offen
	buffer_store_b32 v28, v0, s[36:39], 0 offen
	buffer_store_b32 v29, v4, s[36:39], 0 offen
	buffer_store_b32 v30, v3, s[36:39], 0 offen
	buffer_store_b32 v31, v2, s[36:39], 0 offen
	buffer_store_b32 v32, v1, s[36:39], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 536
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 24892
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 536
    .sgpr_count:     107
    .sgpr_spill_count: 4
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
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
