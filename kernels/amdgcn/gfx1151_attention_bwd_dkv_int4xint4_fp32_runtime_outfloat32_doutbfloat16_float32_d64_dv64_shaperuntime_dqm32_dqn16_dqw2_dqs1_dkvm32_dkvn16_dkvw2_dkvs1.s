	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[48:51], s[0:1], 0x94
	s_load_b128 s[52:55], s[0:1], 0x64
	s_load_b64 s[80:81], s[0:1], 0x78
.Ltmp0:
	.loc	1 514 33 prologue_end           ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v9, 5, v0
	s_clause 0x1
	s_load_b128 s[28:31], s[0:1], 0x8
	s_load_b128 s[20:23], s[0:1], 0x20
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v207, 0, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v2, 2, v9
	v_or_b32_e32 v3, 4, v9
	v_or_b32_e32 v4, 6, v9
	v_or_b32_e32 v5, 8, v9
	v_or_b32_e32 v6, 10, v9
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v2, off offset:4
	scratch_store_b32 off, v3, off offset:8
	scratch_store_b32 off, v4, off offset:12
	scratch_store_b32 off, v5, off offset:16
	scratch_store_b32 off, v9, off
	v_or_b32_e32 v7, 12, v9
	v_or_b32_e32 v10, 14, v9
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s48
	s_bitcmp1_b32 s48, 8
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v6, off offset:20
	scratch_store_b32 off, v7, off offset:24
	scratch_store_b32 off, v10, off offset:28
	s_cselect_b32 s39, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_mov_b32 s42, s26
	s_cselect_b32 s82, -1, 0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_abs_i32 s35, s53
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_abs_i32 s5, s3
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cvt_f32_u32 s4, s35
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s33, s2, 4
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_mov_b32 s43, s27
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v8, s33, v2
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v2, s33, v3
	v_or_b32_e32 v3, s33, v4
	v_or_b32_e32 v4, s33, v5
	v_or_b32_e32 v5, s33, v6
	v_or_b32_e32 v6, s33, v7
	v_or_b32_e32 v7, s33, v10
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s13, s55, v2
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_mov_b32 s40, s22
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v66, 15, v0
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_readfirstlane_b32 s4, v1
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v1, s33, v9
	.loc	1 514 33 is_stmt 0              ; attention_backward.py:514:33
	v_bfe_u32 v49, v0, 4, 1
	v_and_b32_e32 v52, 32, v0
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_u32_f32 s45, s4
	s_sub_i32 s4, 0, s35
	s_mul_i32 s4, s4, s45
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s45, s4
	s_add_i32 s45, s45, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_mul_hi_u32 s4, s5, s45
	s_mul_i32 s6, s4, s35
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_ashr_i32 s36, s52, 31
	s_ashr_i32 s38, s53, 31
	s_abs_i32 s44, s52
	.loc	1 514 23                        ; attention_backward.py:514:23
	s_or_b32 s4, s33, 1
	s_or_b32 s5, s33, 2
	s_or_b32 s6, s33, 3
	s_or_b32 s8, s33, 4
	s_or_b32 s9, s33, 5
	s_or_b32 s10, s33, 6
	s_or_b32 s11, s33, 7
	s_or_b32 s12, s33, 8
	s_or_b32 s14, s33, 9
	s_or_b32 s15, s33, 10
	s_or_b32 s16, s33, 11
	s_or_b32 s17, s33, 12
	s_or_b32 s18, s33, 13
	s_or_b32 s19, s33, 14
	s_or_b32 s24, s33, 15
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cmp_lt_i32 s33, s55
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s4, s55
	v_cmp_gt_i32_e64 s4, s55, v1
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s5, s55
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_and_b32_e32 v1, 31, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s6, s55
	v_cmp_gt_i32_e64 s6, s55, v8
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s8, s55
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[161:162], null, s80, v9, v[1:2]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s9, s55
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s10, s55
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s11, s55
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v2, s80, 1, v161
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s12, s55
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[10:11], null, s80, 14, v[161:162]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s14, s55
	v_cmp_gt_i32_e64 s14, s55, v3
	s_cselect_b32 s8, -1, 0
	s_cmp_lt_i32 s15, s55
	v_cmp_gt_i32_e64 s15, s55, v4
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s16, s55
	v_cmp_gt_i32_e64 s16, s55, v5
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 s17, s55
	v_cmp_gt_i32_e64 s17, s55, v6
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[5:6], null, s80, 6, v[161:162]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s18, s55
	v_cmp_gt_i32_e64 s18, s55, v7
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s19, s55
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[7:8], null, s80, 10, v[161:162]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s24, s55
	.loc	1 521 24                        ; attention_backward.py:521:24
	s_mul_i32 s19, s3, s55
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v3, s80, 2, v161
	v_lshl_add_u32 v6, s80, 3, v161
	v_mov_b32_e32 v4, v5
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s12, -1, 0
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_add_i32 s62, s19, s33
	v_mad_u64_u32 v[8:9], null, s80, 12, v[161:162]
	s_mul_i32 s19, s62, s80
	s_clause 0x3                            ; 20-byte Folded Spill
	scratch_store_b32 off, v2, off offset:32
	scratch_store_b32 off, v3, off offset:36
	scratch_store_b64 off, v[4:5], off offset:40
	scratch_store_b32 off, v6, off offset:48
	v_add_nc_u32_e32 v9, s19, v161
	v_add_nc_u32_e32 v4, s19, v5
	v_add_nc_u32_e32 v5, s19, v6
	v_mov_b32_e32 v6, v7
	v_add_nc_u32_e32 v2, s19, v2
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_cmp_gt_i32_e64 s37, s80, v1
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_add_nc_u32_e32 v3, s19, v3
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_and_b32 s25, s29, 0xffff
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[6:7], off offset:52 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v6, s19, v7
	v_mov_b32_e32 v7, v8
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s4, s37
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_mov_b32 s24, s28
	v_xor_b32_e32 v11, 0x198, v0
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[7:8], off offset:60 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v7, s19, v8
	v_mov_b32_e32 v8, v10
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v210, 0, v11
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[8:9], off offset:68 ; 8-byte Folded Spill
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s6, s37
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_add_nc_u32_e32 v8, s19, v10
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s13, s37
	.loc	1 542 37                        ; attention_backward.py:542:37
	s_add_i32 s6, s55, 15
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s14, s37
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_mov_b32 s19, s27
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s15, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s16, s37
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_mov_b32 s16, s30
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s17, s37
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v7, 0x80000000, v7, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s18, s37
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_mov_b32 s18, s26
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v8, 0x80000000, v8, s4
	s_clause 0x7
	buffer_load_u8 v34, v9, s[24:27], 0 offen
	buffer_load_u8 v9, v2, s[24:27], 0 offen
	buffer_load_u8 v10, v3, s[24:27], 0 offen
	buffer_load_u8 v4, v4, s[24:27], 0 offen
	buffer_load_u8 v5, v5, s[24:27], 0 offen
	buffer_load_u8 v6, v6, s[24:27], 0 offen
	buffer_load_u8 v7, v7, s[24:27], 0 offen
	buffer_load_u8 v8, v8, s[24:27], 0 offen
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_ashr_i32 s4, s6, 31
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xor_b32_e32 v2, 0x88, v0
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_lshr_b32 s13, s4, 28
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xor_b32_e32 v3, 0x110, v0
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_add_i32 s6, s6, s13
	.loc	1 541 32                        ; attention_backward.py:541:32
	s_ashr_i32 s13, s33, 1
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_ashr_i32 s6, s6, 4
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_and_b32 s25, s21, 0xffff
	.loc	1 542 35                        ; attention_backward.py:542:35
	s_lshl_b32 s14, s6, 3
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v208, 0, v2
	.loc	1 549 23                        ; attention_backward.py:549:23
	s_cmp_lt_i32 s13, s14
	.loc	1 543 26                        ; attention_backward.py:543:26
	s_mul_i32 s14, s3, s14
	.loc	1 549 23                        ; attention_backward.py:549:23
	s_cselect_b32 s15, -1, 0
	.loc	1 545 17                        ; attention_backward.py:545:17
	s_add_i32 s14, s14, s13
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v209, 0, v3
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mad_u64_u32 v[2:3], null, s14, s81, v[0:1]
	.loc	1 565 17                        ; attention_backward.py:565:17
	s_mul_i32 s6, s3, s6
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_bfe_i32 s2, s2, 0x1c0000
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s4, s81, v0
	.loc	1 568 17                        ; attention_backward.py:568:17
	s_add_i32 s2, s6, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_and_b32 s41, s23, 0xffff
	.loc	1 568 17                        ; attention_backward.py:568:17
	s_mul_i32 s2, s2, s81
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v11, s81, v2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_add_lshl_u32 v3, s2, v0, 1
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s59, s4
	.loc	1 549 22                        ; attention_backward.py:549:22
	s_and_b32 s2, s15, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_and_b32 s17, s31, 0xffff
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v19, s81, v11
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v12, 0x80000000, v3, s6
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, vcc_lo, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v13, 0x80000000, v3, s6
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s60, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v22, s81, v19
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v14, 0x80000000, v3, s6
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s7, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v32, 0x80000000, v19, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v15, 0x80000000, v3, s6
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s58, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v25, s81, v22
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v16, 0x80000000, v3, s6
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s9, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v17, 0x80000000, v3, s6
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s57, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v28, s81, v25
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v18, 0x80000000, v3, s6
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s5, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v20, 0x80000000, v3, s6
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s56, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v31, s81, v28
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v21, 0x80000000, v3, s6
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s8, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v23, 0x80000000, v3, s6
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s47, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v19, s81, v31
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v24, 0x80000000, v3, s6
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s10, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v26, 0x80000000, v3, s6
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s46, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v27, 0x80000000, v3, s6
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s11, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v33, 0x80000000, v19, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v29, 0x80000000, v3, s6
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s61, s4
	.loc	1 587 22                        ; attention_backward.py:587:22
	s_add_i32 s14, s54, 31
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v30, 0x80000000, v3, s6
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s12, s4
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_ashr_i32 s15, s14, 31
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v3, 0x80000000, v3, s6
	s_mov_b32 s13, 0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_hi_u32 s6, s44, s45
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_mov_b32 s24, s20
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt vmcnt(7)
	ds_store_b8 v207, v34
	s_waitcnt vmcnt(6)
	ds_store_b8 v207, v9 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v208, v10
	s_waitcnt vmcnt(4)
	ds_store_b8 v208, v4 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v209, v5
	s_waitcnt vmcnt(2)
	ds_store_b8 v209, v6 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v210, v7
	s_waitcnt vmcnt(0)
	ds_store_b8 v210, v8 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_clause 0xf
	buffer_load_u16 v9, v12, s[40:43], 0 offen
	buffer_load_u16 v10, v13, s[40:43], 0 offen
	buffer_load_u16 v12, v14, s[40:43], 0 offen
	buffer_load_u16 v36, v15, s[40:43], 0 offen
	buffer_load_u16 v37, v16, s[40:43], 0 offen
	buffer_load_u16 v38, v17, s[40:43], 0 offen
	buffer_load_u16 v39, v18, s[40:43], 0 offen
	buffer_load_u16 v40, v20, s[40:43], 0 offen
	buffer_load_u16 v21, v21, s[40:43], 0 offen
	buffer_load_u16 v23, v23, s[40:43], 0 offen
	buffer_load_u16 v24, v24, s[40:43], 0 offen
	buffer_load_u16 v26, v26, s[40:43], 0 offen
	buffer_load_u16 v27, v27, s[40:43], 0 offen
	buffer_load_u16 v41, v29, s[40:43], 0 offen
	buffer_load_u16 v42, v30, s[40:43], 0 offen
	buffer_load_u16 v43, v3, s[40:43], 0 offen
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
	v_and_b32_e32 v2, 12, v0
	v_lshlrev_b32_e32 v3, 5, v66
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v6, s33, v49
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_add_lshl_u32 v32, s62, v49, 1
	.loc	1 588 9                         ; attention_backward.py:588:9
	scratch_store_b32 off, v49, off offset:552 ; 4-byte Folded Spill
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshlrev_b32_e32 v4, 1, v2
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v7, 2, v6
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, s55, v6
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v8, 4, v6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_or_b32_e32 v5, v3, v4
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v11, 6, v6
	v_or_b32_e32 v22, 8, v6
	v_or_b32_e32 v25, 10, v6
	v_or_b32_e32 v34, 12, v6
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v28, 0, v5
	v_xad_u32 v29, v5, 8, 0
	v_xad_u32 v30, v5, 16, 0
	v_xad_u32 v31, v5, 24, 0
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v35, 14, v6
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v5, 0x80000000, v32, s2
	v_add_nc_u32_e32 v6, 4, v32
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, s55, v7
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v33, 8, v32
	v_add_nc_u32_e32 v44, 12, v32
	v_add_nc_u32_e32 v45, 16, v32
	v_add_nc_u32_e32 v46, 20, v32
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, s55, v8
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v47, 24, v32
	v_add_nc_u32_e32 v48, 28, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v7, 0x80000000, v33, s2
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, s55, v11
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v8, 0x80000000, v44, s2
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, s55, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v32, 0x80000000, v45, s2
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, s55, v25
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v33, 0x80000000, v46, s2
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, s55, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v34, 0x80000000, v47, s2
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, s55, v35
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v35, 0x80000000, v48, s2
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_lshr_b32 s2, s15, 27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s14, s2
	.loc	1 587 20 is_stmt 0              ; attention_backward.py:587:20
	s_and_b32 s83, s2, 0xffffffe0
	.loc	1 588 9 is_stmt 1               ; attention_backward.py:588:9
	s_bfe_u32 s2, s48, 0x10008
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt vmcnt(23)
	v_mov_b16_e64 v213.h, v9.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v16.h, v10.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v17.h, v12.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v18.h, v36.l
	v_mov_b16_e32 v19.h, v37.l
	v_mov_b16_e32 v20.h, v38.l
	v_mov_b16_e32 v21.h, v39.l
	v_mov_b16_e32 v22.h, v40.l
	v_mov_b16_e32 v23.h, v21.l
	v_mov_b16_e32 v24.h, v23.l
	v_mov_b16_e32 v25.h, v24.l
	v_mov_b16_e32 v26.h, v26.l
	v_mov_b16_e32 v27.h, v27.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v13.h, v41.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v14.h, v42.l
	v_mov_b16_e32 v15.h, v43.l
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s2, s33, s49
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_add_i32 s14, s50, s51
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s2, s2, s51
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_sub_i32 s14, s33, s14
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s2, s2, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 592 17                        ; attention_backward.py:592:17
	s_min_i32 s2, s54, s2
	.loc	1 590 24                        ; attention_backward.py:590:24
	s_max_i32 s2, s2, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 600 19                        ; attention_backward.py:600:19
	s_add_i32 s2, s2, 31
	.loc	1 600 18 is_stmt 0              ; attention_backward.py:600:18
	s_ashr_i32 s13, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s13, s13, 27
	s_add_i32 s2, s2, s13
	.loc	1 589 24 is_stmt 1              ; attention_backward.py:589:24
	s_max_i32 s13, s14, 0
	.loc	1 600 17                        ; attention_backward.py:600:17
	s_and_not1_b32 s2, s2, 31
	.loc	1 597 45                        ; attention_backward.py:597:45
	s_and_b32 s13, s13, 0x7fffffe0
	.loc	1 598 24                        ; attention_backward.py:598:24
	s_min_i32 s83, s83, s2
.LBB0_2:
	.loc	1 0 24 is_stmt 0                ; attention_backward.py:0:24
	s_clause 0x7
	buffer_load_u16 v12, v5, s[24:27], 0 offen
	buffer_load_u16 v11, v6, s[24:27], 0 offen
	buffer_load_u16 v10, v7, s[24:27], 0 offen
	buffer_load_u16 v9, v8, s[24:27], 0 offen
	buffer_load_u16 v8, v32, s[24:27], 0 offen
	buffer_load_u16 v7, v33, s[24:27], 0 offen
	buffer_load_u16 v6, v34, s[24:27], 0 offen
	buffer_load_u16 v5, v35, s[24:27], 0 offen
	ds_load_b64 v[32:33], v28
	ds_load_b64 v[28:29], v29
	.loc	1 556 26 is_stmt 1              ; attention_backward.py:556:26
	v_mov_b16_e64 v213.l, 0
	.loc	1 556 28 is_stmt 0              ; attention_backward.py:556:28
	v_lshrrev_b16 v36.l, 4, v19.l
	.loc	1 554 72 is_stmt 1              ; attention_backward.py:554:72
	s_waitcnt vmcnt(0)
	v_and_b16 v5.h, v19.l, 15
	v_and_b16 v6.h, v20.l, 15
	v_and_b16 v7.h, v15.l, 15
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e64 v36.h, v213.l
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v8.h, v16.l, 15
	v_and_b16 v9.h, v17.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v37.l, 4, v20.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e64 v37.h, v213.l
	.loc	1 554 72 is_stmt 1              ; attention_backward.py:554:72
	v_and_b16 v10.h, v18.l, 15
	v_and_b16 v11.h, v13.l, 15
	v_and_b16 v12.h, v14.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v39.l, 4, v16.l
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v37, 0, v37, s7
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e64 v39.h, v213.l
	.loc	1 556 28 is_stmt 0              ; attention_backward.py:556:28
	v_lshrrev_b16 v38.l, 4, v15.l
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e32 v36, 0, v36, vcc_lo
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_waitcnt lgkmcnt(1)
	scratch_store_b64 off, v[32:33], off offset:76 ; 8-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[28:29], off offset:84 ; 8-byte Folded Spill
	ds_load_b64 v[28:29], v30
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_and_b32_e32 v33, 15, v18
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v5.h
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e64 v38.h, v213.l
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
	v_mov_b16_e64 v41.h, v213.l
	.loc	1 556 28 is_stmt 0              ; attention_backward.py:556:28
	v_lshrrev_b16 v40.l, 4, v17.l
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e64 v40.h, v213.l
	.loc	1 557 50 is_stmt 1              ; attention_backward.py:557:50
	v_or_b32_e32 v46, -16, v30
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v43.l, 4, v14.l
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v41, 0, v41, s10
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e64 v43.h, v213.l
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v40, 0, v40, s8
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v42.l, 4, v13.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e64 v42.h, v213.l
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_mul_i32 s2, s6, s35
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[28:29], off offset:92 ; 8-byte Folded Spill
	ds_load_b64 v[28:29], v31
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e64 v43, 0, v43, s12
	v_cndmask_b32_e64 v42, 0, v42, s11
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e64 v18.l, v213.l
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_sub_i32 s2, s44, s2
	s_xor_b32 s14, s36, s38
	s_add_i32 s15, s6, 1
	s_sub_i32 s16, s2, s35
	s_cmp_ge_u32 s2, s35
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e64 v21.l, v213.l
	v_mov_b16_e64 v23.l, v213.l
	v_mov_b16_e64 v24.l, v213.l
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s6, s15, s6
	s_cselect_b32 s2, s16, s2
	s_add_i32 s15, s6, 1
	s_cmp_ge_u32 s2, s35
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e64 v22.l, v213.l
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s2, s15, s6
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e64 v27.l, v213.l
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_xor_b32 s2, s2, s14
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[28:29], off offset:100 ; 8-byte Folded Spill
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v29, 15, v20
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e64 v20.l, v213.l
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_sub_i32 s84, s2, s14
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e64 v25.l, v213.l
	v_mov_b16_e64 v26.l, v213.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v45, -16, v29
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v28, 15, v19
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e64 v19.l, v213.l
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x50
	s_load_b32 s48, s[0:1], 0x74
	v_mov_b16_e64 v15.l, v213.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v44, -16, v28
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v35, 15, v14
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e64 v14.l, v213.l
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v214, s33, v66
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v67, 1, v52
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v28, v28, v44, vcc_lo
	.loc	1 557 50 is_stmt 0              ; attention_backward.py:557:50
	v_or_b32_e32 v51, -16, v35
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_and_b32_e32 v34, 15, v13
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v6.h
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v44, -16, v36
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v28, v28
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e64 v13.l, v213.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v50, -16, v34
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v31, 15, v16
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v29, v29, v45, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v7.h
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v45, -16, v37
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e64 v16.l, v213.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v47, -16, v31
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v29, v29
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v30, v30, v46, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v8.h
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_and_b32_e32 v32, 15, v17
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v46, -16, v38
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e64 v17.l, v213.l
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v31, v31, v47, vcc_lo
	.loc	1 557 50 is_stmt 0              ; attention_backward.py:557:50
	v_or_b32_e32 v48, -16, v32
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v9.h
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v47, -16, v39
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_dual_mul_f32 v28, v28, v213 :: v_dual_mul_f32 v19, v30, v19
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v32, v32, v48, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v10.h
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v48, -16, v40
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v255, s16, 0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s6, s55, v214
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_dual_cndmask_b32 v33, v33, v49 :: v_dual_add_nc_u32 v216, v207, v0
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v11.h
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v49, -16, v41
	v_writelane_b32 v255, s17, 1
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cmp_lt_i32 s84, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v34, v34, v50, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v12.h
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v50, -16, v42
	v_writelane_b32 v255, s18, 2
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v34, v34
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v35, v35, v51, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v36
	.loc	1 558 52 is_stmt 0              ; attention_backward.py:558:52
	v_or_b32_e32 v51, -16, v43
	v_writelane_b32 v255, s19, 3
	.loc	1 715 36 is_stmt 1              ; attention_backward.py:715:36
	s_barrier
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v35, v35
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v36, v36, v44, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v37
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_mul_f32_e32 v21, v31, v21
	v_mul_f32_e32 v27, v34, v27
	v_mul_f32_e32 v17, v29, v17
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v29, v28, 16, 1
	.loc	1 558 26 is_stmt 1              ; attention_backward.py:558:26
	v_cndmask_b32_e32 v37, v37, v45, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v38
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v32, v32
	v_mul_f32_e32 v25, v33, v25
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_cmp_o_f32_e64 s5, v17, v17
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 558 26 is_stmt 1              ; attention_backward.py:558:26
	v_cndmask_b32_e32 v38, v38, v46, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v39
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_mul_f32_e32 v23, v32, v23
	v_mul_f32_e32 v31, v35, v14
	v_mul_f32_e32 v18, v37, v18
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_add3_u32 v14, v28, v29, 0x7fff
	.loc	1 558 26 is_stmt 1              ; attention_backward.py:558:26
	v_cndmask_b32_e32 v39, v39, v47, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v40
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v36, v36
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v29, v17, 16, 1
	v_cmp_o_f32_e64 s7, v18, v18
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 558 26 is_stmt 1              ; attention_backward.py:558:26
	v_cndmask_b32_e32 v40, v40, v48, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v41
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_mul_f32_e32 v16, v36, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v22, v39, v22 :: v_dual_lshlrev_b32 v249, 1, v0
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v41, v41, v49, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v42
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_cmp_o_f32_e64 s2, v16, v16
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 558 26 is_stmt 1              ; attention_backward.py:558:26
	v_cndmask_b32_e32 v42, v42, v50, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v43
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_mul_f32_e32 v20, v38, v20
	s_delay_alu instid0(VALU_DEP_3)
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
	v_cndmask_b16 v5.h, 0x7fff, v14.h, vcc_lo
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
	v_cndmask_b16 v6.h, 0x7fff, v13.h, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v7.h, 0x7fff, v16.h, s5
	v_cndmask_b16 v8.h, 0x7fff, v17.h, s7
	v_bfe_u32 v16, v21, 16, 1
	v_bfe_u32 v17, v22, 16, 1
	v_bfe_u32 v13, v20, 16, 1
	v_add3_u32 v14, v19, v14, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v16, v21, v16, 0x7fff
	v_cmp_o_f32_e64 s5, v21, v21
	v_add3_u32 v17, v22, v17, 0x7fff
	v_cmp_o_f32_e64 s7, v22, v22
	v_add3_u32 v13, v20, v13, 0x7fff
	v_cmp_o_f32_e64 s2, v20, v20
	v_cndmask_b16 v9.h, 0x7fff, v14.h, vcc_lo
	v_bfe_u32 v14, v23, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v16.h, s5
	v_cndmask_b16 v12.h, 0x7fff, v17.h, s7
	v_bfe_u32 v16, v25, 16, 1
	v_bfe_u32 v17, v26, 16, 1
	v_cndmask_b16 v10.h, 0x7fff, v13.h, s2
	v_bfe_u32 v13, v24, 16, 1
	v_add3_u32 v14, v23, v14, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	v_add3_u32 v16, v25, v16, 0x7fff
	v_cmp_o_f32_e64 s5, v25, v25
	v_add3_u32 v17, v26, v17, 0x7fff
	v_cmp_o_f32_e64 s7, v26, v26
	v_bfe_u32 v18, v27, 16, 1
	v_add3_u32 v13, v24, v13, 0x7fff
	v_cmp_o_f32_e64 s2, v24, v24
	v_cndmask_b16 v13.l, 0x7fff, v14.h, vcc_lo
	v_cndmask_b16 v14.l, 0x7fff, v16.h, s5
	v_cndmask_b16 v14.h, 0x7fff, v17.h, s7
	v_bfe_u32 v16, v30, 16, 1
	v_add3_u32 v17, v27, v18, 0x7fff
	v_bfe_u32 v18, v31, 16, 1
	v_bfe_u32 v19, v15, 16, 1
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s2
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_add3_u32 v16, v30, v16, 0x7fff
	v_cmp_o_f32_e64 s2, v30, v30
	v_add3_u32 v18, v31, v18, 0x7fff
	v_cmp_o_f32_e64 s5, v31, v31
	v_add3_u32 v19, v15, v19, 0x7fff
	v_cmp_o_f32_e64 s7, v15, v15
	v_cndmask_b16 v15.l, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v15.h, 0x7fff, v16.h, s2
	v_cndmask_b16 v16.l, 0x7fff, v18.h, s5
	.loc	1 715 36 is_stmt 1              ; attention_backward.py:715:36
	v_xor_b32_e32 v17, 0x90, v249
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v16.h, 0x7fff, v19.h, s7
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_xor_b32_e32 v18, 0x120, v249
	v_xor_b32_e32 v19, 0x1b0, v249
	v_xor_b32_e32 v20, 0x240, v249
	v_add_nc_u32_e32 v217, 0, v17
	v_xor_b32_e32 v17, 0x2d0, v249
	v_add_nc_u32_e32 v218, 0, v18
	v_add_nc_u32_e32 v219, 0, v19
	v_xor_b32_e32 v18, 0x360, v249
	v_xor_b32_e32 v19, 0x3f0, v249
	v_add_nc_u32_e32 v220, 0, v20
	v_add_nc_u32_e32 v221, 0, v17
	ds_store_b16_d16_hi v216, v5
	ds_store_b16 v216, v13 offset:1024
	ds_store_b16_d16_hi v217, v6
	ds_store_b16_d16_hi v217, v13 offset:1024
	ds_store_b16_d16_hi v218, v7
	ds_store_b16 v218, v14 offset:1024
	ds_store_b16_d16_hi v219, v8
	ds_store_b16_d16_hi v219, v14 offset:1024
	v_add_nc_u32_e32 v222, 0, v18
	v_add_nc_u32_e32 v223, 0, v19
	ds_store_b16_d16_hi v220, v9
	ds_store_b16 v220, v15 offset:1024
	ds_store_b16_d16_hi v221, v10
	ds_store_b16_d16_hi v221, v15 offset:1024
	ds_store_b16_d16_hi v222, v11
	ds_store_b16 v222, v16 offset:1024
	ds_store_b16_d16_hi v223, v12
	ds_store_b16_d16_hi v223, v16 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cbranch_scc1 .LBB0_13
; %bb.3:                                ; %.lr.ph182
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	s_xor_b32 s2, s3, s53
	.loc	1 550 20 is_stmt 1              ; attention_backward.py:550:20
	v_lshlrev_b32_e32 v1, 1, v1
	s_ashr_i32 s2, s2, 31
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e64 v213.h, v12.l
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_and_b32_e32 v12, 7, v0
	v_writelane_b32 v255, s62, 4
	s_clause 0x1
	s_load_b32 s5, s[0:1], 0x90
	s_load_b128 s[60:63], s[0:1], 0x80
	s_xor_b32 s7, s34, s2
	s_clause 0x2
	s_load_b256 s[40:47], s[0:1], 0x30
	s_load_b64 s[64:65], s[0:1], 0x0
	s_load_b64 s[68:69], s[0:1], 0x18
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_sub_i32 s1, s33, s51
	s_sub_i32 s2, s7, s2
	s_max_i32 s1, s1, 0
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v14, 1, v1
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v11.h, v10.l
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_lshlrev_b32_e32 v10, 4, v12
	s_mul_i32 s0, s2, s53
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_and_b32 s1, s1, 0x7fffffe0
	s_sub_i32 s0, s3, s0
	s_max_u32 s1, s13, s1
	s_and_b32 s3, s82, exec_lo
	s_cselect_b32 s3, s1, s13
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s1, s48, v14
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e64 v14.l, v213.l
	v_mov_b16_e32 v14.h, v11.l
	v_mov_b16_e64 v11.l, v213.l
	v_mov_b16_e32 v9.h, v8.l
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_lshl_or_b32 v8, v66, 7, v10
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v7.h, v6.l
	scratch_store_b32 off, v14, off offset:116 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v33, 3, v66
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v224, 4, v0
	v_lshl_or_b32 v29, v52, 6, v8
	scratch_store_b32 off, v11, off offset:120 ; 4-byte Folded Spill
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v11.h, v9.l
	v_mov_b16_e64 v9.l, v213.l
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_xad_u32 v6, 0x70, v8, 0
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s0, s84, s0
	s_cmp_lt_i32 s3, s83
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v11, off offset:124
	scratch_store_b32 off, v9, off offset:128
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v9.h, v7.l
	v_mov_b16_e64 v7.l, v213.l
	.loc	1 613 26                        ; attention_backward.py:613:26
	v_writelane_b32 v255, s0, 5
	s_mul_i32 s0, s2, s52
	.loc	1 683 27                        ; attention_backward.py:683:27
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s2, s2, s61
	scratch_store_b32 off, v9, off offset:132 ; 4-byte Folded Spill
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v9.h, v5.l
	scratch_store_b32 off, v7, off offset:136 ; 4-byte Folded Spill
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_xad_u32 v7, 0x60, v8, 0
	ds_load_b128 v[18:21], v6
	ds_load_b128 v[14:17], v7
	v_xad_u32 v5, 0x50, v8, 0
	scratch_store_b32 off, v9, off offset:140 ; 4-byte Folded Spill
	v_xad_u32 v9, v8, 64, 0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[14:17], off offset:144
	scratch_store_b128 off, v[18:21], off offset:160
	ds_load_b128 v[18:21], v5
	ds_load_b128 v[14:17], v9
	v_xad_u32 v6, v8, 48, 0
	v_xad_u32 v7, v8, 32, 0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[14:17], off offset:176
	scratch_store_b128 off, v[18:21], off offset:192
	ds_load_b128 v[18:21], v6
	ds_load_b128 v[14:17], v7
	v_xad_u32 v5, v8, 16, 0
	v_add_nc_u32_e32 v9, 0, v8
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[14:17], off offset:208
	scratch_store_b128 off, v[18:21], off offset:224
	ds_load_b128 v[18:21], v5
	ds_load_b128 v[14:17], v9
	v_lshlrev_b32_e32 v6, 4, v52
	v_mul_lo_u32 v7, s5, v214
	.loc	1 641 25                        ; attention_backward.py:641:25
	v_writelane_b32 v255, s0, 6
	s_cselect_b32 s87, -1, 0
	s_lshl_b32 s7, s63, 4
	v_or3_b32 v5, v4, v6, v3
	v_mul_lo_u32 v6, s63, v224
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_writelane_b32 v255, s2, 7
	s_lshl_b32 s2, s63, 2
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[14:17], off offset:240
	scratch_store_b128 off, v[18:21], off offset:256
	v_add_nc_u32_e32 v9, v7, v6
	v_add3_u32 v14, v6, s7, v7
	v_writelane_b32 v255, s3, 8
	s_lshl_b32 s3, s63, 3
	s_mul_i32 s5, s63, 12
	scratch_store_b32 off, v9, off offset:276 ; 4-byte Folded Spill
	v_add3_u32 v9, v6, s2, v7
	v_cmp_eq_u32_e32 vcc_lo, 0, v52
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s0, s48, v1
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_and_b32_e32 v1, 48, v0
	s_mul_i32 s8, s63, 20
	scratch_store_b32 off, v9, off offset:280 ; 4-byte Folded Spill
	v_add3_u32 v9, v6, s3, v7
	v_cndmask_b32_e64 v11, 0x104, 0, vcc_lo
	v_and_b32_e32 v15, 1, v0
	v_lshlrev_b32_e32 v1, 2, v1
	v_and_b32_e32 v13, 16, v0
	scratch_store_b32 off, v9, off offset:284 ; 4-byte Folded Spill
	v_add3_u32 v9, v6, s5, v7
	v_dual_mov_b32 v41, 0 :: v_dual_lshlrev_b32 v16, 5, v15
	s_mul_i32 s9, s63, 24
	s_mul_i32 s10, s63, 28
	scratch_store_b32 off, v9, off offset:288 ; 4-byte Folded Spill
	v_and_b32_e32 v9, 60, v249
	v_lshrrev_b32_e32 v17, 4, v52
	v_lshrrev_b32_e32 v65, 5, v0
	v_lshlrev_b32_e32 v26, 1, v66
	v_xor_b32_e32 v3, 8, v5
	v_xor_b32_e32 v9, v11, v9
	v_add3_u32 v11, v6, s8, v7
	scratch_store_b32 off, v14, off offset:292 ; 4-byte Folded Spill
	v_and_b32_e32 v14, 14, v0
	v_lshrrev_b32_e32 v23, 1, v0
	v_lshl_or_b32 v9, v15, 6, v9
	scratch_store_b32 off, v11, off offset:296 ; 4-byte Folded Spill
	v_lshrrev_b32_e32 v15, 1, v13
	v_lshlrev_b32_e32 v11, 1, v14
	v_lshl_or_b32 v1, v14, 7, v1
	v_add3_u32 v14, v6, s9, v7
	v_add3_u32 v6, v6, s10, v7
	v_xor_b32_e32 v27, 0x208, v9
	scratch_store_b32 off, v9, off offset:300 ; 4-byte Folded Spill
	v_or3_b32 v20, v1, v16, v11
	v_lshrrev_b32_e32 v16, 2, v13
	v_xor_b32_e32 v7, 0x618, v9
	v_and_or_b32 v15, v0, 2, v15
	v_lshlrev_b32_e32 v13, 2, v13
	v_add3_u32 v247, 0, v52, v26
	v_or3_b32 v21, v16, v17, v33
	scratch_store_b32 off, v6, off offset:308 ; 4-byte Folded Spill
	v_xor_b32_e32 v6, 0x410, v9
	v_lshlrev_b32_e32 v9, 2, v0
	v_or3_b32 v26, v26, v13, v52
	v_xor_b32_e32 v4, 16, v5
	v_and_b32_e32 v23, 12, v23
	v_lshlrev_b32_e32 v8, 3, v0
	v_and_b32_e32 v9, 52, v9
	scratch_store_b32 off, v14, off offset:304 ; 4-byte Folded Spill
	v_xor_b32_e32 v11, 4, v20
	v_xor_b32_e32 v14, 8, v20
	v_xor_b32_e32 v18, 12, v20
	v_lshl_or_b32 v2, v2, 5, v9
	v_xor_b32_e32 v9, 16, v20
	v_xor_b32_e32 v16, 20, v20
	v_xor_b32_e32 v19, 24, v20
	v_xor_b32_e32 v13, 32, v29
	v_or3_b32 v1, v15, v2, v65
	v_xor_b32_e32 v2, 28, v20
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v21, off offset:316
	scratch_store_b32 off, v26, off offset:464
	v_xor_b32_e32 v15, 0x90, v21
	v_xor_b32_e32 v22, 16, v1
	v_xor_b32_e32 v24, 32, v1
	scratch_store_b32 off, v1, off offset:320 ; 4-byte Folded Spill
	v_xor_b32_e32 v25, 48, v1
	v_mov_b32_e32 v1, v0
	scratch_store_b32 off, v5, off offset:272 ; 4-byte Folded Spill
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v0, s81, v0
	v_xor_b32_e32 v5, 24, v5
	v_lshl_or_b32 v12, v12, 7, v23
	scratch_store_b64 off, v[1:2], off offset:108 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:328
	scratch_store_b32 off, v0, off offset:324
	v_add_nc_u32_e32 v1, 0, v4
	scratch_store_b32 off, v20, off offset:312 ; 4-byte Folded Spill
	v_or3_b32 v17, v12, v10, v17
	v_add_nc_u32_e32 v0, s81, v0
	v_xor_b32_e32 v20, 0x120, v21
	scratch_store_b32 off, v1, off offset:332 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v5
	v_xor_b32_e32 v21, 0x1b0, v21
	v_xor_b32_e32 v23, 16, v29
	v_xor_b32_e32 v10, 48, v29
	v_xor_b32_e32 v12, 64, v29
	scratch_store_b32 off, v1, off offset:336 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v27
	v_add_nc_u32_e32 v195, 0, v24
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v239, 18, v65
	v_or_b32_e32 v246, 20, v65
	v_or_b32_e32 v30, 24, v65
	scratch_store_b32 off, v1, off offset:340 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v6
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:344
	scratch_store_b32 off, v0, off offset:380
	v_add_nc_u32_e32 v1, 0, v7
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v0, s81, v0
	v_or_b32_e32 v27, 26, v65
	v_or_b32_e32 v244, 28, v65
	scratch_store_b32 off, v1, off offset:348 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v11
	v_or_b32_e32 v245, 30, v65
	v_or_b32_e32 v236, v67, v66
	.loc	1 641 25                        ; attention_backward.py:641:25
	s_mul_f32 s86, s60, 0x3fb8aa3b
	s_mov_b32 s53, 0
	scratch_store_b32 off, v1, off offset:352 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v14
	s_and_b32 s65, s65, 0xffff
	s_mov_b32 s67, 0x31027000
	s_mov_b32 s66, 0x7ffffffe
	s_and_b32 s69, s69, 0xffff
	scratch_store_b32 off, v1, off offset:356 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v18
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:360
	scratch_store_b32 off, v0, off offset:404
	v_add_nc_u32_e32 v1, 0, v9
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v8, 48, v8
	v_add_nc_u32_e32 v166, 0, v25
	s_and_b32 s41, s41, 0xffff
	scratch_store_b32 off, v1, off offset:364 ; 4-byte Folded Spill
	v_dual_mov_b32 v56, v9 :: v_dual_add_nc_u32 v1, 0, v16
	v_dual_mov_b32 v35, v9 :: v_dual_add_nc_u32 v0, s81, v0
	v_mov_b32_e32 v37, v9
	scratch_store_b32 off, v1, off offset:368 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v19
	v_mov_b32_e32 v39, v9
	v_mov_b32_e32 v61, v9
	v_mov_b32_e32 v63, v9
	v_mov_b32_e32 v49, 0
	scratch_store_b32 off, v1, off offset:372 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:376
	scratch_store_b32 off, v0, off offset:424
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v0, s81, v0
	v_add_nc_u32_e32 v1, 0, v15
	v_mov_b32_e32 v45, v9
	v_lshl_or_b32 v8, v66, 6, v8
	v_mov_b32_e32 v51, v9
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:440
	scratch_store_b32 off, v1, off offset:384
	v_add_nc_u32_e32 v0, s81, v0
	v_dual_mov_b32 v48, v9 :: v_dual_add_nc_u32 v1, 0, v20
	v_mov_b32_e32 v42, v9
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v43, v9 :: v_dual_add_nc_u32 v2, s81, v0
	scratch_store_b32 off, v1, off offset:388 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v21
	v_mov_b32_e32 v55, v9
	v_dual_mov_b32 v44, v9 :: v_dual_add_nc_u32 v3, s81, v2
	v_mov_b32_e32 v53, v9
	v_mov_b32_e32 v46, v9
	v_mov_b32_e32 v47, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v34, v9 :: v_dual_add_nc_u32 v5, s81, v3
	scratch_store_b32 off, v1, off offset:392 ; 4-byte Folded Spill
	v_dual_mov_b32 v36, v9 :: v_dual_add_nc_u32 v1, 0, v23
	v_dual_mov_b32 v38, v9 :: v_dual_add_nc_u32 v7, s81, v5
	v_mov_b32_e32 v40, v9
	scratch_store_b32 off, v1, off offset:396 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v13
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:400
	scratch_store_b32 off, v0, off offset:448
	v_add_nc_u32_e32 v0, 0, v10
	v_add_nc_u32_e32 v1, 0, v12
	v_mad_u64_u32 v[10:11], null, s80, 18, v[161:162]
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:452
	scratch_store_b32 off, v0, off offset:408
	v_xor_b32_e32 v0, 0x50, v29
	v_xor_b32_e32 v2, 0x70, v29
	v_mov_b32_e32 v58, v9
	v_mov_b32_e32 v59, v9
	scratch_store_b64 off, v[10:11], off offset:488 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v1, off offset:412 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x60, v29
	v_mad_u64_u32 v[10:11], null, s80, 20, v[161:162]
	scratch_store_b32 off, v29, off offset:456 ; 4-byte Folded Spill
	v_dual_mov_b32 v60, v9 :: v_dual_add_nc_u32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:420
	scratch_store_b32 off, v3, off offset:460
	v_add_nc_u32_e32 v1, 0, v2
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x90, v26
	v_xor_b32_e32 v2, 16, v8
	scratch_store_b64 off, v[10:11], off offset:496 ; 8-byte Folded Spill
	v_mad_u64_u32 v[10:11], null, s80, 22, v[161:162]
	v_add_nc_u32_e32 v3, 0, v0
	v_xor_b32_e32 v0, 0x1b0, v26
	scratch_store_b32 off, v5, off offset:468 ; 4-byte Folded Spill
	v_mov_b32_e32 v62, v9
	v_mov_b32_e32 v64, v9
	v_mov_b32_e32 v50, v9
	v_add_nc_u32_e32 v6, 0, v0
	v_add_nc_u32_e32 v0, 0, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:432
	scratch_store_b32 off, v8, off offset:476
	v_xor_b32_e32 v0, 48, v8
	scratch_store_b64 off, v[10:11], off offset:504 ; 8-byte Folded Spill
	v_mad_u64_u32 v[10:11], null, s80, 24, v[161:162]
	scratch_store_b32 off, v7, off offset:472 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v1, off offset:428 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x120, v26
	v_add_nc_u32_e32 v7, s81, v7
	v_xor_b32_e32 v2, 32, v17
	scratch_store_b64 off, v[10:11], off offset:512 ; 8-byte Folded Spill
	v_mad_u64_u32 v[10:11], null, s80, 26, v[161:162]
	v_add_nc_u32_e32 v5, 0, v1
	v_xor_b32_e32 v1, 32, v8
	v_add_nc_u32_e32 v8, s81, v7
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v7, off offset:480
	scratch_store_b32 off, v0, off offset:444
	v_xor_b32_e32 v0, 48, v17
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b64 off, v[10:11], off offset:520 ; 8-byte Folded Spill
	v_mad_u64_u32 v[10:11], null, s80, 28, v[161:162]
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v8, off offset:484
	scratch_store_b32 off, v1, off offset:436
	v_add_nc_u32_e32 v8, s81, v8
	v_add_nc_u32_e32 v19, 0, v0
	v_xor_b32_e32 v0, 0x50, v17
	v_xor_b32_e32 v1, 16, v17
	v_add_nc_u32_e32 v235, 0, v2
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v8, off offset:544
	scratch_store_b64 off, v[10:11], off offset:528
	v_add_nc_u32_e32 v8, s81, v8
	v_add_nc_u32_e32 v237, 0, v0
	v_xor_b32_e32 v0, 0x90, v33
	v_xor_b32_e32 v2, 0x60, v17
	v_add_nc_u32_e32 v7, 0, v1
	v_dual_mov_b32 v31, v8 :: v_dual_add_nc_u32 v8, s81, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v20, 0, v0
	v_xor_b32_e32 v0, 0x240, v33
	v_xor_b32_e32 v1, 64, v17
	v_dual_mov_b32 v28, v8 :: v_dual_add_nc_u32 v241, 0, v2
	v_add_nc_u32_e32 v8, s81, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v24, 0, v0
	v_xor_b32_e32 v0, 0x360, v33
	v_xor_b32_e32 v2, 0x1b0, v33
	v_mad_u64_u32 v[10:11], null, s80, 30, v[161:162]
	v_mov_b32_e32 v174, v8
	v_add_nc_u32_e32 v8, s81, v8
	v_add_nc_u32_e32 v240, 0, v0
	v_add_nc_u32_e32 v23, 0, v2
	v_xor_b32_e32 v2, 0x3f0, v33
	v_mov_b32_e32 v26, v33
	v_mov_b32_e32 v32, v8
	v_add_nc_u32_e32 v8, s81, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v52, v9 :: v_dual_add_nc_u32 v25, 0, v2
	v_mov_b32_e32 v54, v9
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v29, 16, v65
	v_add_nc_u32_e32 v0, s81, v8
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s73, s47, 0xffff
	s_mov_b32 s72, s46
	s_and_b32 s77, s43, 0xffff
	v_dual_mov_b32 v175, v0 :: v_dual_add_nc_u32 v0, s81, v0
	s_mov_b32 s76, s42
	s_clause 0x3                            ; 20-byte Folded Spill
	scratch_store_b32 off, v17, off offset:548
	scratch_store_b64 off, v[10:11], off offset:536
	scratch_store_b32 off, v66, off offset:556
	scratch_store_b32 off, v67, off offset:560
	v_mov_b32_e32 v176, v0
	v_add_nc_u32_e32 v0, s81, v0
	v_add_nc_u32_e32 v164, 0, v22
	v_add_nc_u32_e32 v22, 0, v1
	v_xor_b32_e32 v1, 0x70, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v177, v0 :: v_dual_add_nc_u32 v0, s81, v0
	v_add_nc_u32_e32 v18, 0, v1
	v_xor_b32_e32 v1, 0x120, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v178, v0
	v_add_nc_u32_e32 v0, s81, v0
	v_add_nc_u32_e32 v21, 0, v1
	v_xor_b32_e32 v1, 0x2d0, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v4, v0
	v_add_nc_u32_e32 v0, s81, v0
	v_add_nc_u32_e32 v238, 0, v1
	v_mov_b32_e32 v1, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v179, v0 :: v_dual_add_nc_u32 v0, s81, v0
	v_mov_b32_e32 v180, v0
	v_add_nc_u32_e32 v0, s81, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v234, v0
	v_add_nc_u32_e32 v0, s81, v0
	v_dual_mov_b32 v169, v0 :: v_dual_add_nc_u32 v2, s81, v0
	v_or_b32_e32 v0, 22, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v251, v2 :: v_dual_add_nc_u32 v2, s81, v2
	v_mov_b32_e32 v172, v2
	v_add_nc_u32_e32 v242, s81, v2
	s_branch .LBB0_5
.LBB0_4:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_add_i32 s53, s53, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s53, s84
	s_cbranch_scc0 .LBB0_12
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s87
	s_cbranch_vccnz .LBB0_4
; %bb.6:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 606 26                        ; attention_backward.py:606:26
	v_readlane_b32 s2, v255, 5
	.loc	1 613 26                        ; attention_backward.py:613:26
	v_readlane_b32 s3, v255, 6
	v_readlane_b32 s90, v255, 8
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_add_i32 s2, s53, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 613 26                        ; attention_backward.py:613:26
	s_add_i32 s88, s2, s3
	.loc	1 684 27                        ; attention_backward.py:684:27
	s_mul_i32 s89, s2, s62
	.loc	1 682 25                        ; attention_backward.py:682:25
	v_readlane_b32 s2, v255, 7
	.loc	1 613 25                        ; attention_backward.py:613:25
	s_mul_i32 s88, s88, s54
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_add_i32 s89, s89, s2
	s_branch .LBB0_8
.LBB0_7:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v10, v90, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v147.l, 0
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v147.h, v89.l
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v65, v73
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s2, s90, 1
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v90.l, v10.l
	v_bfe_i32 v10, v95, 0, 8
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s3, s90, 2
	s_or_b32 s7, s90, 3
	s_or_b32 s8, s90, 4
	s_or_b32 s9, s90, 5
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v95.l, v10.l
	v_bfe_i32 v10, v94, 0, 8
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s10, s90, 6
	s_or_b32 s11, s90, 7
	s_or_b32 s12, s90, 8
	s_or_b32 s13, s90, 9
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v94.l, v10.l
	v_bfe_i32 v10, v93, 0, 8
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s14, s90, 10
	s_or_b32 s15, s90, 11
	s_or_b32 s16, s90, 12
	s_or_b32 s17, s90, 13
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v93.l, v10.l
	v_bfe_i32 v10, v92, 0, 8
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s18, s90, 14
	s_or_b32 s33, s90, 15
	s_or_b32 s34, s90, 16
	s_or_b32 s35, s90, 17
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v92.l, v10.l
	v_bfe_i32 v10, v91, 0, 8
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s36, s90, 18
	s_or_b32 s38, s90, 19
	s_or_b32 s42, s90, 20
	s_or_b32 s43, s90, 21
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v91.l, v10.l
	v_bfe_i32 v10, v105, 0, 8
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s46, s90, 22
	s_or_b32 s47, s90, 23
	s_or_b32 s52, s90, 24
	s_or_b32 s55, s90, 25
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v105.l, v10.l
	v_bfe_i32 v10, v104, 0, 8
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s58, s90, 26
	s_or_b32 s59, s90, 27
	s_or_b32 s61, s90, 28
	s_or_b32 s74, s90, 29
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v104.l, v10.l
	v_bfe_i32 v10, v99, 0, 8
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s75, s90, 30
	s_or_b32 vcc_lo, s90, 31
	.loc	1 609 29 is_stmt 1              ; attention_backward.py:609:29
	s_cmp_lt_i32 s90, s54
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v16, v72
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v99.l, v10.l
	v_bfe_i32 v10, v98, 0, 8
	.loc	1 609 29 is_stmt 1              ; attention_backward.py:609:29
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s2, s54
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v74.h, v8.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s28, -1, 0
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v98.l, v10.l
	v_bfe_i32 v10, v97, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s3, s54
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v8, v66
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s29, -1, 0
	s_cmp_lt_i32 s7, s54
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v97.l, v10.l
	v_bfe_i32 v10, v96, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s30, -1, 0
	s_cmp_lt_i32 s8, s54
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v11, v67
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s31, -1, 0
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v96.l, v10.l
	v_bfe_i32 v10, v102, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s9, s54
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v12, v68
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s10, s54
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v102.l, v10.l
	v_bfe_i32 v10, v100, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s71, -1, 0
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v107, 15, v93
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s11, s54
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v13, v69
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v100.l, v10.l
	v_bfe_i32 v10, v103, 0, 8
	.loc	1 609 29 is_stmt 1              ; attention_backward.py:609:29
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s12, s54
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v14, v70
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s91, -1, 0
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v103.l, v10.l
	v_bfe_i32 v10, v101, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s13, s54
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v15, v71
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s14, s54
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v101.l, v10.l
	.loc	1 640 41 is_stmt 1              ; attention_backward.py:640:41
	v_mul_f32_e32 v10, s86, v147
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s15, s54
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v73, 15, v95
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s94, -1, 0
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_dual_mul_f32 v72, v10, v65 :: v_dual_and_b32 v115, 15, v96
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v65.h, 4, v95.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s16, s54
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v8, v10, v8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s17, s54
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v120.l, v65.h, 15
	v_lshrrev_b16 v65.h, 4, v94.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s96, -1, 0
	s_cmp_lt_i32 s18, s54
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_dual_mul_f32 v66, v10, v11 :: v_dual_and_b32 v111, 15, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v121.l, v65.h, 15
	v_lshrrev_b16 v65.h, 4, v93.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s97, -1, 0
	s_cmp_lt_i32 s33, s54
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_dual_mul_f32 v67, v10, v12 :: v_dual_and_b32 v106, 15, v94
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v122.l, v65.h, 15
	v_lshrrev_b16 v65.h, 4, v92.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s98, -1, 0
	s_cmp_lt_i32 s34, s54
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_dual_mul_f32 v68, v10, v13 :: v_dual_and_b32 v109, 15, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v123.l, v65.h, 15
	v_lshrrev_b16 v65.h, 4, v91.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s99, -1, 0
	s_cmp_lt_i32 s35, s54
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_dual_mul_f32 v69, v10, v14 :: v_dual_and_b32 v108, 15, v92
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v124.l, v65.h, 15
	v_lshrrev_b16 v65.h, 4, v105.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s100, -1, 0
	s_cmp_lt_i32 s36, s54
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_dual_mul_f32 v70, v10, v15 :: v_dual_and_b32 v113, 15, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v125.l, v65.h, 15
	v_lshrrev_b16 v65.h, 4, v104.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s101, -1, 0
	s_cmp_lt_i32 s38, s54
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_dual_mul_f32 v71, v10, v16 :: v_dual_and_b32 v110, 15, v105
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v126.l, v65.h, 15
	v_lshrrev_b16 v65.h, 4, v99.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s102, -1, 0
	s_cmp_lt_i32 s42, s54
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v10.l, v95.l, 15
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s103, -1, 0
	s_cmp_lt_i32 s43, s54
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v127.l, v65.h, 15
	v_lshrrev_b16 v65.h, 4, v98.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s104, -1, 0
	s_cmp_lt_i32 s46, s54
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v10.h, v94.l, 15
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 vcc_hi, -1, 0
	s_cmp_lt_i32 s47, s54
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v128.l, v65.h, 15
	v_lshrrev_b16 v65.h, 4, v97.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s38, -1, 0
	s_cmp_lt_i32 s52, s54
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v11.h, v92.l, 15
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s55, s54
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v129.l, v65.h, 15
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s58, s54
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v65.h, 4, v96.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s59, s54
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v12.l, v91.l, 15
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s61, s54
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v13.l, v104.l, 15
	v_and_b16 v13.h, v99.l, 15
	v_and_b16 v14.l, v98.l, 15
	v_and_b16 v14.h, v97.l, 15
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v130.l, v65.h, 15
	v_lshrrev_b16 v65.h, 4, v102.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s74, s54
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v120.h, v147.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s75, s54
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v131.l, v65.h, 15
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 vcc_lo, s54
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v65.h, 4, v100.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v10.l
	v_cmp_lt_u16_e64 s2, 7, v10.h
	v_cmp_lt_u16_e64 s7, 7, v11.h
	v_cmp_lt_u16_e64 s8, 7, v12.l
	v_cmp_lt_u16_e64 s10, 7, v13.l
	v_cmp_lt_u16_e64 s11, 7, v13.h
	v_cmp_lt_u16_e64 s12, 7, v14.l
	v_cmp_lt_u16_e64 s13, 7, v14.h
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v10, -16, v73
	v_or_b32_e32 v13, -16, v108
	v_or_b32_e32 v14, -16, v109
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v11.l, v93.l, 15
	v_and_b16 v16.l, v100.l, 15
	v_and_b16 v16.h, v103.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_dual_cndmask_b32 v10, v73, v10 :: v_dual_and_b32 v117, 15, v100
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v132.l, v65.h, 15
	v_lshrrev_b16 v65.h, 4, v103.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v13, v108, v13, s7
	v_cndmask_b32_e64 v14, v109, v14, s8
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v95.l
	v_cmp_gt_i16_e64 s8, 0, v91.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v91, -16, v120
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v114, 15, v97
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v86.h, v85.l
	v_mov_b16_e64 v85.l, v147.l
	v_mov_b16_e32 v85.h, v84.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v65.l, v101.l, 15
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v133.l, v65.h, 15
	v_lshrrev_b16 v65.h, 4, v101.l
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e64 v126.h, v147.l
	.loc	1 650 42 is_stmt 1              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s3, 7, v11.l
	v_cmp_lt_u16_e64 s16, 7, v16.l
	v_cmp_lt_u16_e64 s17, 7, v16.h
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v11, -16, v106
	v_or_b32_e32 v16, -16, v111
	.loc	1 651 34 is_stmt 1              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v91, v120, v91, vcc_lo
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v136, -16, v114
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v112, 15, v99
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v134.l, v65.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e64 v124.h, v147.l
	v_mov_b16_e64 v127.h, v147.l
	.loc	1 650 42 is_stmt 1              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s18, 7, v65.l
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v135, -16, v113
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v11, v106, v11, s2
	v_cndmask_b32_e64 v16, v111, v16, s10
	v_cndmask_b32_e64 v106, v114, v136, s13
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s10, 0, v104.l
	v_cmp_gt_i16_e64 s13, 0, v97.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v97, -16, v126
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_mul_f32_e32 v13, v13, v85
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v65, -16, v112
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v89.h, v88.l
	v_mov_b16_e64 v88.l, v147.l
	v_mov_b16_e32 v88.h, v87.l
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v128.h, v147.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v65, v112, v65, s11
	v_cndmask_b32_e64 v73, v113, v135, s12
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s11, 0, v99.l
	v_cmp_gt_i16_e64 s12, 0, v98.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v95, -16, v124
	v_or_b32_e32 v98, -16, v127
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v97, v126, v97, s10
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v10, v10
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v83.h, v82.l
	v_mov_b16_e64 v82.l, v147.l
	v_mov_b16_e32 v82.h, v81.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_dual_mul_f32 v10, v10, v88 :: v_dual_and_b32 v119, 15, v101
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v129.h, v147.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v139, -16, v117
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v99, -16, v128
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e64 v95, v124, v95, s8
	v_cndmask_b32_e64 v98, v127, v98, s11
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v97, v97
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v84.l, v147.l
	v_mov_b16_e32 v84.h, v83.l
	v_mov_b16_e64 v81.l, v147.l
	v_mov_b16_e32 v81.h, v80.l
	v_mov_b16_e64 v80.l, v147.l
	v_mov_b16_e32 v80.h, v79.l
	v_mov_b16_e64 v79.l, v147.l
	v_mov_b16_e32 v79.h, v78.l
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v121.h, v147.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v109, v117, v139, s16
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s16, 0, v100.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v100, -16, v129
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v99, v128, v99, s12
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v106, v106
	v_mul_f32_e32 v16, v16, v82
	v_mul_f32_e32 v82, v97, v82
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v97, 0, v10, s0
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v10.l, 4, v90.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s2, 0, v94.l
	v_cmp_gt_i16_e64 s7, 0, v92.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v92, -16, v121
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v100, v129, v100, s13
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v99, v99
	v_dual_mul_f32 v14, v14, v84 :: v_dual_mul_f32 v65, v65, v81
	v_dual_mul_f32 v84, v95, v84 :: v_dual_mul_f32 v81, v98, v81
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v98.l, v10.l, 15
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v10.l, v90.l, 15
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v98.h, v147.l
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v92, v121, v92, s2
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v100, v100
	v_mul_f32_e32 v73, v73, v80
	v_dual_mul_f32 v80, v99, v80 :: v_dual_and_b32 v99, 15, v90
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v90.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s2, 7, v10.l
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v10, -16, v98
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v89.l, v147.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v90, -16, v99
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v91, v91
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v87.l, v147.l
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v10, v98, v10, vcc_lo
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v87.h, v86.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v90, v99, v90, s2
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v123.h, v147.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v90, v90
	v_mul_f32_e32 v88, v91, v88
	v_dual_mul_f32 v11, v11, v87 :: v_dual_and_b32 v116, 15, v102
	v_mul_f32_e32 v10, v89, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v90, v89, v90
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v94, -16, v123
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v87, v92, v87
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v88, 0, v88, s1
	v_cndmask_b32_e64 v10, 0, v10, s1
	v_cndmask_b32_e64 v89, 0, v90, s0
	v_mov_b16_e64 v90.h, v147.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v12.h, v105.l, 15
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v94, v123, v94, s7
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v98.l, v10.h
	v_mov_b16_e32 v90.l, v89.h
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v15.l, v96.l, 15
	v_and_b16 v15.h, v102.l, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v98, 1, v98
	v_and_b32_e32 v90, 1, v90
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s9, 7, v12.h
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v12, -16, v107
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v94, v94
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v98, v10, v98, 0x7fff
	v_add3_u32 v90, v89, v90, 0x7fff
	v_bfe_u32 v10, v97, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_dual_mul_f32 v85, v94, v85 :: v_dual_and_b32 v118, 15, v103
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v135.h, 0x7fff, v98.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v89, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v10, v97, v10, 0x7fff
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v122.h, v147.l
	v_mov_b16_e64 v133.h, v147.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v135.l, 0x7fff, v90.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v97, v97
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s14, 7, v15.l
	v_cmp_lt_u16_e64 s15, 7, v15.h
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v15, -16, v110
	v_or_b32_e32 v140, -16, v118
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b16 v136.l, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v88, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v88, v88
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v12, v107, v12, s3
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v86.l, v147.l
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v125.h, v147.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v10, v88, v10, 0x7fff
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v137, -16, v115
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e64 v15, v110, v15, s9
	v_cndmask_b32_e64 v110, v118, v140, s17
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s3, 0, v93.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v136.h, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v11, 16, 1
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s17, 0, v103.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v93, -16, v122
	v_or_b32_e32 v104, -16, v133
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v12, v12
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v87, 0, v87, s1
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v83.l, v147.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v107, v115, v137, s14
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s9, 0, v105.l
	v_cmp_gt_i16_e64 s14, 0, v96.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v96, -16, v125
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v93, v122, v93, s3
	v_cndmask_b32_e64 v104, v133, v104, s17
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v15, v15
	v_mul_f32_e32 v12, v12, v86
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v133.l, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v87, 16, 1
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v96, v125, v96, s9
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v93, v93
	v_mul_f32_e32 v15, v15, v83
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v12, 0, v12, s0
	v_add3_u32 v10, v87, v10, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v87, v87
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v134.h, v147.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v141, -16, v119
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v96, v96
	v_mul_f32_e32 v86, v93, v86
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v133.h, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v12, 16, 1
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v111, v119, v141, s18
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s18, 0, v101.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v105, -16, v134
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_mul_f32_e32 v83, v96, v83
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v86, 0, v86, s1
	v_add3_u32 v10, v12, v10, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v105, v134, v105, s18
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v131.h, v147.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v138, -16, v116
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v134.l, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v86, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v86, v86
	v_cndmask_b32_e64 v85, 0, v85, s1
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v108, v116, v138, s15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s15, 0, v102.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v10, v86, v10, 0x7fff
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v102, -16, v131
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v132.h, v147.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v84, 0, v84, s1
	v_cndmask_b16 v134.h, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v13, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v102, v131, v102, s15
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v103, -16, v132
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_add3_u32 v10, v13, v10, 0x7fff
	v_cndmask_b32_e64 v83, 0, v83, s1
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v103, v132, v103, s16
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v130.h, v147.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v131.l, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v85, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v85, v85
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v91, v106, v79
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v101, -16, v130
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v82, 0, v82, s1
	v_add3_u32 v10, v85, v10, 0x7fff
	v_cndmask_b32_e64 v65, 0, v65, s0
	v_cndmask_b32_e64 v81, 0, v81, s1
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v101, v130, v101, s14
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v73, 0, v73, s0
	v_cndmask_b16 v131.h, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v14, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v79, v100, v79
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v80, 0, v80, s1
	v_cndmask_b32_e64 v91, 0, v91, s0
	v_add3_u32 v10, v14, v10, 0x7fff
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v78.l, v147.l
	v_mov_b16_e32 v78.h, v77.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v107, v107
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v79, 0, v79, s1
	v_cndmask_b16 v132.l, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v84, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v84, v84
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v77.l, v147.l
	v_mov_b16_e32 v77.h, v76.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v108, v108
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v10, v84, v10, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v92, v107, v78
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_mul_f32_e32 v93, v108, v77
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v132.h, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v15, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_cndmask_b32_e64 v92, 0, v92, s0
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_dual_mul_f32 v78, v101, v78 :: v_dual_mul_f32 v77, v102, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v10, v15, v10, 0x7fff
	v_cndmask_b32_e64 v93, 0, v93, s0
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v76.l, v147.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v78, 0, v78, s1
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v76.h, v75.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v129.l, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v83, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v83, v83
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v109, v109
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v77, 0, v77, s1
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v75.l, v147.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v10, v83, v10, 0x7fff
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v75.h, v74.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v110, v110
	v_mul_f32_e32 v94, v109, v76
	v_cvt_f32_i32_e32 v103, v103
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v129.h, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v16, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v95, v110, v75
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v94, 0, v94, s0
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v104, v104
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v10, v16, v10, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v76, v103, v76
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v95, 0, v95, s0
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v74.l, v147.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v75, v104, v75
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v130.l, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v82, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v82, v82
	v_cndmask_b32_e64 v76, 0, v76, s1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v111, v111
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v75, 0, v75, s1
	v_add3_u32 v10, v82, v10, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v105, v105
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_mul_i32 s2, s90, s63
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v96, v111, v74
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s55, -1, 0
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v130.h, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v65, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	v_cndmask_b32_e64 v96, 0, v96, s0
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v74, v105, v74
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_add_i32 s2, s89, s2
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v10, v65, v10, 0x7fff
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_mov_b32 s42, s66
	s_mov_b32 s43, s67
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v74, 0, v74, s1
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s74, s66
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v127.l, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v81, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v81, v81
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v11, off, off offset:280
	scratch_load_b32 v12, off, off offset:284
	scratch_load_b32 v13, off, off offset:288
	scratch_load_b32 v14, off, off offset:292
	scratch_load_b32 v15, off, off offset:296
	scratch_load_b32 v16, off, off offset:304
	scratch_load_b32 v17, off, off offset:308
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v10, v81, v10, 0x7fff
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s75, s67
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s46, s66
	s_mov_b32 s47, s67
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s36, s4, s19
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v127.h, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v73, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s35, s4, s28
	s_and_b32 s28, s4, s79
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s79, s67
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v10, v73, v10, 0x7fff
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s34, s4, s29
	s_and_b32 s33, s4, s30
	s_and_b32 s31, s4, s31
	s_and_b32 s30, s4, s70
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v128.l, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v80, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v80, v80
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s29, s4, s71
	s_and_b32 s19, s4, s99
	s_and_b32 s18, s4, s100
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v10, v80, v10, 0x7fff
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s17, s4, s101
	s_and_b32 s16, s4, s102
	s_and_b32 s15, s4, s103
	s_and_b32 s14, s4, s104
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v128.h, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v91, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v91, v91
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s13, s4, vcc_hi
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v215.l, v147.l
	v_mov_b16_e64 v173.l, v147.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v10, v91, v10, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v233.l, v147.l
	v_mov_b16_e64 v199.l, v147.l
	v_mov_b16_e64 v204.l, v147.l
	v_mov_b16_e64 v165.l, v147.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v125.l, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v79, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v212.l, v147.l
	v_mov_b16_e64 v211.l, v147.l
	v_mov_b16_e64 v206.l, v147.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v10, v79, v10, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v243.l, v147.l
	v_mov_b16_e64 v196.l, v147.l
	v_mov_b16_e64 v197.l, v147.l
	v_mov_b16_e64 v198.l, v147.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v125.h, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v92, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v92, v92
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v200.l, v147.l
	v_mov_b16_e64 v152.l, v147.l
	v_mov_b16_e64 v248.l, v147.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v10, v92, v10, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v252.l, v147.l
	v_mov_b16_e64 v254.l, v147.l
	v_mov_b16_e64 v201.l, v147.l
	v_mov_b16_e64 v202.l, v147.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v126.l, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v78, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v78, v78
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v203.l, v147.l
	v_mov_b16_e64 v162.l, v147.l
	v_mov_b16_e64 v205.l, v147.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v10, v78, v10, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v163.l, v147.l
	v_mov_b16_e64 v250.l, v147.l
	v_mov_b16_e64 v167.l, v147.l
	v_mov_b16_e64 v168.l, v147.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v126.h, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v93, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v93, v93
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v253.l, v147.l
	v_mov_b16_e64 v170.l, v147.l
	v_mov_b16_e64 v171.l, v147.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v10, v93, v10, 0x7fff
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s90, s90, 32
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v123.l, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v77, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v77, v77
	v_add3_u32 v10, v77, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v123.h, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v94, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v94, v94
	v_add3_u32 v10, v94, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v124.l, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v76, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v76, v76
	v_add3_u32 v10, v76, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v124.h, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v95, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v95, v95
	v_add3_u32 v10, v95, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v121.l, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v75, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v75, v75
	v_add3_u32 v10, v75, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v121.h, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v96, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v96, v96
	v_add3_u32 v10, v96, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v122.l, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v74, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	v_add3_u32 v10, v74, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v122.h, 0x7fff, v10.h, vcc_lo
	.loc	1 691 36                        ; attention_backward.py:691:36
	scratch_load_b32 v10, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v11, s2, v11, 2
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v12, s2, v12, 2
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v13, s2, v13, 2
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v14, s2, v14, 2
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v15, s2, v15, 2
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v16, s2, v16, 2
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v65, s2, v17, 2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s25
	v_cndmask_b32_e64 v12, 0x80000000, v12, s27
	v_cndmask_b32_e64 v13, 0x80000000, v13, s24
	v_cndmask_b32_e64 v14, 0x80000000, v14, s22
	v_cndmask_b32_e64 v15, 0x80000000, v15, s20
	v_cndmask_b32_e64 v16, 0x80000000, v16, s23
	v_cndmask_b32_e64 v65, 0x80000000, v65, s21
	s_clause 0x6
	buffer_load_b32 v11, v11, s[40:43], 0 offen
	buffer_load_b32 v12, v12, s[40:43], 0 offen
	buffer_load_b32 v13, v13, s[40:43], 0 offen
	buffer_load_b32 v14, v14, s[40:43], 0 offen
	buffer_load_b32 v15, v15, s[40:43], 0 offen
	buffer_load_b32 v16, v16, s[40:43], 0 offen
	buffer_load_b32 v65, v65, s[40:43], 0 offen
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v10, s2, v10, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s26
	buffer_load_b32 v10, v10, s[40:43], 0 offen
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v17, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_waitcnt vmcnt(8)
	v_cndmask_b32_e64 v11, 0xff800000, v11, s25
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v12, 0xff800000, v12, s27
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v13, 0xff800000, v13, s24
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v14, 0xff800000, v14, s22
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v15, 0xff800000, v15, s20
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v16, 0xff800000, v16, s23
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v65, 0xff800000, v65, s21
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v11
	v_cmp_neq_f32_e64 s8, 0xff800000, v14
	v_cmp_neq_f32_e64 s9, 0xff800000, v15
	v_cmp_neq_f32_e64 s10, 0xff800000, v16
	v_cmp_neq_f32_e64 s3, 0xff800000, v12
	.loc	1 697 25 is_stmt 0              ; attention_backward.py:697:25
	s_and_b32 s2, s25, s2
	s_and_b32 s8, s22, s8
	s_and_b32 s9, s20, s9
	s_and_b32 s10, s23, s10
	s_and_b32 s3, s27, s3
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v65
	v_cmp_neq_f32_e64 s7, 0xff800000, v13
	.loc	1 712 26 is_stmt 1              ; attention_backward.py:712:26
	s_and_b32 s27, s4, s91
	s_and_b32 s25, s4, s93
	s_and_b32 s23, s4, s95
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_and_b32 s11, s21, s11
	s_and_b32 s7, s24, s7
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s24, s4, s94
	s_and_b32 s22, s4, s96
	s_and_b32 s21, s4, s97
	s_and_b32 s20, s4, s98
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v10, 0xff800000, v10, s26
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v73, 0, v17
	scratch_load_b32 v17, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v10
	.loc	1 696 35                        ; attention_backward.py:696:35
	ds_store_2addr_b32 v73, v10, v14 offset1:32
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v14, 0, 1, s9
	s_and_b32 s12, s26, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s26, s4, s92
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v10, 0, 1, s12
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s12, s4, s38
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v17, v11, v15 offset1:32
	scratch_load_b32 v17, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v11, 0, 1, s2
	v_cndmask_b32_e64 v15, 0, 1, s10
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v17, v12, v16 offset1:32
	scratch_load_b32 v17, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v12, 0, 1, s3
	v_cndmask_b32_e64 v16, 0, 1, s11
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v17, v13, v65 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v17, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v13, 0, 1, s7
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v73, 0, v17
	scratch_load_b32 v17, off, off offset:352 ; 4-byte Folded Reload
	ds_load_b32 v73, v73
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v73, 0x3fb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 696 25 is_stmt 0              ; attention_backward.py:696:25
	v_fmac_f32_e32 v73, v8, v213
	scratch_load_b32 v8, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(1)
	ds_load_b32 v74, v17
	scratch_load_b32 v17, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v74, 0x3fb8aa3b, v74
	.loc	1 696 25                        ; attention_backward.py:696:25
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v74, v66, v8
	scratch_load_b32 v8, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(1)
	ds_load_b32 v75, v17
	scratch_load_b32 v17, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v75, 0x3fb8aa3b, v75
	.loc	1 696 25                        ; attention_backward.py:696:25
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v67, v8
	scratch_load_b32 v8, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 699 25 is_stmt 1              ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v2, 2, v2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s5, s4, s52
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(1)
	ds_load_b32 v76, v17
	scratch_load_b32 v17, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v76, 0x3fb8aa3b, v76
	.loc	1 696 25 is_stmt 0              ; attention_backward.py:696:25
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v76, v68, v8
	scratch_load_b32 v8, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(1)
	ds_load_b32 v77, v17
	scratch_load_b32 v17, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v77, 0x3fb8aa3b, v77
	.loc	1 696 25                        ; attention_backward.py:696:25
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v77, v69, v8
	scratch_load_b32 v8, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(1)
	ds_load_b32 v78, v17
	scratch_load_b32 v17, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v78, 0x3fb8aa3b, v78
	.loc	1 696 25                        ; attention_backward.py:696:25
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v78, v70, v8
	scratch_load_b32 v8, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(1)
	ds_load_b32 v79, v17
	scratch_load_b32 v17, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v79, 0x3fb8aa3b, v79
	.loc	1 696 25                        ; attention_backward.py:696:25
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v79, v71, v8
	scratch_load_b32 v8, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(1)
	ds_load_b32 v80, v17
	.loc	1 697 25 is_stmt 1              ; attention_backward.py:697:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 696 35                        ; attention_backward.py:696:35
	v_mul_f32_e32 v80, 0x3fb8aa3b, v80
	.loc	1 696 25 is_stmt 0              ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v72, v8
	.loc	1 697 25 is_stmt 1              ; attention_backward.py:697:25
	v_cndmask_b32_e64 v8, 0, 1, s8
	v_lshlrev_b16 v8.l, 8, v8.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v8.l, v10.l, v8.l
	scratch_load_b32 v10, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, 0, v10
	ds_store_b16 v10, v8
	v_mov_b16_e32 v8.l, v14.l
	v_mov_b16_e32 v10.l, v11.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v8.l, 8, v8.l
	v_or_b16 v8.l, v10.l, v8.l
	scratch_load_b32 v10, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v10, v8
	v_mov_b16_e32 v8.l, v15.l
	v_mov_b16_e32 v10.l, v12.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v8.l, 8, v8.l
	v_or_b16 v8.l, v10.l, v8.l
	scratch_load_b32 v10, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v10, v8
	v_mov_b16_e32 v8.l, v16.l
	v_mov_b16_e32 v10.l, v13.l
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v16, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_lshlrev_b16 v8.l, 8, v8.l
	v_or_b16 v8.l, v10.l, v8.l
	scratch_load_b32 v10, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v10, v8
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v8, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v105, v2, s[72:75], 0 offen
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v10, 0, v8
	ds_load_u8_d16 v8, v10
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v8, v10 offset:64
	ds_load_u8_d16 v10, v164
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v10, v164 offset:64
	ds_load_u8_d16 v11, v195
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v11, v195 offset:64
	ds_load_u8_d16 v12, v166
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v12, v166 offset:64
	v_and_b16 v8.l, 1, v8.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v8.l
	v_and_b16 v8.l, 1, v10.l
	v_cmp_eq_u16_e64 s2, 1, v8.l
	v_and_b16 v8.l, 1, v11.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s3, 1, v8.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v8.l, 1, v12.l
	v_cmp_eq_u16_e64 s7, 1, v8.l
	v_and_b16 v8.l, 1, v8.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s8, 1, v8.l
	v_and_b16 v8.l, 1, v10.h
	v_cmp_eq_u16_e64 s9, 1, v8.l
	v_and_b16 v8.l, 1, v11.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s10, 1, v8.l
	v_and_b16 v8.l, 1, v12.h
	v_cmp_eq_u16_e64 s11, 1, v8.l
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v8, v2, s[44:47], 0 offen
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_sub_f32_e32 v10, v74, v8
	v_sub_f32_e32 v11, v75, v8
	v_sub_f32_e32 v13, v77, v8
	v_sub_f32_e32 v15, v79, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v10, v10
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v13, v13
	v_exp_f32_e32 v15, v15
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v138, 0, v10, s2
	s_delay_alu instid0(TRANS32_DEP_3)
	v_cndmask_b32_e64 v139, 0, v11, s3
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b64 v[10:11], off, off offset:108 ; 8-byte Folded Reload
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v141, 0, v13, s8
	v_cndmask_b32_e64 v143, 0, v15, s10
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v13, v9 :: v_dual_sub_f32 v12, v76, v8
	v_dual_mov_b32 v15, v9 :: v_dual_sub_f32 v14, v78, v8
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v11, v9
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s2, s78, s81
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v12, v12
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s78, s66
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v14, v14
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s10, s4, s57
	s_and_b32 s8, s4, s59
	s_and_b32 s3, s4, s61
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v140, 0, v12, s7
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s7, s4, s85
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v142, 0, v14, s9
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v12, v9
	v_mov_b32_e32 v14, v9
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v2, v73, v8
	v_sub_f32_e32 v8, v80, v8
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s9, s4, s58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v2, v2
	v_exp_f32_e32 v8, v8
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v137, 0, v2, vcc_lo
	v_cndmask_b32_e64 v144, 0, v8, s11
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s11, s4, s56
	s_and_b32 vcc_lo, s4, s55
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_i32 s90, s83
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v2, s2, v10, 1
	scratch_load_b32 v10, off, off offset:460 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v2, 0x80000000, v2, s36
	buffer_load_u16 v71, v2, s[76:79], 0 offen
	scratch_load_b32 v2, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v10, s2, v10, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s27
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s2, v2, 1
	buffer_load_u16 v79, v10, s[76:79], 0 offen
	scratch_load_b32 v10, off, off offset:468 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v2, 0x80000000, v2, s35
	buffer_load_u16 v70, v2, s[76:79], 0 offen
	scratch_load_b32 v2, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v10, s2, v10, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s26
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s2, v2, 1
	buffer_load_u16 v78, v10, s[76:79], 0 offen
	scratch_load_b32 v10, off, off offset:472 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v2, 0x80000000, v2, s34
	buffer_load_u16 v69, v2, s[76:79], 0 offen
	scratch_load_b32 v2, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v10, s2, v10, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s25
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s2, v2, 1
	buffer_load_u16 v77, v10, s[76:79], 0 offen
	scratch_load_b32 v10, off, off offset:480 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v2, 0x80000000, v2, s33
	buffer_load_u16 v68, v2, s[76:79], 0 offen
	scratch_load_b32 v2, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v10, s2, v10, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s24
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s2, v2, 1
	buffer_load_u16 v76, v10, s[76:79], 0 offen
	scratch_load_b32 v10, off, off offset:484 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v2, 0x80000000, v2, s31
	buffer_load_u16 v67, v2, s[76:79], 0 offen
	scratch_load_b32 v2, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v10, s2, v10, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s23
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s2, v2, 1
	buffer_load_u16 v75, v10, s[76:79], 0 offen
	scratch_load_b32 v10, off, off offset:544 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v2, 0x80000000, v2, s30
	buffer_load_u16 v66, v2, s[76:79], 0 offen
	scratch_load_b32 v2, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v10, s2, v10, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s22
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, s2, v2, 1
	buffer_load_u16 v74, v10, s[76:79], 0 offen
	v_add_lshl_u32 v10, s2, v31, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s21
	buffer_load_u16 v8, v2, s[76:79], 0 offen
	scratch_load_b32 v2, off, off offset:452 ; 4-byte Folded Reload
	buffer_load_u16 v73, v10, s[76:79], 0 offen
	v_add_lshl_u32 v10, s2, v28, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s20
	buffer_load_u16 v72, v10, s[76:79], 0 offen
	v_add_lshl_u32 v10, s2, v174, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s19
	buffer_load_u16 v87, v10, s[76:79], 0 offen
	v_add_lshl_u32 v10, s2, v32, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s18
	buffer_load_u16 v86, v10, s[76:79], 0 offen
	v_add_lshl_u32 v10, s2, v1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s17
	buffer_load_u16 v85, v10, s[76:79], 0 offen
	v_add_lshl_u32 v10, s2, v175, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s16
	buffer_load_u16 v84, v10, s[76:79], 0 offen
	v_add_lshl_u32 v10, s2, v176, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s15
	buffer_load_u16 v83, v10, s[76:79], 0 offen
	v_add_lshl_u32 v10, s2, v177, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s14
	buffer_load_u16 v82, v10, s[76:79], 0 offen
	v_add_lshl_u32 v10, s2, v178, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s13
	buffer_load_u16 v81, v10, s[76:79], 0 offen
	v_add_lshl_u32 v10, s2, v4, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s12
	buffer_load_u16 v80, v10, s[76:79], 0 offen
	v_add_lshl_u32 v10, s2, v179, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s11
	buffer_load_u16 v94, v10, s[76:79], 0 offen
	v_add_lshl_u32 v10, s2, v180, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s10
	buffer_load_u16 v93, v10, s[76:79], 0 offen
	v_add_lshl_u32 v10, s2, v234, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s9
	buffer_load_u16 v92, v10, s[76:79], 0 offen
	v_add_lshl_u32 v10, s2, v169, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s8
	buffer_load_u16 v91, v10, s[76:79], 0 offen
	v_add_lshl_u32 v10, s2, v251, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s7
	buffer_load_u16 v90, v10, s[76:79], 0 offen
	v_add_lshl_u32 v10, s2, v172, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s5
	buffer_load_u16 v89, v10, s[76:79], 0 offen
	v_add_lshl_u32 v10, s2, v242, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	buffer_load_u16 v88, v10, s[76:79], 0 offen
	v_add_nc_u32_e32 v10, s81, v242
	v_add_lshl_u32 v10, s2, v10, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	buffer_load_u16 v95, v10, s[76:79], 0 offen
	s_waitcnt vmcnt(18)
	v_add_lshl_u32 v2, s2, v2, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s28
	buffer_load_u16 v2, v2, s[76:79], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v216, v71
	ds_store_b16 v216, v70 offset:128
	ds_store_b16 v216, v69 offset:256
	ds_store_b16 v216, v68 offset:384
	ds_store_b16 v216, v67 offset:512
	ds_store_b16 v216, v66 offset:640
	ds_store_b16 v216, v8 offset:768
	s_waitcnt vmcnt(0)
	ds_store_b16 v216, v2 offset:896
	ds_store_b16 v216, v79 offset:1024
	ds_store_b16 v216, v78 offset:1152
	ds_store_b16 v216, v77 offset:1280
	ds_store_b16 v216, v76 offset:1408
	ds_store_b16 v216, v75 offset:1536
	ds_store_b16 v216, v74 offset:1664
	ds_store_b16 v216, v73 offset:1792
	ds_store_b16 v216, v72 offset:1920
	ds_store_b16 v216, v87 offset:2048
	ds_store_b16 v216, v86 offset:2176
	ds_store_b16 v216, v85 offset:2304
	ds_store_b16 v216, v84 offset:2432
	ds_store_b16 v216, v83 offset:2560
	ds_store_b16 v216, v82 offset:2688
	ds_store_b16 v216, v81 offset:2816
	ds_store_b16 v216, v80 offset:2944
	ds_store_b16 v216, v94 offset:3072
	ds_store_b16 v216, v93 offset:3200
	ds_store_b16 v216, v92 offset:3328
	ds_store_b16 v216, v91 offset:3456
	ds_store_b16 v216, v90 offset:3584
	ds_store_b16 v216, v89 offset:3712
	ds_store_b16 v216, v88 offset:3840
	ds_store_b16 v216, v95 offset:3968
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16_hi v215, v247
	ds_load_u16_d16_hi v89, v247 offset:128
	ds_load_u16_d16_hi v173, v247 offset:256
	ds_load_u16_d16_hi v90, v247 offset:384
	ds_load_u16_d16_hi v233, v247 offset:512
	ds_load_u16_d16_hi v91, v247 offset:640
	ds_load_u16_d16_hi v199, v247 offset:768
	ds_load_u16_d16_hi v92, v247 offset:896
	ds_load_u16_d16_hi v2, v247 offset:1024
	ds_load_u16_d16_hi v93, v247 offset:1152
	ds_load_u16_d16_hi v204, v247 offset:1280
	ds_load_u16_d16_hi v94, v247 offset:1408
	ds_load_u16_d16_hi v165, v247 offset:1536
	ds_load_u16_d16_hi v95, v247 offset:1664
	ds_load_u16_d16_hi v8, v247 offset:1792
	ds_load_u16_d16_hi v96, v247 offset:1920
	ds_load_u16_d16_hi v212, v247 offset:2048
	ds_load_u16_d16_hi v97, v247 offset:2176
	ds_load_u16_d16_hi v211, v247 offset:2304
	ds_load_u16_d16_hi v98, v247 offset:2432
	ds_load_u16_d16_hi v206, v247 offset:2560
	ds_load_u16_d16_hi v99, v247 offset:2688
	ds_load_u16_d16_hi v243, v247 offset:2816
	ds_load_u16_d16_hi v100, v247 offset:2944
	ds_load_u16_d16_hi v196, v247 offset:3072
	ds_load_u16_d16_hi v101, v247 offset:3200
	ds_load_u16_d16_hi v197, v247 offset:3328
	ds_load_u16_d16_hi v102, v247 offset:3456
	ds_load_u16_d16_hi v198, v247 offset:3584
	ds_load_u16_d16_hi v103, v247 offset:3712
	ds_load_u16_d16_hi v200, v247 offset:3840
	ds_load_u16_d16_hi v104, v247 offset:3968
	ds_load_u16_d16_hi v152, v247 offset:64
	ds_load_u16_d16_hi v81, v247 offset:192
	ds_load_u16_d16_hi v248, v247 offset:320
	ds_load_u16_d16_hi v82, v247 offset:448
	ds_load_u16_d16_hi v252, v247 offset:576
	ds_load_u16_d16_hi v83, v247 offset:704
	ds_load_u16_d16_hi v254, v247 offset:832
	ds_load_u16_d16_hi v84, v247 offset:960
	ds_load_u16_d16_hi v201, v247 offset:1088
	ds_load_u16_d16_hi v85, v247 offset:1216
	ds_load_u16_d16_hi v202, v247 offset:1344
	ds_load_u16_d16_hi v86, v247 offset:1472
	ds_load_u16_d16_hi v203, v247 offset:1600
	ds_load_u16_d16_hi v87, v247 offset:1728
	ds_load_u16_d16_hi v162, v247 offset:1856
	ds_load_u16_d16_hi v88, v247 offset:1984
	ds_load_u16_d16_hi v205, v247 offset:2112
	ds_load_u16_d16_hi v73, v247 offset:2240
	ds_load_u16_d16_hi v163, v247 offset:2368
	ds_load_u16_d16_hi v74, v247 offset:2496
	ds_load_u16_d16_hi v250, v247 offset:2624
	ds_load_u16_d16_hi v75, v247 offset:2752
	ds_load_u16_d16_hi v167, v247 offset:2880
	ds_load_u16_d16_hi v76, v247 offset:3008
	ds_load_u16_d16_hi v168, v247 offset:3136
	ds_load_u16_d16_hi v77, v247 offset:3264
	ds_load_u16_d16_hi v253, v247 offset:3392
	ds_load_u16_d16_hi v78, v247 offset:3520
	ds_load_u16_d16_hi v170, v247 offset:3648
	ds_load_u16_d16_hi v79, v247 offset:3776
	ds_load_u16_d16_hi v171, v247 offset:3904
	ds_load_u16_d16_hi v80, v247 offset:4032
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v216, v71
	ds_store_b16 v216, v79 offset:1024
	ds_store_b16 v216, v87 offset:2048
	ds_store_b16 v216, v94 offset:3072
	ds_store_b16 v217, v70
	ds_store_b16 v217, v78 offset:1024
	ds_store_b16 v217, v86 offset:2048
	ds_store_b16 v217, v93 offset:3072
	ds_store_b16 v218, v69
	ds_store_b16 v218, v77 offset:1024
	ds_store_b16 v218, v85 offset:2048
	ds_store_b16 v218, v92 offset:3072
	ds_store_b16 v219, v68
	ds_store_b16 v219, v76 offset:1024
	ds_store_b16 v219, v84 offset:2048
	ds_store_b16 v219, v91 offset:3072
	ds_store_b16 v220, v67
	ds_store_b16 v220, v75 offset:1024
	ds_store_b16 v220, v83 offset:2048
	ds_store_b16 v220, v90 offset:3072
	ds_store_b16 v221, v66
	ds_store_b16 v221, v74 offset:1024
	ds_store_b16 v221, v82 offset:2048
	ds_store_b16 v221, v89 offset:3072
	ds_store_b16 v222, v8
	ds_store_b16 v222, v73 offset:1024
	ds_store_b16 v222, v81 offset:2048
	ds_store_b16 v222, v88 offset:3072
	ds_store_b16 v223, v2
	ds_store_b16 v223, v72 offset:1024
	ds_store_b16 v223, v80 offset:2048
	ds_store_b16 v223, v95 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v10, off, off offset:456 ; 4-byte Folded Reload
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v96.l, v8.h
	v_mov_b16_e64 v95.l, v165.h
	v_mov_b16_e64 v94.l, v204.h
	v_mov_b16_e32 v93.l, v2.h
	v_mov_b16_e64 v92.l, v199.h
	v_mov_b16_e64 v91.l, v233.h
	v_mov_b16_e64 v90.l, v173.h
	v_mov_b16_e64 v89.l, v215.h
	v_mov_b16_e64 v88.l, v162.h
	v_mov_b16_e64 v87.l, v203.h
	v_mov_b16_e64 v86.l, v202.h
	v_mov_b16_e64 v85.l, v201.h
	v_mov_b16_e64 v84.l, v254.h
	v_mov_b16_e64 v83.l, v252.h
	v_mov_b16_e64 v82.l, v248.h
	v_mov_b16_e64 v81.l, v152.h
	v_mov_b16_e64 v104.l, v200.h
	v_mov_b16_e64 v103.l, v198.h
	v_mov_b16_e64 v102.l, v197.h
	v_mov_b16_e64 v101.l, v196.h
	v_mov_b16_e64 v100.l, v243.h
	v_mov_b16_e64 v99.l, v206.h
	v_mov_b16_e64 v98.l, v211.h
	v_mov_b16_e64 v97.l, v212.h
	v_mov_b16_e64 v80.l, v171.h
	v_mov_b16_e64 v79.l, v170.h
	v_mov_b16_e64 v78.l, v253.h
	v_mov_b16_e64 v77.l, v168.h
	v_mov_b16_e64 v76.l, v167.h
	v_mov_b16_e64 v75.l, v250.h
	v_mov_b16_e64 v74.l, v163.h
	v_mov_b16_e64 v73.l, v205.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, 0, v10
	ds_load_b128 v[106:109], v10
	scratch_load_b32 v10, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[110:113], v10
	scratch_load_b32 v10, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[153:156], v10
	scratch_load_b32 v10, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[157:160], v10
	scratch_load_b32 v10, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[181:184], v10
	scratch_load_b32 v10, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[185:188], v10
	scratch_load_b32 v10, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[225:228], v10
	scratch_load_b32 v10, off, off offset:428 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[229:232], v10
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v10, v9
	v_dual_mov_b32 v72, v16 :: v_dual_mov_b32 v65, v9
	v_dual_mov_b32 v71, v15 :: v_dual_mov_b32 v70, v14
	v_dual_mov_b32 v69, v13 :: v_dual_mov_b32 v68, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v67, v11 :: v_dual_mov_b32 v66, v10
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[10:13], off, off offset:240
	scratch_load_b128 v[14:17], off, off offset:256
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[10:17], v[106:113], v[65:72]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[106:109], off, off offset:208
	scratch_load_b128 v[110:113], off, off offset:224
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[106:113], v[153:160], v[65:72]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[106:109], off, off offset:176
	scratch_load_b128 v[110:113], off, off offset:192
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[106:113], v[181:188], v[65:72]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[106:109], off, off offset:144
	scratch_load_b128 v[110:113], off, off offset:160
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[106:113], v[225:232], v[65:72]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v10, v65, v105
	v_sub_f32_e32 v11, v66, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v12, v67, v105
	v_sub_f32_e32 v13, v68, v105
	v_sub_f32_e32 v14, v69, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 720 30 is_stmt 0              ; attention_backward.py:720:30
	v_dual_mul_f32 v10, v137, v10 :: v_dual_mul_f32 v11, v138, v11
	v_dual_mul_f32 v12, v139, v12 :: v_dual_mul_f32 v13, v140, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_dual_sub_f32 v15, v70, v105 :: v_dual_mul_f32 v10, s60, v10
	.loc	1 721 38 is_stmt 1              ; attention_backward.py:721:38
	v_dual_mul_f32 v11, s60, v11 :: v_dual_mul_f32 v12, s60, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v13, s60, v13 :: v_dual_mul_f32 v14, v141, v14
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v66, v10, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 720 30 is_stmt 1              ; attention_backward.py:720:30
	v_dual_mul_f32 v15, v142, v15 :: v_dual_sub_f32 v16, v71, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v14, s60, v14
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_add3_u32 v66, v10, v66, 0x7fff
	v_bfe_u32 v10, v11, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v15, s60, v15
	.loc	1 720 47 is_stmt 1              ; attention_backward.py:720:47
	v_dual_sub_f32 v65, v72, v105 :: v_dual_mul_f32 v16, v143, v16
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v2.l, 0x7fff, v66.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_bfe_u32 v11, v13, 16, 1
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_dual_mul_f32 v65, v144, v65 :: v_dual_mul_f32 v16, s60, v16
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v8.l, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v12, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	v_add3_u32 v11, v13, v11, 0x7fff
	.loc	1 721 38 is_stmt 0              ; attention_backward.py:721:38
	v_mul_f32_e32 v65, s60, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v10, v12, v10, 0x7fff
	v_bfe_u32 v12, v15, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v12, v15, v12, 0x7fff
	v_bfe_u32 v13, v65, 16, 1
	v_cndmask_b16 v10.h, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v14, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_add3_u32 v13, v65, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v11, v14, v11, 0x7fff
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_bfe_u32 v14, v142, 16, 1
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v11.l, 0x7fff, v11.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v14, v142, v14, 0x7fff
	v_bfe_u32 v15, v143, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v14.l, v147.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v11.h, 0x7fff, v12.h, vcc_lo
	v_bfe_u32 v12, v16, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v15, v143, v15, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v15.l, v147.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v12, v16, v12, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v16, v144, 16, 1
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v12.l, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v16, v144, v16, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v16.l, v147.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v12.h, 0x7fff, v13.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	scratch_load_b32 v13, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v137, v137
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, 0, v13
	ds_store_b16 v13, v2
	ds_store_b16 v13, v11 offset:512
	ds_store_b16 v3, v8
	ds_store_b16_d16_hi v3, v11 offset:512
	ds_store_b16 v5, v10
	ds_store_b16 v5, v12 offset:512
	ds_store_b16_d16_hi v6, v10
	ds_store_b16_d16_hi v6, v12 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v10, off, off offset:476 ; 4-byte Folded Reload
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v11, v139, 16, 1
	v_bfe_u32 v12, v140, 16, 1
	v_bfe_u32 v13, v141, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v11, v139, v11, 0x7fff
	v_add3_u32 v12, v140, v12, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v13, v141, v13, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v11.l, v147.l
	v_mov_b16_e64 v12.l, v147.l
	v_mov_b16_e64 v13.l, v147.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, 0, v10
	ds_load_b128 v[105:108], v10
	scratch_load_b32 v10, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[109:112], v10
	scratch_load_b32 v10, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[113:116], v10
	scratch_load_b32 v10, off, off offset:444 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[117:120], v10
	v_mov_b32_e32 v10, v249
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v66, v216, v10
	ds_store_2addr_stride64_b32 v66, v135, v136 offset1:1
	ds_store_2addr_stride64_b32 v66, v133, v134 offset0:2 offset1:3
	ds_store_2addr_stride64_b32 v66, v131, v132 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v66, v129, v130 offset0:6 offset1:7
	ds_store_2addr_stride64_b32 v66, v127, v128 offset0:8 offset1:9
	ds_store_2addr_stride64_b32 v66, v125, v126 offset0:10 offset1:11
	ds_store_2addr_stride64_b32 v66, v123, v124 offset0:12 offset1:13
	ds_store_2addr_stride64_b32 v66, v121, v122 offset0:14 offset1:15
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v65, v247
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v65, v247 offset:128
	ds_load_u16_d16 v66, v247 offset:256
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v66, v247 offset:384
	ds_load_u16_d16 v67, v247 offset:512
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v67, v247 offset:640
	ds_load_u16_d16 v68, v247 offset:768
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v68, v247 offset:896
	ds_load_u16_d16 v69, v247 offset:1024
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v69, v247 offset:1152
	ds_load_u16_d16 v70, v247 offset:1280
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v70, v247 offset:1408
	ds_load_u16_d16 v71, v247 offset:1536
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v71, v247 offset:1664
	ds_load_u16_d16 v72, v247 offset:1792
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v72, v247 offset:1920
	ds_load_u16_d16 v121, v247 offset:2048
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v121, v247 offset:2176
	ds_load_u16_d16 v122, v247 offset:2304
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v122, v247 offset:2432
	ds_load_u16_d16 v123, v247 offset:2560
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v123, v247 offset:2688
	ds_load_u16_d16 v124, v247 offset:2816
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v124, v247 offset:2944
	ds_load_u16_d16 v125, v247 offset:3072
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v125, v247 offset:3200
	ds_load_u16_d16 v126, v247 offset:3328
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v126, v247 offset:3456
	ds_load_u16_d16 v127, v247 offset:3584
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v127, v247 offset:3712
	ds_load_u16_d16 v128, v247 offset:3840
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v128, v247 offset:3968
	ds_load_u16_d16 v129, v247 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v129, v247 offset:192
	ds_load_u16_d16 v130, v247 offset:320
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v130, v247 offset:448
	ds_load_u16_d16 v131, v247 offset:576
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v131, v247 offset:704
	ds_load_u16_d16 v132, v247 offset:832
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v132, v247 offset:960
	ds_load_u16_d16 v133, v247 offset:1088
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v133, v247 offset:1216
	ds_load_u16_d16 v134, v247 offset:1344
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v134, v247 offset:1472
	ds_load_u16_d16 v135, v247 offset:1600
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v135, v247 offset:1728
	ds_load_u16_d16 v136, v247 offset:1856
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v136, v247 offset:1984
	ds_load_u16_d16 v153, v247 offset:2112
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v153, v247 offset:2240
	ds_load_u16_d16 v154, v247 offset:2368
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v154, v247 offset:2496
	ds_load_u16_d16 v155, v247 offset:2624
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v155, v247 offset:2752
	ds_load_u16_d16 v156, v247 offset:2880
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v156, v247 offset:3008
	ds_load_u16_d16 v157, v247 offset:3136
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v157, v247 offset:3264
	ds_load_u16_d16 v158, v247 offset:3392
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v158, v247 offset:3520
	ds_load_u16_d16 v159, v247 offset:3648
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v159, v247 offset:3776
	ds_load_u16_d16 v160, v247 offset:3904
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v10, v137, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[57:64], v[65:72], v[105:112], v[57:64]
	v_wmma_f32_16x16x16_bf16 v[49:56], v[129:136], v[105:112], v[49:56]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add_nc_u32_e32 v107, 0, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v10, v137, v10, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[57:64], v[121:128], v[113:120], v[57:64]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v147.h, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v138, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v138, v138
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v65, v137, v147
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v10, v138, v10, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v10.l, v147.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v160, v247 offset:4032
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v17, off, off offset:548 ; 4-byte Folded Reload
	v_cndmask_b16 v10.h, 0x7fff, v10.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v139, v139
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v112, v65, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v11.h, 0x7fff, v11.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v140, v140
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v112, v65, v112, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v12.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v141, v141
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[49:56], v[153:160], v[113:120], v[49:56]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v13.h, 0x7fff, v13.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v142, v142
	v_cndmask_b16 v14.h, 0x7fff, v14.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v143, v143
	v_cndmask_b16 v15.h, 0x7fff, v15.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v144, v144
	v_cndmask_b16 v16.h, 0x7fff, v16.h, vcc_lo
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	v_cndmask_b16 v2.l, 0x7fff, v112.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v72, 0, v17
	ds_store_b16_d16_hi v72, v147
	ds_store_b16_d16_hi v7, v10
	ds_store_b16_d16_hi v235, v11
	ds_store_b16_d16_hi v19, v12
	ds_store_b16_d16_hi v22, v13
	ds_store_b16_d16_hi v237, v14
	ds_store_b16_d16_hi v241, v15
	ds_store_b16_d16_hi v18, v16
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v10, v138, v10 :: v_dual_sub_f32 v11, v139, v11
	v_dual_sub_f32 v12, v140, v12 :: v_dual_sub_f32 v13, v141, v13
	v_sub_f32_e32 v14, v142, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v65, v10, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v15, v143, v15 :: v_dual_sub_f32 v16, v144, v16
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v89.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v65, v10, v65, 0x7fff
	v_bfe_u32 v10, v11, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[181:182], v107
	ds_load_b64 v[108:109], v20
	ds_load_b64 v[145:146], v21
	ds_load_b64 v[68:69], v23
	ds_load_b64 v[105:106], v24
	ds_load_b64 v[110:111], v238
	ds_load_b64 v[70:71], v240
	ds_load_b64 v[66:67], v25
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v8.l, 0x7fff, v65.h, vcc_lo
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_bfe_u32 v11, v12, 16, 1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b16 v10.l, 0x7fff, v10.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v11, v12, v11, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	v_bfe_u32 v12, v14, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v153.l, v181.l
	v_mov_b16_e64 v153.h, v108.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v10.h, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v13, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_add3_u32 v12, v14, v12, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v155.h, v110.l
	v_mov_b16_e32 v110.l, v105.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v11, v13, v11, 0x7fff
	v_bfe_u32 v13, v16, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v154.l, v145.l
	v_mov_b16_e64 v154.h, v68.l
	v_mov_b16_e64 v68.l, v145.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v11.l, 0x7fff, v11.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_add3_u32 v13, v16, v13, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v160.h, v67.l
	v_mov_b16_e32 v67.l, v71.h
	v_mov_b16_e64 v155.l, v105.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v11.h, 0x7fff, v12.h, vcc_lo
	v_bfe_u32 v12, v15, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v112, v67
	v_mov_b16_e64 v156.l, v70.l
	v_mov_b16_e64 v156.h, v66.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v12, v15, v12, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v157.l, v182.l
	v_mov_b16_e64 v157.h, v109.l
	v_mov_b16_e64 v158.l, v146.l
	v_mov_b16_e64 v158.h, v69.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v12.l, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v159.l, v106.l
	v_mov_b16_e64 v159.h, v111.l
	v_mov_b16_e64 v160.l, v71.l
	v_mov_b16_e64 v108.l, v181.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v12.h, 0x7fff, v13.h, vcc_lo
	ds_store_b16 v72, v2
	ds_store_b16 v7, v8
	ds_store_b16 v235, v10
	ds_store_b16_d16_hi v19, v10
	ds_store_b16 v22, v11
	ds_store_b16_d16_hi v237, v11
	ds_store_b16 v241, v12
	ds_store_b16_d16_hi v18, v12
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	v_sub_f32_e32 v10, v215, v215
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e64 v12.h, v147.l
	v_mov_b16_e64 v13.h, v147.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v90.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e32 v13.l, v10.h
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v2.l, v147.l
	v_mov_b16_e64 v8.l, v147.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v12, 1, v12
	v_and_b32_e32 v13, 1, v13
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[187:188], v107
	ds_load_b64 v[148:149], v20
	ds_load_b64 v[189:190], v21
	ds_load_b64 v[183:184], v23
	ds_load_b64 v[191:192], v24
	ds_load_b64 v[150:151], v238
	ds_load_b64 v[193:194], v240
	ds_load_b64 v[185:186], v25
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v10, v13, 0x7fff
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v91.h
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v66.l, v70.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v129.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v173, v173
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v69.l, v146.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v129.l, 0x7fff, v13.h, vcc_lo
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e64 v13.h, v147.l
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(6)
	v_mov_b16_e64 v65.h, v148.l
	v_mov_b16_e64 v148.l, v187.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v92.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(2)
	v_mov_b16_e64 v67.h, v150.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v10, v13, 0x7fff
	v_cndmask_b16 v130.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v233, v233
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_mov_b16_e64 v150.l, v191.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v130.l, 0x7fff, v13.h, vcc_lo
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e64 v13.h, v147.l
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[89:96], v[153:160], v[41:48]
	v_mov_b16_e64 v109.l, v182.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v93.h
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v111.l, v106.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v10, v13, 0x7fff
	v_cndmask_b16 v131.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v199, v199
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b32_e32 v105, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v131.l, 0x7fff, v13.h, vcc_lo
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e64 v13.h, v147.l
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v108, v66
	v_wmma_f32_16x16x16_bf16 v[33:40], v[81:88], v[153:160], v[33:40]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v94.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v65.l, v187.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v10, v13, 0x7fff
	v_cndmask_b16 v132.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v2, v2
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_mov_b16_e64 v66.l, v189.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v132.l, 0x7fff, v13.h, vcc_lo
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e64 v13.h, v147.l
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v66.h, v183.l
	v_mov_b16_e64 v67.l, v191.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v95.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v70.l, v190.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v10, v13, 0x7fff
	v_cndmask_b16 v133.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v204, v204
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_mov_b16_e64 v70.h, v184.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v133.l, 0x7fff, v13.h, vcc_lo
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e64 v13.h, v147.l
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v71.l, v192.l
	v_mov_b16_e64 v71.h, v151.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v96.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e64 v72.l, v194.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v10, v13, 0x7fff
	v_cndmask_b16 v134.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v165, v165
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e64 v72.h, v186.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v134.l, 0x7fff, v13.h, vcc_lo
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e64 v13.h, v147.l
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v183.l, v189.h
	v_mov_b16_e64 v184.l, v190.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v97.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v186.l, v194.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v10, v13, 0x7fff
	v_cndmask_b16 v135.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v8, v8
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_mov_b16_e64 v151.l, v192.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v135.l, 0x7fff, v13.h, vcc_lo
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e64 v13.h, v147.l
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_dual_mov_b32 v146, v183 :: v_dual_mov_b32 v107, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v98.h
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v110, v69
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v10, v13, 0x7fff
	v_cndmask_b16 v136.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v212, v212
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_mov_b16_e64 v69.l, v188.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v136.l, 0x7fff, v13.h, vcc_lo
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e64 v13.h, v147.l
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v69.h, v149.l
	v_mov_b16_e64 v149.l, v188.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v99.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v145, v148
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v10, v13, 0x7fff
	v_cndmask_b16 v137.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v211, v211
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b32_e32 v106, v68
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v137.l, 0x7fff, v13.h, vcc_lo
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e64 v13.h, v147.l
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v68.l, v193.l
	v_mov_b16_e64 v68.h, v185.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v100.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v185.l, v193.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v10, v13, 0x7fff
	v_cndmask_b16 v138.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v206, v206
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[97:104], v[105:112], v[41:48]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v138.l, 0x7fff, v13.h, vcc_lo
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e64 v13.h, v147.l
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[73:80], v[105:112], v[33:40]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_dual_mov_b32 v148, v185 :: v_dual_and_b32 v13, 1, v13
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v101.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[89:96], v[65:72], v[41:48]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v10, v13, 0x7fff
	v_cndmask_b16 v139.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v243, v243
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[81:88], v[65:72], v[33:40]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v139.l, 0x7fff, v13.h, vcc_lo
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e64 v13.h, v147.l
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v102.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v10, v13, 0x7fff
	v_cndmask_b16 v140.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v196, v196
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	v_cndmask_b16 v140.l, 0x7fff, v13.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e64 v13.h, v147.l
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v103.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v10, v13, 0x7fff
	v_cndmask_b16 v141.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v197, v197
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	v_cndmask_b16 v141.l, 0x7fff, v13.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e64 v13.h, v147.l
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v104.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v10, v13, 0x7fff
	v_cndmask_b16 v142.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v198, v198
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	v_cndmask_b16 v142.l, 0x7fff, v13.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e64 v13.h, v147.l
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v81.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v10, v13, 0x7fff
	v_cndmask_b16 v143.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v200, v200
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	v_cndmask_b16 v143.l, 0x7fff, v13.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e64 v13.h, v147.l
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v82.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v10, v13, 0x7fff
	v_cndmask_b16 v144.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v152, v152
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_mov_b32_e32 v152, v186
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v144.l, 0x7fff, v13.h, vcc_lo
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e64 v13.h, v147.l
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v83.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v10, v13, 0x7fff
	v_cndmask_b16 v121.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v248, v248
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	v_cndmask_b16 v121.l, 0x7fff, v13.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e64 v13.h, v147.l
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v84.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v10, v13, 0x7fff
	v_cndmask_b16 v122.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v252, v252
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	v_cndmask_b16 v122.l, 0x7fff, v13.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e64 v13.h, v147.l
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v85.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v10, v13, 0x7fff
	v_cndmask_b16 v123.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v254, v254
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	v_cndmask_b16 v123.l, 0x7fff, v13.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e64 v13.h, v147.l
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v86.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v10, v13, 0x7fff
	v_cndmask_b16 v124.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v201, v201
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	v_cndmask_b16 v124.l, 0x7fff, v13.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e64 v13.h, v147.l
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v87.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v10, v13, 0x7fff
	v_cndmask_b16 v125.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v202, v202
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	v_cndmask_b16 v125.l, 0x7fff, v13.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e64 v13.h, v147.l
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v88.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v10, v13, 0x7fff
	v_cndmask_b16 v126.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v203, v203
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	v_cndmask_b16 v126.l, 0x7fff, v13.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e64 v13.h, v147.l
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v73.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v10, v13, 0x7fff
	v_cndmask_b16 v127.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v162, v162
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	v_cndmask_b16 v127.l, 0x7fff, v13.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e64 v13.h, v147.l
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v74.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v10, v13, 0x7fff
	v_cndmask_b16 v128.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v205, v205
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	v_cndmask_b16 v128.l, 0x7fff, v13.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e64 v13.h, v147.l
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v75.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v10, v13, 0x7fff
	v_cndmask_b16 v113.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	v_cndmask_b16 v113.l, 0x7fff, v13.h, vcc_lo
	v_mov_b16_e64 v13.h, v147.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v163, v163
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_mov_b16_e32 v13.l, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v76.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v13, 1, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cndmask_b16 v114.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	v_add3_u32 v13, v10, v13, 0x7fff
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v114.l, 0x7fff, v13.h, vcc_lo
	v_mov_b16_e64 v13.h, v147.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v250, v250
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v77.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v13.l, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v115.h, 0x7fff, v12.h, vcc_lo
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v13, 1, v13
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v13, v10, v13, 0x7fff
	v_add3_u32 v12, v11, v12, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v115.l, 0x7fff, v13.h, vcc_lo
	v_mov_b16_e64 v13.h, v147.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v167, v167
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v78.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v13.l, v10.h
	v_cndmask_b16 v116.h, 0x7fff, v12.h, vcc_lo
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v13, 1, v13
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v13, v10, v13, 0x7fff
	v_add3_u32 v12, v11, v12, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v116.l, 0x7fff, v13.h, vcc_lo
	v_mov_b16_e64 v13.h, v147.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v168, v168
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v79.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v13.l, v10.h
	v_cndmask_b16 v117.h, 0x7fff, v12.h, vcc_lo
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v13, 1, v13
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v13, v10, v13, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v253, v253
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v12, v11, v12, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v117.l, 0x7fff, v13.h, vcc_lo
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e64 v13.h, v147.l
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v80.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v13, 1, v13
	v_cndmask_b16 v118.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v147.l
	v_add3_u32 v13, v10, v13, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v170, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v12, 1, v12
	v_cndmask_b16 v118.l, 0x7fff, v13.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e64 v13.h, v147.l
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v147, v147
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v13, 1, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v119.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_mov_b16_e32 v12.l, v11.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v13, v10, v13, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v171, v171
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v12.h, v147.l
	v_cndmask_b16 v119.l, 0x7fff, v13.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e64 v13.h, v147.l
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_dual_mov_b32 v147, v150 :: v_dual_mov_b32 v150, v184
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v12, v11, v12, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[97:104], v[145:152], v[41:48]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v10, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b16 v120.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[73:80], v[145:152], v[33:40]
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[129:136], v[153:160], v[41:48]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v120.l, 0x7fff, v13.h, vcc_lo
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[121:128], v[153:160], v[33:40]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[137:144], v[105:112], v[41:48]
	v_wmma_f32_16x16x16_bf16 v[33:40], v[113:120], v[105:112], v[33:40]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_clause 0xc                            ; 60-byte Folded Reload
	scratch_load_b32 v8, off, off
	scratch_load_b32 v10, off, off offset:4
	scratch_load_b32 v11, off, off offset:8
	scratch_load_b32 v12, off, off offset:12
	scratch_load_b32 v13, off, off offset:16
	scratch_load_b32 v14, off, off offset:20
	scratch_load_b32 v15, off, off offset:24
	scratch_load_b32 v16, off, off offset:28
	scratch_load_b32 v75, off, off offset:32
	scratch_load_b32 v76, off, off offset:36
	scratch_load_b64 v[77:78], off, off offset:40
	scratch_load_b64 v[79:80], off, off offset:52
	scratch_load_b32 v78, off, off offset:48
	v_mov_b32_e32 v17, v29
	s_add_i32 s78, s90, s88
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_mov_b32 s70, s66
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_mul_i32 s20, s78, s80
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_mov_b32 s71, s67
	v_add_lshl_u32 v65, s78, v17, 1
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(12)
	v_or_b32_e32 v2, s90, v8
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v8, s78, v8, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s2, s54, v2
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(11)
	v_or_b32_e32 v2, s90, v10
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v10, s78, v10, 1
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v75, s20, v75
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v76, s20, v76
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v77, s20, v77
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s3, s54, v2
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v2, s90, v11
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v79, s20, v79
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v11, s78, v11, 1
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v78, s20, v78
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s7, s54, v2
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v2, s90, v12
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v12, s78, v12, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v11, 0x80000000, v11, s7
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s8, s54, v2
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v2, s90, v13
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v13, s78, v13, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v12, 0x80000000, v12, s8
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s9, s54, v2
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v2, s90, v14
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v14, s78, v14, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v13, 0x80000000, v13, s9
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s10, s54, v2
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v2, s90, v15
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v15, s78, v15, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v14, 0x80000000, v14, s10
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s11, s54, v2
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v2, s90, v16
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v16, s78, v16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v15, 0x80000000, v15, s11
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s54, v2
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v2, s90, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v17, v239 :: v_dual_cndmask_b32 v16, 0x80000000, v16
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s12, s54, v2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v2, s90, v17
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v66, s78, v17, 1
	v_mov_b32_e32 v17, v246
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s37, vcc_lo
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v65, 0x80000000, v65, s12
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s13, s54, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v2, s90, v17
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v67, s78, v17, 1
	v_mov_b32_e32 v17, v0
	v_cndmask_b32_e64 v66, 0x80000000, v66, s13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s14, s54, v2
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v2, s90, v17
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v68, s78, v17, 1
	v_mov_b32_e32 v17, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v67, 0x80000000, v67, s14
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s15, s54, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v2, s90, v17
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v69, s78, v17, 1
	v_mov_b32_e32 v17, v27
	v_cndmask_b32_e64 v68, 0x80000000, v68, s15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s16, s54, v2
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v2, s90, v17
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v70, s78, v17, 1
	v_mov_b32_e32 v17, v244
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v69, 0x80000000, v69, s16
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s17, s54, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v2, s90, v17
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v71, s78, v17, 1
	v_mov_b32_e32 v17, v245
	v_cndmask_b32_e64 v70, 0x80000000, v70, s17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s18, s54, v2
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v2, s90, v17
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v72, s78, v17, 1
	v_mov_b32_e32 v17, v236
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v71, 0x80000000, v71, s18
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s19, s54, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v73, s90, v17
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v72, 0x80000000, v72, s19
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s5, s54, v73
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v73, 0x80000000, v8, s2
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_add_nc_u32_e32 v8, s20, v161
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s2, s37, s2
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s2, s37, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v75, 0x80000000, v75, s2
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s2, s37, s7
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s2, s37, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s2, s37, s9
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s2, s37, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v79, 0x80000000, v79, s2
	s_clause 0x5
	buffer_load_u8 v90, v8, s[64:67], 0 offen
	buffer_load_u8 v95, v75, s[64:67], 0 offen
	buffer_load_u8 v94, v76, s[64:67], 0 offen
	buffer_load_u8 v93, v77, s[64:67], 0 offen
	buffer_load_u8 v92, v78, s[64:67], 0 offen
	buffer_load_u8 v91, v79, s[64:67], 0 offen
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[75:76], off, off offset:60
	scratch_load_b64 v[76:77], off, off offset:488
	scratch_load_b64 v[77:78], off, off offset:496
	scratch_load_b64 v[78:79], off, off offset:504
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s2, s37, s11
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b64 v[79:80], off, off offset:68 ; 8-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v8, s20, v75
	v_lshl_add_u32 v75, s80, 4, v161
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v76, s20, v76
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v77, s20, v77
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v78, s20, v78
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	v_add_nc_u32_e32 v75, s20, v75
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s2, s37, s12
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v75, 0x80000000, v75, s2
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s2, s37, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s2, s37, s14
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s2, s37, s15
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	s_clause 0x3
	buffer_load_u8 v99, v75, s[64:67], 0 offen
	buffer_load_u8 v98, v76, s[64:67], 0 offen
	buffer_load_u8 v97, v77, s[64:67], 0 offen
	buffer_load_u8 v96, v78, s[64:67], 0 offen
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[75:76], off, off offset:512
	scratch_load_b64 v[76:77], off, off offset:520
	scratch_load_b64 v[80:81], off, off offset:536
	scratch_load_b64 v[77:78], off, off offset:528
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v79, s20, v79
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v75, s20, v75
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v76, s20, v76
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s37, s16
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v77, s20, v77
	v_add_nc_u32_e32 v78, s20, v80
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s37, s17
	.loc	1 624 25                        ; attention_backward.py:624:25
	v_add_nc_u32_e32 v2, s78, v17
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s37, s18
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s37, s19
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v74, 1, v2
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	s_clause 0x5
	buffer_load_u8 v102, v75, s[64:67], 0 offen
	buffer_load_u8 v100, v76, s[64:67], 0 offen
	buffer_load_u8 v105, v8, s[64:67], 0 offen
	buffer_load_u8 v104, v79, s[64:67], 0 offen
	buffer_load_u8 v103, v77, s[64:67], 0 offen
	buffer_load_u8 v101, v78, s[64:67], 0 offen
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v89, 0x80000000, v74, s5
	s_clause 0x10
	buffer_load_u16 v81, v16, s[68:71], 0 offen
	buffer_load_u16 v80, v65, s[68:71], 0 offen
	buffer_load_u16 v79, v66, s[68:71], 0 offen
	buffer_load_u16 v78, v67, s[68:71], 0 offen
	buffer_load_u16 v77, v68, s[68:71], 0 offen
	buffer_load_u16 v76, v69, s[68:71], 0 offen
	buffer_load_u16 v75, v70, s[68:71], 0 offen
	buffer_load_u16 v74, v71, s[68:71], 0 offen
	buffer_load_u16 v8, v72, s[68:71], 0 offen
	buffer_load_u16 v88, v73, s[68:71], 0 offen
	buffer_load_u16 v87, v10, s[68:71], 0 offen
	buffer_load_u16 v86, v11, s[68:71], 0 offen
	buffer_load_u16 v85, v12, s[68:71], 0 offen
	buffer_load_u16 v84, v13, s[68:71], 0 offen
	buffer_load_u16 v83, v14, s[68:71], 0 offen
	buffer_load_u16 v82, v15, s[68:71], 0 offen
	buffer_load_u16 v89, v89, s[68:71], 0 offen
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v16, v9
	v_mov_b32_e32 v10, v9
	v_mov_b32_e32 v11, v9
	v_mov_b32_e32 v12, v9
	v_mov_b32_e32 v13, v9
	v_mov_b32_e32 v14, v9
	v_mov_b32_e32 v15, v9
	v_mov_b32_e32 v73, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v69, v12 :: v_dual_mov_b32 v70, v13
	v_dual_mov_b32 v71, v14 :: v_dual_mov_b32 v72, v15
	v_dual_mov_b32 v68, v11 :: v_dual_mov_b32 v67, v10
	v_mov_b32_e32 v66, v9
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v12, 8, v224
	v_or_b32_e32 v13, 12, v224
	v_or_b32_e32 v14, 16, v224
	v_or_b32_e32 v15, 20, v224
	v_or_b32_e32 v16, 24, v224
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v12, s90, v12
	v_or_b32_e32 v13, s90, v13
	v_or_b32_e32 v14, s90, v14
	v_or_b32_e32 v15, s90, v15
	v_or_b32_e32 v16, s90, v16
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s3, s54, v12
	v_cmp_gt_i32_e64 s7, s54, v13
	v_cmp_gt_i32_e64 s8, s54, v14
	v_cmp_gt_i32_e64 s9, s54, v15
	v_cmp_gt_i32_e64 s10, s54, v16
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s27, s6, s3
	s_and_b32 s24, s6, s7
	s_and_b32 s22, s6, s8
	s_and_b32 s20, s6, s9
	s_and_b32 s23, s6, s10
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_store_b8 v207, v90
	ds_store_b8 v207, v95 offset:64
	ds_store_b8 v207, v99 offset:512
	ds_store_b8 v207, v98 offset:576
	ds_store_b8 v208, v94
	ds_store_b8 v208, v93 offset:64
	ds_store_b8 v208, v97 offset:512
	ds_store_b8 v208, v96 offset:576
	ds_store_b8 v209, v92
	ds_store_b8 v209, v91 offset:64
	s_waitcnt vmcnt(22)
	ds_store_b8 v209, v102 offset:512
	s_waitcnt vmcnt(21)
	ds_store_b8 v209, v100 offset:576
	s_waitcnt vmcnt(20)
	ds_store_b8 v210, v105
	s_waitcnt vmcnt(19)
	ds_store_b8 v210, v104 offset:64
	s_waitcnt vmcnt(18)
	ds_store_b8 v210, v103 offset:512
	s_waitcnt vmcnt(17)
	ds_store_b8 v210, v101 offset:576
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v17, off, off offset:272
	scratch_load_b64 v[10:11], off, off offset:76
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v65, 0, v17
	scratch_load_b32 v17, off, off offset:328 ; 4-byte Folded Reload
	ds_load_b64 v[106:107], v65
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v65, 28, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v65, s90, v65
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s11, s54, v65
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s21, s6, s11
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[66:73], v[10:11], v[106:107], v[66:73] neg_lo:[1,1,0]
	scratch_load_b64 v[10:11], off, off offset:84 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt vmcnt(1)
	ds_load_b64 v[108:109], v17
	scratch_load_b32 v17, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[66:73], v[10:11], v[108:109], v[66:73] neg_lo:[1,1,0]
	scratch_load_b64 v[10:11], off, off offset:92 ; 8-byte Folded Reload
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v108, s51, v12
	v_add_nc_u32_e32 v109, s51, v13
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt vmcnt(1)
	ds_load_b64 v[110:111], v17
	scratch_load_b32 v17, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[66:73], v[10:11], v[110:111], v[66:73] neg_lo:[1,1,0]
	scratch_load_b64 v[10:11], off, off offset:100 ; 8-byte Folded Reload
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v110, s51, v14
	v_add_nc_u32_e32 v111, s51, v15
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt vmcnt(1)
	ds_load_b64 v[112:113], v17
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[66:73], v[10:11], v[112:113], v[66:73] neg_lo:[1,1,0]
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v11, 4, v224
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v10, s90, v224
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v112, s51, v16
	v_add_nc_u32_e32 v113, s51, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v11, s90, v11
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s54, v10
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v106, s51, v10
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s2, s54, v11
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v107, s51, v11
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s26, s6, vcc_lo
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_and_not1_b32 vcc_lo, exec_lo, s82
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s25, s6, s2
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e32 vcc_lo, v214, v106
	v_cmp_le_i32_e64 s2, v214, v107
	v_cmp_le_i32_e64 s3, v214, v108
	v_cmp_le_i32_e64 s7, v214, v109
	v_cmp_le_i32_e64 s8, v214, v110
	v_cmp_le_i32_e64 s9, v214, v111
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s12, s26, vcc_lo
	s_and_b32 s2, s25, s2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s10, v214, v112
	v_cmp_le_i32_e64 s11, v214, v113
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s3, s27, s3
	s_and_b32 s7, s24, s7
	s_and_not1_b32 s13, s26, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s14, s25, exec_lo
	s_and_b32 s2, s2, exec_lo
	s_and_b32 s8, s22, s8
	s_and_b32 s9, s20, s9
	s_or_b32 s26, s13, s12
	s_or_b32 s25, s14, s2
	s_and_not1_b32 s2, s27, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s12, s24, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_and_b32 s10, s23, s10
	s_and_b32 s11, s21, s11
	s_or_b32 s27, s2, s3
	s_or_b32 s24, s12, s7
	s_and_not1_b32 s2, s22, exec_lo
	s_and_b32 s3, s8, exec_lo
	s_and_not1_b32 s7, s20, exec_lo
	s_and_b32 s8, s9, exec_lo
	s_or_b32 s22, s2, s3
	s_or_b32 s20, s7, s8
	s_and_not1_b32 s2, s23, exec_lo
	s_and_b32 s3, s10, exec_lo
	s_and_not1_b32 s7, s21, exec_lo
	s_and_b32 s8, s11, exec_lo
	s_or_b32 s23, s2, s3
	s_or_b32 s21, s7, s8
.LBB0_10:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 677 17 is_stmt 1              ; attention_backward.py:677:17
	s_and_not1_b32 vcc_lo, exec_lo, s39
	s_cbranch_vccnz .LBB0_7
; %bb.11:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v10, s49, v106
	v_subrev_nc_u32_e32 v11, s49, v107
	v_subrev_nc_u32_e32 v12, s49, v108
	v_subrev_nc_u32_e32 v13, s49, v109
	v_subrev_nc_u32_e32 v14, s49, v110
	v_subrev_nc_u32_e32 v15, s49, v111
	.loc	1 678 30 is_stmt 0              ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v214, v10
	v_cmp_ge_i32_e64 s2, v214, v11
	.loc	1 679 47 is_stmt 1              ; attention_backward.py:679:47
	v_add_nc_u32_e32 v10, s50, v106
	v_add_nc_u32_e32 v11, s50, v107
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v16, s49, v112
	v_subrev_nc_u32_e32 v65, s49, v113
	.loc	1 678 30 is_stmt 0              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s3, v214, v12
	v_cmp_ge_i32_e64 s7, v214, v13
	.loc	1 679 47 is_stmt 1              ; attention_backward.py:679:47
	v_add_nc_u32_e32 v12, s50, v108
	v_add_nc_u32_e32 v13, s50, v109
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s8, v214, v14
	v_cmp_ge_i32_e64 s9, v214, v15
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v14, s50, v110
	v_add_nc_u32_e32 v15, s50, v111
	.loc	1 679 30 is_stmt 0              ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s12, v214, v10
	v_cmp_le_i32_e64 s13, v214, v11
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s10, v214, v16
	v_cmp_ge_i32_e64 s11, v214, v65
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v16, s50, v112
	v_add_nc_u32_e32 v65, s50, v113
	.loc	1 679 30 is_stmt 0              ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s14, v214, v12
	v_cmp_le_i32_e64 s15, v214, v13
	v_cmp_le_i32_e64 s16, v214, v14
	v_cmp_le_i32_e64 s17, v214, v15
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s12, vcc_lo, s12
	s_and_b32 s2, s2, s13
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s18, v214, v16
	v_cmp_le_i32_e64 s19, v214, v65
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s12, s12, s26
	s_and_b32 s2, s2, s25
	s_and_b32 s3, s3, s14
	s_and_b32 s7, s7, s15
	s_and_b32 s3, s3, s27
	s_and_b32 s7, s7, s24
	s_and_b32 s8, s8, s16
	s_and_b32 s9, s9, s17
	s_and_not1_b32 s13, s26, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s14, s25, exec_lo
	s_and_b32 s2, s2, exec_lo
	s_and_b32 s8, s8, s22
	s_and_b32 s9, s9, s20
	s_and_b32 s10, s10, s18
	s_and_b32 s11, s11, s19
	s_or_b32 s26, s13, s12
	s_or_b32 s25, s14, s2
	s_and_not1_b32 s2, s27, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s12, s24, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_and_b32 s10, s10, s23
	s_and_b32 s11, s11, s21
	s_or_b32 s27, s2, s3
	s_or_b32 s24, s12, s7
	s_and_not1_b32 s2, s22, exec_lo
	s_and_b32 s3, s8, exec_lo
	s_and_not1_b32 s7, s20, exec_lo
	s_and_b32 s8, s9, exec_lo
	s_or_b32 s22, s2, s3
	s_or_b32 s20, s7, s8
	s_and_not1_b32 s2, s23, exec_lo
	s_and_b32 s3, s10, exec_lo
	s_and_not1_b32 s7, s21, exec_lo
	s_and_b32 s8, s11, exec_lo
	s_or_b32 s23, s2, s3
	s_or_b32 s21, s7, s8
	s_branch .LBB0_7
.LBB0_12:                               ; %Flow342
	.loc	1 0 21                          ; attention_backward.py:0:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v66, off, off offset:556
	scratch_load_b32 v67, off, off offset:560
	v_readlane_b32 s62, v255, 4
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
.LBB0_14:                               ; %._crit_edge183
	.loc	1 550 20 is_stmt 1              ; attention_backward.py:550:20
	scratch_load_b32 v0, off, off offset:552 ; 4-byte Folded Reload
	.loc	1 753 13                        ; attention_backward.py:753:13
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v16, s62, v66
	v_readlane_b32 s40, v255, 0
	v_readlane_b32 s41, v255, 1
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	v_mul_lo_u32 v17, v16, s48
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_mov_b32 s36, s40
	s_and_b32 s37, s41, 0xffff
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v16, v16, s81
	v_readlane_b32 s42, v255, 2
	v_readlane_b32 s43, v255, 3
	.loc	1 550 20                        ; attention_backward.py:550:20
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, v0, v67
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v14, 2, v0
	v_or_b32_e32 v13, 4, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s15, s48, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v18, v17, v0, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v15, 6, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s16, s48, v14
	v_cmp_gt_i32_e64 s17, s48, v13
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v19, v17, v14, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, s6, s15
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v17, v13, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, s6, s16
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v12, 8, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, s6, s17
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v11, 10, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s18, s48, v15
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s15
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v10, 12, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s19, s48, v12
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v57, v18, s[36:39], 0 offen
	v_add_lshl_u32 v18, v17, v15, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s20, s48, v11
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v58, v19, s[36:39], 0 offen
	buffer_store_b32 v59, v20, s[36:39], 0 offen
	v_add_lshl_u32 v19, v17, v12, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s6, s18
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v9, 14, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s21, s48, v10
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v17, v11, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s6, s19
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v8, 32, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v21, v17, v10, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s6, s20
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v7, 34, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s22, s48, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s6, s21
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v6, 36, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s23, s48, v8
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v21, 0x80000000, v21, s16
	s_clause 0x1
	buffer_store_b32 v60, v18, s[36:39], 0 offen
	buffer_store_b32 v61, v19, s[36:39], 0 offen
	v_add_lshl_u32 v18, v17, v9, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s24, s48, v7
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v19, v17, v8, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s6, s22
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v5, 38, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s25, s48, v6
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v62, v20, s[36:39], 0 offen
	buffer_store_b32 v63, v21, s[36:39], 0 offen
	v_add_lshl_u32 v20, v17, v7, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s6, s23
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v4, 40, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v21, v17, v6, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s6, s24
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v3, 42, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s26, s48, v5
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s6, s25
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v2, 44, v0
	v_or_b32_e32 v1, 46, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s27, s48, v4
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v21, 0x80000000, v21, s16
	s_clause 0x1
	buffer_store_b32 v64, v18, s[36:39], 0 offen
	buffer_store_b32 v49, v19, s[36:39], 0 offen
	v_add_lshl_u32 v18, v17, v5, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s28, s48, v3
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v19, v17, v4, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s14, s81, v0
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s6, s26
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s29, s48, v2
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v50, v20, s[36:39], 0 offen
	buffer_store_b32 v51, v21, s[36:39], 0 offen
	v_add_lshl_u32 v20, v17, v3, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s15, s48, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s6, s27
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v0, v16, v0, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s12, s81, v13
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v21, v17, v2, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s6, s28
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v17, v17, v1, 2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v13, v16, v13, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s14, s6, s14
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s6, s29
	s_and_b32 s15, s6, s15
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s14
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v21, 0x80000000, v21, s16
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s12, s6, s12
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s15
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s13, s81, v14
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x4
	buffer_store_b32 v52, v18, s[36:39], 0 offen
	buffer_store_b32 v53, v19, s[36:39], 0 offen
	buffer_store_b32 v54, v20, s[36:39], 0 offen
	buffer_store_b32 v55, v21, s[36:39], 0 offen
	buffer_store_b32 v56, v17, s[36:39], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s37, s43, 0xffff
	s_mov_b32 s36, s42
	v_cndmask_b32_e64 v13, 0x80000000, v13, s12
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s12, s81, v15
	v_cmp_gt_i32_e64 s11, s81, v12
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v14, v16, v14, 2
	buffer_store_b32 v41, v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, v16, v15, 2
	v_add_lshl_u32 v12, v16, v12, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s6, s13
	s_and_b32 s12, s6, s12
	s_and_b32 s11, s6, s11
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v14, 0x80000000, v14, s13
	v_cndmask_b32_e64 v0, 0x80000000, v0, s12
	v_cndmask_b32_e64 v12, 0x80000000, v12, s11
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s8, s81, v9
	v_cmp_gt_i32_e64 s10, s81, v11
	v_cmp_gt_i32_e64 s7, s81, v8
	v_cmp_gt_i32_e64 s9, s81, v10
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
	s_and_b32 s10, s6, s10
	s_and_b32 s8, s6, s8
	s_and_b32 s9, s6, s9
	s_and_b32 s7, s6, s7
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v11, 0x80000000, v11, s10
	v_cndmask_b32_e64 v0, 0x80000000, v0, s8
	v_cndmask_b32_e64 v10, 0x80000000, v10, s9
	v_cndmask_b32_e64 v8, 0x80000000, v8, s7
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s3, s81, v5
	v_cmp_gt_i32_e64 s5, s81, v7
	v_cmp_gt_i32_e64 s2, s81, v4
	v_cmp_gt_i32_e64 s4, s81, v6
	v_cmp_gt_i32_e64 s1, s81, v3
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
	v_cmp_gt_i32_e64 s0, s81, v2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v6, v16, v6, 2
	v_add_lshl_u32 v4, v16, v4, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e32 vcc_lo, s81, v1
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v3, v16, v3, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s6, s5
	s_and_b32 s3, s6, s3
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v2, v16, v2, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s4, s6, s4
	s_and_b32 s2, s6, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v1, v16, v1, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s5
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s1, s6, s1
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s0, s6, s0
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 vcc_lo, s6, vcc_lo
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
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 568
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 26504
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 568
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 568
    .sgpr_count:     107
    .sgpr_spill_count: 9
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
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
