	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[36:39], s[0:1], 0x94
	s_load_b128 s[48:51], s[0:1], 0x64
	v_mov_b32_e32 v52, v0
	s_clause 0x2
	s_load_b64 s[76:77], s[0:1], 0x78
	s_load_b128 s[28:31], s[0:1], 0x8
	s_load_b128 s[20:23], s[0:1], 0x20
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
.Ltmp0:
	.loc	1 514 33 prologue_end           ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v8, 5, v52
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_mov_b32 s42, s26
	s_mov_b32 s43, s27
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v1, 2, v8
	v_or_b32_e32 v2, 4, v8
	v_or_b32_e32 v3, 6, v8
	v_or_b32_e32 v5, 10, v8
	v_or_b32_e32 v4, 8, v8
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v1, off offset:12
	scratch_store_b32 off, v2, off offset:16
	scratch_store_b32 off, v3, off offset:20
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s36
	s_bitcmp1_b32 s36, 8
	v_or_b32_e32 v6, 12, v8
	s_cselect_b32 s79, -1, 0
	s_cmp_eq_u32 s4, 1
	v_or_b32_e32 v7, 14, v8
	s_cselect_b32 s80, -1, 0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_abs_i32 s35, s49
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_abs_i32 s5, s3
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cvt_f32_u32 s4, s35
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s33, s2, 4
	scratch_store_b32 off, v5, off offset:28 ; 4-byte Folded Spill
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v1, s33, v1
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_rcp_iflag_f32_e32 v0, s4
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v2, s33, v2
	v_or_b32_e32 v3, s33, v3
	v_or_b32_e32 v5, s33, v5
	.loc	1 521 24                        ; attention_backward.py:521:24
	s_mul_i32 s78, s3, s51
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_mov_b32 s40, s22
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s14, s51, v2
	v_cmp_gt_i32_e64 s15, s51, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_readfirstlane_b32 s4, v0
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s33, v8
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_cvt_u32_f32 s47, s4
	s_sub_i32 s4, 0, s35
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s4, s4, s47
	s_mul_hi_u32 s4, s47, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s47, s47, s4
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_mul_hi_u32 s4, s5, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s4, s35
	s_sub_i32 s5, s5, s6
	s_add_i32 s6, s4, 1
	s_sub_i32 s7, s5, s35
	s_cmp_ge_u32 s5, s35
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s5, s7, s5
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s5, s35
	s_cselect_b32 s34, s6, s4
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_ashr_i32 s44, s48, 31
	s_ashr_i32 s45, s49, 31
	s_abs_i32 s46, s48
	.loc	1 514 23                        ; attention_backward.py:514:23
	s_or_b32 s4, s33, 1
	s_or_b32 s5, s33, 2
	s_or_b32 s6, s33, 3
	s_or_b32 s7, s33, 4
	s_or_b32 s8, s33, 5
	s_or_b32 s10, s33, 6
	s_or_b32 s11, s33, 7
	s_or_b32 s12, s33, 8
	s_or_b32 s13, s33, 9
	s_or_b32 s16, s33, 10
	s_or_b32 s17, s33, 11
	s_or_b32 s18, s33, 12
	s_or_b32 s19, s33, 13
	s_or_b32 s24, s33, 14
	s_or_b32 s25, s33, 15
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cmp_lt_i32 s33, s51
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s4, s51
	v_cmp_gt_i32_e64 s4, s51, v0
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s5, s51
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s6, s51
	s_cselect_b32 s6, -1, 0
	s_cmp_lt_i32 s7, s51
	v_cmp_gt_i32_e64 s7, s51, v1
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_and_b32_e32 v1, 31, v52
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s8, s51
	s_cselect_b32 s9, -1, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[2:3], null, s76, v8, v[1:2]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cmp_lt_i32 s10, s51
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s11, s51
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s12, s51
	v_mov_b32_e32 v0, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:24
	scratch_store_b32 off, v8, off offset:8
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v4, s33, v4
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s13, s51
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[8:9], null, s76, 10, v[2:3]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s8, -1, 0
	s_cmp_lt_i32 s16, s51
	v_cmp_gt_i32_e64 s16, s51, v4
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s17, s51
	v_cmp_gt_i32_e64 s17, s51, v5
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v4, s76, 1, v2
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v6, off offset:32
	scratch_store_b64 off, v[0:1], off
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v6, s33, v6
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v5, s76, 2, v2
	scratch_store_b32 off, v7, off offset:36 ; 4-byte Folded Spill
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v7, s33, v7
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 s18, s51
	v_cmp_gt_i32_e64 s18, s51, v6
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s19, s51
	v_cmp_gt_i32_e64 s19, s51, v7
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s24, s51
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[6:7], null, s76, 6, v[2:3]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s25, s51
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[9:10], null, s76, 12, v[2:3]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s12, -1, 0
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_add_i32 s78, s78, s33
	v_lshl_add_u32 v7, s76, 3, v2
	s_mul_i32 s24, s78, s76
	v_mad_u64_u32 v[10:11], null, s76, 14, v[2:3]
	v_add_nc_u32_e32 v0, s24, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:40
	scratch_store_b32 off, v7, off offset:56
	v_add_nc_u32_e32 v2, s24, v4
	v_mov_b32_e32 v4, v6
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_cmp_gt_i32_e64 s13, s76, v1
	scratch_store_b32 off, v5, off offset:44 ; 4-byte Folded Spill
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_add_nc_u32_e32 v3, s24, v5
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v34, 0, v52
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[4:5], off offset:48 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v4, s24, v6
	v_mov_b32_e32 v6, v8
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s4, s13
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_add_nc_u32_e32 v5, s24, v7
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_and_b32 s25, s29, 0xffff
	v_xor_b32_e32 v11, 0x198, v52
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[6:7], off offset:60 ; 8-byte Folded Spill
	v_mov_b32_e32 v7, v9
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s7, s13
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_add_nc_u32_e32 v6, s24, v8
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s14, s13
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[7:8], off offset:68 ; 8-byte Folded Spill
	v_mov_b32_e32 v8, v10
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s15, s13
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_add_nc_u32_e32 v7, s24, v9
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s16, s13
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[8:9], off offset:76 ; 8-byte Folded Spill
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s17, s13
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_add_nc_u32_e32 v8, s24, v10
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s18, s13
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_mov_b32 s24, s28
	v_cndmask_b32_e64 v7, 0x80000000, v7, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s19, s13
	.loc	1 542 37                        ; attention_backward.py:542:37
	s_add_i32 s7, s51, 15
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v8, 0x80000000, v8, s4
	s_clause 0x7
	buffer_load_u8 v0, v0, s[24:27], 0 offen
	buffer_load_u8 v9, v2, s[24:27], 0 offen
	buffer_load_u8 v10, v3, s[24:27], 0 offen
	buffer_load_u8 v4, v4, s[24:27], 0 offen
	buffer_load_u8 v5, v5, s[24:27], 0 offen
	buffer_load_u8 v6, v6, s[24:27], 0 offen
	buffer_load_u8 v7, v7, s[24:27], 0 offen
	buffer_load_u8 v8, v8, s[24:27], 0 offen
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_ashr_i32 s4, s7, 31
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xor_b32_e32 v2, 0x88, v52
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_lshr_b32 s14, s4, 28
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xor_b32_e32 v3, 0x110, v52
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_add_i32 s7, s7, s14
	.loc	1 541 32                        ; attention_backward.py:541:32
	s_ashr_i32 s14, s33, 1
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_ashr_i32 s7, s7, 4
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_and_b32 s25, s21, 0xffff
	.loc	1 542 35                        ; attention_backward.py:542:35
	s_lshl_b32 s15, s7, 3
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v35, 0, v2
	.loc	1 549 23                        ; attention_backward.py:549:23
	s_cmp_lt_i32 s14, s15
	.loc	1 543 26                        ; attention_backward.py:543:26
	s_mul_i32 s15, s3, s15
	.loc	1 549 23                        ; attention_backward.py:549:23
	s_cselect_b32 s21, -1, 0
	.loc	1 545 17                        ; attention_backward.py:545:17
	s_add_i32 s15, s15, s14
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v242, 0, v3
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mad_u64_u32 v[2:3], null, s15, s77, v[52:53]
	.loc	1 565 17                        ; attention_backward.py:565:17
	s_mul_i32 s7, s3, s7
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_bfe_i32 s2, s2, 0x1c0000
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s4, s77, v52
	.loc	1 568 17                        ; attention_backward.py:568:17
	s_add_i32 s2, s7, s2
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v155, 0, v11
	.loc	1 568 17                        ; attention_backward.py:568:17
	s_mul_i32 s2, s2, s77
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v11, s77, v2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_add_lshl_u32 v3, s2, v52, 1
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, s57, s4
	.loc	1 549 22                        ; attention_backward.py:549:22
	s_and_b32 s2, s21, s4
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_and_b32 s41, s23, 0xffff
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v19, s77, v11
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v12, 0x80000000, v3, s7
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, vcc_lo, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_mov_b32 s18, s26
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v13, 0x80000000, v3, s7
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, s58, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v22, s77, v19
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v14, 0x80000000, v3, s7
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, s6, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v32, 0x80000000, v19, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v15, 0x80000000, v3, s7
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, s56, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v25, s77, v22
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v16, 0x80000000, v3, s7
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, s9, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_mov_b32 s19, s27
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v17, 0x80000000, v3, s7
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, s55, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v28, s77, v25
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v18, 0x80000000, v3, s7
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, s5, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_mov_b32 s16, s30
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v20, 0x80000000, v3, s7
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, s54, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v31, s77, v28
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v21, 0x80000000, v3, s7
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, s8, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_and_b32 s17, s31, 0xffff
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v23, 0x80000000, v3, s7
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, s53, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v19, s77, v31
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v24, 0x80000000, v3, s7
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, s10, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v26, 0x80000000, v3, s7
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, s52, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v27, 0x80000000, v3, s7
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, s11, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v29, 0x80000000, v3, s7
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, s59, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v30, 0x80000000, v3, s7
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, s12, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v3, 0x80000000, v3, s7
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	v_cndmask_b32_e64 v33, 0x80000000, v19, s2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v34, off offset:84
	scratch_store_b32 off, v35, off offset:88
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v65, 15, v52
	v_bfe_u32 v66, v52, 4, 1
	.loc	1 587 22                        ; attention_backward.py:587:22
	s_add_i32 s15, s50, 31
	s_mov_b32 s14, 0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_hi_u32 s7, s46, s47
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_mov_b32 s24, s20
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt vmcnt(6)
	ds_store_b8 v34, v9 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v35, v10
	ds_store_b8 v34, v0
	s_waitcnt vmcnt(4)
	ds_store_b8 v35, v4 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v242, v5
	s_waitcnt vmcnt(2)
	ds_store_b8 v242, v6 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v155, v7
	s_waitcnt vmcnt(0)
	ds_store_b8 v155, v8 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_clause 0xf
	buffer_load_u16 v6, v12, s[40:43], 0 offen
	buffer_load_u16 v7, v13, s[40:43], 0 offen
	buffer_load_u16 v8, v14, s[40:43], 0 offen
	buffer_load_u16 v12, v15, s[40:43], 0 offen
	buffer_load_u16 v36, v16, s[40:43], 0 offen
	buffer_load_u16 v37, v17, s[40:43], 0 offen
	buffer_load_u16 v38, v18, s[40:43], 0 offen
	buffer_load_u16 v39, v20, s[40:43], 0 offen
	buffer_load_u16 v21, v21, s[40:43], 0 offen
	buffer_load_u16 v23, v23, s[40:43], 0 offen
	buffer_load_u16 v24, v24, s[40:43], 0 offen
	buffer_load_u16 v26, v26, s[40:43], 0 offen
	buffer_load_u16 v27, v27, s[40:43], 0 offen
	buffer_load_u16 v40, v29, s[40:43], 0 offen
	buffer_load_u16 v41, v30, s[40:43], 0 offen
	buffer_load_u16 v42, v3, s[40:43], 0 offen
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_clause 0x7
	buffer_load_u8 v19, v2, s[16:19], 0 offen
	buffer_load_u8 v20, v11, s[16:19], 0 offen
	buffer_load_u8 v15, v32, s[16:19], 0 offen
	buffer_load_u8 v16, v22, s[16:19], 0 offen
	buffer_load_u8 v17, v25, s[16:19], 0 offen
	buffer_load_u8 v18, v28, s[16:19], 0 offen
	buffer_load_u8 v13, v31, s[16:19], 0 offen
	buffer_load_u8 v14, v33, s[16:19], 0 offen
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_and_b32_e32 v9, 12, v52
	v_lshlrev_b32_e32 v10, 5, v65
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v3, s33, v66
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_add_lshl_u32 v32, s78, v66, 1
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_ashr_i32 s16, s15, 31
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshlrev_b32_e32 v11, 1, v9
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v2, 32, v52
	.loc	1 514 23 is_stmt 0              ; attention_backward.py:514:23
	v_or_b32_e32 v4, 2, v3
	.loc	1 517 21 is_stmt 1              ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, s51, v3
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v5, 4, v3
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_or_b32_e32 v0, v10, v11
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v22, 6, v3
	v_or_b32_e32 v25, 8, v3
	v_or_b32_e32 v33, 10, v3
	v_or_b32_e32 v34, 12, v3
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v28, 0, v0
	v_xad_u32 v29, v0, 8, 0
	v_xad_u32 v30, v0, 16, 0
	v_xad_u32 v31, v0, 24, 0
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v35, 14, v3
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v0, 0x80000000, v32, s2
	v_add_nc_u32_e32 v3, 4, v32
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, s51, v4
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v43, 8, v32
	v_add_nc_u32_e32 v44, 12, v32
	v_add_nc_u32_e32 v45, 16, v32
	v_add_nc_u32_e32 v46, 20, v32
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, s51, v5
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v47, 24, v32
	v_add_nc_u32_e32 v48, 28, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v4, 0x80000000, v43, s2
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, s51, v22
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v5, 0x80000000, v44, s2
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, s51, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v32, 0x80000000, v45, s2
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, s51, v33
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v33, 0x80000000, v46, s2
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, s51, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v34, 0x80000000, v47, s2
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, s51, v35
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v35, 0x80000000, v48, s2
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_lshr_b32 s2, s16, 27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s15, s2
	.loc	1 587 20 is_stmt 0              ; attention_backward.py:587:20
	s_and_b32 s82, s2, 0xffffffe0
	.loc	1 588 9 is_stmt 1               ; attention_backward.py:588:9
	s_bfe_u32 s2, s36, 0x10008
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt vmcnt(23)
	v_mov_b16_e32 v53.h, v6.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v16.h, v7.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v17.h, v8.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v18.h, v12.l
	v_mov_b16_e32 v19.h, v36.l
	v_mov_b16_e32 v20.h, v37.l
	v_mov_b16_e32 v21.h, v38.l
	v_mov_b16_e32 v22.h, v39.l
	v_mov_b16_e32 v23.h, v21.l
	v_mov_b16_e32 v24.h, v23.l
	v_mov_b16_e32 v25.h, v24.l
	v_mov_b16_e32 v26.h, v26.l
	v_mov_b16_e32 v27.h, v27.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v13.h, v40.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v14.h, v41.l
	v_mov_b16_e32 v15.h, v42.l
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s2, s33, s37
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_add_i32 s15, s38, s39
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s2, s2, s39
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_sub_i32 s15, s33, s15
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s2, s2, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 592 17                        ; attention_backward.py:592:17
	s_min_i32 s2, s50, s2
	.loc	1 590 24                        ; attention_backward.py:590:24
	s_max_i32 s2, s2, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 600 19                        ; attention_backward.py:600:19
	s_add_i32 s2, s2, 31
	.loc	1 600 18 is_stmt 0              ; attention_backward.py:600:18
	s_ashr_i32 s14, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s14, s14, 27
	s_add_i32 s2, s2, s14
	.loc	1 589 24 is_stmt 1              ; attention_backward.py:589:24
	s_max_i32 s14, s15, 0
	.loc	1 600 17                        ; attention_backward.py:600:17
	s_and_not1_b32 s2, s2, 31
	.loc	1 597 45                        ; attention_backward.py:597:45
	s_and_b32 s14, s14, 0x7fffffe0
	.loc	1 598 24                        ; attention_backward.py:598:24
	s_min_i32 s82, s82, s2
.LBB0_2:
	.loc	1 0 24 is_stmt 0                ; attention_backward.py:0:24
	s_clause 0x7
	buffer_load_u16 v12, v0, s[24:27], 0 offen
	buffer_load_u16 v8, v3, s[24:27], 0 offen
	buffer_load_u16 v7, v4, s[24:27], 0 offen
	buffer_load_u16 v6, v5, s[24:27], 0 offen
	buffer_load_u16 v5, v32, s[24:27], 0 offen
	buffer_load_u16 v4, v33, s[24:27], 0 offen
	buffer_load_u16 v3, v34, s[24:27], 0 offen
	buffer_load_u16 v0, v35, s[24:27], 0 offen
	ds_load_b64 v[32:33], v28
	ds_load_b64 v[28:29], v29
	.loc	1 556 26 is_stmt 1              ; attention_backward.py:556:26
	v_mov_b16_e32 v53.l, 0
	.loc	1 556 28 is_stmt 0              ; attention_backward.py:556:28
	v_lshrrev_b16 v36.l, 4, v19.l
	.loc	1 554 72 is_stmt 1              ; attention_backward.py:554:72
	s_waitcnt vmcnt(0)
	v_and_b16 v0.h, v19.l, 15
	v_and_b16 v3.h, v20.l, 15
	v_and_b16 v4.h, v15.l, 15
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v36.h, v53.l
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v5.h, v16.l, 15
	v_and_b16 v6.h, v17.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v37.l, 4, v20.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v37.h, v53.l
	.loc	1 554 72 is_stmt 1              ; attention_backward.py:554:72
	v_and_b16 v7.h, v18.l, 15
	v_and_b16 v8.h, v13.l, 15
	v_and_b16 v12.h, v14.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v39.l, 4, v16.l
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v37, 0, v37, s6
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v39.h, v53.l
	.loc	1 556 28 is_stmt 0              ; attention_backward.py:556:28
	v_lshrrev_b16 v38.l, 4, v15.l
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e32 v36, 0, v36, vcc_lo
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_waitcnt lgkmcnt(1)
	scratch_store_b64 off, v[32:33], off offset:92 ; 8-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[28:29], off offset:100 ; 8-byte Folded Spill
	ds_load_b64 v[28:29], v30
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_and_b32_e32 v33, 15, v18
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v38.h, v53.l
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v39, 0, v39, s5
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v41.l, 4, v18.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v49, -16, v33
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v30, 15, v15
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v38, 0, v38, s9
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v41.h, v53.l
	.loc	1 556 28 is_stmt 0              ; attention_backward.py:556:28
	v_lshrrev_b16 v40.l, 4, v17.l
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v40.h, v53.l
	.loc	1 557 50 is_stmt 1              ; attention_backward.py:557:50
	v_or_b32_e32 v46, -16, v30
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v43.l, 4, v14.l
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v41, 0, v41, s10
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v43.h, v53.l
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v40, 0, v40, s8
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v42.l, 4, v13.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v42.h, v53.l
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_mul_i32 s2, s7, s35
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[28:29], off offset:108 ; 8-byte Folded Spill
	ds_load_b64 v[28:29], v31
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e64 v43, 0, v43, s12
	v_cndmask_b32_e64 v42, 0, v42, s11
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v18.l, v53.l
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_sub_i32 s2, s46, s2
	s_xor_b32 s15, s44, s45
	s_add_i32 s16, s7, 1
	s_sub_i32 s17, s2, s35
	s_cmp_ge_u32 s2, s35
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v21.l, v53.l
	v_mov_b16_e32 v23.l, v53.l
	v_mov_b16_e32 v24.l, v53.l
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s7, s16, s7
	s_cselect_b32 s2, s17, s2
	s_add_i32 s16, s7, 1
	s_cmp_ge_u32 s2, s35
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v22.l, v53.l
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s2, s16, s7
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v27.l, v53.l
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_xor_b32 s2, s2, s15
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[28:29], off offset:116 ; 8-byte Folded Spill
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v29, 15, v20
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v20.l, v53.l
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_sub_i32 s83, s2, s15
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v25.l, v53.l
	v_mov_b16_e32 v26.l, v53.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v45, -16, v29
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v28, 15, v19
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v19.l, v53.l
	v_mov_b16_e32 v15.l, v53.l
	s_clause 0x1
	s_load_b128 s[52:55], s[0:1], 0x50
	s_load_b32 s81, s[0:1], 0x74
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v173, s33, v65
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v44, -16, v28
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v35, 15, v14
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v14.l, v53.l
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v67, 1, v2
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s7, s51, v173
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v28, v28, v44, vcc_lo
	.loc	1 557 50 is_stmt 0              ; attention_backward.py:557:50
	v_or_b32_e32 v51, -16, v35
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_and_b32_e32 v34, 15, v13
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.h
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v44, -16, v36
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v28, v28
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v13.l, v53.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v50, -16, v34
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v31, 15, v16
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v29, v29, v45, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v4.h
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v45, -16, v37
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v16.l, v53.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v47, -16, v31
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v29, v29
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v30, v30, v46, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v5.h
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_and_b32_e32 v32, 15, v17
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v46, -16, v38
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v17.l, v53.l
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v31, v31, v47, vcc_lo
	.loc	1 557 50 is_stmt 0              ; attention_backward.py:557:50
	v_or_b32_e32 v48, -16, v32
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v6.h
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v47, -16, v39
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_dual_mul_f32 v28, v28, v53 :: v_dual_mul_f32 v19, v30, v19
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v32, v32, v48, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v7.h
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v48, -16, v40
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cmp_lt_i32 s83, 1
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v33, v33, v49, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v8.h
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v49, -16, v41
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v21, v31, v21
	v_mul_f32_e32 v17, v29, v17
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v29, v28, 16, 1
	.loc	1 557 25 is_stmt 1              ; attention_backward.py:557:25
	v_cndmask_b32_e32 v34, v34, v50, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v12.h
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v50, -16, v42
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_cmp_o_f32_e64 s5, v17, v17
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v34, v34
	.loc	1 557 25 is_stmt 1              ; attention_backward.py:557:25
	v_cndmask_b32_e32 v35, v35, v51, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v36
	.loc	1 558 52 is_stmt 0              ; attention_backward.py:558:52
	v_or_b32_e32 v51, -16, v43
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_mul_f32_e32 v25, v33, v25
	v_mul_f32_e32 v27, v34, v27
	v_cvt_f32_i32_e32 v35, v35
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v36, v36, v44, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v37
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_mul_f32_e32 v31, v35, v14
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_add3_u32 v14, v28, v29, 0x7fff
	.loc	1 558 26 is_stmt 1              ; attention_backward.py:558:26
	v_cndmask_b32_e32 v37, v37, v45, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v38
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v29, v17, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 558 26 is_stmt 1              ; attention_backward.py:558:26
	v_cndmask_b32_e32 v38, v38, v46, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v39
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_dual_mul_f32 v23, v32, v23 :: v_dual_mul_f32 v18, v37, v18
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v39, v39, v47, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v40
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_cmp_o_f32_e64 s6, v18, v18
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 558 26 is_stmt 1              ; attention_backward.py:558:26
	v_cndmask_b32_e32 v40, v40, v48, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v41
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_mul_f32_e32 v16, v36, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v22, v39, v22 :: v_dual_cndmask_b32 v41, v41, v49
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v42
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_cmp_o_f32_e64 s2, v16, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 558 26 is_stmt 1              ; attention_backward.py:558:26
	v_cndmask_b32_e32 v42, v42, v50, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v43
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_mul_f32_e32 v20, v38, v20
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v43, v43, v51, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_bfe_u32 v28, v18, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v30, v42, v13
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_bfe_u32 v13, v16, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v24, v40, v24
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v0.h, 0x7fff, v14.h, vcc_lo
	v_bfe_u32 v14, v19, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v43, v43
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_add3_u32 v13, v16, v13, 0x7fff
	v_add3_u32 v16, v17, v29, 0x7fff
	v_add3_u32 v17, v18, v28, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_dual_mul_f32 v26, v41, v26 :: v_dual_mul_f32 v15, v43, v15
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v3.h, 0x7fff, v13.h, s2
	v_bfe_u32 v13, v20, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v5.h, 0x7fff, v17.h, s6
	v_bfe_u32 v17, v22, 16, 1
	v_cndmask_b16 v4.h, 0x7fff, v16.h, s5
	v_add3_u32 v14, v19, v14, 0x7fff
	v_bfe_u32 v16, v21, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v17, v22, v17, 0x7fff
	v_cmp_o_f32_e64 s6, v22, v22
	v_add3_u32 v13, v20, v13, 0x7fff
	v_cmp_o_f32_e64 s2, v20, v20
	v_add3_u32 v16, v21, v16, 0x7fff
	v_cmp_o_f32_e64 s5, v21, v21
	v_cndmask_b16 v6.h, 0x7fff, v14.h, vcc_lo
	v_bfe_u32 v14, v23, 16, 1
	v_cndmask_b16 v12.h, 0x7fff, v17.h, s6
	v_bfe_u32 v17, v26, 16, 1
	v_cndmask_b16 v7.h, 0x7fff, v13.h, s2
	v_bfe_u32 v13, v24, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v16.h, s5
	v_add3_u32 v14, v23, v14, 0x7fff
	v_bfe_u32 v16, v25, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	v_add3_u32 v17, v26, v17, 0x7fff
	v_cmp_o_f32_e64 s6, v26, v26
	v_bfe_u32 v18, v27, 16, 1
	v_add3_u32 v13, v24, v13, 0x7fff
	v_add3_u32 v16, v25, v16, 0x7fff
	v_cmp_o_f32_e64 s5, v25, v25
	v_cndmask_b16 v13.l, 0x7fff, v14.h, vcc_lo
	v_cndmask_b16 v14.h, 0x7fff, v17.h, s6
	v_add3_u32 v17, v27, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_bfe_u32 v19, v15, 16, 1
	v_bfe_u32 v18, v31, 16, 1
	v_cmp_o_f32_e64 s2, v24, v24
	v_cndmask_b16 v14.l, 0x7fff, v16.h, s5
	v_cmp_o_f32_e64 s6, v15, v15
	v_add3_u32 v19, v15, v19, 0x7fff
	v_cndmask_b16 v15.l, 0x7fff, v17.h, vcc_lo
	.loc	1 715 36 is_stmt 1              ; attention_backward.py:715:36
	v_lshlrev_b32_e32 v21, 1, v52
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_bfe_u32 v16, v30, 16, 1
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_add_nc_u32_e32 v17, 0, v52
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_add3_u32 v18, v31, v18, 0x7fff
	v_cmp_o_f32_e64 s5, v31, v31
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s2
	v_add3_u32 v16, v30, v16, 0x7fff
	v_cmp_o_f32_e64 s2, v30, v30
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_add_nc_u32_e32 v22, v17, v52
	v_xad_u32 v17, 0x90, v21, 0
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v16.l, 0x7fff, v18.h, s5
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_xad_u32 v18, 0x120, v21, 0
	v_xad_u32 v20, 0x240, v21, 0
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v15.h, 0x7fff, v16.h, s2
	v_cndmask_b16 v16.h, 0x7fff, v19.h, s6
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_xad_u32 v19, 0x1b0, v21, 0
	ds_store_b16 v22, v13 offset:1024
	ds_store_b16_d16_hi v17, v3
	ds_store_b16_d16_hi v17, v13 offset:1024
	ds_store_b16_d16_hi v18, v4
	ds_store_b16 v18, v14 offset:1024
	ds_store_b16_d16_hi v19, v5
	ds_store_b16_d16_hi v19, v14 offset:1024
	v_xad_u32 v13, 0x2d0, v21, 0
	v_xad_u32 v14, 0x360, v21, 0
	ds_store_b16_d16_hi v22, v0
	scratch_store_b32 off, v22, off offset:124 ; 4-byte Folded Spill
	v_xad_u32 v17, 0x3f0, v21, 0
	ds_store_b16_d16_hi v20, v6
	ds_store_b16 v20, v15 offset:1024
	ds_store_b16_d16_hi v13, v7
	ds_store_b16_d16_hi v13, v15 offset:1024
	ds_store_b16_d16_hi v14, v8
	ds_store_b16 v14, v16 offset:1024
	ds_store_b16_d16_hi v17, v12
	ds_store_b16_d16_hi v17, v16 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cbranch_scc1 .LBB0_13
; %bb.3:                                ; %.lr.ph119
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_dual_mov_b32 v246, 0 :: v_dual_and_b32 v13, 7, v52
	.loc	1 550 20 is_stmt 1              ; attention_backward.py:550:20
	v_lshlrev_b32_e32 v1, 1, v1
	v_dual_mov_b32 v41, 0 :: v_dual_and_b32 v14, 48, v52
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v44, v246 :: v_dual_lshlrev_b32 v15, 4, v13
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v53.h, v12.l
	v_dual_mov_b32 v43, v246 :: v_dual_lshlrev_b32 v12, 4, v2
	v_mov_b32_e32 v42, v246
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v18, 1, v1
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s5, s81, v1
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_lshl_or_b32 v1, v65, 7, v15
	v_or3_b32 v20, v11, v12, v10
	v_dual_mov_b32 v47, v246 :: v_dual_lshlrev_b32 v10, 2, v14
	v_dual_mov_b32 v46, v246 :: v_dual_and_b32 v17, 14, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_xad_u32 v14, 0x70, v1, 0
	v_xad_u32 v19, 0x60, v1, 0
	ds_load_b128 v[26:29], v14
	ds_load_b128 v[22:25], v19
	v_dual_mov_b32 v48, v246 :: v_dual_lshlrev_b32 v11, 1, v17
	v_lshl_or_b32 v10, v17, 7, v10
	v_xad_u32 v17, 0x50, v1, 0
	v_xad_u32 v14, v1, 64, 0
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s6, s81, v18
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_xad_u32 v18, v1, 48, 0
	v_xad_u32 v19, v1, 32, 0
	s_clause 0x1
	s_load_b128 s[56:59], s[0:1], 0x80
	s_load_b32 s8, s[0:1], 0x90
	v_dual_mov_b32 v45, v246 :: v_dual_and_b32 v16, 1, v52
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	s_xor_b32 s2, s3, s49
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v32, 4, v52
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v33, 0 :: v_dual_lshlrev_b32 v12, 5, v16
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[22:25], off offset:148
	scratch_store_b128 off, v[26:29], off offset:164
	.loc	1 715 36                        ; attention_backward.py:715:36
	ds_load_b128 v[27:30], v17
	ds_load_b128 v[23:26], v14
	v_or3_b32 v22, v10, v12, v11
	v_xad_u32 v10, v1, 16, 0
	v_dual_mov_b32 v36, v246 :: v_dual_and_b32 v11, 60, v21
	v_cndmask_b32_e64 v12, 0x104, 0, vcc_lo
	v_dual_mov_b32 v34, v246 :: v_dual_add_nc_u32 v1, 0, v1
	s_ashr_i32 s2, s2, 31
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_sub_i32 s10, s33, s39
	s_xor_b32 s9, s34, s2
	s_mul_i32 s12, s59, 20
	s_sub_i32 s2, s9, s2
	s_max_i32 s9, s10, 0
	s_mul_i32 s10, s2, s49
	s_and_b32 s9, s9, 0x7fffffe0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[23:26], off offset:184
	scratch_store_b128 off, v[27:30], off offset:200
	.loc	1 715 36                        ; attention_backward.py:715:36
	ds_load_b128 v[27:30], v18
	ds_load_b128 v[23:26], v19
	s_sub_i32 s3, s3, s10
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_max_u32 s9, s14, s9
	s_and_b32 s10, s80, exec_lo
	s_cselect_b32 s49, s9, s14
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v53, off offset:136
	scratch_store_b32 off, v21, off offset:140
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[23:26], off offset:216
	scratch_store_b128 off, v[27:30], off offset:232
	.loc	1 715 36                        ; attention_backward.py:715:36
	ds_load_b128 v[27:30], v10
	ds_load_b128 v[23:26], v1
	v_xor_b32_e32 v1, v12, v11
	v_mul_lo_u32 v10, s59, v32
	v_mul_lo_u32 v11, s8, v173
	s_cmp_lt_i32 s49, s82
	v_mov_b32_e32 v35, v246
	s_cselect_b32 s51, -1, 0
	s_lshl_b32 s8, s59, 2
	s_lshl_b32 s9, s59, 3
	s_mul_i32 s14, s59, 24
	s_mul_i32 s10, s59, 12
	v_add_nc_u32_e32 v12, v11, v10
	v_add3_u32 v14, v10, s12, v11
	s_lshl_b32 s11, s59, 4
	s_mul_i32 s15, s59, 28
	v_lshl_or_b32 v19, v16, 6, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v12, off offset:280
	scratch_store_b32 off, v14, off offset:300
	v_add3_u32 v12, v10, s8, v11
	v_add3_u32 v14, v10, s14, v11
	v_lshrrev_b32_e32 v18, 5, v52
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[23:26], off offset:248
	scratch_store_b128 off, v[27:30], off offset:264
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v53.h, v0.l
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v12, off offset:284
	scratch_store_b32 off, v14, off offset:304
	v_add3_u32 v12, v10, s9, v11
	scratch_store_b32 off, v66, off offset:956 ; 4-byte Folded Spill
	v_lshrrev_b32_e32 v14, 4, v2
	v_dual_mov_b32 v57, 0 :: v_dual_lshlrev_b32 v24, 3, v65
	scratch_store_b32 off, v12, off offset:288 ; 4-byte Folded Spill
	v_add3_u32 v12, v10, s10, v11
	v_mov_b32_e32 v37, v246
	v_mov_b32_e32 v39, v246
	v_mov_b32_e32 v38, v246
	v_mov_b32_e32 v59, v246
	scratch_store_b32 off, v12, off offset:292 ; 4-byte Folded Spill
	v_add3_u32 v12, v10, s11, v11
	v_add3_u32 v10, v10, s15, v11
	v_lshrrev_b32_e32 v11, 1, v52
	s_clause 0x2
	s_load_b256 s[40:47], s[0:1], 0x30
	s_load_b64 s[60:61], s[0:1], 0x0
	s_load_b64 s[64:65], s[0:1], 0x18
	v_mov_b32_e32 v61, v246
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v12, off offset:296
	scratch_store_b32 off, v10, off offset:308
	v_lshlrev_b32_e32 v12, 2, v52
	v_and_b32_e32 v10, 16, v52
	v_and_or_b32 v11, v11, 12, v15
	v_mov_b32_e32 v63, v246
	v_mov_b32_e32 v49, 0
	v_and_b32_e32 v1, 52, v12
	v_lshlrev_b32_e32 v0, 2, v10
	v_xor_b32_e32 v16, 0xdd0, v12
	v_xor_b32_e32 v17, 0xee0, v12
	v_mov_b32_e32 v51, v246
	v_lshl_or_b32 v1, v9, 5, v1
	v_lshrrev_b32_e32 v9, 1, v10
	v_mov_b32_e32 v40, v246
	v_mov_b32_e32 v55, v246
	.loc	1 641 25                        ; attention_backward.py:641:25
	s_mul_f32 s86, s56, 0x3fb8aa3b
	v_mov_b32_e32 v58, v246
	v_and_or_b32 v9, v52, 2, v9
	s_mov_b32 s84, 0
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s85, s83, s3
	.loc	1 613 26                        ; attention_backward.py:613:26
	s_mul_i32 s48, s2, s48
	.loc	1 683 27                        ; attention_backward.py:683:27
	s_mul_i32 s57, s2, s57
	v_or3_b32 v23, v9, v1, v18
	v_bfe_i32 v1, v52, 3, 1
	v_cndmask_b32_e64 v9, 0x820, 0, vcc_lo
	s_waitcnt lgkmcnt(0)
	s_and_b32 s61, s61, 0xffff
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	s_and_b32 s65, s65, 0xffff
	v_and_or_b32 v1, 0x410, v1, v9
	v_lshlrev_b32_e32 v9, 7, v13
	v_lshrrev_b32_e32 v13, 2, v10
	v_xor_b32_e32 v10, 0x880, v12
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s45, s45, 0xffff
	v_or3_b32 v26, v11, v9, v14
	v_or_b32_e32 v9, v9, v15
	v_and_b32_e32 v11, 0x70, v21
	v_or3_b32 v25, v13, v14, v24
	v_xor_b32_e32 v13, 0xaa0, v12
	v_xor_b32_e32 v14, 0xbb0, v12
	v_xor_b32_e32 v21, v1, v9
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v1.h, v8.l
	v_mov_b16_e32 v1.l, v53.l
	v_xor_b32_e32 v11, v15, v11
	v_xor_b32_e32 v8, 0x660, v12
	v_xor_b32_e32 v9, 0x770, v12
	v_xor_b32_e32 v15, 0xcc0, v12
	scratch_store_b32 off, v1, off offset:336 ; 4-byte Folded Spill
	v_mov_b16_e32 v1.h, v7.l
	v_lshl_or_b32 v29, v52, 7, v11
	v_xor_b32_e32 v7, 0x550, v12
	v_xor_b32_e32 v11, 0x990, v12
	s_and_b32 s69, s47, 0xffff
	scratch_store_b32 off, v1, off offset:340 ; 4-byte Folded Spill
	v_mov_b16_e32 v1.h, v6.l
	v_mov_b32_e32 v60, v246
	v_xor_b32_e32 v6, 0x440, v12
	s_mov_b32 s68, s46
	s_and_b32 s73, s43, 0xffff
	scratch_store_b32 off, v1, off offset:344 ; 4-byte Folded Spill
	v_mov_b16_e32 v1.h, v5.l
	v_xor_b32_e32 v5, 0x330, v12
	s_mov_b32 s72, s42
	v_mov_b32_e32 v62, v246
	v_mov_b32_e32 v64, v246
	scratch_store_b32 off, v1, off offset:348 ; 4-byte Folded Spill
	v_mov_b16_e32 v1.h, v4.l
	v_xor_b32_e32 v4, 0x220, v12
	v_mov_b32_e32 v50, v246
	v_mov_b32_e32 v54, v246
	v_mov_b32_e32 v56, v246
	scratch_store_b32 off, v1, off offset:352 ; 4-byte Folded Spill
	v_mov_b16_e32 v1.h, v3.l
	v_xor_b32_e32 v3, 0x110, v12
	v_xor_b32_e32 v12, 0xff0, v12
	scratch_store_b32 off, v1, off offset:356 ; 4-byte Folded Spill
	v_mul_u32_u24_e32 v1, 0x110, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v2, 7, v1
	v_lshlrev_b32_e32 v1, 1, v65
	v_or3_b32 v28, v1, v0, v2
	v_add3_u32 v0, 0, v2, v1
	v_lshl_add_u32 v1, v2, 1, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_add_u32 v2, v65, 2, v1
	v_lshlrev_b32_e32 v1, 3, v52
	v_and_b32_e32 v1, 48, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v30, v65, 6, v1
	v_xor_b32_e32 v1, 8, v20
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:380 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:384
	scratch_store_b32 off, v20, off offset:144
	v_xor_b32_e32 v1, 24, v20
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:388 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x208, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:392 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x410, v19
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:396
	scratch_store_b32 off, v19, off offset:312
	v_xor_b32_e32 v1, 0x618, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:400 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 4, v22
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:404 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 8, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:408 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 12, v22
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:412 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:416 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 20, v22
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:420 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 24, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:424
	scratch_store_b32 off, v22, off offset:180
	v_xor_b32_e32 v1, 28, v22
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:428 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x90, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:432 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x120, v25
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:436
	scratch_store_b32 off, v25, off offset:324
	v_xor_b32_e32 v1, 0x1b0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:440 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 16, v23
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:444 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 32, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:448
	scratch_store_b32 off, v23, off offset:316
	v_xor_b32_e32 v1, 48, v23
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:452 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:456 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 32, v29
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:460 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 48, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:464 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 64, v29
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:468 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x50, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:472 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x60, v29
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:476
	scratch_store_b32 off, v29, off offset:372
	v_xor_b32_e32 v1, 0x70, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:480 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 16, v21
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:484 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 32, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:488 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 48, v21
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:492 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 64, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:496 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x50, v21
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:500 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x60, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:504 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x70, v21
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:508 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1040, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:512 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1050, v21
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:516 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1060, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:520 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1070, v21
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:524 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1010, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:528 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1020, v21
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:532
	scratch_store_b32 off, v21, off offset:332
	v_xor_b32_e32 v1, 0x1030, v21
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:536 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v3
	v_dual_mov_b32 v3, v52 :: v_dual_mov_b32 v52, v246
	scratch_store_b32 off, v1, off offset:540 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v4
	scratch_store_b32 off, v1, off offset:544 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v5
	scratch_store_b32 off, v1, off offset:548 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v6
	scratch_store_b32 off, v1, off offset:552 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v7
	scratch_store_b32 off, v1, off offset:556 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v8
	scratch_store_b32 off, v1, off offset:560 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v9
	scratch_store_b32 off, v1, off offset:564 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v10
	scratch_store_b32 off, v1, off offset:568 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v11
	scratch_store_b32 off, v1, off offset:572 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v13
	scratch_store_b32 off, v1, off offset:576 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v14
	scratch_store_b32 off, v1, off offset:580 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v15
	scratch_store_b32 off, v1, off offset:584 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v16
	scratch_store_b32 off, v1, off offset:588 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v17
	scratch_store_b32 off, v1, off offset:592 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v12
	scratch_store_b32 off, v1, off offset:596 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:600 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 32, v27
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:604 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 48, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:608 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 64, v27
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:612 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x50, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:616 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x60, v27
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:620 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x70, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:624 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x80, v27
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:628 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x90, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:632 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xa0, v27
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:636 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xb0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:640 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xc0, v27
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:644 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xd0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:648 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xe0, v27
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:652
	scratch_store_b32 off, v27, off offset:364
	v_xor_b32_e32 v1, 0xf0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:656 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x90, v28
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:660 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x120, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:664
	scratch_store_b32 off, v28, off offset:368
	v_xor_b32_e32 v1, 0x1b0, v28
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:668 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 16, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:672 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 32, v30
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:676
	scratch_store_b32 off, v30, off offset:376
	v_xor_b32_e32 v1, 48, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:680 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 16, v26
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:684 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 32, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:688 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 48, v26
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:692 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 64, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:696 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x50, v26
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:700 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x60, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:704
	scratch_store_b32 off, v26, off offset:328
	v_xor_b32_e32 v1, 0x70, v26
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:708 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x90, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:712 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x120, v24
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:716 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1b0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:720 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x240, v24
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:724 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x2d0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:728 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x360, v24
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:732
	scratch_store_b32 off, v24, off offset:320
	v_xor_b32_e32 v1, 0x3f0, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:736 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, v3
	scratch_store_b32 off, v53, off offset:360 ; 4-byte Folded Spill
	v_mov_b32_e32 v53, v246
	.loc	1 545 17                        ; attention_backward.py:545:17
	scratch_store_b64 off, v[1:2], off offset:128 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v1, s77, v3
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v3, 16, v18
	scratch_store_b32 off, v1, off offset:740 ; 4-byte Folded Spill
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v1, off offset:744 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v1, off offset:748 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v1, off offset:752 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v1, off offset:756 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v1, off offset:760 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v1, off offset:764 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v1, off offset:768 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v1, off offset:772 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v1, off offset:776 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v1, off offset:780 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v1, off offset:784 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v1, off offset:788 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v1, off offset:792 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v1, off offset:796 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v1, off offset:800 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v1, off offset:804 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v1, off offset:808 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v1, off offset:812 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v1, off offset:816 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v1, off offset:820 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v1, off offset:824 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v1, off offset:828 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v1, off offset:832 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v1, off offset:836 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s77, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:844
	scratch_store_b32 off, v1, off offset:840
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v3, 18, v18
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v3, off offset:852 ; 4-byte Folded Spill
	v_or_b32_e32 v3, 20, v18
	scratch_store_b32 off, v3, off offset:856 ; 4-byte Folded Spill
	v_or_b32_e32 v3, 22, v18
	scratch_store_b32 off, v3, off offset:860 ; 4-byte Folded Spill
	v_or_b32_e32 v3, 24, v18
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:864
	scratch_store_b32 off, v1, off offset:848
	v_or_b32_e32 v3, 26, v18
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v3, off offset:872 ; 4-byte Folded Spill
	v_or_b32_e32 v3, 28, v18
	scratch_store_b32 off, v3, off offset:876 ; 4-byte Folded Spill
	v_or_b32_e32 v3, 30, v18
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v3, off offset:880
	scratch_store_b32 off, v65, off offset:952
	scratch_store_b32 off, v67, off offset:960
	v_or_b32_e32 v3, v67, v65
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:884
	scratch_store_b32 off, v1, off offset:868
	scratch_load_b64 v[3:4], off, off       ; 8-byte Folded Reload
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v1, off offset:888 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v1, off offset:892 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v1, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_mad_u64_u32 v[3:4], null, s76, 18, v[1:2]
	scratch_store_b64 off, v[3:4], off offset:896 ; 8-byte Folded Spill
	v_mad_u64_u32 v[3:4], null, s76, 20, v[1:2]
	scratch_store_b64 off, v[3:4], off offset:904 ; 8-byte Folded Spill
	v_mad_u64_u32 v[3:4], null, s76, 22, v[1:2]
	scratch_store_b64 off, v[3:4], off offset:912 ; 8-byte Folded Spill
	v_mad_u64_u32 v[3:4], null, s76, 24, v[1:2]
	scratch_store_b64 off, v[3:4], off offset:920 ; 8-byte Folded Spill
	v_mad_u64_u32 v[3:4], null, s76, 26, v[1:2]
	scratch_store_b64 off, v[3:4], off offset:928 ; 8-byte Folded Spill
	v_mad_u64_u32 v[3:4], null, s76, 28, v[1:2]
	scratch_store_b64 off, v[3:4], off offset:936 ; 8-byte Folded Spill
	v_mad_u64_u32 v[3:4], null, s76, 30, v[1:2]
	.loc	1 605 9                         ; attention_backward.py:605:9
	scratch_store_b64 off, v[3:4], off offset:944 ; 8-byte Folded Spill
	s_branch .LBB0_5
.LBB0_4:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_add_i32 s84, s84, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s84, s83
	s_cbranch_scc0 .LBB0_12
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s51
	s_cbranch_vccnz .LBB0_4
; %bb.6:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_add_i32 s0, s84, s85
	s_mov_b32 s89, s49
	.loc	1 613 26                        ; attention_backward.py:613:26
	s_add_i32 s87, s0, s48
	.loc	1 684 27                        ; attention_backward.py:684:27
	s_mul_i32 s88, s0, s58
	.loc	1 613 25                        ; attention_backward.py:613:25
	s_mul_i32 s87, s87, s50
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_add_i32 s88, s88, s57
	s_branch .LBB0_8
.LBB0_7:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v17, off, off offset:280
	scratch_load_b32 v21, off, off offset:284
	scratch_load_b32 v23, off, off offset:288
	scratch_load_b32 v20, off, off offset:296
	scratch_load_b32 v22, off, off offset:300
	scratch_load_b32 v24, off, off offset:304
	scratch_load_b32 v25, off, off offset:308
	scratch_load_b32 v26, off, off offset:292
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s1, s89, 1
	s_or_b32 s2, s89, 2
	s_or_b32 s3, s89, 3
	s_or_b32 s8, s89, 4
	s_or_b32 s9, s89, 5
	s_or_b32 s10, s89, 6
	s_or_b32 s11, s89, 7
	s_or_b32 s12, s89, 8
	s_or_b32 s14, s89, 9
	s_or_b32 s15, s89, 10
	s_or_b32 s16, s89, 11
	s_or_b32 s17, s89, 12
	s_or_b32 s18, s89, 13
	s_or_b32 s19, s89, 14
	s_or_b32 s20, s89, 15
	s_or_b32 s30, s89, 16
	s_or_b32 s31, s89, 17
	s_or_b32 s42, s89, 18
	s_or_b32 s43, s89, 19
	s_or_b32 s74, s89, 20
	s_or_b32 s96, s89, 21
	s_or_b32 s97, s89, 22
	s_or_b32 s98, s89, 23
	s_or_b32 s99, s89, 24
	s_or_b32 s100, s89, 25
	s_or_b32 s101, s89, 26
	s_or_b32 s102, s89, 27
	s_or_b32 s103, s89, 28
	s_or_b32 s104, s89, 29
	s_or_b32 vcc_lo, s89, 30
	s_or_b32 vcc_hi, s89, 31
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s89, s50
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s21, s21, s77
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s1, s50
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_mul_i32 s1, s89, s59
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s2, s50
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v15, 2, v15
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s3, s50
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v175, 0xc00, v2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s8, s50
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_cndmask_b32_e64 v15, 0x80000000, v15, s0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s9, s50
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v177, 0x1400, v2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s10, s50
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v178, 0x1800, v2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s11, s50
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v230, 0x1c00, v2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s12, s50
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v19.h, v19.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s14, s50
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e32 v19.l, 0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s15, s50
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v176, 0x1000, v2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s16, s50
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v14.h, v14.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s17, s50
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v14.l, v19.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s18, s50
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v10.h, v10.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s36, -1, 0
	s_cmp_lt_i32 s19, s50
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v10.l, v19.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s35, -1, 0
	s_cmp_lt_i32 s20, s50
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v16.h, v16.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s34, -1, 0
	s_cmp_lt_i32 s30, s50
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v16.l, v19.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s33, -1, 0
	s_cmp_lt_i32 s31, s50
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v8.h, v8.l
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
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s74, s50
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s74, s62
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s96, s50
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v8.l, v19.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s97, s50
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v18, v18, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s98, s50
	.loc	1 697 25 is_stmt 1              ; attention_backward.py:697:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s99, s50
	.loc	1 697 25                        ; attention_backward.py:697:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s100, s50
	.loc	1 697 25                        ; attention_backward.py:697:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s101, s50
	.loc	1 697 25                        ; attention_backward.py:697:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s102, s50
	.loc	1 697 25                        ; attention_backward.py:697:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s103, s50
	.loc	1 697 25                        ; attention_backward.py:697:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 s104, s50
	.loc	1 697 25                        ; attention_backward.py:697:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 vcc_lo, s50
	.loc	1 697 25                        ; attention_backward.py:697:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s8, -1, 0
	s_cmp_lt_i32 vcc_hi, s50
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s96, -1, 0
	.loc	1 682 25 is_stmt 1              ; attention_backward.py:682:25
	s_add_i32 s1, s88, s1
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s89, s89, 32
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	.loc	1 691 36 is_stmt 1              ; attention_backward.py:691:36
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v17, s1, v17, 2
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v21, s1, v21, 2
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v23, s1, v23, 2
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v20, s1, v20, 2
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v22, s1, v22, 2
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v24, s1, v24, 2
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v25, s1, v25, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v26, s1, v26, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s28
	v_cndmask_b32_e64 v21, 0x80000000, v21, s26
	v_cndmask_b32_e64 v23, 0x80000000, v23, s24
	v_cndmask_b32_e64 v20, 0x80000000, v20, s29
	v_cndmask_b32_e64 v22, 0x80000000, v22, s27
	v_cndmask_b32_e64 v24, 0x80000000, v24, s25
	v_cndmask_b32_e64 v25, 0x80000000, v25, s23
	v_cndmask_b32_e64 v26, 0x80000000, v26, s22
	s_clause 0x7
	buffer_load_b32 v17, v17, s[40:43], 0 offen
	buffer_load_b32 v20, v20, s[40:43], 0 offen
	buffer_load_b32 v21, v21, s[40:43], 0 offen
	buffer_load_b32 v22, v22, s[40:43], 0 offen
	buffer_load_b32 v23, v23, s[40:43], 0 offen
	buffer_load_b32 v24, v24, s[40:43], 0 offen
	buffer_load_b32 v25, v25, s[40:43], 0 offen
	buffer_load_b32 v26, v26, s[40:43], 0 offen
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v27, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_waitcnt vmcnt(8)
	v_cndmask_b32_e64 v17, 0xff800000, v17, s28
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v20, 0xff800000, v20, s29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v17
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, 0, v27
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v20
	.loc	1 697 25 is_stmt 0              ; attention_backward.py:697:25
	s_and_b32 s1, s28, s1
	.loc	1 696 35 is_stmt 1              ; attention_backward.py:696:35
	ds_store_2addr_b32 v27, v17, v20 offset1:32
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_cndmask_b32_e64 v17, 0xff800000, v21, s26
	.loc	1 696 35                        ; attention_backward.py:696:35
	scratch_load_b32 v21, off, off offset:392 ; 4-byte Folded Reload
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_cndmask_b32_e64 v20, 0xff800000, v22, s27
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_and_b32 s29, s29, vcc_lo
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_cndmask_b32_e64 v22, 0xff800000, v24, s25
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_neq_f32_e64 s3, 0xff800000, v20
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v22
	.loc	1 697 25 is_stmt 0              ; attention_backward.py:697:25
	s_and_b32 s25, s25, vcc_lo
	.loc	1 712 26 is_stmt 1              ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s95
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v21, v17, v20 offset1:32
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v17, 0, 1, s29
	v_cndmask_b32_e64 v20, 0, 1, s1
	s_and_b32 s1, s27, s3
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_cndmask_b32_e64 v21, 0xff800000, v26, s22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_lshlrev_b16 v1.h, 8, v17.l
	v_cndmask_b32_e64 v17, 0, 1, s1
	s_and_b32 s1, s26, s2
	.loc	1 697 34 is_stmt 0              ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_or_b16 v1.h, v20.l, v1.h
	v_lshlrev_b16 v3.h, 8, v17.l
	.loc	1 696 35 is_stmt 1              ; attention_backward.py:696:35
	scratch_load_b32 v17, off, off offset:396 ; 4-byte Folded Reload
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v20, 0, 1, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v3.h, v20.l, v3.h
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_cndmask_b32_e64 v20, 0xff800000, v23, s24
	v_cndmask_b32_e64 v23, 0xff800000, v25, s23
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v20
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_neq_f32_e64 s3, 0xff800000, v23
	.loc	1 697 25 is_stmt 0              ; attention_backward.py:697:25
	s_and_b32 s1, s24, s1
	.loc	1 696 35 is_stmt 1              ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v17, v20, v22 offset1:32
	scratch_load_b32 v17, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v20, 0, 1, s25
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v17, v21, v23 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v17, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v21, 0, 1, s1
	s_and_b32 s1, s23, s3
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, 0, v17
	ds_load_b32 v170, v17
	scratch_load_b32 v17, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v156, v17
	scratch_load_b32 v17, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v168, v17
	scratch_load_b32 v17, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v157, v17
	scratch_load_b32 v17, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v165, v17
	scratch_load_b32 v17, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v167, v17
	scratch_load_b32 v17, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v243, v17
	scratch_load_b32 v17, off, off offset:428 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v17, v17
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v24, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v17, 0x3fb8aa3b, v17 :: v_dual_add_nc_u32 v24, 0, v24
	.loc	1 697 25                        ; attention_backward.py:697:25
	ds_store_b16_d16_hi v24, v1
	v_lshlrev_b16 v1.h, 8, v20.l
	v_cndmask_b32_e64 v20, 0, 1, s1
	s_and_b32 s1, s22, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v1.h, v21.l, v1.h
	v_lshlrev_b16 v4.h, 8, v20.l
	scratch_load_b32 v20, off, off offset:432 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v21, 0, 1, s1
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v4.h, v21.l, v4.h
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v20, v3
	scratch_load_b32 v20, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v20, v1
	scratch_load_b32 v20, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v20, v4
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[20:21], off, off offset:128
	scratch_load_b32 v21, off, off offset:740
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v4.h, v4.l
	v_mov_b16_e32 v4.l, v19.l
	scratch_load_b32 v23, off, off offset:892 ; 4-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v20, s21, v20, 2
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v21, s21, v21, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s75
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s75, s63
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	s_clause 0x1
	buffer_load_b32 v24, v20, s[72:75], 0 offen
	buffer_load_b32 v25, v21, s[72:75], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:744
	scratch_load_b32 v21, off, off offset:756
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s94
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v22, s21, v23, 2
	v_add_nc_u32_e32 v23, s77, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v23, s21, v23, 2
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v20, s21, v20, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v21, s21, v21, 2
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s93
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v26, v20, s[72:75], 0 offen
	scratch_load_b32 v20, off, off offset:748 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v20, s21, v20, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s92
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v27, v20, s[72:75], 0 offen
	scratch_load_b32 v20, off, off offset:752 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v20, s21, v20, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s91
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	s_clause 0x1
	buffer_load_b32 v28, v20, s[72:75], 0 offen
	buffer_load_b32 v29, v21, s[72:75], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:760
	scratch_load_b32 v21, off, off offset:772
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s90
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v20, s21, v20, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v21, s21, v21, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s71
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s71, s63
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v30, v20, s[72:75], 0 offen
	scratch_load_b32 v20, off, off offset:764 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v20, s21, v20, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s70
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s70, s62
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v31, v20, s[72:75], 0 offen
	scratch_load_b32 v20, off, off offset:768 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v20, s21, v20, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s67
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	s_clause 0x1
	buffer_load_b32 v65, v20, s[72:75], 0 offen
	buffer_load_b32 v66, v21, s[72:75], 0 offen
	scratch_load_b32 v20, off, off offset:776 ; 4-byte Folded Reload
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s66
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v21, off, off offset:788 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v20, s21, v20, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s47
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s47, s63
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v67, v20, s[72:75], 0 offen
	scratch_load_b32 v20, off, off offset:780 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v20, s21, v20, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s46
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s46, s62
	buffer_load_b32 v169, v15, s[44:47], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v171, v15, s[68:71], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v68, v20, s[72:75], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:784
	scratch_load_b32 v15, off, off offset:316
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v174, 0x800, v2
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v20, s21, v20, 2
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, 0, v15
	ds_load_u8_d16_hi v84, v15
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16 v84, v15 offset:64
	scratch_load_b32 v15, off, off offset:444 ; 4-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v21, s21, v21, 2
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s36
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_waitcnt vmcnt(0)
	ds_load_u8_d16_hi v83, v15
	ds_load_u8_d16 v82, v15 offset:64
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	s_clause 0x1
	buffer_load_b32 v69, v20, s[72:75], 0 offen
	buffer_load_b32 v70, v21, s[72:75], 0 offen
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v20, off, off offset:792
	scratch_load_b32 v21, off, off offset:804
	scratch_load_b32 v15, off, off offset:448
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s35
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_waitcnt lgkmcnt(2)
	v_and_b16 v1.h, 1, v84.h
	s_waitcnt vmcnt(0) lgkmcnt(1)
	ds_load_u8_d16 v83, v15
	ds_load_u8_d16_hi v81, v15 offset:64
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v20, s21, v20, 2
	scratch_load_b32 v15, off, off offset:452 ; 4-byte Folded Reload
	v_add_lshl_u32 v21, s21, v21, 2
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_waitcnt vmcnt(0) lgkmcnt(2)
	ds_load_u8_d16_hi v82, v15
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16 v81, v15 offset:64
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s34
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v71, v20, s[72:75], 0 offen
	scratch_load_b32 v20, off, off offset:796 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v20, s21, v20, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s33
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v72, v20, s[72:75], 0 offen
	scratch_load_b32 v20, off, off offset:800 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v20, s21, v20, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s31
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	s_clause 0x1
	buffer_load_b32 v247, v20, s[72:75], 0 offen
	buffer_load_b32 v248, v21, s[72:75], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:808
	scratch_load_b32 v21, off, off offset:820
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v20, s21, v20, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v21, s21, v21, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s20
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v249, v20, s[72:75], 0 offen
	scratch_load_b32 v20, off, off offset:812 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v20, s21, v20, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s19
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v250, v20, s[72:75], 0 offen
	scratch_load_b32 v20, off, off offset:816 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v20, s21, v20, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s18
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	s_clause 0x1
	buffer_load_b32 v251, v20, s[72:75], 0 offen
	buffer_load_b32 v252, v21, s[72:75], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:824
	scratch_load_b32 v21, off, off offset:836
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s17
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v20, s21, v20, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v21, s21, v21, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s16
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v253, v20, s[72:75], 0 offen
	scratch_load_b32 v20, off, off offset:828 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v20, s21, v20, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s15
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v254, v20, s[72:75], 0 offen
	scratch_load_b32 v20, off, off offset:832 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v20, s21, v20, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s14
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	s_clause 0x1
	buffer_load_b32 v238, v20, s[72:75], 0 offen
	buffer_load_b32 v239, v21, s[72:75], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:840
	scratch_load_b32 v21, off, off offset:888
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s12
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v20, s21, v20, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v21, s21, v21, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s11
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v240, v20, s[72:75], 0 offen
	scratch_load_b32 v20, off, off offset:848 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v20, s21, v20, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s10
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v241, v20, s[72:75], 0 offen
	scratch_load_b32 v20, off, off offset:868 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v20, s21, v20, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s9
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s8
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x1
	buffer_load_b32 v20, v20, s[72:75], 0 offen
	buffer_load_b32 v21, v21, s[72:75], 0 offen
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s96
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_i32 s89, s82
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	s_clause 0x1
	buffer_load_b32 v22, v22, s[72:75], 0 offen
	buffer_load_b32 v23, v23, s[72:75], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v15, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, 0, v15
	ds_store_b128 v15, v[24:27]
	scratch_load_b32 v15, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v15, v[28:31]
	scratch_load_b32 v15, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v15, v[65:68]
	scratch_load_b32 v15, off, off offset:464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v15, v[69:72]
	scratch_load_b32 v15, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v15, v[247:250]
	scratch_load_b32 v15, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v15, v[251:254]
	scratch_load_b32 v15, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v15, v[238:241]
	scratch_load_b32 v15, off, off offset:480 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v15, v[20:23]
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v15, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, 0, v15
	ds_load_b128 v[138:141], v15
	ds_load_b128 v[90:93], v15 offset:4096
	scratch_load_b32 v15, off, off offset:484 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[150:153], v15
	scratch_load_b32 v15, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[146:149], v15
	scratch_load_b32 v15, off, off offset:492 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[142:145], v15
	scratch_load_b32 v15, off, off offset:496 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[118:121], v15
	scratch_load_b32 v15, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[114:117], v15
	scratch_load_b32 v15, off, off offset:504 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[110:113], v15
	scratch_load_b32 v15, off, off offset:508 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[106:109], v15
	scratch_load_b32 v15, off, off offset:512 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[134:137], v15
	scratch_load_b32 v15, off, off offset:516 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[130:133], v15
	scratch_load_b32 v15, off, off offset:520 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[126:129], v15
	scratch_load_b32 v15, off, off offset:524 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[122:125], v15
	scratch_load_b32 v15, off, off offset:528 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[102:105], v15
	scratch_load_b32 v15, off, off offset:532 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[98:101], v15
	scratch_load_b32 v15, off, off offset:536 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[94:97], v15
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:140
	scratch_load_b32 v172, off, off offset:124
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, v172, v15
	v_add_nc_u32_e32 v172, 0x400, v2
	ds_store_2addr_stride64_b32 v15, v24, v25 offset1:1
	ds_store_2addr_stride64_b32 v15, v26, v27 offset0:2 offset1:3
	ds_store_2addr_stride64_b32 v15, v28, v29 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v15, v30, v31 offset0:6 offset1:7
	ds_store_2addr_stride64_b32 v15, v65, v66 offset0:8 offset1:9
	ds_store_2addr_stride64_b32 v15, v67, v68 offset0:10 offset1:11
	ds_store_2addr_stride64_b32 v15, v69, v70 offset0:12 offset1:13
	ds_store_2addr_stride64_b32 v15, v71, v72 offset0:14 offset1:15
	ds_store_2addr_stride64_b32 v15, v247, v248 offset0:16 offset1:17
	ds_store_2addr_stride64_b32 v15, v249, v250 offset0:18 offset1:19
	ds_store_2addr_stride64_b32 v15, v251, v252 offset0:20 offset1:21
	ds_store_2addr_stride64_b32 v15, v253, v254 offset0:22 offset1:23
	ds_store_2addr_stride64_b32 v15, v238, v239 offset0:24 offset1:25
	ds_store_2addr_stride64_b32 v15, v240, v241 offset0:26 offset1:27
	ds_store_2addr_stride64_b32 v15, v20, v21 offset0:28 offset1:29
	ds_store_2addr_stride64_b32 v15, v22, v23 offset0:30 offset1:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[228:229], v172 offset1:32
	ds_load_2addr_b32 v[226:227], v172 offset0:64 offset1:96
	ds_load_2addr_b32 v[224:225], v172 offset0:128 offset1:160
	ds_load_2addr_b32 v[222:223], v172 offset0:192 offset1:224
	ds_load_2addr_b32 v[220:221], v174 offset1:32
	ds_load_2addr_b32 v[218:219], v174 offset0:64 offset1:96
	ds_load_2addr_b32 v[216:217], v174 offset0:128 offset1:160
	ds_load_2addr_b32 v[214:215], v174 offset0:192 offset1:224
	ds_load_2addr_b32 v[212:213], v175 offset1:32
	ds_load_2addr_b32 v[210:211], v175 offset0:64 offset1:96
	ds_load_2addr_b32 v[208:209], v175 offset0:128 offset1:160
	ds_load_2addr_b32 v[206:207], v175 offset0:192 offset1:224
	ds_load_2addr_b32 v[204:205], v176 offset1:32
	ds_load_2addr_b32 v[202:203], v176 offset0:64 offset1:96
	ds_load_2addr_b32 v[200:201], v176 offset0:128 offset1:160
	ds_load_2addr_b32 v[198:199], v176 offset0:192 offset1:224
	ds_load_2addr_b32 v[196:197], v177 offset1:32
	ds_load_2addr_b32 v[194:195], v177 offset0:64 offset1:96
	ds_load_2addr_b32 v[192:193], v177 offset0:128 offset1:160
	ds_load_2addr_b32 v[190:191], v177 offset0:192 offset1:224
	ds_load_2addr_b32 v[188:189], v178 offset1:32
	ds_load_2addr_b32 v[186:187], v178 offset0:64 offset1:96
	ds_load_2addr_b32 v[184:185], v178 offset0:128 offset1:160
	ds_load_2addr_b32 v[182:183], v178 offset0:192 offset1:224
	ds_load_2addr_b32 v[180:181], v230 offset1:32
	ds_load_2addr_b32 v[178:179], v230 offset0:64 offset1:96
	ds_load_2addr_b32 v[176:177], v230 offset0:128 offset1:160
	ds_load_2addr_b32 v[174:175], v230 offset0:192 offset1:224
	ds_load_2addr_b32 v[236:237], v2 offset1:32
	ds_load_2addr_b32 v[234:235], v2 offset0:64 offset1:96
	ds_load_2addr_b32 v[232:233], v2 offset0:128 offset1:160
	ds_load_2addr_b32 v[230:231], v2 offset0:192 offset1:224
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b32 v15, v24, v247 offset1:16
	scratch_load_b32 v24, off, off offset:540 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v247, v246
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s23, v198, v198
	v_cmp_o_f32_e64 s25, v194, v194
	v_cmp_o_f32_e64 s20, v204, v204
	v_cmp_o_f32_e64 s21, v202, v202
	v_cmp_o_f32_e64 s29, v186, v186
	v_cmp_o_f32_e64 s30, v184, v184
	v_cmp_o_f32_e64 s31, v182, v182
	v_cmp_o_f32_e64 s33, v180, v180
	v_cmp_o_f32_e64 s22, v200, v200
	v_cmp_o_f32_e64 s35, v176, v176
	v_cmp_o_f32_e64 s24, v196, v196
	v_cmp_o_f32_e64 s26, v192, v192
	v_cmp_o_f32_e64 s27, v190, v190
	v_cmp_o_f32_e64 s28, v188, v188
	v_cmp_o_f32_e64 s34, v178, v178
	v_cmp_o_f32_e64 s36, v174, v174
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v24, v25, v248 offset1:16
	scratch_load_b32 v24, off, off offset:544 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v248, v246
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v24, v26, v249 offset1:16
	scratch_load_b32 v24, off, off offset:548 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v249, v246
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v24, v27, v250 offset1:16
	scratch_load_b32 v24, off, off offset:552 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v250, v246
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v24, v28, v251 offset1:16
	scratch_load_b32 v24, off, off offset:556 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v251, v246
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v24, v29, v252 offset1:16
	scratch_load_b32 v24, off, off offset:560 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v252, v246
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v24, v30, v253 offset1:16
	scratch_load_b32 v24, off, off offset:564 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v253, v246
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v24, v31, v254 offset1:16
	scratch_load_b32 v24, off, off offset:568 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v24, v65, v238 offset1:16
	scratch_load_b32 v24, off, off offset:572 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v24, v66, v239 offset1:16
	scratch_load_b32 v24, off, off offset:576 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v24, v67, v240 offset1:16
	scratch_load_b32 v24, off, off offset:580 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v24, v68, v241 offset1:16
	scratch_load_b32 v24, off, off offset:584 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v24, v69, v20 offset1:16
	scratch_load_b32 v20, off, off offset:588 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v20, v70, v21 offset1:16
	scratch_load_b32 v20, off, off offset:592 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v20, v71, v22 offset1:16
	scratch_load_b32 v20, off, off offset:596 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v20, v72, v23 offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:364
	scratch_load_b32 v24, off, off offset:600
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v20, 0, v20
	s_waitcnt vmcnt(0)
	ds_load_b128 v[24:27], v24
	ds_load_b128 v[20:23], v20
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s3, v24, v24
	v_cmp_o_f32_e64 s8, v25, v25
	v_cmp_o_f32_e64 s9, v26, v26
	v_cmp_o_f32_e64 s10, v27, v27
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v28, v20, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_cmp_o_f32_e64 s0, v21, v21
	v_cmp_o_f32_e64 s1, v22, v22
	v_cmp_o_f32_e64 s2, v23, v23
	v_add3_u32 v28, v20, v28, 0x7fff
	v_bfe_u32 v20, v21, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v29, v21, v20, 0x7fff
	v_bfe_u32 v20, v22, 16, 1
	v_add3_u32 v30, v22, v20, 0x7fff
	v_bfe_u32 v20, v23, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v31, v23, v20, 0x7fff
	v_bfe_u32 v20, v24, 16, 1
	v_add3_u32 v65, v24, v20, 0x7fff
	v_bfe_u32 v20, v25, 16, 1
	scratch_load_b32 v24, off, off offset:608 ; 4-byte Folded Reload
	v_add3_u32 v66, v25, v20, 0x7fff
	v_bfe_u32 v20, v26, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v67, v26, v20, 0x7fff
	v_bfe_u32 v20, v27, 16, 1
	v_add3_u32 v68, v27, v20, 0x7fff
	scratch_load_b32 v20, off, off offset:604 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[24:27], v24
	s_waitcnt vmcnt(0)
	ds_load_b128 v[20:23], v20
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s16, v24, v24
	v_cmp_o_f32_e64 s17, v25, v25
	v_cmp_o_f32_e64 s18, v26, v26
	v_cmp_o_f32_e64 s19, v27, v27
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v69, v20, 16, 1
	v_cmp_o_f32_e64 s11, v20, v20
	v_cmp_o_f32_e64 s12, v21, v21
	v_cmp_o_f32_e64 s14, v22, v22
	v_cmp_o_f32_e64 s15, v23, v23
	v_add3_u32 v20, v20, v69, 0x7fff
	v_bfe_u32 v69, v21, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v28.l, 0x7fff, v20.h, s11
	v_add3_u32 v21, v21, v69, 0x7fff
	v_bfe_u32 v69, v22, 16, 1
	scratch_load_b32 v20, off, off offset:612 ; 4-byte Folded Reload
	v_add3_u32 v22, v22, v69, 0x7fff
	v_bfe_u32 v69, v23, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v29.l, 0x7fff, v22.h, s14
	v_add3_u32 v23, v23, v69, 0x7fff
	v_bfe_u32 v69, v24, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v69, v24, v69, 0x7fff
	v_bfe_u32 v24, v25, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v69.h, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v70, v25, v24, 0x7fff
	v_bfe_u32 v24, v26, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v30.h, s1
	v_cndmask_b16 v25.h, 0x7fff, v31.h, s2
	v_cndmask_b16 v30.h, 0x7fff, v70.h, s17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v71, v26, v24, 0x7fff
	v_bfe_u32 v24, v27, 16, 1
	v_cndmask_b16 v26.l, 0x7fff, v65.h, s3
	v_cndmask_b16 v26.h, 0x7fff, v66.h, s8
	v_cndmask_b16 v31.l, 0x7fff, v71.h, s18
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v72, v27, v24, 0x7fff
	v_cndmask_b16 v27.l, 0x7fff, v67.h, s9
	v_cndmask_b16 v27.h, 0x7fff, v68.h, s10
	v_cndmask_b16 v24.l, 0x7fff, v28.h, vcc_lo
	v_cndmask_b16 v24.h, 0x7fff, v29.h, s0
	v_cndmask_b16 v31.h, 0x7fff, v72.h, s19
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v65, v246 :: v_dual_mov_b32 v66, v247
	v_dual_mov_b32 v67, v248 :: v_dual_mov_b32 v68, v249
	v_dual_mov_b32 v69, v250 :: v_dual_mov_b32 v70, v251
	v_dual_mov_b32 v71, v252 :: v_dual_mov_b32 v72, v253
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[247:250], off, off offset:248
	scratch_load_b128 v[251:254], off, off offset:264
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v28.h, 0x7fff, v21.h, s12
	v_cndmask_b16 v29.h, 0x7fff, v23.h, s15
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[247:254], v[24:31], v[65:72]
	.loc	1 716 21                        ; attention_backward.py:716:21
	scratch_load_b32 v24, off, off offset:616 ; 4-byte Folded Reload
	ds_load_b128 v[20:23], v20
	s_waitcnt vmcnt(0)
	ds_load_b128 v[24:27], v24
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v28, v20, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_cmp_o_f32_e64 s0, v21, v21
	v_cmp_o_f32_e64 s1, v22, v22
	v_cmp_o_f32_e64 s2, v23, v23
	v_add3_u32 v28, v20, v28, 0x7fff
	v_bfe_u32 v20, v21, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v29, v21, v20, 0x7fff
	v_bfe_u32 v20, v22, 16, 1
	v_add3_u32 v30, v22, v20, 0x7fff
	v_bfe_u32 v20, v23, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s3, v24, v24
	v_cmp_o_f32_e64 s8, v25, v25
	v_cmp_o_f32_e64 s9, v26, v26
	v_cmp_o_f32_e64 s10, v27, v27
	v_add3_u32 v31, v23, v20, 0x7fff
	v_bfe_u32 v20, v24, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v172, v24, v20, 0x7fff
	v_bfe_u32 v20, v25, 16, 1
	scratch_load_b32 v24, off, off offset:624 ; 4-byte Folded Reload
	v_add3_u32 v238, v25, v20, 0x7fff
	v_bfe_u32 v20, v26, 16, 1
	v_add3_u32 v239, v26, v20, 0x7fff
	v_bfe_u32 v20, v27, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v240, v27, v20, 0x7fff
	scratch_load_b32 v20, off, off offset:620 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[24:27], v24
	s_waitcnt vmcnt(0)
	ds_load_b128 v[20:23], v20
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s16, v24, v24
	v_cmp_o_f32_e64 s17, v25, v25
	v_cmp_o_f32_e64 s18, v26, v26
	v_cmp_o_f32_e64 s19, v27, v27
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v241, v20, 16, 1
	v_cmp_o_f32_e64 s11, v20, v20
	v_cmp_o_f32_e64 s12, v21, v21
	v_cmp_o_f32_e64 s14, v22, v22
	v_cmp_o_f32_e64 s15, v23, v23
	v_add3_u32 v20, v20, v241, 0x7fff
	v_bfe_u32 v241, v21, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v28.l, 0x7fff, v20.h, s11
	v_add3_u32 v21, v21, v241, 0x7fff
	v_bfe_u32 v241, v22, 16, 1
	scratch_load_b32 v20, off, off offset:628 ; 4-byte Folded Reload
	v_add3_u32 v22, v22, v241, 0x7fff
	v_bfe_u32 v241, v23, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v29.l, 0x7fff, v22.h, s14
	v_add3_u32 v23, v23, v241, 0x7fff
	v_bfe_u32 v241, v24, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v241, v24, v241, 0x7fff
	v_bfe_u32 v24, v25, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v241.h, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v247, v25, v24, 0x7fff
	v_bfe_u32 v24, v26, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v30.h, s1
	v_cndmask_b16 v25.h, 0x7fff, v31.h, s2
	v_cndmask_b16 v30.h, 0x7fff, v247.h, s17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v248, v26, v24, 0x7fff
	v_bfe_u32 v24, v27, 16, 1
	v_cndmask_b16 v26.l, 0x7fff, v172.h, s3
	v_cndmask_b16 v26.h, 0x7fff, v238.h, s8
	v_cndmask_b16 v31.l, 0x7fff, v248.h, s18
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v249, v27, v24, 0x7fff
	v_cndmask_b16 v24.l, 0x7fff, v28.h, vcc_lo
	v_cndmask_b16 v24.h, 0x7fff, v29.h, s0
	v_cndmask_b16 v27.l, 0x7fff, v239.h, s9
	v_cndmask_b16 v27.h, 0x7fff, v240.h, s10
	v_cndmask_b16 v31.h, 0x7fff, v249.h, s19
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[247:250], off, off offset:216
	scratch_load_b128 v[251:254], off, off offset:232
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v28.h, 0x7fff, v21.h, s12
	v_cndmask_b16 v29.h, 0x7fff, v23.h, s15
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[247:254], v[24:31], v[65:72]
	.loc	1 716 21                        ; attention_backward.py:716:21
	scratch_load_b32 v24, off, off offset:632 ; 4-byte Folded Reload
	ds_load_b128 v[20:23], v20
	s_waitcnt vmcnt(0)
	ds_load_b128 v[24:27], v24
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v28, v20, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_cmp_o_f32_e64 s0, v21, v21
	v_cmp_o_f32_e64 s1, v22, v22
	v_cmp_o_f32_e64 s2, v23, v23
	v_add3_u32 v28, v20, v28, 0x7fff
	v_bfe_u32 v20, v21, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v29, v21, v20, 0x7fff
	v_bfe_u32 v20, v22, 16, 1
	v_add3_u32 v30, v22, v20, 0x7fff
	v_bfe_u32 v20, v23, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s3, v24, v24
	v_cmp_o_f32_e64 s8, v25, v25
	v_cmp_o_f32_e64 s9, v26, v26
	v_cmp_o_f32_e64 s10, v27, v27
	v_add3_u32 v31, v23, v20, 0x7fff
	v_bfe_u32 v20, v24, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v172, v24, v20, 0x7fff
	v_bfe_u32 v20, v25, 16, 1
	scratch_load_b32 v24, off, off offset:640 ; 4-byte Folded Reload
	v_add3_u32 v238, v25, v20, 0x7fff
	v_bfe_u32 v20, v26, 16, 1
	v_add3_u32 v239, v26, v20, 0x7fff
	v_bfe_u32 v20, v27, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v240, v27, v20, 0x7fff
	scratch_load_b32 v20, off, off offset:636 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[24:27], v24
	s_waitcnt vmcnt(0)
	ds_load_b128 v[20:23], v20
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s16, v24, v24
	v_cmp_o_f32_e64 s17, v25, v25
	v_cmp_o_f32_e64 s18, v26, v26
	v_cmp_o_f32_e64 s19, v27, v27
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v241, v20, 16, 1
	v_cmp_o_f32_e64 s11, v20, v20
	v_cmp_o_f32_e64 s12, v21, v21
	v_cmp_o_f32_e64 s14, v22, v22
	v_cmp_o_f32_e64 s15, v23, v23
	v_add3_u32 v20, v20, v241, 0x7fff
	v_bfe_u32 v241, v21, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v28.l, 0x7fff, v20.h, s11
	v_add3_u32 v21, v21, v241, 0x7fff
	v_bfe_u32 v241, v22, 16, 1
	scratch_load_b32 v20, off, off offset:644 ; 4-byte Folded Reload
	v_add3_u32 v22, v22, v241, 0x7fff
	v_bfe_u32 v241, v23, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v29.l, 0x7fff, v22.h, s14
	v_add3_u32 v23, v23, v241, 0x7fff
	v_bfe_u32 v241, v24, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v241, v24, v241, 0x7fff
	v_bfe_u32 v24, v25, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v241.h, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v247, v25, v24, 0x7fff
	v_bfe_u32 v24, v26, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v30.h, s1
	v_cndmask_b16 v25.h, 0x7fff, v31.h, s2
	v_cndmask_b16 v30.h, 0x7fff, v247.h, s17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v248, v26, v24, 0x7fff
	v_bfe_u32 v24, v27, 16, 1
	v_cndmask_b16 v26.l, 0x7fff, v172.h, s3
	v_cndmask_b16 v26.h, 0x7fff, v238.h, s8
	v_cndmask_b16 v31.l, 0x7fff, v248.h, s18
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v249, v27, v24, 0x7fff
	v_cndmask_b16 v24.l, 0x7fff, v28.h, vcc_lo
	v_cndmask_b16 v24.h, 0x7fff, v29.h, s0
	v_cndmask_b16 v27.l, 0x7fff, v239.h, s9
	v_cndmask_b16 v27.h, 0x7fff, v240.h, s10
	v_cndmask_b16 v31.h, 0x7fff, v249.h, s19
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[247:250], off, off offset:184
	scratch_load_b128 v[251:254], off, off offset:200
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v28.h, 0x7fff, v21.h, s12
	v_cndmask_b16 v29.h, 0x7fff, v23.h, s15
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[247:254], v[24:31], v[65:72]
	.loc	1 716 21                        ; attention_backward.py:716:21
	scratch_load_b32 v24, off, off offset:648 ; 4-byte Folded Reload
	ds_load_b128 v[20:23], v20
	s_waitcnt vmcnt(0)
	ds_load_b128 v[24:27], v24
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v28, v20, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_cmp_o_f32_e64 s0, v21, v21
	v_cmp_o_f32_e64 s1, v22, v22
	v_cmp_o_f32_e64 s2, v23, v23
	v_add3_u32 v28, v20, v28, 0x7fff
	v_bfe_u32 v20, v21, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v29, v21, v20, 0x7fff
	v_bfe_u32 v20, v22, 16, 1
	v_add3_u32 v30, v22, v20, 0x7fff
	v_bfe_u32 v20, v23, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s3, v24, v24
	v_cmp_o_f32_e64 s8, v25, v25
	v_cmp_o_f32_e64 s9, v26, v26
	v_cmp_o_f32_e64 s10, v27, v27
	v_add3_u32 v31, v23, v20, 0x7fff
	v_bfe_u32 v20, v24, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v172, v24, v20, 0x7fff
	v_bfe_u32 v20, v25, 16, 1
	scratch_load_b32 v24, off, off offset:656 ; 4-byte Folded Reload
	v_add3_u32 v238, v25, v20, 0x7fff
	v_bfe_u32 v20, v26, 16, 1
	v_add3_u32 v239, v26, v20, 0x7fff
	v_bfe_u32 v20, v27, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v240, v27, v20, 0x7fff
	scratch_load_b32 v20, off, off offset:652 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[24:27], v24
	s_waitcnt vmcnt(0)
	ds_load_b128 v[20:23], v20
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s16, v24, v24
	v_cmp_o_f32_e64 s17, v25, v25
	v_cmp_o_f32_e64 s18, v26, v26
	v_cmp_o_f32_e64 s19, v27, v27
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v241, v20, 16, 1
	v_cmp_o_f32_e64 s11, v20, v20
	v_cmp_o_f32_e64 s12, v21, v21
	v_cmp_o_f32_e64 s14, v22, v22
	v_cmp_o_f32_e64 s15, v23, v23
	v_add3_u32 v20, v20, v241, 0x7fff
	v_bfe_u32 v241, v21, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v28.l, 0x7fff, v20.h, s11
	v_add3_u32 v21, v21, v241, 0x7fff
	v_bfe_u32 v241, v22, 16, 1
	v_cmp_o_f32_e64 s11, v220, v220
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v22, v22, v241, 0x7fff
	v_bfe_u32 v241, v23, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v22.h, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v23, v23, v241, 0x7fff
	v_bfe_u32 v241, v24, 16, 1
	v_cmp_o_f32_e64 s14, v216, v216
	v_add3_u32 v241, v24, v241, 0x7fff
	v_bfe_u32 v24, v25, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v30.l, 0x7fff, v241.h, s16
	v_add3_u32 v247, v25, v24, 0x7fff
	v_bfe_u32 v24, v26, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v30.h, s1
	v_cndmask_b16 v25.h, 0x7fff, v31.h, s2
	v_cmp_o_f32_e64 s16, v212, v212
	v_cndmask_b16 v30.h, 0x7fff, v247.h, s17
	v_add3_u32 v248, v26, v24, 0x7fff
	v_bfe_u32 v24, v27, 16, 1
	v_cndmask_b16 v26.l, 0x7fff, v172.h, s3
	v_cndmask_b16 v26.h, 0x7fff, v238.h, s8
	v_cmp_o_f32_e64 s17, v210, v210
	v_cndmask_b16 v31.l, 0x7fff, v248.h, s18
	v_add3_u32 v249, v27, v24, 0x7fff
	v_cndmask_b16 v24.l, 0x7fff, v28.h, vcc_lo
	v_cndmask_b16 v24.h, 0x7fff, v29.h, s0
	v_cndmask_b16 v27.l, 0x7fff, v239.h, s9
	v_cndmask_b16 v27.h, 0x7fff, v240.h, s10
	v_cndmask_b16 v31.h, 0x7fff, v249.h, s19
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[247:250], off, off offset:148
	scratch_load_b128 v[251:254], off, off offset:164
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v28.h, 0x7fff, v21.h, s12
	v_cndmask_b16 v29.h, 0x7fff, v23.h, s15
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v1.h
	v_and_b16 v1.h, 1, v84.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s10, v222, v222
	v_cmp_o_f32_e64 s12, v218, v218
	v_cmp_o_f32_e64 s15, v214, v214
	v_cmp_o_f32_e64 s18, v208, v208
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e64 s0, 1, v1.h
	v_and_b16 v1.h, 1, v83.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s19, v206, v206
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e64 s1, 1, v1.h
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[247:254], v[24:31], v[65:72]
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v28, v73
	v_cvt_f32_i32_e32 v29, v74
	v_cvt_f32_i32_e32 v30, v75
	v_cvt_f32_i32_e32 v31, v76
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v26, v71, v171
	.loc	1 696 25                        ; attention_backward.py:696:25
	scratch_load_b32 v71, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v24, v69, v171
	.loc	1 640 41                        ; attention_backward.py:640:41
	v_mul_f32_e32 v69, s86, v19
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_dual_sub_f32 v25, v70, v171 :: v_dual_mul_f32 v70, 0x3fb8aa3b, v170
	v_sub_f32_e32 v21, v66, v171
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v66, v78
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v28, v69, v28
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v20, v65, v171
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v65, v77
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v23, v68, v171
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v68, v80
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v27, v72, v171
	.loc	1 696 25                        ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v70, v28, v71
	scratch_load_b32 v71, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v28, v69, v65
	.loc	1 696 35                        ; attention_backward.py:696:35
	v_mul_f32_e32 v65, 0x3fb8aa3b, v165
	.loc	1 696 25 is_stmt 0              ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v65, v28, v71
	scratch_load_b32 v71, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_dual_mul_f32 v28, v69, v29 :: v_dual_mul_f32 v29, 0x3fb8aa3b, v156
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 696 25                        ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v29, v28, v71 :: v_dual_sub_f32 v28, v70, v169
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v170, 0, v28, vcc_lo
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v20, v170, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v20, s56, v20
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v28, v20, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v20, v20, v28, 0x7fff
	.loc	1 703 34 is_stmt 1              ; attention_backward.py:703:34
	v_sub_f32_e32 v28, v65, v169
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v1.h, 0x7fff, v20.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	scratch_load_b32 v20, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v156, 0, v28, s0
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v24, v156, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v24, s56, v24
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v28, v24, 16, 1
	v_cmp_o_f32_e64 s0, v24, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v24, v24, v28, 0x7fff
	.loc	1 703 34 is_stmt 1              ; attention_backward.py:703:34
	v_sub_f32_e32 v28, v29, v169
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v3.h, 0x7fff, v24.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v28, v28
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v165, 0, v28, s1
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v22, v67, v171
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v67, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v21, v165, v21
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v65, v69, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v21, s56, v21
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v28, v21, 16, 1
	v_cmp_o_f32_e64 s1, v21, v21
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v21, v21, v28, 0x7fff
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v20, 0, v20
	ds_store_b16_d16_hi v20, v1
	ds_store_b16_d16_hi v20, v3 offset:512
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v20, v163, 0, 8
	.loc	1 721 37 is_stmt 1              ; attention_backward.py:721:37
	v_cndmask_b16 v1.h, 0x7fff, v21.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v21, 15, v20
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v3.h, v20.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v24, -16, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v3.h, 4, v20.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v21, v21, v24, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v24.l, v3.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e32 v24.h, v19.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v20.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v28, -16, v24
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v20, v24, v28, vcc_lo
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v24, v166, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e32 v28.h, v19.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v3.h, 4, v24.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v24.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v28.l, v3.h, 15
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v3.h, v24.l, 15
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v29, -16, v28
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v28, v28, v29, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e64 v29.h, v245.l
	v_mov_b16_e32 v29.l, v19.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.h
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_and_b16 v3.h, 1, v83.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v21, v21, v29
	v_dual_mul_f32 v20, v20, v29 :: v_dual_and_b32 v29, 15, v24
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v21, 0, v21, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v20, 0, v20, s6
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v24, -16, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s1, v21, v21
	v_cmp_o_f32_e64 s2, v20, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v24, v29, v24, vcc_lo
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v29.h, v244.l
	v_mov_b16_e32 v29.l, v19.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v28, v29, v28
	v_mul_f32_e32 v24, v29, v24
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v29.h, v19.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v28, 0, v28, s6
	v_cndmask_b32_e64 v24, 0, v24, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v29.l, v28.h
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s0, v24, v24
	v_and_b32_e32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v29, v28, v29, 0x7fff
	v_mov_b16_e32 v28.l, v24.h
	v_mov_b16_e32 v28.h, v19.l
	v_cndmask_b16 v29.h, 0x7fff, v29.h, vcc_lo
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v3.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v28, 1, v28
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_and_b16 v3.h, 1, v82.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v28, v24, v28, 0x7fff
	v_bfe_u32 v24, v21, 16, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v29.l, 0x7fff, v28.h, s0
	.loc	1 696 25                        ; attention_backward.py:696:25
	scratch_load_b32 v28, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v24, v21, v24, 0x7fff
	v_bfe_u32 v21, v20, 16, 1
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e64 s0, 1, v3.h
	v_and_b16 v3.h, 1, v82.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v21, v20, v21, 0x7fff
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v20, v69, v30
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v21.l, 0x7fff, v24.h, s1
	.loc	1 696 35                        ; attention_backward.py:696:35
	v_mul_f32_e32 v24, 0x3fb8aa3b, v168
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v30, v69, v31
	v_mul_f32_e32 v31, v69, v66
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e64 s1, 1, v3.h
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v66, v69, v68
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_and_b16 v3.h, 1, v81.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e64 s2, 1, v3.h
	v_and_b16 v3.h, 1, v81.l
	v_cmp_eq_u16_e64 s3, 1, v3.h
	.loc	1 696 25                        ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v24, v20, v28
	scratch_load_b32 v28, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 696 35 is_stmt 0              ; attention_backward.py:696:35
	v_mul_f32_e32 v20, 0x3fb8aa3b, v157
	.loc	1 732 54 is_stmt 1              ; attention_backward.py:732:54
	v_mov_b16_e64 v157.l, v19.l
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v24, v24, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v24, v24
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e32 v163, 0, v24, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v22, v163, v22
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v22, s56, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v24, v22, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_add3_u32 v24, v22, v24, 0x7fff
	.loc	1 696 25 is_stmt 1              ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v20, v30, v28
	scratch_load_b32 v30, off, off offset:352 ; 4-byte Folded Reload
	.loc	1 696 35 is_stmt 0              ; attention_backward.py:696:35
	v_mul_f32_e32 v28, 0x3fb8aa3b, v167
	.loc	1 703 34 is_stmt 1              ; attention_backward.py:703:34
	v_sub_f32_e32 v20, v20, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v20, v20
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v166, 0, v20, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v20, v166, v23
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v20, s56, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v22, v20, 16, 1
	v_cmp_o_f32_e64 s0, v20, v20
	v_add3_u32 v22, v20, v22, 0x7fff
	.loc	1 696 25 is_stmt 1              ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v28, v31, v30
	scratch_load_b32 v31, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 696 35 is_stmt 0              ; attention_backward.py:696:35
	v_mul_f32_e32 v30, 0x3fb8aa3b, v243
	.loc	1 703 34 is_stmt 1              ; attention_backward.py:703:34
	v_sub_f32_e32 v28, v28, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v20, v28
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v244, 0, v20, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v20, v244, v25
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v20, s56, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v23, v20, 16, 1
	v_cmp_o_f32_e64 s1, v20, v20
	v_add3_u32 v23, v20, v23, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b16 v3.h, 0x7fff, v23.h, s1
	.loc	1 696 25 is_stmt 1              ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v30, v65, v31
	scratch_load_b32 v31, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v30, v30, v169
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v20, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v245, 0, v20, s2
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v20, v245, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v20, s56, v20
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v25, v20, 16, 1
	v_cmp_o_f32_e64 s2, v20, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v25, v20, v25, 0x7fff
	.loc	1 696 25 is_stmt 1              ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v66, v31
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v31.l, v19.l
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v17, v17, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v17, v17
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v17, 0, v17, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v20, v17, v27
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v20, s56, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v26, v20, 16, 1
	v_cmp_o_f32_e64 s3, v20, v20
	v_add3_u32 v26, v20, v26, 0x7fff
	scratch_load_b32 v20, off, off offset:660 ; 4-byte Folded Reload
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v20, v1
	ds_store_b16_d16_hi v20, v3 offset:512
	scratch_load_b32 v20, off, off offset:664 ; 4-byte Folded Reload
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v1.h, 0x7fff, v24.h, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v25.h, s2
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v20, v1
	ds_store_b16_d16_hi v20, v3 offset:512
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v20, 15, v18
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v3.h, v18.l, 15
	.loc	1 721 37 is_stmt 1              ; attention_backward.py:721:37
	v_cndmask_b16 v1.h, 0x7fff, v22.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v22, -16, v20
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v20, v20, v22, vcc_lo
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v22, v164, 0, 8
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v23, 15, v22
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v3.h, v22.l, 15
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_mul_f32_e32 v20, v20, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v24, -16, v23
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v3.h, 4, v18.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v20, 0, v20, s5
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v23, v23, v24, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v24.l, v3.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e32 v24.h, v19.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v18.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v3.h, 4, v22.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v25, -16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v18, v24, v25, vcc_lo
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v24.l, v3.h, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v22.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v18, v18
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v25, -16, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v4, v18, v4
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v22, v24, v25, vcc_lo
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v18.h, v1.l
	v_mov_b16_e32 v18.l, v19.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_cndmask_b32_e64 v4, 0, v4, s6
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v22, v22
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v1.l, 0x7fff, v26.h, s3
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v23, v23, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s0, v4, v4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v18, v22, v18
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v22, v20, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v22, v20, v22, 0x7fff
	v_bfe_u32 v20, v4, 16, 1
	v_add3_u32 v20, v4, v20, 0x7fff
	v_cndmask_b32_e64 v4, 0, v23, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v23, v4, 16, 1
	v_cmp_o_f32_e64 s1, v4, v4
	v_add3_u32 v23, v4, v23, 0x7fff
	v_cndmask_b32_e64 v4, 0, v18, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v18, v4, 16, 1
	v_cmp_o_f32_e64 s2, v4, v4
	v_add3_u32 v18, v4, v18, 0x7fff
	scratch_load_b32 v4, off, off offset:668 ; 4-byte Folded Reload
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v4, v1
	ds_store_b16 v4, v1 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v4.l, 0x7fff, v22.h, vcc_lo
	v_cndmask_b16 v4.h, 0x7fff, v20.h, s0
	v_cndmask_b16 v18.l, 0x7fff, v23.h, s1
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s2
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, 0, v1
	ds_load_b128 v[74:77], v1
	scratch_load_b32 v1, off, off offset:672 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[78:81], v1
	scratch_load_b32 v1, off, off offset:676 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[66:69], v1
	scratch_load_b32 v1, off, off offset:680 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[70:73], v1
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v1, v161, 0, 8
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b32 v15, v29, v21 offset1:1
	ds_store_2addr_stride64_b32 v15, v4, v18 offset0:2 offset1:3
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v20.l, v1.l
	.loc	1 732 54 is_stmt 1              ; attention_backward.py:732:54
	v_mov_b16_e64 v161.l, v19.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v21, 15, v20
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v1.l, v20.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v22, -16, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v1.l
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v1, v162, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e32 v1.h, v19.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v162.l, v19.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v21, v21, v22, vcc_lo
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v22.l, v1.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v21, v21
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v1.l, v22.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v23, 15, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_mul_f32_e32 v21, v21, v14
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v1.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v1.l, 4, v20.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v24, -16, v23
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v1.l, v1.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v23, v23, v24, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v20.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v24, -16, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v20, v1, v24, vcc_lo
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v1.l, 4, v22.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v22.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v1.l, v1.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v14, v20, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v24, -16, v1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v20, v23
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v14, 0, v14, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v1, v1, v24, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v20, v20, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s0, v14, v14
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v1, v1, v16
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v16, 0, v21, s5
	v_cndmask_b32_e64 v1, 0, v1, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_bfe_u32 v21, v16, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_cmp_o_f32_e64 s2, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v21, v16, v21, 0x7fff
	v_bfe_u32 v16, v14, 16, 1
	v_add3_u32 v16, v14, v16, 0x7fff
	v_cndmask_b32_e64 v14, 0, v20, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v16.l, 0x7fff, v21.h, vcc_lo
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v20, v14, 16, 1
	v_cmp_o_f32_e64 s1, v14, v14
	v_add3_u32 v20, v14, v20, 0x7fff
	v_bfe_u32 v14, v1, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v14, v1, v14, 0x7fff
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v1, v13, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v14.l, 0x7fff, v20.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s2
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v4.l, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v1.l, v4.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v13, 15, v4
	.loc	1 650 42 is_stmt 1              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v1.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v1, v3, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v18, -16, v13
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e32 v1.h, v19.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v3.l, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 33 is_stmt 1              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v13, v13, v18, vcc_lo
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v1.l, v3.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v18, 15, v3
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e64 v3.h, v159.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v159.l, v19.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v1.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v1.l, 4, v4.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v20, -16, v18
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v1.l, v1.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v18, v18, v20, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v4.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v20, -16, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v18, v18
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v4, v1, v20, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v1.l, 4, v3.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v3.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v3.l, v19.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v1.l, v1.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v13, v13, v3
	v_mul_f32_e32 v3, v4, v3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v20, -16, v1
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v4.h, v160.l
	v_mov_b16_e32 v4.l, v19.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v160.l, v19.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v3, 0, v3, s6
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v1, v1, v20, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v18, v18, v4
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s0, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v1, v1
	v_mul_f32_e32 v1, v1, v4
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v4, 0, v13, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v1, 0, v1, s6
	v_bfe_u32 v13, v4, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s2, v1, v1
	v_add3_u32 v13, v4, v13, 0x7fff
	v_bfe_u32 v4, v3, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v4, v3, v4, 0x7fff
	v_cndmask_b32_e64 v3, 0, v18, s5
	v_bfe_u32 v18, v3, 16, 1
	v_cmp_o_f32_e64 s1, v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v18, v3, v18, 0x7fff
	v_bfe_u32 v3, v1, 16, 1
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v13.h, vcc_lo
	v_cndmask_b16 v1.h, 0x7fff, v4.h, s0
	v_cndmask_b16 v3.l, 0x7fff, v18.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s2
	ds_store_2addr_stride64_b32 v15, v16, v14 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v15, v1, v3 offset0:6 offset1:7
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v1, v12, 0, 8
	v_mov_b16_e32 v3.l, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v1.l, v3.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v4, 15, v3
	.loc	1 650 42 is_stmt 1              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v1.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v1, v11, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v12, -16, v4
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e32 v1.h, v19.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v11.l, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 33 is_stmt 1              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v4, v4, v12, vcc_lo
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v1.l, v11.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v12, 15, v11
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e64 v11.h, v255.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v1.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v1.l, 4, v3.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v13, -16, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v1.l, v1.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v12, v12, v13, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v3.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v13, -16, v1
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v3, v1, v13, vcc_lo
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v1.l, 4, v11.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v11.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v11.l, v19.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v3, v3
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v1.l, v1.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v4, v4, v11
	v_mul_f32_e32 v3, v3, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v13, -16, v1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v11, v12
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v4, 0, v4, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v3, 0, v3, s6
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v1, v1, v13, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v11, v11, v10
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s0, v3, v3
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v1, v1, v10
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v10, v4, 16, 1
	v_cndmask_b32_e64 v1, 0, v1, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v10, v4, v10, 0x7fff
	v_bfe_u32 v4, v3, 16, 1
	v_cmp_o_f32_e64 s2, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v4, v3, v4, 0x7fff
	v_cndmask_b32_e64 v3, 0, v11, s5
	v_cndmask_b16 v4.l, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v11, v3, 16, 1
	v_cmp_o_f32_e64 s1, v3, v3
	v_add3_u32 v11, v3, v11, 0x7fff
	v_bfe_u32 v3, v1, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v1, v7, 0, 8
	v_mov_b16_e32 v3.l, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v1.l, v3.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v7, 15, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 42 is_stmt 1              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v1.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v1, v6, 0, 8
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v10, -16, v7
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e32 v1.h, v19.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v6.l, v1.l
	.loc	1 650 33 is_stmt 1              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v7, v7, v10, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v1.l, v6.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v10, 15, v6
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v6.h, v9.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v7, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v1.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v1.l, 4, v3.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v12, -16, v10
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v1.l, v1.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v10, v10, v12, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v3.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v12, -16, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v12, v1, v12, vcc_lo
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v1.l, 4, v6.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v6.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v6.l, v19.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v9, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v1.l, v1.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v7, v7, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v6, v9, v6
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v13, -16, v1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v9, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v7, 0, v7, s5
	v_cndmask_b32_e64 v6, 0, v6, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v1, v1, v13, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v9, v9, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_cmp_o_f32_e64 s0, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v1, v1
	v_mul_f32_e32 v1, v1, v8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v8, v7, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v1, 0, v1, s6
	v_add3_u32 v8, v7, v8, 0x7fff
	v_bfe_u32 v7, v6, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s8, v1, v1
	v_cndmask_b16 v3.l, 0x7fff, v8.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v7, v6, v7, 0x7fff
	v_cndmask_b32_e64 v6, 0, v9, s5
	v_bfe_u32 v9, v6, 16, 1
	v_cmp_o_f32_e64 s3, v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v9, v6, v9, 0x7fff
	v_bfe_u32 v6, v1, 16, 1
	v_add3_u32 v6, v1, v6, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v11.h, s1
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s2
	v_cndmask_b16 v3.h, 0x7fff, v7.h, s0
	v_cndmask_b16 v6.l, 0x7fff, v9.h, s3
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s8
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s8, v17, v17
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_store_2addr_stride64_b32 v15, v4, v1 offset0:8 offset1:9
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v1, v5, 0, 8
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v245, v245
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_store_2addr_stride64_b32 v15, v3, v6 offset0:10 offset1:11
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v4.l, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v5, 15, v4
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v1.l, v4.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v7, -16, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v1.l
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v1, v158, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e32 v1.h, v19.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v158.l, v19.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v5, v5, v7, vcc_lo
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v7.l, v1.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v5, v5
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v1.l, v7.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v8, 15, v7
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e64 v7.h, v154.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v1.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v1.l, 4, v4.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v9, -16, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v1.l, v1.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v8, v8, v9, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v4.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v9, -16, v1
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v4, v1, v9, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v1.l, 4, v7.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v7.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v7.l, v19.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v1.l, v1.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v5, v5, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v4, v4, v7
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v9, -16, v1
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v7.h, v89.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v5, 0, v5, s5
	v_cndmask_b32_e64 v4, 0, v4, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_dual_cndmask_b32 v1, v1, v9 :: v_dual_mul_f32 v8, v8, v7
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s0, v4, v4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v1, v1, v7
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v7, v5, 16, 1
	v_cndmask_b32_e64 v1, 0, v1, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v7, v5, v7, 0x7fff
	v_bfe_u32 v5, v4, 16, 1
	v_cmp_o_f32_e64 s2, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v5, v4, v5, 0x7fff
	v_cndmask_b32_e64 v4, 0, v8, s5
	v_cndmask_b16 v5.l, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v8, v4, 16, 1
	v_cmp_o_f32_e64 s1, v4, v4
	v_add3_u32 v8, v4, v8, 0x7fff
	v_bfe_u32 v4, v1, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v4, v1, v4, 0x7fff
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v1, v88, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v4.l, 0x7fff, v8.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s2
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v3.l, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v6, 15, v3
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v1.l, v3.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v7, -16, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v1.l
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v1, v87, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e32 v1.h, v19.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v6, v6, v7, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v7.l, v1.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v1.l, v7.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v8, 15, v7
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v7.h, v86.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v1.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v1.l, 4, v3.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v9, -16, v8
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v1.l, v1.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v8, v8, v9, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v3.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v9, -16, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v3, v1, v9, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v1.l, 4, v7.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v7.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v7.l, v19.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v3, v3
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v1.l, v1.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v6, v6, v7
	v_mul_f32_e32 v3, v3, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v9, -16, v1
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v7.h, v85.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v6, 0, v6, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v3, 0, v3, s6
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_dual_cndmask_b32 v1, v1, v9 :: v_dual_mul_f32 v8, v8, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_cmp_o_f32_e64 s0, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v1, v1
	v_mul_f32_e32 v1, v1, v7
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v7, v6, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v1, 0, v1, s6
	v_add3_u32 v7, v6, v7, 0x7fff
	v_bfe_u32 v6, v3, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v1, v1
	v_add3_u32 v6, v3, v6, 0x7fff
	v_cndmask_b32_e64 v3, 0, v8, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v8, v3, 16, 1
	v_cmp_o_f32_e64 s1, v3, v3
	v_add3_u32 v8, v3, v8, 0x7fff
	v_bfe_u32 v3, v1, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v1.h, 0x7fff, v6.h, s0
	v_cndmask_b16 v3.l, 0x7fff, v8.h, s1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v170, v170
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s2
	ds_store_2addr_stride64_b32 v15, v5, v4 offset0:12 offset1:13
	ds_store_2addr_stride64_b32 v15, v1, v3 offset0:14 offset1:15
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v7, v0 offset:512
	ds_load_u16_d16 v8, v0 offset:768
	ds_load_u16_d16 v9, v0 offset:1024
	ds_load_u16_d16 v12, v0 offset:1792
	ds_load_u16_d16 v10, v0 offset:1280
	ds_load_u16_d16 v27, v0 offset:1088
	ds_load_u16_d16 v26, v0 offset:832
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16_hi v27, v0 offset:1216
	ds_load_u16_d16 v6, v0 offset:256
	ds_load_u16_d16 v5, v0
	ds_load_u16_d16 v11, v0 offset:1536
	ds_load_u16_d16_hi v7, v0 offset:640
	ds_load_u16_d16_hi v8, v0 offset:896
	ds_load_u16_d16_hi v9, v0 offset:1152
	ds_load_u16_d16 v28, v0 offset:1344
	ds_load_u16_d16 v86, v0 offset:3072
	ds_load_u16_d16 v249, v0 offset:2624
	ds_load_u16_d16 v248, v0 offset:2368
	ds_load_u16_d16 v82, v0 offset:2048
	ds_load_u16_d16 v83, v0 offset:2304
	ds_load_u16_d16 v84, v0 offset:2560
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v1, v170, 16, 1
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v249, v0 offset:2752
	ds_load_u16_d16_hi v11, v0 offset:1664
	ds_load_u16_d16_hi v12, v0 offset:1920
	ds_load_u16_d16_hi v10, v0 offset:1408
	ds_load_u16_d16 v23, v0 offset:64
	ds_load_u16_d16_hi v6, v0 offset:384
	ds_load_u16_d16 v25, v0 offset:576
	ds_load_u16_d16 v24, v0 offset:320
	ds_load_u16_d16_hi v5, v0 offset:128
	ds_load_u16_d16 v29, v0 offset:1600
	ds_load_u16_d16 v247, v0 offset:2112
	ds_load_u16_d16 v30, v0 offset:1856
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v1, v170, v1, 0x7fff
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_load_u16_d16_hi v28, v0 offset:1472
	s_waitcnt lgkmcnt(3)
	ds_load_u16_d16_hi v29, v0 offset:1728
	s_waitcnt lgkmcnt(2)
	ds_load_u16_d16_hi v30, v0 offset:1984
	ds_load_u16_d16_hi v82, v0 offset:2176
	ds_load_u16_d16 v250, v0 offset:2880
	ds_load_u16_d16_hi v248, v0 offset:2496
	ds_load_u16_d16_hi v247, v0 offset:2240
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v19.h, 0x7fff, v1.h, vcc_lo
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_load_u16_d16 v85, v0 offset:2816
	ds_load_u16_d16 v89, v0 offset:3840
	ds_load_u16_d16 v87, v0 offset:3328
	ds_load_u16_d16 v251, v0 offset:3136
	ds_load_u16_d16 v88, v0 offset:3584
	ds_load_u16_d16 v254, v0 offset:3904
	ds_load_u16_d16 v253, v0 offset:3648
	ds_load_u16_d16 v252, v0 offset:3392
	ds_load_u16_d16_hi v83, v0 offset:2432
	ds_load_u16_d16_hi v84, v0 offset:2688
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s0, v165, v165
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[57:64], v[5:12], v[74:81], v[57:64]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v8, v245, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v1, v170, v19
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s1, v163, v163
	v_bfe_u32 v6, v156, 16, 1
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_load_u16_d16_hi v23, v0 offset:192
	ds_load_u16_d16_hi v26, v0 offset:960
	ds_load_u16_d16_hi v25, v0 offset:704
	ds_load_u16_d16_hi v24, v0 offset:448
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v11, v245, v8, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v3, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v8, v17, 16, 1
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v85, v0 offset:2944
	ds_load_u16_d16_hi v86, v0 offset:3200
	ds_load_u16_d16_hi v250, v0 offset:3008
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v87, v0 offset:3456
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v251, v0 offset:3264
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v88, v0 offset:3712
	ds_load_u16_d16_hi v89, v0 offset:3968
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v254, v0 offset:4032
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v253, v0 offset:3776
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v252, v0 offset:3520
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v4, v1, v3, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v1, v165, 16, 1
	v_bfe_u32 v3, v163, 16, 1
	v_add3_u32 v6, v156, v6, 0x7fff
	v_add3_u32 v12, v17, v8, 0x7fff
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v1, v165, v1, 0x7fff
	v_add3_u32 v3, v163, v3, 0x7fff
	s_barrier
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v13, off, off offset:688
	scratch_load_b32 v14, off, off offset:692
	scratch_load_b32 v15, off, off offset:696
	scratch_load_b32 v16, off, off offset:700
	scratch_load_b32 v18, off, off offset:704
	scratch_load_b32 v20, off, off offset:708
	v_cndmask_b16 v5.h, 0x7fff, v1.h, s0
	v_bfe_u32 v1, v166, 16, 1
	v_cmp_o_f32_e64 s0, v166, v166
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s1
	v_cmp_o_f32_e64 s1, v156, v156
	v_bfe_u32 v7, v244, 16, 1
	v_add3_u32 v1, v166, v1, 0x7fff
	v_cmp_o_f32_e64 s2, v244, v244
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v3.l, 0x7fff, v4.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v9.h, 0x7fff, v6.h, s1
	v_cndmask_b16 v6.h, 0x7fff, v12.h, s8
	v_cndmask_b16 v10.h, 0x7fff, v1.h, s0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:328
	scratch_load_b32 v12, off, off offset:684
	v_add3_u32 v7, v244, v7, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v4, v235, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v235, v235
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[49:56], v[23:30], v[74:81], v[49:56]
	v_wmma_f32_16x16x16_bf16 v[57:64], v[82:89], v[66:73], v[57:64]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v8.h, 0x7fff, v7.h, s2
	v_cndmask_b16 v7.h, 0x7fff, v11.h, s3
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v4, v235, v4, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[49:56], v[247:254], v[66:73], v[49:56]
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v5.l, v19.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s0, v231, v231
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v10.l, v19.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v24.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v227, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v227, v227
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v9.l, v19.l
	v_mov_b16_e32 v8.l, v19.l
	v_mov_b16_e32 v7.l, v19.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v4, v227, v4, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v6.l, v19.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v25.l, v19.l
	v_mov_b16_e32 v24.l, v19.l
	v_mov_b16_e32 v26.l, v19.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v26.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v223, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v223, v223
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v27.l, v19.l
	v_mov_b16_e32 v28.l, v19.l
	v_mov_b16_e32 v29.l, v19.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v4, v223, v4, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v30.l, v19.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v22, v131, v26
	v_sub_f32_e32 v131, v135, v24
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v89.l, v19.l
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v27.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v219, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v219, v219
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v88.l, v19.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v135, v200, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v4, v219, v4, 0x7fff
	v_add3_u32 v135, v200, v135, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v135.l, v19.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v28.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v215, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v215, v215
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v127, v127, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v4, v215, v4, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v211, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v211, v211
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v129, v129, v29
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v4, v211, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v30.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v207, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v207, v207
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v123, v123, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v4, v207, v4, 0x7fff
	v_cndmask_b16 v31.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v203, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v203, v203
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v125, v125, v31
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v4, v203, v4, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v11, 0, v1
	ds_store_b16_d16_hi v11, v19
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v12, v5
	ds_store_b16_d16_hi v13, v3
	ds_store_b16_d16_hi v14, v10
	ds_store_b16_d16_hi v15, v9
	ds_store_b16_d16_hi v16, v8
	ds_store_b16_d16_hi v18, v7
	ds_store_b16_d16_hi v20, v6
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v154, off, off offset:712
	scratch_load_b32 v169, off, off offset:728
	scratch_load_b32 v164, off, off offset:716
	scratch_load_b32 v167, off, off offset:720
	scratch_load_b32 v172, off, off offset:732
	scratch_load_b32 v241, off, off offset:736
	scratch_load_b32 v171, off, off offset:724
	scratch_load_b32 v1, off, off offset:320
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v9, v156, v9
	v_dual_sub_f32 v8, v244, v8 :: v_dual_sub_f32 v7, v245, v7
	v_sub_f32_e32 v6, v17, v6
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v156.l, v19.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s2, v9, v9
	v_cmp_o_f32_e64 s3, v8, v8
	v_cmp_o_f32_e64 s8, v7, v7
	v_cmp_o_f32_e64 s9, v6, v6
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt vmcnt(7)
	ds_load_b64 v[69:70], v154
	s_waitcnt vmcnt(6)
	ds_load_b64 v[71:72], v169
	s_waitcnt vmcnt(3)
	ds_load_b64 v[66:67], v172
	s_waitcnt vmcnt(2)
	ds_load_b64 v[84:85], v241
	s_waitcnt vmcnt(1)
	ds_load_b64 v[86:87], v171
	ds_load_b64 v[76:77], v164
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, 0, v1
	ds_load_b64 v[82:83], v167
	ds_load_b64 v[79:80], v1
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v11, v3
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v11, v231, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v3.l, v19.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v74.h, v69.l
	v_mov_b16_e32 v78.h, v70.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v11, v231, v11, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v3, v163, v3
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v81.l, v67.l
	v_mov_b16_e32 v81.h, v85.l
	v_mov_b16_e32 v85.l, v67.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v25.h, 0x7fff, v11.h, s0
	v_bfe_u32 v11, v199, 16, 1
	v_cmp_o_f32_e64 s0, v199, v199
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
	v_cndmask_b16 v82.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v195, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v84.l, v66.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v195, v195
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v74.l, v79.l
	v_mov_b16_e32 v79.l, v77.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v4, v195, v4, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v77.l, v66.l
	v_dual_mov_b32 v66, v69 :: v_dual_mov_b32 v69, v84
	v_mov_b32_e32 v73, v85
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v84.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v191, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v191, v191
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v76.h, v71.l
	v_mov_b16_e32 v71.l, v86.h
	v_mov_b16_e32 v70.l, v80.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v4, v191, v4, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v80.h, v72.l
	v_mov_b16_e32 v72.l, v87.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v11, v199, v11, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v68, v71
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v85.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v187, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v187, v187
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v71, v83
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v83.h, 0x7fff, v11.h, s0
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s0, v3, v3
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v4, v187, v4, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v137, v25
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v137, v198, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v78.l, v80.l
	v_mov_b16_e32 v76.l, v86.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v86.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v183, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v183, v183
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v80.l, v87.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v82.l, v19.l
	v_mov_b16_e32 v83.l, v19.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v4, v183, v4, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v84.l, v19.l
	v_mov_b16_e32 v85.l, v19.l
	v_mov_b16_e32 v86.l, v19.l
	v_mov_b16_e32 v87.l, v19.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v87.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v179, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v179, v179
	v_add3_u32 v137, v198, v137, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v17, v103, v84
	v_sub_f32_e32 v23, v91, v82
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v4, v179, v4, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v163.l, v19.l
	v_mov_b16_e64 v137.l, v19.l
	v_mov_b16_e32 v11.l, v19.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v88.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v175, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v175, v175
	v_add3_u32 v4, v175, v4, 0x7fff
	v_bfe_u32 v175, v192, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v89.h, 0x7fff, v4.h, vcc_lo
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v4, v165, v5 :: v_dual_sub_f32 v5, v166, v10
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v183, v192, v175, 0x7fff
	v_bfe_u32 v175, v190, 16, 1
	v_bfe_u32 v166, v194, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v10, v4, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_cmp_o_f32_e64 s1, v5, v5
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v183.l, v19.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v166, v194, v166, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v10, v4, v10, 0x7fff
	v_bfe_u32 v4, v3, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v10.l, v19.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v4, v3, v4, 0x7fff
	v_bfe_u32 v3, v5, 16, 1
	v_add3_u32 v3, v5, v3, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v5, v9, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v237, v237
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v12, v3
	v_cndmask_b16 v3.l, 0x7fff, v4.h, s0
	v_add3_u32 v5, v9, v5, 0x7fff
	v_bfe_u32 v9, v8, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v4, v229, 16, 1
	v_cmp_o_f32_e64 s0, v229, v229
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v13, v3
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s1
	v_add3_u32 v9, v8, v9, 0x7fff
	v_bfe_u32 v8, v7, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s1, v225, v225
	v_add3_u32 v4, v229, v4, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v14, v3
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s2
	v_add3_u32 v8, v7, v8, 0x7fff
	v_bfe_u32 v7, v6, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v5, v225, 16, 1
	v_cmp_o_f32_e64 s2, v221, v221
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v15, v3
	v_cndmask_b16 v3.l, 0x7fff, v9.h, s3
	v_add3_u32 v7, v6, v7, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s3, v217, v217
	v_add3_u32 v5, v225, v5, 0x7fff
	v_bfe_u32 v9, v181, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v16, v3
	v_cndmask_b16 v3.l, 0x7fff, v8.h, s8
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v6, v221, 16, 1
	v_cndmask_b16 v160.h, 0x7fff, v5.h, s1
	v_bfe_u32 v5, v205, 16, 1
	v_add3_u32 v12, v181, v9, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v18, v3
	v_cndmask_b16 v3.l, 0x7fff, v7.h, s9
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v7, v217, 16, 1
	v_bfe_u32 v9, v177, 16, 1
	v_add3_u32 v5, v205, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v205, v205
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v20, v3
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v3, v237, 16, 1
	v_add3_u32 v7, v217, v7, 0x7fff
	v_bfe_u32 v8, v185, 16, 1
	v_add3_u32 v13, v177, v9, 0x7fff
	v_add3_u32 v6, v221, v6, 0x7fff
	v_add3_u32 v3, v237, v3, 0x7fff
	v_cndmask_b16 v158.h, 0x7fff, v7.h, s3
	v_bfe_u32 v7, v197, 16, 1
	v_cmp_o_f32_e64 s3, v197, v197
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s1
	v_cndmask_b16 v156.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v233, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v233, v233
	v_add3_u32 v7, v197, v7, 0x7fff
	v_add3_u32 v8, v185, v8, 0x7fff
	v_cmp_o_f32_e64 s1, v185, v185
	v_add3_u32 v3, v233, v3, 0x7fff
	v_cndmask_b16 v157.h, 0x7fff, v6.h, s2
	v_bfe_u32 v6, v201, 16, 1
	v_cndmask_b16 v159.h, 0x7fff, v4.h, s0
	v_bfe_u32 v4, v209, 16, 1
	v_cndmask_b16 v161.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v213, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v213, v213
	v_add3_u32 v6, v201, v6, 0x7fff
	v_cmp_o_f32_e64 s2, v201, v201
	v_add3_u32 v4, v209, v4, 0x7fff
	v_add3_u32 v3, v213, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v209, v209
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_waitcnt lgkmcnt(0)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s2
	v_cmp_o_f32_e64 s2, v181, v181
	v_cndmask_b16 v162.h, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v7.h, s3
	v_cmp_o_f32_e64 s3, v177, v177
	v_add3_u32 v177, v190, v175, 0x7fff
	v_bfe_u32 v175, v188, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_barrier
	ds_load_b64 v[169:170], v169
	ds_load_b64 v[239:240], v172
	ds_load_b64 v[243:244], v241
	ds_load_b64 v[171:172], v171
	ds_load_b64 v[20:21], v1
	ds_load_b64 v[164:165], v164
	ds_load_b64 v[237:238], v167
	ds_load_b64 v[167:168], v154
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v163.h, 0x7fff, v4.h, s0
	v_add3_u32 v185, v188, v175, 0x7fff
	v_bfe_u32 v175, v186, 16, 1
	v_bfe_u32 v4, v193, 16, 1
	v_bfe_u32 v7, v189, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v193, v193
	v_cmp_o_f32_e64 s0, v189, v189
	v_add3_u32 v179, v186, v175, 0x7fff
	v_bfe_u32 v175, v184, 16, 1
	v_add3_u32 v4, v193, v4, 0x7fff
	v_add3_u32 v7, v189, v7, 0x7fff
	v_bfe_u32 v1, v236, 16, 1
	v_cndmask_b16 v10.h, 0x7fff, v8.h, s1
	v_add3_u32 v186, v184, v175, 0x7fff
	v_bfe_u32 v175, v182, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v4.h, vcc_lo
	v_cndmask_b16 v9.h, 0x7fff, v7.h, s0
	v_cndmask_b16 v7.h, 0x7fff, v12.h, s2
	v_cndmask_b16 v8.h, 0x7fff, v13.h, s3
	v_add3_u32 v181, v182, v175, 0x7fff
	v_bfe_u32 v175, v180, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v31.l, v163.h
	v_mov_b16_e64 v30.l, v162.h
	v_mov_b16_e64 v29.l, v158.h
	v_mov_b16_e64 v28.l, v157.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v182, v180, v175, 0x7fff
	v_bfe_u32 v175, v178, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v4, v133, v27
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v27.l, v160.h
	v_mov_b16_e64 v26.l, v159.h
	v_mov_b16_e64 v25.l, v161.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v180, v178, v175, 0x7fff
	v_bfe_u32 v175, v176, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v24.l, v156.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v1, v236, v1, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v12, v97, v89
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v89.l, v8.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v184, v176, v175, 0x7fff
	v_bfe_u32 v175, v174, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[24:31], v[74:81], v[33:40]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v13, v95, v88
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v88.l, v7.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v15, v99, v86
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v86.l, v9.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v16, v105, v85
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v85.l, v11.h
	v_mov_b16_e32 v84.l, v3.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v93, v83
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v83.l, v6.h
	v_mov_b16_e32 v82.l, v5.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(7)
	v_mov_b16_e64 v249.h, v169.l
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e64 v252.h, v238.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v187, v174, v175, 0x7fff
	v_cndmask_b16 v175.h, 0x7fff, v137.h, s23
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v175.l, v19.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v238.l, v165.h
	v_mov_b16_e64 v169.l, v171.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v1.l, v19.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v14, v101, v87
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e32 v87.l, v10.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v247.l, v20.l
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e64 v247.h, v167.l
	v_mov_b16_e64 v248.l, v164.l
	v_mov_b16_e64 v248.h, v237.l
	v_mov_b16_e64 v249.l, v171.l
	v_mov_b16_e64 v250.l, v239.l
	v_mov_b16_e64 v250.h, v243.l
	v_mov_b16_e64 v251.l, v21.l
	v_mov_b16_e64 v251.h, v168.l
	v_mov_b16_e64 v252.l, v165.l
	v_mov_b16_e64 v253.l, v172.l
	v_mov_b16_e64 v253.h, v170.l
	v_mov_b16_e64 v254.l, v240.l
	v_mov_b16_e64 v254.h, v244.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v176.h, 0x7fff, v166.h, s25
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v121, v121, v175
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_dual_mov_b32 v166, v169 :: v_dual_mov_b32 v169, v238
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[82:89], v[66:73], v[33:40]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v236, v236
	v_cmp_o_f32_e64 s0, v234, v234
	v_cmp_o_f32_e64 s1, v232, v232
	v_cmp_o_f32_e64 s2, v230, v230
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[24:31], v[247:254], v[33:40]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v25, v232, 16, 1
	v_bfe_u32 v26, v228, 16, 1
	v_bfe_u32 v27, v224, 16, 1
	v_bfe_u32 v28, v220, 16, 1
	v_bfe_u32 v29, v216, 16, 1
	v_bfe_u32 v30, v212, 16, 1
	v_bfe_u32 v31, v208, 16, 1
	v_bfe_u32 v24, v234, 16, 1
	v_add3_u32 v91, v232, v25, 0x7fff
	v_bfe_u32 v25, v230, 16, 1
	v_add3_u32 v93, v228, v26, 0x7fff
	v_bfe_u32 v26, v226, 16, 1
	v_add3_u32 v95, v224, v27, 0x7fff
	v_bfe_u32 v27, v222, 16, 1
	v_add3_u32 v97, v220, v28, 0x7fff
	v_bfe_u32 v28, v218, 16, 1
	v_add3_u32 v99, v216, v29, 0x7fff
	v_bfe_u32 v29, v214, 16, 1
	v_add3_u32 v101, v212, v30, 0x7fff
	v_bfe_u32 v30, v210, 16, 1
	v_add3_u32 v103, v208, v31, 0x7fff
	v_bfe_u32 v31, v206, 16, 1
	v_add3_u32 v24, v234, v24, 0x7fff
	v_add3_u32 v25, v230, v25, 0x7fff
	v_cmp_o_f32_e64 s3, v228, v228
	v_add3_u32 v26, v226, v26, 0x7fff
	v_cmp_o_f32_e64 s8, v226, v226
	v_cmp_o_f32_e64 s9, v224, v224
	v_add3_u32 v27, v222, v27, 0x7fff
	v_add3_u32 v28, v218, v28, 0x7fff
	v_add3_u32 v29, v214, v29, 0x7fff
	v_add3_u32 v30, v210, v30, 0x7fff
	v_add3_u32 v31, v206, v31, 0x7fff
	v_bfe_u32 v105, v204, 16, 1
	v_bfe_u32 v133, v202, 16, 1
	v_bfe_u32 v154, v196, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s2
	v_add3_u32 v105, v204, v105, 0x7fff
	v_add3_u32 v133, v202, v133, 0x7fff
	v_add3_u32 v154, v196, v154, 0x7fff
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s8
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s10
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s12
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s15
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s17
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s19
	v_cndmask_b16 v1.h, 0x7fff, v24.h, s0
	v_cndmask_b16 v91.h, 0x7fff, v91.h, s1
	v_cndmask_b16 v93.h, 0x7fff, v93.h, s3
	v_cndmask_b16 v95.h, 0x7fff, v95.h, s9
	v_cndmask_b16 v97.h, 0x7fff, v97.h, s11
	v_cndmask_b16 v99.h, 0x7fff, v99.h, s14
	v_cndmask_b16 v101.h, 0x7fff, v101.h, s16
	v_cndmask_b16 v103.h, 0x7fff, v103.h, s18
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v25.l, v19.l
	v_mov_b16_e32 v26.l, v19.l
	v_mov_b16_e32 v27.l, v19.l
	v_mov_b16_e32 v28.l, v19.l
	v_mov_b16_e32 v29.l, v19.l
	v_mov_b16_e32 v30.l, v19.l
	v_mov_b16_e32 v31.l, v19.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v174.h, 0x7fff, v133.h, s21
	v_cndmask_b16 v177.h, 0x7fff, v177.h, s27
	v_cndmask_b16 v178.h, 0x7fff, v179.h, s29
	v_cndmask_b16 v179.h, 0x7fff, v181.h, s31
	v_cndmask_b16 v180.h, 0x7fff, v180.h, s34
	v_cndmask_b16 v181.h, 0x7fff, v187.h, s36
	v_cndmask_b16 v105.h, 0x7fff, v105.h, s20
	v_cndmask_b16 v133.h, 0x7fff, v135.h, s22
	v_cndmask_b16 v135.h, 0x7fff, v154.h, s24
	v_cndmask_b16 v137.h, 0x7fff, v183.h, s26
	v_cndmask_b16 v154.h, 0x7fff, v185.h, s28
	v_cndmask_b16 v183.h, 0x7fff, v186.h, s30
	v_cndmask_b16 v182.h, 0x7fff, v182.h, s33
	v_cndmask_b16 v184.h, 0x7fff, v184.h, s35
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v174.l, v19.l
	v_mov_b16_e64 v176.l, v19.l
	v_mov_b16_e64 v177.l, v19.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v145, v145, v31
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e32 v31.l, v103.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v143, v143, v30
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v30.l, v101.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v149, v149, v29
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v29.l, v99.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v147, v147, v28
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v28.l, v97.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v153, v153, v27
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v27.l, v95.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v151, v151, v26
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v26.l, v93.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v141, v141, v25
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v25.l, v91.h
	v_mov_b16_e32 v24.h, v1.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v181.l, v19.l
	v_mov_b16_e64 v178.l, v19.l
	v_mov_b16_e64 v180.l, v19.l
	v_mov_b16_e64 v179.l, v19.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[24:31], v[74:81], v[41:48]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v109, v109, v181
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v181.l, v184.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v107, v107, v180
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v180.l, v182.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v113, v113, v179
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v179.l, v183.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v111, v111, v178
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v178.l, v154.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v117, v117, v177
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v177.l, v137.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v115, v115, v176
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v176.l, v135.h
	v_mov_b16_e64 v175.l, v133.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v119, v119, v174
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v174.l, v105.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v19.h, v24.l
	v_mov_b16_e32 v91.l, v19.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v139, v1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v5.l, v19.l
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[174:181], v[66:73], v[41:48]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v93.l, v19.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v167.l, v20.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v237.l, v164.h
	v_wmma_f32_16x16x16_bf16 v[41:48], v[24:31], v[247:254], v[41:48]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v25, v138, v19
	v_sub_f32_e32 v24, v140, v91
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v243.l, v239.h
	v_mov_b16_e64 v244.l, v240.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v95.l, v19.l
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v26, v25, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v20, v150, v93
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v24, v24
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_mov_b16_e64 v168.l, v21.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v26, v25, v26, 0x7fff
	v_bfe_u32 v25, v1, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v170.l, v172.h
	v_dual_mov_b32 v165, v237 :: v_dual_mov_b32 v164, v167
	v_mov_b32_e32 v167, v243
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v25, v1, v25, 0x7fff
	v_bfe_u32 v1, v24, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v171, v244
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v21, v152, v95
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e32 v97.l, v19.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v20, v20
	v_add3_u32 v1, v24, v1, 0x7fff
	v_bfe_u32 v24, v141, 16, 1
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[82:89], v[164:171], v[33:40]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v146, v97
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e32 v99.l, v19.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v25.l, 0x7fff, v1.h, s1
	v_add3_u32 v29, v141, v24, 0x7fff
	v_bfe_u32 v24, v20, 16, 1
	v_bfe_u32 v1, v21, 16, 1
	v_cmp_o_f32_e64 s8, v151, v151
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v101.l, v19.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v141, v141
	v_add3_u32 v82, v20, v24, 0x7fff
	v_bfe_u32 v20, v151, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v26.h, vcc_lo
	v_add3_u32 v1, v21, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_bfe_u32 v21, v27, 16, 1
	v_add3_u32 v20, v151, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v27, v27
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v105.l, v19.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v28, v148, v99
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v21, v27, v21, 0x7fff
	v_cndmask_b16 v26.h, 0x7fff, v20.h, s8
	v_bfe_u32 v20, v153, 16, 1
	v_bfe_u32 v27, v147, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v103.l, v19.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v30, v142, v101
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v24.h, 0x7fff, v25.h, s0
	v_cndmask_b16 v25.h, 0x7fff, v29.h, s2
	v_add3_u32 v20, v153, v20, 0x7fff
	v_cmp_o_f32_e64 s0, v153, v153
	v_add3_u32 v29, v147, v27, 0x7fff
	v_bfe_u32 v27, v28, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v31, v144, v103
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v26.l, 0x7fff, v82.h, s3
	v_cmp_o_f32_e64 s3, v28, v28
	v_cmp_o_f32_e64 s2, v147, v147
	v_add3_u32 v82, v28, v27, 0x7fff
	v_cndmask_b16 v27.h, 0x7fff, v20.h, s0
	v_bfe_u32 v20, v30, 16, 1
	v_cmp_o_f32_e64 s0, v30, v30
	v_cndmask_b16 v27.l, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v28.l, 0x7fff, v21.h, s1
	v_cndmask_b16 v29.l, 0x7fff, v82.h, s3
	v_add3_u32 v20, v30, v20, 0x7fff
	v_bfe_u32 v30, v31, 16, 1
	v_bfe_u32 v1, v149, 16, 1
	v_bfe_u32 v21, v143, 16, 1
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s2
	v_cmp_o_f32_e32 vcc_lo, v149, v149
	v_add3_u32 v82, v31, v30, 0x7fff
	v_bfe_u32 v30, v145, 16, 1
	v_add3_u32 v1, v149, v1, 0x7fff
	v_add3_u32 v21, v143, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v143, v143
	v_cmp_o_f32_e64 s2, v31, v31
	v_add3_u32 v31, v145, v30, 0x7fff
	v_cmp_o_f32_e64 s3, v145, v145
	v_cndmask_b16 v29.h, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v30.l, 0x7fff, v20.h, s0
	v_cndmask_b16 v30.h, 0x7fff, v21.h, s1
	v_cndmask_b16 v31.l, 0x7fff, v82.h, s2
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v21, v130, v159
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[174:181], v[164:171], v[41:48]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v3.l, v19.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v20, v136, v161 :: v_dual_sub_f32 v1, v134, v156
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v21, v21
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[24:31], v[74:81], v[41:48]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v26, v21, 16, 1
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v3, v102, v3
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v25, v20, 16, 1
	v_bfe_u32 v24, v1, 16, 1
	v_cmp_o_f32_e64 s1, v20, v20
	v_add3_u32 v26, v21, v26, 0x7fff
	v_bfe_u32 v21, v22, 16, 1
	v_add3_u32 v25, v20, v25, 0x7fff
	v_bfe_u32 v20, v65, 16, 1
	v_add3_u32 v24, v1, v24, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_bfe_u32 v1, v131, 16, 1
	v_cmp_o_f32_e64 s2, v65, v65
	v_add3_u32 v20, v65, v20, 0x7fff
	v_add3_u32 v21, v22, v21, 0x7fff
	v_cmp_o_f32_e64 s8, v22, v22
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v28, v126, v157
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v1, v131, v1, 0x7fff
	v_cmp_o_f32_e64 s0, v131, v131
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s1
	v_cndmask_b16 v25.h, 0x7fff, v20.h, s2
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s3
	v_cndmask_b16 v26.h, 0x7fff, v21.h, s8
	v_bfe_u32 v20, v4, 16, 1
	v_bfe_u32 v21, v127, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v132, v160
	v_sub_f32_e32 v29, v128, v158
	v_sub_f32_e32 v31, v124, v163
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v24.l, 0x7fff, v24.h, vcc_lo
	v_cndmask_b16 v24.h, 0x7fff, v1.h, s0
	v_add3_u32 v20, v4, v20, 0x7fff
	v_cmp_o_f32_e64 s0, v4, v4
	v_bfe_u32 v4, v28, 16, 1
	v_add3_u32 v21, v127, v21, 0x7fff
	v_cmp_o_f32_e64 s2, v127, v127
	v_bfe_u32 v1, v27, 16, 1
	v_cmp_o_f32_e64 s1, v28, v28
	v_add3_u32 v4, v28, v4, 0x7fff
	v_bfe_u32 v22, v29, 16, 1
	v_cndmask_b16 v28.h, 0x7fff, v21.h, s2
	v_bfe_u32 v21, v31, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v30, v122, v162
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v1, v27, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_add3_u32 v22, v29, v22, 0x7fff
	v_cmp_o_f32_e64 s3, v29, v29
	v_add3_u32 v21, v31, v21, 0x7fff
	v_cmp_o_f32_e64 s2, v31, v31
	v_cndmask_b16 v27.l, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v27.h, 0x7fff, v20.h, s0
	v_cndmask_b16 v28.l, 0x7fff, v4.h, s1
	v_cndmask_b16 v29.l, 0x7fff, v22.h, s3
	v_bfe_u32 v1, v129, 16, 1
	v_bfe_u32 v20, v123, 16, 1
	v_bfe_u32 v22, v125, 16, 1
	v_cndmask_b16 v31.l, 0x7fff, v21.h, s2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v21, v116, v137
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v4, v30, 16, 1
	v_add3_u32 v1, v129, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v129, v129
	v_cmp_o_f32_e64 s0, v30, v30
	v_add3_u32 v20, v123, v20, 0x7fff
	v_add3_u32 v4, v30, v4, 0x7fff
	v_cmp_o_f32_e64 s1, v123, v123
	v_add3_u32 v22, v125, v22, 0x7fff
	v_cmp_o_f32_e64 s3, v125, v125
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v133.l, v19.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v29.h, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v30.l, 0x7fff, v4.h, s0
	v_cndmask_b16 v30.h, 0x7fff, v20.h, s1
	v_cndmask_b16 v31.h, 0x7fff, v22.h, s3
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v184.l, v19.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v20, v114, v135
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v7.l, v19.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v4, v120, v133
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[24:31], v[74:81], v[33:40]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v118, v105
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v154.l, v19.l
	v_mov_b16_e64 v182.l, v19.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v31, v108, v184
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v26, v20, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v6.l, v19.l
	v_mov_b16_e32 v9.l, v19.l
	v_mov_b16_e32 v8.l, v19.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v19, v94, v7
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v25, v4, 16, 1
	v_bfe_u32 v24, v1, 16, 1
	v_cmp_o_f32_e64 s1, v4, v4
	v_add3_u32 v26, v20, v26, 0x7fff
	v_cmp_o_f32_e64 s3, v20, v20
	v_add3_u32 v25, v4, v25, 0x7fff
	v_bfe_u32 v4, v121, 16, 1
	v_bfe_u32 v20, v115, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v22, v110, v154 :: v_dual_sub_f32 v11, v104, v11
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v24, v1, v24, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_bfe_u32 v1, v119, 16, 1
	v_add3_u32 v4, v121, v4, 0x7fff
	v_cmp_o_f32_e64 s2, v121, v121
	v_add3_u32 v20, v115, v20, 0x7fff
	v_cmp_o_f32_e64 s8, v115, v115
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v112, v183
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v1, v119, v1, 0x7fff
	v_cmp_o_f32_e64 s0, v119, v119
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s1
	v_cndmask_b16 v25.h, 0x7fff, v4.h, s2
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s3
	v_cndmask_b16 v26.h, 0x7fff, v20.h, s8
	v_bfe_u32 v4, v117, 16, 1
	v_bfe_u32 v20, v22, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v30, v106, v182
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v24.l, 0x7fff, v24.h, vcc_lo
	v_cndmask_b16 v24.h, 0x7fff, v1.h, s0
	v_bfe_u32 v1, v21, 16, 1
	v_add3_u32 v4, v117, v4, 0x7fff
	v_cmp_o_f32_e64 s0, v117, v117
	v_add3_u32 v20, v22, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v22, v22
	v_bfe_u32 v22, v27, 16, 1
	v_add3_u32 v1, v21, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_cmp_o_f32_e64 s3, v27, v27
	v_bfe_u32 v21, v111, 16, 1
	v_add3_u32 v22, v27, v22, 0x7fff
	v_cndmask_b16 v27.h, 0x7fff, v4.h, s0
	v_bfe_u32 v4, v30, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v113, 16, 1
	v_cmp_o_f32_e64 s0, v30, v30
	v_add3_u32 v21, v111, v21, 0x7fff
	v_add3_u32 v4, v30, v4, 0x7fff
	v_cmp_o_f32_e64 s2, v111, v111
	v_cndmask_b16 v28.l, 0x7fff, v20.h, s1
	v_add3_u32 v1, v113, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v113, v113
	v_bfe_u32 v20, v107, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v4.h, s0
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v4, v92, v6 :: v_dual_sub_f32 v9, v98, v9
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v28.h, 0x7fff, v21.h, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v20, v107, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v107, v107
	v_bfe_u32 v21, v31, 16, 1
	v_cndmask_b16 v29.h, 0x7fff, v1.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v90, v5
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v6, v4, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v22.h, s3
	v_add3_u32 v21, v31, v21, 0x7fff
	v_cmp_o_f32_e64 s2, v31, v31
	v_bfe_u32 v22, v109, 16, 1
	v_cndmask_b16 v30.h, 0x7fff, v20.h, s1
	v_bfe_u32 v5, v1, 16, 1
	v_add3_u32 v6, v4, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v4, v4
	v_bfe_u32 v4, v18, 16, 1
	v_add3_u32 v22, v109, v22, 0x7fff
	v_cmp_o_f32_e64 s3, v109, v109
	v_cndmask_b16 v31.l, 0x7fff, v21.h, s2
	v_add3_u32 v5, v1, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_bfe_u32 v1, v23, 16, 1
	v_add3_u32 v4, v18, v4, 0x7fff
	v_cmp_o_f32_e64 s2, v18, v18
	v_bfe_u32 v7, v3, 16, 1
	v_cndmask_b16 v31.h, 0x7fff, v22.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v100, v10
	v_sub_f32_e32 v20, v96, v8
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v1, v23, v1, 0x7fff
	v_cmp_o_f32_e64 s0, v23, v23
	v_add3_u32 v7, v3, v7, 0x7fff
	v_cmp_o_f32_e64 s3, v3, v3
	v_bfe_u32 v3, v17, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s1
	v_cndmask_b16 v6.h, 0x7fff, v4.h, s2
	v_bfe_u32 v4, v9, 16, 1
	v_bfe_u32 v8, v15, 16, 1
	v_add3_u32 v3, v17, v3, 0x7fff
	v_cmp_o_f32_e64 s8, v17, v17
	v_cndmask_b16 v5.l, 0x7fff, v5.h, vcc_lo
	v_cndmask_b16 v5.h, 0x7fff, v1.h, s0
	v_bfe_u32 v1, v11, 16, 1
	v_add3_u32 v4, v9, v4, 0x7fff
	v_cmp_o_f32_e64 s1, v9, v9
	v_add3_u32 v9, v15, v8, 0x7fff
	v_bfe_u32 v8, v10, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s3
	v_cndmask_b16 v7.h, 0x7fff, v3.h, s8
	v_add3_u32 v1, v11, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_bfe_u32 v3, v16, 16, 1
	v_add3_u32 v11, v10, v8, 0x7fff
	v_cmp_o_f32_e64 s3, v10, v10
	v_cmp_o_f32_e64 s0, v16, v16
	v_cndmask_b16 v9.l, 0x7fff, v4.h, s1
	v_add3_u32 v3, v16, v3, 0x7fff
	v_bfe_u32 v4, v13, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s3
	v_bfe_u32 v11, v20, 16, 1
	v_cmp_o_f32_e64 s2, v15, v15
	v_cndmask_b16 v8.l, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v8.h, 0x7fff, v3.h, s0
	v_bfe_u32 v1, v14, 16, 1
	v_bfe_u32 v3, v19, 16, 1
	v_add3_u32 v4, v13, v4, 0x7fff
	v_cmp_o_f32_e64 s1, v13, v13
	v_add3_u32 v13, v20, v11, 0x7fff
	v_bfe_u32 v11, v12, 16, 1
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s2
	v_add3_u32 v1, v14, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_add3_u32 v3, v19, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v19, v19
	v_cmp_o_f32_e64 s2, v20, v20
	v_add3_u32 v14, v12, v11, 0x7fff
	v_cmp_o_f32_e64 s3, v12, v12
	v_cndmask_b16 v10.h, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v11.l, 0x7fff, v3.h, s0
	v_cndmask_b16 v11.h, 0x7fff, v4.h, s1
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s2
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s3
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[24:31], v[66:73], v[41:48]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[5:12], v[66:73], v[33:40]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	s_clause 0x7                            ; 36-byte Folded Reload
	scratch_load_b32 v3, off, off offset:8
	scratch_load_b32 v4, off, off offset:12
	scratch_load_b32 v5, off, off offset:16
	scratch_load_b32 v6, off, off offset:20
	scratch_load_b32 v7, off, off offset:24
	scratch_load_b32 v8, off, off offset:28
	scratch_load_b32 v9, off, off offset:32
	scratch_load_b64 v[22:23], off, off
	.loc	1 616 25 is_stmt 1              ; attention_backward.py:616:25
	s_add_i32 s21, s89, s87
	s_clause 0x8                            ; 44-byte Folded Reload
	scratch_load_b32 v10, off, off offset:36
	scratch_load_b32 v18, off, off offset:40
	scratch_load_b64 v[24:25], off, off offset:48
	scratch_load_b32 v11, off, off offset:844
	scratch_load_b32 v12, off, off offset:852
	scratch_load_b32 v13, off, off offset:856
	scratch_load_b32 v14, off, off offset:860
	scratch_load_b32 v15, off, off offset:864
	scratch_load_b64 v[28:29], off, off offset:60
	s_mul_i32 s22, s21, s76
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v247, v246
	v_mov_b32_e32 v251, v246
	v_mov_b32_e32 v252, v246
	v_mov_b32_e32 v253, v246
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v249, v246
	v_mov_b32_e32 v248, v246
	v_mov_b32_e32 v250, v246
	v_dual_mov_b32 v73, v246 :: v_dual_mov_b32 v74, v247
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v79, v252 :: v_dual_mov_b32 v76, v249
	v_dual_mov_b32 v75, v248 :: v_dual_mov_b32 v80, v253
	v_mov_b32_e32 v78, v251
	scratch_load_b64 v[29:30], off, off offset:920 ; 8-byte Folded Reload
	v_mov_b32_e32 v77, v250
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(17)
	v_or_b32_e32 v1, s89, v3
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v3, s21, v3, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s1, s50, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(16)
	v_or_b32_e32 v1, s89, v4
	s_waitcnt vmcnt(10)
	v_mov_b32_e32 v27, v22
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v4, s21, v4, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s2, s50, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s89, v5
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v5, s21, v5, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v16, s21, v15, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s3, s50, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s89, v6
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v6, s21, v6, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v22, 0x80000000, v5, s3
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b32 v5, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s8, s50, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s89, v7
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v7, s21, v7, 1
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_add_nc_u32_e32 v18, s22, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v23, 0x80000000, v6, s8
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s9, s50, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s89, v8
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_add_nc_u32_e32 v6, s22, v24
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v8, s21, v8, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v24, 0x80000000, v7, s9
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s10, s50, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s89, v9
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b32 v7, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v9, s21, v9, 1
	v_cndmask_b32_e64 v25, 0x80000000, v8, s10
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s11, s50, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s89, v10
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v8, s22, v28
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v10, s21, v10, 1
	v_cndmask_b32_e64 v26, 0x80000000, v9, s11
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s50, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s89, v11
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v11, s21, v11, 1
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s12, s50, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s89, v12
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v12, s21, v12, 1
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s13, vcc_lo
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s14, s50, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s89, v13
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v13, s21, v13, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v9, 0x80000000, v12, s14
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s15, s50, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s89, v14
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v14, s21, v14, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s16, s50, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s89, v15
	scratch_load_b32 v15, off, off offset:872 ; 4-byte Folded Reload
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v14, 0x80000000, v14, s16
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s17, s50, v1
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v16, 0x80000000, v16, s17
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v5, s22, v5
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v7, s22, v7
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, s89, v15
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v17, s21, v15, 1
	scratch_load_b32 v15, off, off offset:876 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s18, s50, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v17, 0x80000000, v17, s18
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, s89, v15
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v19, s21, v15, 1
	scratch_load_b32 v15, off, off offset:880 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s19, s50, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v19, 0x80000000, v19, s19
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, s89, v15
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v20, s21, v15, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s20, s50, v1
	scratch_load_b32 v1, off, off offset:884 ; 4-byte Folded Reload
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v20, 0x80000000, v20, s20
	.loc	1 624 25                        ; attention_backward.py:624:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s21, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s89, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v21, 1, v15
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s0, s50, v1
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v1, 0x80000000, v3, s1
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_add_nc_u32_e32 v3, s22, v27
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s13, s1
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v21, 0x80000000, v21, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s13, s2
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v18, 0x80000000, v18, s1
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s13, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v5, 0x80000000, v5, s1
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s13, s8
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v6, 0x80000000, v6, s1
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s13, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v7, 0x80000000, v7, s1
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s13, s10
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v8, 0x80000000, v8, s1
	s_clause 0x5
	buffer_load_u8 v166, v3, s[60:63], 0 offen
	buffer_load_u8 v163, v18, s[60:63], 0 offen
	buffer_load_u8 v18, v5, s[60:63], 0 offen
	buffer_load_u8 v164, v6, s[60:63], 0 offen
	buffer_load_u8 v161, v7, s[60:63], 0 offen
	buffer_load_u8 v162, v8, s[60:63], 0 offen
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b64 v[5:6], off, off offset:68 ; 8-byte Folded Reload
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v8, 0x80000000, v11, s12
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[11:12], off, off offset:904
	scratch_load_b64 v[6:7], off, off offset:896
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s13, s11
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v3, s22, v5
	v_lshl_add_u32 v5, s76, 4, v27
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v7, s22, v11
	scratch_load_b64 v[11:12], off, off offset:912 ; 8-byte Folded Reload
	v_add_nc_u32_e32 v6, s22, v6
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	v_add_nc_u32_e32 v5, s22, v5
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s13, s12
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v27, 0x80000000, v13, s15
	s_clause 0x10
	buffer_load_u16 v160, v10, s[64:67], 0 offen
	buffer_load_u16 v255, v8, s[64:67], 0 offen
	buffer_load_u16 v10, v9, s[64:67], 0 offen
	buffer_load_u16 v9, v27, s[64:67], 0 offen
	buffer_load_u16 v8, v14, s[64:67], 0 offen
	buffer_load_u16 v154, v16, s[64:67], 0 offen
	buffer_load_u16 v89, v17, s[64:67], 0 offen
	buffer_load_u16 v86, v19, s[64:67], 0 offen
	buffer_load_u16 v85, v20, s[64:67], 0 offen
	buffer_load_u16 v244, v1, s[64:67], 0 offen
	buffer_load_u16 v245, v4, s[64:67], 0 offen
	buffer_load_u16 v4, v22, s[64:67], 0 offen
	buffer_load_u16 v1, v23, s[64:67], 0 offen
	buffer_load_u16 v14, v24, s[64:67], 0 offen
	buffer_load_u16 v16, v25, s[64:67], 0 offen
	buffer_load_u16 v159, v26, s[64:67], 0 offen
	buffer_load_u16 v19, v21, s[64:67], 0 offen
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v5, 0x80000000, v5, s1
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s13, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v6, 0x80000000, v6, s1
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s13, s15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v7, 0x80000000, v7, s1
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s13, s16
	s_waitcnt vmcnt(17)
	v_add_nc_u32_e32 v11, s22, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v13, 0x80000000, v11, s1
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b64 v[11:12], off, off offset:76 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v11, s22, v11
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v28, 0x80000000, v11, vcc_lo
	s_clause 0x3
	buffer_load_u8 v12, v5, s[60:63], 0 offen
	buffer_load_u8 v11, v6, s[60:63], 0 offen
	buffer_load_u8 v7, v7, s[60:63], 0 offen
	buffer_load_u8 v6, v13, s[60:63], 0 offen
	v_add_nc_u32_e32 v5, s22, v29
	scratch_load_b64 v[29:30], off, off offset:928 ; 8-byte Folded Reload
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s13, s17
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s13, s18
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s22, v29
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[29:30], off, off offset:936
	scratch_load_b64 v[30:31], off, off offset:944
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v29, s22, v29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v30, s22, v30
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s13, s19
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v29, 0x80000000, v29, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s13, s20
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	s_clause 0x5
	buffer_load_u8 v5, v5, s[60:63], 0 offen
	buffer_load_u8 v158, v13, s[60:63], 0 offen
	buffer_load_u8 v13, v3, s[60:63], 0 offen
	buffer_load_u8 v3, v28, s[60:63], 0 offen
	buffer_load_u8 v88, v29, s[60:63], 0 offen
	buffer_load_u8 v87, v30, s[60:63], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v17, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v17, v166
	ds_store_b8 v17, v163 offset:64
	ds_store_b8 v17, v12 offset:512
	ds_store_b8 v17, v11 offset:576
	scratch_load_b32 v17, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v17, v18
	ds_store_b8 v17, v164 offset:64
	ds_store_b8 v17, v7 offset:512
	ds_store_b8 v17, v6 offset:576
	ds_store_b8 v242, v161
	ds_store_b8 v242, v162 offset:64
	ds_store_b8 v242, v5 offset:512
	ds_store_b8 v242, v158 offset:576
	ds_store_b8 v155, v13
	ds_store_b8 v155, v3 offset:64
	ds_store_b8 v155, v88 offset:512
	ds_store_b8 v155, v87 offset:576
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v17, off, off offset:144
	scratch_load_b64 v[28:29], off, off offset:92
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v17, 0, v17
	ds_load_b64 v[20:21], v17
	scratch_load_b32 v17, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[28:29], v[20:21], v[73:80] neg_lo:[1,1,0]
	scratch_load_b64 v[20:21], off, off offset:100 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt vmcnt(1)
	ds_load_b64 v[22:23], v17
	scratch_load_b32 v17, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[20:21], v[22:23], v[73:80] neg_lo:[1,1,0]
	scratch_load_b64 v[20:21], off, off offset:108 ; 8-byte Folded Reload
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v22, 12, v32
	v_or_b32_e32 v23, 16, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v22, s89, v22
	v_or_b32_e32 v23, s89, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s3, s50, v22
	v_cmp_gt_i32_e64 s8, s50, v23
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v68, s39, v22
	v_add_nc_u32_e32 v69, s39, v23
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s22, s7, s3
	s_and_b32 s29, s7, s8
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt vmcnt(1)
	ds_load_b64 v[24:25], v17
	scratch_load_b32 v17, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[20:21], v[24:25], v[73:80] neg_lo:[1,1,0]
	scratch_load_b64 v[20:21], off, off offset:116 ; 8-byte Folded Reload
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v24, 20, v32
	v_or_b32_e32 v25, 24, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v24, s89, v24
	v_or_b32_e32 v25, s89, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s9, s50, v24
	v_cmp_gt_i32_e64 s10, s50, v25
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v70, s39, v24
	v_add_nc_u32_e32 v71, s39, v25
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s27, s7, s9
	s_and_b32 s25, s7, s10
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt vmcnt(1)
	ds_load_b64 v[26:27], v17
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v17, s89, v32
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s50, v17
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v17, s39, v17
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s28, s7, vcc_lo
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_and_not1_b32 vcc_lo, exec_lo, s80
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[20:21], v[26:27], v[73:80] neg_lo:[1,1,0]
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v20, 4, v32
	v_or_b32_e32 v21, 8, v32
	v_or_b32_e32 v26, 28, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v20, s89, v20
	v_or_b32_e32 v21, s89, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b32_e32 v26, s89, v26
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s1, s50, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_i32_e64 s2, s50, v21
	v_cmp_gt_i32_e64 s11, s50, v26
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v66, s39, v20
	v_add_nc_u32_e32 v67, s39, v21
	v_add_nc_u32_e32 v72, s39, v26
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s26, s7, s1
	s_and_b32 s24, s7, s2
	s_and_b32 s23, s7, s11
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e32 vcc_lo, v173, v17
	v_cmp_le_i32_e64 s1, v173, v66
	v_cmp_le_i32_e64 s2, v173, v67
	v_cmp_le_i32_e64 s3, v173, v68
	v_cmp_le_i32_e64 s8, v173, v69
	v_cmp_le_i32_e64 s9, v173, v70
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s12, s28, vcc_lo
	s_and_b32 s1, s26, s1
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s10, v173, v71
	v_cmp_le_i32_e64 s11, v173, v72
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s2, s24, s2
	s_and_b32 s3, s22, s3
	s_and_not1_b32 s14, s28, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s15, s26, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_b32 s8, s29, s8
	s_and_b32 s9, s27, s9
	s_or_b32 s28, s14, s12
	s_or_b32 s26, s15, s1
	s_and_not1_b32 s1, s24, exec_lo
	s_and_b32 s2, s2, exec_lo
	s_and_not1_b32 s12, s22, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s10, s25, s10
	s_and_b32 s11, s23, s11
	s_or_b32 s24, s1, s2
	s_or_b32 s22, s12, s3
	s_and_not1_b32 s1, s29, exec_lo
	s_and_b32 s2, s8, exec_lo
	s_and_not1_b32 s3, s27, exec_lo
	s_and_b32 s8, s9, exec_lo
	s_or_b32 s29, s1, s2
	s_or_b32 s27, s3, s8
	s_and_not1_b32 s1, s25, exec_lo
	s_and_b32 s2, s10, exec_lo
	s_and_not1_b32 s3, s23, exec_lo
	s_and_b32 s8, s11, exec_lo
	s_or_b32 s25, s1, s2
	s_or_b32 s23, s3, s8
.LBB0_10:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 677 17 is_stmt 1              ; attention_backward.py:677:17
	s_and_not1_b32 vcc_lo, exec_lo, s79
	s_cbranch_vccnz .LBB0_7
; %bb.11:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v20, s37, v17
	v_subrev_nc_u32_e32 v21, s37, v66
	v_subrev_nc_u32_e32 v22, s37, v67
	v_subrev_nc_u32_e32 v23, s37, v68
	v_subrev_nc_u32_e32 v24, s37, v69
	.loc	1 678 30 is_stmt 0              ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v173, v20
	.loc	1 679 47 is_stmt 1              ; attention_backward.py:679:47
	v_add_nc_u32_e32 v17, s38, v17
	v_add_nc_u32_e32 v20, s38, v66
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v25, s37, v70
	v_subrev_nc_u32_e32 v26, s37, v71
	.loc	1 678 30 is_stmt 0              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s1, v173, v21
	v_cmp_ge_i32_e64 s2, v173, v22
	.loc	1 679 47 is_stmt 1              ; attention_backward.py:679:47
	v_add_nc_u32_e32 v21, s38, v67
	v_add_nc_u32_e32 v22, s38, v68
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s3, v173, v23
	v_cmp_ge_i32_e64 s8, v173, v24
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v23, s38, v69
	v_add_nc_u32_e32 v24, s38, v70
	.loc	1 679 30 is_stmt 0              ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s12, v173, v17
	v_cmp_le_i32_e64 s14, v173, v20
	.loc	1 678 47 is_stmt 1              ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v27, s37, v72
	.loc	1 678 30 is_stmt 0              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s9, v173, v25
	v_cmp_ge_i32_e64 s10, v173, v26
	.loc	1 679 47 is_stmt 1              ; attention_backward.py:679:47
	v_add_nc_u32_e32 v25, s38, v71
	v_add_nc_u32_e32 v26, s38, v72
	.loc	1 679 30 is_stmt 0              ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s15, v173, v21
	v_cmp_le_i32_e64 s16, v173, v22
	v_cmp_le_i32_e64 s17, v173, v23
	v_cmp_le_i32_e64 s18, v173, v24
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s12, vcc_lo, s12
	s_and_b32 s1, s1, s14
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s11, v173, v27
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s19, v173, v25
	v_cmp_le_i32_e64 s20, v173, v26
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s12, s12, s28
	s_and_b32 s1, s1, s26
	s_and_b32 s2, s2, s15
	s_and_b32 s3, s3, s16
	s_and_b32 s2, s2, s24
	s_and_b32 s3, s3, s22
	s_and_b32 s8, s8, s17
	s_and_b32 s9, s9, s18
	s_and_not1_b32 s14, s28, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s15, s26, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_b32 s8, s8, s29
	s_and_b32 s9, s9, s27
	s_and_b32 s10, s10, s19
	s_and_b32 s11, s11, s20
	s_or_b32 s28, s14, s12
	s_or_b32 s26, s15, s1
	s_and_not1_b32 s1, s24, exec_lo
	s_and_b32 s2, s2, exec_lo
	s_and_not1_b32 s12, s22, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s10, s10, s25
	s_and_b32 s11, s11, s23
	s_or_b32 s24, s1, s2
	s_or_b32 s22, s12, s3
	s_and_not1_b32 s1, s29, exec_lo
	s_and_b32 s2, s8, exec_lo
	s_and_not1_b32 s3, s27, exec_lo
	s_and_b32 s8, s9, exec_lo
	s_or_b32 s29, s1, s2
	s_or_b32 s27, s3, s8
	s_and_not1_b32 s1, s25, exec_lo
	s_and_b32 s2, s10, exec_lo
	s_and_not1_b32 s3, s23, exec_lo
	s_and_b32 s8, s11, exec_lo
	s_or_b32 s25, s1, s2
	s_or_b32 s23, s3, s8
	s_branch .LBB0_7
.LBB0_12:                               ; %Flow435
	.loc	1 0 21                          ; attention_backward.py:0:21
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v65, off, off offset:952
	scratch_load_b32 v66, off, off offset:956
	scratch_load_b32 v67, off, off offset:960
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
.LBB0_14:                               ; %._crit_edge120
	.loc	1 753 13 is_stmt 1              ; attention_backward.py:753:13
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v16, s78, v65
	.loc	1 550 20                        ; attention_backward.py:550:20
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, v66, v67
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s37, s53, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v17, v16, s81
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v14, 2, v0
	v_or_b32_e32 v13, 4, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s15, s81, v0
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v15, 6, v0
	v_or_b32_e32 v12, 8, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s16, s81, v14
	v_cmp_gt_i32_e64 s17, s81, v13
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v18, v17, v0, 2
	v_add_lshl_u32 v19, v17, v14, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, s7, s15
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v17, v13, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v11, 10, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, s7, s16
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s18, s81, v15
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, s7, s17
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_mov_b32 s36, s52
	v_cndmask_b32_e64 v20, 0x80000000, v20, s15
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v10, 12, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s19, s81, v12
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v57, v18, s[36:39], 0 offen
	v_add_lshl_u32 v18, v17, v15, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s20, s81, v11
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v58, v19, s[36:39], 0 offen
	buffer_store_b32 v59, v20, s[36:39], 0 offen
	v_add_lshl_u32 v19, v17, v12, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s7, s18
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v9, 14, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s21, s81, v10
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v17, v11, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s7, s19
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v8, 32, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v21, v17, v10, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s7, s20
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v7, 34, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s22, s81, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s7, s21
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v6, 36, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s23, s81, v8
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v21, 0x80000000, v21, s16
	s_clause 0x1
	buffer_store_b32 v60, v18, s[36:39], 0 offen
	buffer_store_b32 v61, v19, s[36:39], 0 offen
	v_add_lshl_u32 v18, v17, v9, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s24, s81, v7
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v19, v17, v8, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s7, s22
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v5, 38, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s25, s81, v6
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v62, v20, s[36:39], 0 offen
	buffer_store_b32 v63, v21, s[36:39], 0 offen
	v_add_lshl_u32 v20, v17, v7, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s7, s23
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v4, 40, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v21, v17, v6, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s7, s24
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v3, 42, v0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v16, v16, s77
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s26, s81, v5
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s7, s25
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v2, 44, v0
	v_or_b32_e32 v1, 46, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s27, s81, v4
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v21, 0x80000000, v21, s16
	s_clause 0x1
	buffer_store_b32 v64, v18, s[36:39], 0 offen
	buffer_store_b32 v49, v19, s[36:39], 0 offen
	v_add_lshl_u32 v18, v17, v5, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s28, s81, v3
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v19, v17, v4, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s14, s77, v0
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s7, s26
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s29, s81, v2
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v50, v20, s[36:39], 0 offen
	buffer_store_b32 v51, v21, s[36:39], 0 offen
	v_add_lshl_u32 v20, v17, v3, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s15, s81, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s7, s27
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v0, v16, v0, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s12, s77, v13
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v21, v17, v2, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s7, s28
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v17, v17, v1, 2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v13, v16, v13, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s14, s7, s14
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s7, s29
	s_and_b32 s15, s7, s15
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s14
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v21, 0x80000000, v21, s16
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s12, s7, s12
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s15
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s13, s77, v14
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x4
	buffer_store_b32 v52, v18, s[36:39], 0 offen
	buffer_store_b32 v53, v19, s[36:39], 0 offen
	buffer_store_b32 v54, v20, s[36:39], 0 offen
	buffer_store_b32 v55, v21, s[36:39], 0 offen
	buffer_store_b32 v56, v17, s[36:39], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s37, s55, 0xffff
	s_mov_b32 s36, s54
	v_cndmask_b32_e64 v13, 0x80000000, v13, s12
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s12, s77, v15
	v_cmp_gt_i32_e64 s11, s77, v12
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v14, v16, v14, 2
	buffer_store_b32 v41, v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, v16, v15, 2
	v_add_lshl_u32 v12, v16, v12, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s7, s13
	s_and_b32 s12, s7, s12
	s_and_b32 s11, s7, s11
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v14, 0x80000000, v14, s13
	v_cndmask_b32_e64 v0, 0x80000000, v0, s12
	v_cndmask_b32_e64 v12, 0x80000000, v12, s11
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s8, s77, v9
	v_cmp_gt_i32_e64 s10, s77, v11
	v_cmp_gt_i32_e64 s6, s77, v8
	v_cmp_gt_i32_e64 s9, s77, v10
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_clause 0x1
	buffer_store_b32 v42, v14, s[36:39], 0 offen
	buffer_store_b32 v43, v13, s[36:39], 0 offen
	v_add_lshl_u32 v11, v16, v11, 2
	s_clause 0x1
	buffer_store_b32 v44, v0, s[36:39], 0 offen
	buffer_store_b32 v45, v12, s[36:39], 0 offen
	v_add_lshl_u32 v0, v16, v9, 2
	v_add_lshl_u32 v10, v16, v10, 2
	v_add_lshl_u32 v8, v16, v8, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s10, s7, s10
	s_and_b32 s8, s7, s8
	s_and_b32 s9, s7, s9
	s_and_b32 s6, s7, s6
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v11, 0x80000000, v11, s10
	v_cndmask_b32_e64 v0, 0x80000000, v0, s8
	v_cndmask_b32_e64 v10, 0x80000000, v10, s9
	v_cndmask_b32_e64 v8, 0x80000000, v8, s6
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s3, s77, v5
	v_cmp_gt_i32_e64 s5, s77, v7
	v_cmp_gt_i32_e64 s2, s77, v4
	v_cmp_gt_i32_e64 s4, s77, v6
	v_cmp_gt_i32_e64 s1, s77, v3
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_clause 0x1
	buffer_store_b32 v46, v11, s[36:39], 0 offen
	buffer_store_b32 v47, v10, s[36:39], 0 offen
	v_add_lshl_u32 v7, v16, v7, 2
	s_clause 0x1
	buffer_store_b32 v48, v0, s[36:39], 0 offen
	buffer_store_b32 v33, v8, s[36:39], 0 offen
	v_add_lshl_u32 v0, v16, v5, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s0, s77, v2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v6, v16, v6, 2
	v_add_lshl_u32 v4, v16, v4, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e32 vcc_lo, s77, v1
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v3, v16, v3, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s7, s5
	s_and_b32 s3, s7, s3
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v2, v16, v2, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s4, s7, s4
	s_and_b32 s2, s7, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v1, v16, v1, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s5
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s1, s7, s1
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s0, s7, s0
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 vcc_lo, s7, vcc_lo
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
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
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 968
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 968
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 32992
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 968
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 968
    .sgpr_count:     107
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 241
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
