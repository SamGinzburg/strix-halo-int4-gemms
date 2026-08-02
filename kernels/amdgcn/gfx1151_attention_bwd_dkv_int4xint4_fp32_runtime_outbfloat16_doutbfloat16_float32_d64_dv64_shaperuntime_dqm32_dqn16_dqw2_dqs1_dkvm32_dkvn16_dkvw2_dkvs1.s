	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	v_lshrrev_b32_e32 v65, 5, v0
	s_clause 0x1
	s_load_b128 s[28:31], s[0:1], 0x8
	s_load_b128 s[20:23], s[0:1], 0x20
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v206, 0, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v2, 2, v65
	v_or_b32_e32 v3, 4, v65
	v_or_b32_e32 v4, 6, v65
	v_or_b32_e32 v5, 8, v65
	v_or_b32_e32 v6, 10, v65
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v2, off
	scratch_store_b32 off, v3, off offset:4
	scratch_store_b32 off, v4, off offset:8
	scratch_store_b32 off, v5, off offset:12
	v_or_b32_e32 v7, 12, v65
	v_or_b32_e32 v9, 14, v65
	scratch_store_b32 off, v6, off offset:16 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s48
	s_bitcmp1_b32 s48, 8
	scratch_store_b32 off, v7, off offset:20 ; 4-byte Folded Spill
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
	v_or_b32_e32 v7, s33, v9
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s13, s55, v2
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_mov_b32 s40, s22
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v49, v0, 4, 1
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_readfirstlane_b32 s4, v1
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v1, s33, v65
	.loc	1 514 33 is_stmt 0              ; attention_backward.py:514:33
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
	v_mad_u64_u32 v[154:155], null, s80, v65, v[1:2]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s9, s55
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s10, s55
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s11, s55
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v2, s80, 1, v154
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s12, s55
	scratch_store_b32 off, v9, off offset:24 ; 4-byte Folded Spill
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
	v_mad_u64_u32 v[5:6], null, s80, 6, v[154:155]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s18, s55
	v_cmp_gt_i32_e64 s18, s55, v7
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s19, s55
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[7:8], null, s80, 10, v[154:155]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s24, s55
	.loc	1 521 24                        ; attention_backward.py:521:24
	s_mul_i32 s19, s3, s55
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v3, s80, 2, v154
	v_lshl_add_u32 v6, s80, 3, v154
	v_mov_b32_e32 v4, v5
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s12, -1, 0
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_add_i32 s62, s19, s33
	v_mad_u64_u32 v[8:9], null, s80, 12, v[154:155]
	s_mul_i32 s19, s62, s80
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b32 off, v3, off offset:32
	scratch_store_b64 off, v[4:5], off offset:36
	scratch_store_b32 off, v6, off offset:44
	v_add_nc_u32_e32 v9, s19, v154
	v_add_nc_u32_e32 v4, s19, v5
	v_add_nc_u32_e32 v5, s19, v6
	v_mov_b32_e32 v6, v7
	v_mad_u64_u32 v[10:11], null, s80, 14, v[154:155]
	scratch_store_b32 off, v2, off offset:28 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s19, v2
	scratch_store_b64 off, v[6:7], off offset:48 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v6, s19, v7
	v_mov_b32_e32 v7, v8
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_cmp_gt_i32_e64 s37, s80, v1
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_add_nc_u32_e32 v3, s19, v3
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_and_b32 s25, s29, 0xffff
	s_mov_b32 s24, s28
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[7:8], off offset:56 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v7, s19, v8
	v_mov_b32_e32 v8, v10
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s4, s37
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xor_b32_e32 v11, 0x198, v0
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[8:9], off offset:64 ; 8-byte Folded Spill
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
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v209, 0, v11
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s15, s37
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_mov_b32 s19, s27
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
	s_delay_alu instid0(SALU_CYCLE_1)
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
	v_add_nc_u32_e32 v207, 0, v2
	.loc	1 549 23                        ; attention_backward.py:549:23
	s_cmp_lt_i32 s13, s14
	.loc	1 543 26                        ; attention_backward.py:543:26
	s_mul_i32 s14, s3, s14
	.loc	1 549 23                        ; attention_backward.py:549:23
	s_cselect_b32 s15, -1, 0
	.loc	1 545 17                        ; attention_backward.py:545:17
	s_add_i32 s14, s14, s13
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v208, 0, v3
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
	ds_store_b8 v206, v34
	s_waitcnt vmcnt(6)
	ds_store_b8 v206, v9 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v207, v10
	s_waitcnt vmcnt(4)
	ds_store_b8 v207, v4 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v208, v5
	s_waitcnt vmcnt(2)
	ds_store_b8 v208, v6 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v209, v7
	s_waitcnt vmcnt(0)
	ds_store_b8 v209, v8 offset:64
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
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v3, 15, v0
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_and_b32_e32 v2, 12, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v6, s33, v49
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_add_lshl_u32 v32, s62, v49, 1
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v49, off offset:496
	scratch_store_b32 off, v3, off offset:500
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshlrev_b32_e32 v3, 5, v3
	v_lshlrev_b32_e32 v4, 1, v2
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v7, 2, v6
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, s55, v6
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v8, 4, v6
	v_or_b32_e32 v11, 6, v6
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_or_b32_e32 v5, v3, v4
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v22, 8, v6
	v_or_b32_e32 v25, 10, v6
	v_or_b32_e32 v34, 12, v6
	v_or_b32_e32 v35, 14, v6
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v28, 0, v5
	v_xad_u32 v29, v5, 8, 0
	v_xad_u32 v30, v5, 16, 0
	v_xad_u32 v31, v5, 24, 0
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
	v_mov_b16_e64 v212.h, v9.l
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
	.loc	1 514 23 is_stmt 1              ; attention_backward.py:514:23
	v_and_b32_e32 v32, 15, v0
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e64 v212.l, 0
	.loc	1 556 28 is_stmt 0              ; attention_backward.py:556:28
	v_lshrrev_b16 v36.l, 4, v19.l
	v_lshrrev_b16 v37.l, 4, v20.l
	.loc	1 554 72 is_stmt 1              ; attention_backward.py:554:72
	s_waitcnt vmcnt(0)
	v_and_b16 v5.h, v19.l, 15
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v213, s33, v32
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b64 v[32:33], v28
	ds_load_b64 v[28:29], v29
	.loc	1 556 26 is_stmt 1              ; attention_backward.py:556:26
	v_mov_b16_e64 v36.h, v212.l
	v_mov_b16_e64 v37.h, v212.l
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v6.h, v20.l, 15
	v_and_b16 v7.h, v15.l, 15
	v_and_b16 v8.h, v16.l, 15
	v_and_b16 v9.h, v17.l, 15
	.loc	1 554 28 is_stmt 0              ; attention_backward.py:554:28
	v_cndmask_b32_e64 v37, 0, v37, s7
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_lshrrev_b16 v39.l, 4, v16.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e64 v39.h, v212.l
	.loc	1 554 72 is_stmt 1              ; attention_backward.py:554:72
	v_and_b16 v10.h, v18.l, 15
	v_and_b16 v11.h, v13.l, 15
	v_and_b16 v12.h, v14.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v41.l, 4, v18.l
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v39, 0, v39, s5
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e64 v41.h, v212.l
	.loc	1 556 28 is_stmt 0              ; attention_backward.py:556:28
	v_lshrrev_b16 v38.l, 4, v15.l
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e32 v36, 0, v36, vcc_lo
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v5.h
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_waitcnt lgkmcnt(1)
	scratch_store_b64 off, v[32:33], off offset:72 ; 8-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[28:29], off offset:80 ; 8-byte Folded Spill
	ds_load_b64 v[28:29], v30
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_and_b32_e32 v33, 15, v18
	v_and_b32_e32 v30, 15, v15
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e64 v38.h, v212.l
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v41, 0, v41, s10
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v43.l, 4, v14.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v49, -16, v33
	v_or_b32_e32 v46, -16, v30
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v38, 0, v38, s9
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e64 v43.h, v212.l
	.loc	1 556 28 is_stmt 0              ; attention_backward.py:556:28
	v_lshrrev_b16 v40.l, 4, v17.l
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e64 v40.h, v212.l
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v42.l, 4, v13.l
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e64 v42.h, v212.l
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e64 v43, 0, v43, s12
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_i32 s2, s6, s35
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v40, 0, v40, s8
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e64 v18.l, v212.l
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v42, 0, v42, s11
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e64 v21.l, v212.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[28:29], off offset:88 ; 8-byte Folded Spill
	ds_load_b64 v[28:29], v31
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_sub_i32 s2, s44, s2
	s_xor_b32 s14, s36, s38
	s_add_i32 s15, s6, 1
	s_sub_i32 s16, s2, s35
	s_cmp_ge_u32 s2, s35
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e64 v23.l, v212.l
	v_mov_b16_e64 v25.l, v212.l
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s6, s15, s6
	s_cselect_b32 s2, s16, s2
	s_add_i32 s15, s6, 1
	s_cmp_ge_u32 s2, s35
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e64 v22.l, v212.l
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s2, s15, s6
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e64 v27.l, v212.l
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_xor_b32 s2, s2, s14
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e64 v26.l, v212.l
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_sub_i32 s84, s2, s14
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e64 v24.l, v212.l
	v_mov_b16_e64 v15.l, v212.l
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[28:29], off offset:96 ; 8-byte Folded Spill
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v28, 15, v19
	v_and_b32_e32 v29, 15, v20
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e64 v19.l, v212.l
	v_mov_b16_e64 v20.l, v212.l
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x50
	s_load_b32 s48, s[0:1], 0x74
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v44, -16, v28
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v35, 15, v14
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v45, -16, v29
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e64 v14.l, v212.l
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s6, s55, v213
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
	v_mov_b16_e64 v13.l, v212.l
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
	v_mov_b16_e64 v16.l, v212.l
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
	v_mov_b16_e64 v17.l, v212.l
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
	v_dual_mul_f32 v28, v28, v212 :: v_dual_mul_f32 v19, v30, v19
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v32, v32, v48, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v10.h
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v48, -16, v40
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v255, s16, 0
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v66, 1, v52
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_add_nc_u32_e32 v215, v206, v0
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v33, v33, v49, vcc_lo
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
	v_mul_f32_e32 v17, v29, v17
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v29, v28, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v27, v34, v27
	v_mul_f32_e32 v21, v31, v21
	.loc	1 558 26 is_stmt 1              ; attention_backward.py:558:26
	v_cndmask_b32_e32 v37, v37, v45, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v38
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_mul_f32_e32 v25, v33, v25
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_cmp_o_f32_e64 s5, v17, v17
	.loc	1 715 36 is_stmt 1              ; attention_backward.py:715:36
	v_lshlrev_b32_e32 v233, 1, v0
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v38, v38, v46, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v39
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_mul_f32_e32 v31, v35, v14
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_add3_u32 v14, v28, v29, 0x7fff
	v_bfe_u32 v29, v17, 16, 1
	.loc	1 558 26 is_stmt 1              ; attention_backward.py:558:26
	v_cndmask_b32_e32 v39, v39, v47, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v40
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v32, v32
	v_mul_f32_e32 v18, v37, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v40, v40, v48, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v41
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_mul_f32_e32 v23, v32, v23
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_cmp_o_f32_e64 s7, v18, v18
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v22, v39, v22
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 558 26 is_stmt 1              ; attention_backward.py:558:26
	v_cndmask_b32_e32 v41, v41, v49, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v42
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v42, v42, v50, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v43
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_mul_f32_e32 v16, v36, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v26, v41, v26
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v43, v43, v51, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_bfe_u32 v28, v18, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v30, v42, v13
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_bfe_u32 v13, v16, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v20, v38, v20
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cmp_o_f32_e64 s2, v16, v16
	v_cndmask_b16 v5.h, 0x7fff, v14.h, vcc_lo
	v_bfe_u32 v14, v19, 16, 1
	v_add3_u32 v13, v16, v13, 0x7fff
	v_add3_u32 v16, v17, v29, 0x7fff
	v_add3_u32 v17, v18, v28, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v14, v19, v14, 0x7fff
	v_cndmask_b16 v6.h, 0x7fff, v13.h, s2
	v_cndmask_b16 v7.h, 0x7fff, v16.h, s5
	v_cndmask_b16 v8.h, 0x7fff, v17.h, s7
	v_bfe_u32 v17, v22, 16, 1
	v_bfe_u32 v13, v20, 16, 1
	v_bfe_u32 v16, v21, 16, 1
	v_cmp_o_f32_e64 s7, v22, v22
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v43, v43
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_add3_u32 v17, v22, v17, 0x7fff
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v24, v40, v24
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_add3_u32 v13, v20, v13, 0x7fff
	v_cmp_o_f32_e64 s2, v20, v20
	v_add3_u32 v16, v21, v16, 0x7fff
	v_cmp_o_f32_e64 s5, v21, v21
	v_cndmask_b16 v9.h, 0x7fff, v14.h, vcc_lo
	v_bfe_u32 v14, v23, 16, 1
	v_cndmask_b16 v12.h, 0x7fff, v17.h, s7
	v_bfe_u32 v17, v26, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v15, v43, v15
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v10.h, 0x7fff, v13.h, s2
	v_cndmask_b16 v11.h, 0x7fff, v16.h, s5
	v_bfe_u32 v13, v24, 16, 1
	v_bfe_u32 v16, v25, 16, 1
	v_add3_u32 v14, v23, v14, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	v_add3_u32 v17, v26, v17, 0x7fff
	v_cmp_o_f32_e64 s7, v26, v26
	v_bfe_u32 v18, v27, 16, 1
	v_add3_u32 v13, v24, v13, 0x7fff
	v_add3_u32 v16, v25, v16, 0x7fff
	v_cmp_o_f32_e64 s5, v25, v25
	v_cndmask_b16 v13.l, 0x7fff, v14.h, vcc_lo
	v_cndmask_b16 v14.h, 0x7fff, v17.h, s7
	v_add3_u32 v17, v27, v18, 0x7fff
	v_bfe_u32 v18, v31, 16, 1
	v_cndmask_b16 v14.l, 0x7fff, v16.h, s5
	v_bfe_u32 v16, v30, 16, 1
	v_cmp_o_f32_e64 s5, v31, v31
	v_cmp_o_f32_e64 s2, v24, v24
	v_add3_u32 v18, v31, v18, 0x7fff
	v_bfe_u32 v19, v15, 16, 1
	v_add3_u32 v16, v30, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s2
	v_cndmask_b16 v16.l, 0x7fff, v18.h, s5
	.loc	1 715 36 is_stmt 1              ; attention_backward.py:715:36
	v_xor_b32_e32 v18, 0x120, v233
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_add3_u32 v19, v15, v19, 0x7fff
	v_cmp_o_f32_e64 s7, v15, v15
	v_cndmask_b16 v15.l, 0x7fff, v17.h, vcc_lo
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_xor_b32_e32 v17, 0x90, v233
	v_add_nc_u32_e32 v217, 0, v18
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cmp_o_f32_e64 s2, v30, v30
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_xor_b32_e32 v20, 0x240, v233
	v_xor_b32_e32 v18, 0x360, v233
	v_add_nc_u32_e32 v216, 0, v17
	v_xor_b32_e32 v17, 0x2d0, v233
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v15.h, 0x7fff, v16.h, s2
	v_cndmask_b16 v16.h, 0x7fff, v19.h, s7
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_xor_b32_e32 v19, 0x1b0, v233
	v_add_nc_u32_e32 v219, 0, v20
	v_add_nc_u32_e32 v220, 0, v17
	v_add_nc_u32_e32 v221, 0, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v218, 0, v19
	v_xor_b32_e32 v19, 0x3f0, v233
	ds_store_b16_d16_hi v215, v5
	ds_store_b16 v215, v13 offset:1024
	ds_store_b16_d16_hi v216, v6
	ds_store_b16_d16_hi v216, v13 offset:1024
	ds_store_b16_d16_hi v217, v7
	ds_store_b16 v217, v14 offset:1024
	ds_store_b16_d16_hi v218, v8
	ds_store_b16_d16_hi v218, v14 offset:1024
	v_add_nc_u32_e32 v222, 0, v19
	ds_store_b16_d16_hi v219, v9
	ds_store_b16 v219, v15 offset:1024
	ds_store_b16_d16_hi v220, v10
	ds_store_b16_d16_hi v220, v15 offset:1024
	ds_store_b16_d16_hi v221, v11
	ds_store_b16 v221, v16 offset:1024
	ds_store_b16_d16_hi v222, v12
	ds_store_b16_d16_hi v222, v16 offset:1024
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
	s_mul_i32 s0, s2, s53
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_and_b32 s1, s1, 0x7fffffe0
	s_sub_i32 s0, s3, s0
	s_max_u32 s1, s13, s1
	s_and_b32 s3, s82, exec_lo
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e64 v212.h, v12.l
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_and_b32_e32 v12, 7, v0
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_cselect_b32 s3, s1, s13
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s1, s48, v14
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e64 v14.l, v212.l
	v_mov_b16_e32 v14.h, v11.l
	v_mov_b16_e64 v11.l, v212.l
	v_mov_b16_e32 v11.h, v10.l
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_lshlrev_b32_e32 v10, 4, v12
	v_and_b32_e32 v68, 15, v0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v14, off offset:112
	scratch_store_b32 off, v66, off offset:504
	scratch_store_b32 off, v11, off offset:116
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v11.h, v9.l
	v_mov_b16_e64 v9.l, v212.l
	v_mov_b16_e32 v9.h, v8.l
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_lshl_or_b32 v8, v68, 7, v10
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v7.h, v6.l
	scratch_store_b32 off, v11, off offset:120 ; 4-byte Folded Spill
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v223, 4, v0
	scratch_store_b32 off, v9, off offset:124 ; 4-byte Folded Spill
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v9.h, v7.l
	v_mov_b16_e64 v7.l, v212.l
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_xad_u32 v6, 0x70, v8, 0
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s0, s84, s0
	v_lshlrev_b32_e32 v30, 3, v68
	scratch_store_b32 off, v9, off offset:128 ; 4-byte Folded Spill
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v9.h, v5.l
	scratch_store_b32 off, v7, off offset:132 ; 4-byte Folded Spill
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_xad_u32 v7, 0x60, v8, 0
	ds_load_b128 v[18:21], v6
	ds_load_b128 v[14:17], v7
	v_xad_u32 v5, 0x50, v8, 0
	scratch_store_b32 off, v9, off offset:136 ; 4-byte Folded Spill
	v_xad_u32 v9, v8, 64, 0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[14:17], off offset:140
	scratch_store_b128 off, v[18:21], off offset:156
	ds_load_b128 v[18:21], v5
	ds_load_b128 v[14:17], v9
	v_xad_u32 v6, v8, 48, 0
	v_xad_u32 v7, v8, 32, 0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[14:17], off offset:172
	scratch_store_b128 off, v[18:21], off offset:188
	ds_load_b128 v[18:21], v6
	ds_load_b128 v[14:17], v7
	v_xad_u32 v5, v8, 16, 0
	v_add_nc_u32_e32 v9, 0, v8
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[14:17], off offset:204
	scratch_store_b128 off, v[18:21], off offset:220
	ds_load_b128 v[18:21], v5
	ds_load_b128 v[14:17], v9
	v_lshlrev_b32_e32 v6, 4, v52
	v_mul_lo_u32 v7, s5, v213
	.loc	1 613 26                        ; attention_backward.py:613:26
	v_writelane_b32 v255, s0, 5
	s_mul_i32 s0, s2, s52
	.loc	1 683 27                        ; attention_backward.py:683:27
	s_mul_i32 s2, s2, s61
	v_or3_b32 v67, v4, v6, v3
	v_mul_lo_u32 v6, s63, v223
	.loc	1 641 25                        ; attention_backward.py:641:25
	v_writelane_b32 v255, s0, 6
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s0, s48, v1
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_and_b32_e32 v1, 48, v0
	s_cmp_lt_i32 s3, s83
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[14:17], off offset:236
	scratch_store_b128 off, v[18:21], off offset:252
	v_dual_mov_b32 v200, v30 :: v_dual_add_nc_u32 v9, v7, v6
	v_writelane_b32 v255, s2, 7
	s_cselect_b32 s87, -1, 0
	s_lshl_b32 s2, s63, 2
	s_lshl_b32 s7, s63, 4
	v_xor_b32_e32 v3, 8, v67
	v_dual_mov_b32 v224, 0 :: v_dual_lshlrev_b32 v1, 2, v1
	v_add3_u32 v16, v6, s7, v7
	scratch_store_b32 off, v9, off offset:268 ; 4-byte Folded Spill
	v_add3_u32 v9, v6, s2, v7
	v_writelane_b32 v255, s3, 8
	s_lshl_b32 s3, s63, 3
	v_xor_b32_e32 v4, 16, v67
	v_dual_mov_b32 v34, v224 :: v_dual_add_nc_u32 v3, 0, v3
	scratch_store_b32 off, v9, off offset:272 ; 4-byte Folded Spill
	v_add3_u32 v9, v6, s3, v7
	s_mul_i32 s5, s63, 12
	v_xor_b32_e32 v5, 24, v67
	v_cmp_eq_u32_e32 vcc_lo, 0, v52
	scratch_store_b32 off, v3, off offset:316 ; 4-byte Folded Spill
	v_dual_mov_b32 v36, v224 :: v_dual_add_nc_u32 v3, 0, v4
	scratch_store_b32 off, v9, off offset:276 ; 4-byte Folded Spill
	v_add3_u32 v9, v6, s5, v7
	v_cndmask_b32_e64 v11, 0x104, 0, vcc_lo
	scratch_store_b32 off, v3, off offset:320 ; 4-byte Folded Spill
	v_dual_mov_b32 v38, v224 :: v_dual_add_nc_u32 v3, 0, v5
	scratch_store_b32 off, v9, off offset:280 ; 4-byte Folded Spill
	v_and_b32_e32 v9, 60, v233
	v_and_b32_e32 v14, 14, v0
	v_and_b32_e32 v15, 1, v0
	s_mul_i32 s8, s63, 20
	v_and_b32_e32 v13, 16, v0
	v_xor_b32_e32 v9, v11, v9
	v_lshlrev_b32_e32 v11, 1, v14
	v_lshl_or_b32 v1, v14, 7, v1
	v_add3_u32 v14, v6, s8, v7
	scratch_store_b32 off, v16, off offset:284 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v16, 5, v15
	v_lshl_or_b32 v9, v15, 6, v9
	s_mul_i32 s9, s63, 24
	s_mul_i32 s10, s63, 28
	scratch_store_b32 off, v14, off offset:288 ; 4-byte Folded Spill
	v_add3_u32 v14, v6, s9, v7
	v_add3_u32 v6, v6, s10, v7
	v_or3_b32 v21, v1, v16, v11
	v_xor_b32_e32 v1, 0x208, v9
	v_lshrrev_b32_e32 v16, 2, v13
	v_lshrrev_b32_e32 v18, 4, v52
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v14, off offset:296
	scratch_store_b32 off, v9, off offset:292
	v_dual_mov_b32 v40, v224 :: v_dual_add_nc_u32 v1, 0, v1
	v_or3_b32 v23, v16, v18, v30
	scratch_store_b32 off, v6, off offset:300 ; 4-byte Folded Spill
	v_xor_b32_e32 v6, 0x410, v9
	v_xor_b32_e32 v7, 0x618, v9
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:328
	scratch_store_b32 off, v23, off offset:308
	v_xor_b32_e32 v9, 4, v21
	v_dual_mov_b32 v58, v224 :: v_dual_add_nc_u32 v1, 0, v6
	scratch_store_b32 off, v3, off offset:324 ; 4-byte Folded Spill
	v_xor_b32_e32 v11, 8, v21
	v_mov_b32_e32 v60, v224
	scratch_store_b32 off, v1, off offset:332 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v7
	v_xor_b32_e32 v15, 12, v21
	v_mov_b32_e32 v62, v224
	v_lshlrev_b32_e32 v14, 2, v0
	v_xor_b32_e32 v19, 16, v21
	scratch_store_b32 off, v1, off offset:336 ; 4-byte Folded Spill
	v_dual_mov_b32 v64, v224 :: v_dual_add_nc_u32 v1, 0, v9
	v_lshrrev_b32_e32 v17, 1, v13
	v_and_b32_e32 v14, 52, v14
	v_xor_b32_e32 v20, 20, v21
	scratch_store_b32 off, v1, off offset:340 ; 4-byte Folded Spill
	v_dual_mov_b32 v50, v224 :: v_dual_add_nc_u32 v1, 0, v11
	v_and_or_b32 v17, v0, 2, v17
	v_lshl_or_b32 v2, v2, 5, v14
	v_xor_b32_e32 v14, 24, v21
	scratch_store_b32 off, v1, off offset:344 ; 4-byte Folded Spill
	v_dual_mov_b32 v54, v224 :: v_dual_add_nc_u32 v1, 0, v15
	v_or3_b32 v27, v17, v2, v65
	v_xor_b32_e32 v2, 0x90, v23
	v_xor_b32_e32 v16, 28, v21
	scratch_store_b32 off, v1, off offset:348 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v19
	v_lshlrev_b32_e32 v22, 3, v0
	v_mov_b32_e32 v42, v224
	v_mov_b32_e32 v56, v224
	v_xor_b32_e32 v17, 0x120, v23
	scratch_store_b32 off, v1, off offset:352 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v20
	v_dual_mov_b32 v41, 0 :: v_dual_and_b32 v22, 48, v22
	v_bfe_i32 v28, v0, 3, 1
	v_cndmask_b32_e64 v29, 0x420, 0, vcc_lo
	scratch_store_b32 off, v1, off offset:356 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, v0
	scratch_store_b32 off, v21, off offset:304 ; 4-byte Folded Spill
	v_dual_mov_b32 v44, v224 :: v_dual_and_b32 v21, 24, v0
	v_and_or_b32 v28, 0x210, v28, v29
	.loc	1 545 17                        ; attention_backward.py:545:17
	scratch_store_b64 off, v[1:2], off offset:104 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v14
	v_lshrrev_b32_e32 v24, 1, v21
	v_lshlrev_b32_e32 v21, 1, v21
	scratch_store_b32 off, v27, off offset:312 ; 4-byte Folded Spill
	v_xor_b32_e32 v31, 0x1b0, v23
	scratch_store_b32 off, v1, off offset:360 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v16
	v_xor_b32_e32 v21, v22, v21
	v_lshl_or_b32 v24, v12, 7, v24
	v_mov_b32_e32 v43, v224
	v_lshl_or_b32 v12, v12, 6, v22
	scratch_store_b32 off, v1, off offset:364 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v2
	v_lshl_or_b32 v29, v0, 6, v21
	v_add_nc_u32_e32 v0, s81, v0
	v_or3_b32 v24, v24, v10, v18
	v_lshl_or_b32 v18, v52, 6, v8
	scratch_store_b32 off, v1, off offset:368 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v17
	v_xor_b32_e32 v10, 16, v29
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:372
	scratch_store_b32 off, v0, off offset:420
	v_add_nc_u32_e32 v0, s81, v0
	v_xor_b32_e32 v8, 32, v29
	v_add_nc_u32_e32 v1, 0, v31
	v_mov_b32_e32 v33, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v35, v224 :: v_dual_add_nc_u32 v2, s81, v0
	scratch_store_b32 off, v0, off offset:436 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v10
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:380
	scratch_store_b32 off, v29, off offset:440
	v_add_nc_u32_e32 v0, 0, v8
	scratch_store_b32 off, v1, off offset:376 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 48, v29
	v_xor_b32_e32 v12, v28, v12
	v_add_nc_u32_e32 v3, s81, v2
	scratch_store_b32 off, v2, off offset:444 ; 4-byte Folded Spill
	v_mov_b32_e32 v39, v224
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:388
	scratch_store_b32 off, v12, off offset:448
	v_xor_b32_e32 v1, 48, v12
	v_xor_b32_e32 v2, 32, v12
	scratch_store_b32 off, v3, off offset:452 ; 4-byte Folded Spill
	v_dual_mov_b32 v46, v224 :: v_dual_add_nc_u32 v3, s81, v3
	v_add_nc_u32_e32 v165, 0, v1
	v_xor_b32_e32 v1, 32, v18
	v_dual_mov_b32 v37, v224 :: v_dual_add_nc_u32 v164, 0, v2
	v_xor_b32_e32 v2, 48, v18
	scratch_store_b32 off, v3, off offset:456 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v1
	v_add_nc_u32_e32 v3, s81, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:396
	scratch_store_b32 off, v3, off offset:460
	v_add_nc_u32_e32 v1, 0, v2
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v12
	v_dual_mov_b32 v48, v224 :: v_dual_add_nc_u32 v3, s81, v3
	scratch_store_b32 off, v1, off offset:400 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x50, v18
	v_add_nc_u32_e32 v162, 0, v0
	v_xor_b32_e32 v0, 16, v18
	v_mov_b32_e32 v15, v3
	v_add_nc_u32_e32 v3, s81, v3
	v_add_nc_u32_e32 v1, 0, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v0, 0, v0
	v_xor_b32_e32 v2, 0x70, v18
	v_mov_b32_e32 v243, v3
	v_add_nc_u32_e32 v3, s81, v3
	v_lshlrev_b32_e32 v21, 1, v68
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v18
	v_dual_mov_b32 v59, v224 :: v_dual_mov_b32 v244, v3
	v_lshlrev_b32_e32 v13, 2, v13
	v_add3_u32 v250, 0, v52, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v0, 0, v0
	v_add_nc_u32_e32 v3, s81, v3
	v_mov_b32_e32 v235, v24
	v_or3_b32 v13, v21, v13, v52
	v_lshl_or_b32 v21, v68, 6, v22
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v18
	v_mov_b32_e32 v23, v3
	v_add_nc_u32_e32 v3, s81, v3
	v_xor_b32_e32 v25, 16, v27
	v_xor_b32_e32 v26, 32, v27
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v1, off offset:408 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x90, v13
	v_mov_b32_e32 v241, v3
	v_add_nc_u32_e32 v3, s81, v3
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	v_dual_mov_b32 v61, v224 :: v_dual_add_nc_u32 v234, 0, v1
	v_xor_b32_e32 v1, 0x1b0, v13
	v_xor_b32_e32 v2, 16, v21
	v_mov_b32_e32 v253, v3
	v_add_nc_u32_e32 v3, s81, v3
	v_xor_b32_e32 v27, 48, v27
	v_dual_mov_b32 v63, v224 :: v_dual_add_nc_u32 v10, 0, v1
	v_add_nc_u32_e32 v1, 0, v2
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x120, v13
	v_dual_mov_b32 v254, v3 :: v_dual_add_nc_u32 v3, s81, v3
	v_xor_b32_e32 v2, 32, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v14, v18 :: v_dual_add_nc_u32 v9, 0, v0
	v_xor_b32_e32 v0, 32, v21
	v_mov_b32_e32 v211, v3
	v_dual_mov_b32 v20, v21 :: v_dual_add_nc_u32 v3, s81, v3
	v_dual_mov_b32 v51, v224 :: v_dual_add_nc_u32 v18, 0, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v1, off offset:424 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 48, v21
	v_mov_b32_e32 v237, v3
	v_add_nc_u32_e32 v3, s81, v3
	v_xor_b32_e32 v2, 0x60, v24
	v_add_nc_u32_e32 v157, 0, v27
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v0, off offset:428 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v24
	v_dual_mov_b32 v238, v3 :: v_dual_add_nc_u32 v3, s81, v3
	scratch_store_b32 off, v1, off offset:432 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 48, v24
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v16, 0, v0
	v_xor_b32_e32 v0, 64, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v248, v3 :: v_dual_add_nc_u32 v19, 0, v1
	v_xor_b32_e32 v1, 0x50, v24
	v_add_nc_u32_e32 v3, s81, v3
	v_add_nc_u32_e32 v21, 0, v0
	v_xor_b32_e32 v0, 0x70, v24
	v_dual_mov_b32 v53, v224 :: v_dual_add_nc_u32 v24, 0, v2
	v_add_nc_u32_e32 v22, 0, v1
	v_xor_b32_e32 v1, 0x90, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v55, v224 :: v_dual_add_nc_u32 v236, 0, v0
	v_xor_b32_e32 v0, 0x120, v30
	v_xor_b32_e32 v2, 0x1b0, v30
	v_add_nc_u32_e32 v239, 0, v1
	v_xor_b32_e32 v1, 0x240, v30
	v_dual_mov_b32 v47, v224 :: v_dual_add_nc_u32 v156, 0, v26
	v_add_nc_u32_e32 v240, 0, v0
	v_add_nc_u32_e32 v26, 0, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v27, 0, v1
	v_xor_b32_e32 v1, 0x360, v30
	v_xor_b32_e32 v0, 0x2d0, v30
	v_xor_b32_e32 v2, 0x3f0, v30
	v_dual_mov_b32 v45, v224 :: v_dual_add_nc_u32 v204, 0, v25
	v_add_nc_u32_e32 v30, 0, v1
	v_add_nc_u32_e32 v1, s81, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v32, 0, v2
	v_add_nc_u32_e32 v29, 0, v0
	v_dual_mov_b32 v0, v3 :: v_dual_mov_b32 v17, v13
	v_mov_b32_e32 v25, v1
	v_dual_mov_b32 v52, v224 :: v_dual_add_nc_u32 v1, s81, v1
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v214, 16, v65
	v_or_b32_e32 v31, 18, v65
	v_or_b32_e32 v251, 20, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v199, v1
	v_add_nc_u32_e32 v1, s81, v1
	v_or_b32_e32 v158, 22, v65
	v_or_b32_e32 v163, 24, v65
	v_or_b32_e32 v202, 26, v65
	v_or_b32_e32 v203, 28, v65
	v_mov_b32_e32 v11, v1
	v_add_nc_u32_e32 v1, s81, v1
	.loc	1 641 25                        ; attention_backward.py:641:25
	s_mul_f32 s86, s60, 0x3fb8aa3b
	s_mov_b32 s53, 0
	s_and_b32 s65, s65, 0xffff
	s_mov_b32 s67, 0x31027000
	v_dual_mov_b32 v28, v1 :: v_dual_add_nc_u32 v1, s81, v1
	s_mov_b32 s66, 0x7ffffffe
	s_and_b32 s69, s69, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s45, s45, 0xffff
	v_mov_b32_e32 v247, v1
	v_add_nc_u32_e32 v1, s81, v1
	s_and_b32 s73, s47, 0xffff
	s_mov_b32 s72, s46
	s_and_b32 s77, s43, 0xffff
	s_mov_b32 s76, s42
	v_mov_b32_e32 v205, v1
	v_add_nc_u32_e32 v1, s81, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v155, v1
	v_add_nc_u32_e32 v1, s81, v1
	v_mad_u64_u32 v[160:161], null, s80, 26, v[154:155]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v201, v1
	v_add_nc_u32_e32 v249, s81, v1
	v_mad_u64_u32 v[1:2], null, s80, 18, v[154:155]
	v_mad_u64_u32 v[245:246], null, s80, 28, v[154:155]
	v_add_nc_u32_e32 v252, s81, v249
	v_mad_u64_u32 v[12:13], null, s80, 30, v[154:155]
	v_mov_b32_e32 v161, v65
	scratch_store_b64 off, v[1:2], off offset:464 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s80, 20, v[154:155]
	v_add_nc_u32_e32 v210, s81, v252
	v_mov_b32_e32 v246, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v242, s81, v210
	scratch_store_b64 off, v[1:2], off offset:472 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s80, 22, v[154:155]
	v_mov_b32_e32 v1, v68
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v159, v66, v1
	scratch_store_b64 off, v[2:3], off offset:480 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s80, 24, v[154:155]
	scratch_store_b64 off, v[2:3], off offset:488 ; 8-byte Folded Spill
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
	v_bfe_i32 v1, v92, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e32 v108.l, 0
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v108.h, v91.l
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v8, v72
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s2, s90, 1
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v92.l, v1.l
	v_bfe_i32 v1, v97, 0, 8
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s3, s90, 2
	s_or_b32 s7, s90, 3
	s_or_b32 s8, s90, 4
	s_or_b32 s9, s90, 5
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v13.l, v1.l
	v_bfe_i32 v1, v96, 0, 8
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s10, s90, 6
	s_or_b32 s11, s90, 7
	s_or_b32 s12, s90, 8
	s_or_b32 s13, s90, 9
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v65.l, v1.l
	v_bfe_i32 v1, v95, 0, 8
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s14, s90, 10
	s_or_b32 s15, s90, 11
	s_or_b32 s16, s90, 12
	s_or_b32 s17, s90, 13
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v95.l, v1.l
	v_bfe_i32 v1, v94, 0, 8
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s18, s90, 14
	s_or_b32 s33, s90, 15
	s_or_b32 s34, s90, 16
	s_or_b32 s35, s90, 17
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v94.l, v1.l
	v_bfe_i32 v1, v93, 0, 8
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s36, s90, 18
	s_or_b32 s38, s90, 19
	s_or_b32 s42, s90, 20
	s_or_b32 s43, s90, 21
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v93.l, v1.l
	v_bfe_i32 v1, v107, 0, 8
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s46, s90, 22
	s_or_b32 s47, s90, 23
	s_or_b32 s52, s90, 24
	s_or_b32 s55, s90, 25
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v96.l, v1.l
	v_bfe_i32 v1, v106, 0, 8
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s58, s90, 26
	s_or_b32 s59, s90, 27
	s_or_b32 s61, s90, 28
	s_or_b32 s74, s90, 29
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v97.l, v1.l
	v_bfe_i32 v1, v101, 0, 8
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s75, s90, 30
	s_or_b32 vcc_lo, s90, 31
	.loc	1 609 29 is_stmt 1              ; attention_backward.py:609:29
	s_cmp_lt_i32 s90, s54
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v2, v66
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v101.l, v1.l
	v_bfe_i32 v1, v100, 0, 8
	.loc	1 609 29 is_stmt 1              ; attention_backward.py:609:29
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s2, s54
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v3, v67
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s28, -1, 0
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v100.l, v1.l
	v_bfe_i32 v1, v99, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s3, s54
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v4, v68
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s29, -1, 0
	s_cmp_lt_i32 s7, s54
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v99.l, v1.l
	v_bfe_i32 v1, v98, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s30, -1, 0
	s_cmp_lt_i32 s8, s54
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v5, v69
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s31, -1, 0
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v98.l, v1.l
	v_bfe_i32 v1, v104, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s9, s54
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v6, v70
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s10, s54
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v104.l, v1.l
	v_bfe_i32 v1, v102, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s71, -1, 0
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v106, 15, v65
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s11, s54
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v7, v71
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v102.l, v1.l
	v_bfe_i32 v1, v105, 0, 8
	.loc	1 609 29 is_stmt 1              ; attention_backward.py:609:29
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s12, s54
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v73, v73
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s91, -1, 0
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v105.l, v1.l
	v_bfe_i32 v1, v103, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s13, s54
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v107, 15, v95
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s14, s54
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v103.l, v1.l
	.loc	1 640 41 is_stmt 1              ; attention_backward.py:640:41
	v_mul_f32_e32 v1, s86, v108
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s15, s54
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v110, 15, v93
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s94, -1, 0
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_dual_mul_f32 v72, v1, v8 :: v_dual_and_b32 v109, 15, v94
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v8.h, 4, v13.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s16, s54
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v66, v1, v2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s17, s54
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v121.l, v8.h, 15
	v_lshrrev_b16 v8.h, 4, v65.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s96, -1, 0
	s_cmp_lt_i32 s18, s54
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v67, v1, v3
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s97, -1, 0
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v122.l, v8.h, 15
	v_lshrrev_b16 v8.h, 4, v95.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s33, s54
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v68, v1, v4
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s98, -1, 0
	s_cmp_lt_i32 s34, s54
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v123.l, v8.h, 15
	v_lshrrev_b16 v8.h, 4, v94.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s99, -1, 0
	s_cmp_lt_i32 s35, s54
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_dual_mul_f32 v69, v1, v5 :: v_dual_and_b32 v114, 15, v100
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v124.l, v8.h, 15
	v_lshrrev_b16 v8.h, 4, v93.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s100, -1, 0
	s_cmp_lt_i32 s36, s54
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v2.l, v95.l, 15
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s101, -1, 0
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v125.l, v8.h, 15
	v_lshrrev_b16 v8.h, 4, v96.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s38, s54
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v3.l, v93.l, 15
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s102, -1, 0
	s_cmp_lt_i32 s42, s54
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v126.l, v8.h, 15
	v_lshrrev_b16 v8.h, 4, v97.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s103, -1, 0
	s_cmp_lt_i32 s43, s54
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v3.h, v96.l, 15
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s104, -1, 0
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v127.l, v8.h, 15
	v_lshrrev_b16 v8.h, 4, v101.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s46, s54
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v5.l, v100.l, 15
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 vcc_hi, -1, 0
	s_cmp_lt_i32 s47, s54
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v128.l, v8.h, 15
	v_lshrrev_b16 v8.h, 4, v100.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s38, -1, 0
	s_cmp_lt_i32 s52, s54
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v5.h, v99.l, 15
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s56, -1, 0
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v129.l, v8.h, 15
	v_lshrrev_b16 v8.h, 4, v99.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s55, s54
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v76.h, v75.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s58, s54
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v130.l, v8.h, 15
	v_lshrrev_b16 v8.h, 4, v98.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s59, s54
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_dual_mul_f32 v70, v1, v6 :: v_dual_and_b32 v111, 15, v96
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s61, s54
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_dual_mul_f32 v71, v1, v7 :: v_dual_and_b32 v112, 15, v97
	v_dual_mul_f32 v73, v1, v73 :: v_dual_and_b32 v116, 15, v98
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v1.l, v13.l, 15
	v_and_b16 v1.h, v65.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v75, 15, v13
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v131.l, v8.h, 15
	v_lshrrev_b16 v8.h, 4, v104.l
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e32 v123.h, v108.l
	.loc	1 650 42 is_stmt 1              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s3, 7, v2.l
	v_cmp_lt_u16_e64 s8, 7, v3.l
	v_cmp_lt_u16_e64 s9, 7, v3.h
	v_cmp_lt_u16_e64 s12, 7, v5.l
	v_cmp_lt_u16_e64 s13, 7, v5.h
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v3, -16, v107
	v_or_b32_e32 v5, -16, v110
	.loc	1 609 29 is_stmt 1              ; attention_backward.py:609:29
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s74, s54
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v7.l, v102.l, 15
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s75, s54
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v132.l, v8.h, 15
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 vcc_lo, s54
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v8.h, 4, v102.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v1.l
	v_cmp_lt_u16_e64 s2, 7, v1.h
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v1, -16, v75
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v118, 15, v102
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v3, v107, v3, s3
	v_cndmask_b32_e64 v5, v110, v5, s8
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s3, 0, v95.l
	v_cmp_gt_i16_e64 s8, 0, v93.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v93, -16, v123
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v2.h, v94.l, 15
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v133.l, v8.h, 15
	v_lshrrev_b16 v8.h, 4, v105.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s16, 7, v7.l
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v1, v75, v1, vcc_lo
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v140, -16, v118
	.loc	1 651 34 is_stmt 1              ; attention_backward.py:651:34
	v_cndmask_b32_e64 v93, v123, v93, s3
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v89.h, v88.l
	v_mov_b16_e32 v88.l, v108.l
	v_mov_b16_e32 v88.h, v87.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v4.l, v97.l, 15
	v_and_b16 v4.h, v101.l, 15
	v_and_b16 v6.l, v98.l, 15
	v_and_b16 v7.h, v105.l, 15
	v_and_b16 v8.l, v103.l, 15
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v134.l, v8.h, 15
	v_lshrrev_b16 v8.h, 4, v103.l
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e32 v121.h, v108.l
	.loc	1 650 42 is_stmt 1              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s7, 7, v2.h
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v2, -16, v106
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v110, v118, v140, s16
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v93, v93
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v113, 15, v101
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v79.h, v78.l
	v_mov_b16_e32 v78.l, v108.l
	v_mov_b16_e32 v78.h, v77.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v6.h, v104.l, 15
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v135.l, v8.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e32 v124.h, v108.l
	v_mov_b16_e32 v127.h, v108.l
	v_mov_b16_e64 v128.h, v108.l
	.loc	1 650 42 is_stmt 1              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s10, 7, v4.l
	v_cmp_lt_u16_e64 s11, 7, v4.h
	v_cmp_lt_u16_e64 s14, 7, v6.l
	v_cmp_lt_u16_e64 s17, 7, v7.h
	v_cmp_lt_u16_e64 s18, 7, v8.l
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v4, -16, v109
	v_or_b32_e32 v7, -16, v112
	v_or_b32_e32 v138, -16, v116
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v2, v106, v2, s2
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v13.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v13, -16, v121
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v120, 15, v103
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v110, v110
	v_mul_f32_e32 v3, v3, v88
	v_mul_f32_e32 v88, v93, v88
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v8, -16, v113
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v90.h, v89.l
	v_mov_b16_e32 v89.l, v108.l
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v133.h, v108.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s15, 7, v6.h
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v6, -16, v111
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v4, v109, v4, s7
	v_cndmask_b32_e64 v7, v112, v7, s10
	v_cndmask_b32_e64 v8, v113, v8, s11
	v_cndmask_b32_e64 v107, v116, v138, s14
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v94.l
	v_cmp_gt_i16_e64 s10, 0, v97.l
	v_cmp_gt_i16_e64 s11, 0, v101.l
	v_cmp_gt_i16_e64 s14, 0, v98.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v94, -16, v124
	v_or_b32_e32 v97, -16, v127
	v_or_b32_e32 v98, -16, v128
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v13, v121, v13, vcc_lo
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v142, -16, v120
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v115, 15, v99
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v91.h, v90.l
	v_mov_b16_e32 v90.l, v108.l
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e32 v122.h, v108.l
	v_mov_b16_e64 v129.h, v108.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v136, -16, v114
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e64 v6, v111, v6, s9
	v_cndmask_b32_e64 v112, v120, v142, s18
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s16, 0, v102.l
	v_cmp_gt_i16_e64 s18, 0, v103.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v103, -16, v133
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v94, v124, v94, s7
	v_cndmask_b32_e64 v97, v127, v97, s10
	v_cndmask_b32_e64 v98, v128, v98, s11
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v1, v1
	v_mul_f32_e32 v2, v2, v89
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v137, -16, v115
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v87.l, v108.l
	v_mov_b16_e32 v87.h, v86.l
	v_mov_b16_e32 v86.h, v85.l
	v_mov_b16_e32 v85.l, v108.l
	v_mov_b16_e32 v85.h, v84.l
	v_mov_b16_e32 v84.l, v108.l
	v_mov_b16_e32 v84.h, v83.l
	v_mov_b16_e32 v83.l, v108.l
	v_mov_b16_e32 v83.h, v82.l
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e32 v125.h, v108.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v75, v114, v136, s12
	v_cndmask_b32_e64 v106, v115, v137, s13
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s2, 0, v65.l
	v_cmp_gt_i16_e64 s12, 0, v100.l
	v_cmp_gt_i16_e64 s13, 0, v99.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v65, -16, v122
	v_or_b32_e32 v99, -16, v129
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v103, v133, v103, s16
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v98, v98
	v_dual_mul_f32 v1, v1, v90 :: v_dual_mul_f32 v6, v6, v85
	v_dual_mul_f32 v4, v4, v87 :: v_dual_and_b32 v117, 15, v104
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v95, -16, v125
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e64 v65, v122, v65, s2
	v_cndmask_b32_e64 v99, v129, v99, s12
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v103, v103
	v_dual_mul_f32 v13, v13, v90 :: v_dual_mul_f32 v8, v8, v83
	v_mul_f32_e32 v87, v94, v87
	v_mul_f32_e32 v83, v98, v83
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e32 v98.h, v108.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v7, v7, v84
	v_mul_f32_e32 v84, v97, v84
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v97, 0, v1, s0
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v1.l, 4, v92.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v82.l, v108.l
	v_mov_b16_e32 v82.h, v81.l
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v95, v125, v95, s8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v99, v99
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v98.l, v1.l, 15
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v1.l, v92.l, 15
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v86.l, v108.l
	v_mov_b16_e32 v77.h, v76.l
	v_mov_b16_e32 v76.l, v108.l
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v130.h, v108.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v95, v95
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v119, 15, v105
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v112, v112
	v_mul_f32_e32 v65, v65, v89
	v_mul_f32_e32 v75, v75, v82
	v_dual_mul_f32 v82, v99, v82 :: v_dual_and_b32 v99, 15, v92
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v92.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s2, 7, v1.l
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v1, -16, v98
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v81.h, v80.l
	v_mov_b16_e32 v80.l, v108.l
	v_mov_b16_e32 v80.h, v79.l
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v135.h, v108.l
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v100, -16, v130
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v107, v107
	v_mul_f32_e32 v5, v5, v86
	v_mul_f32_e32 v86, v95, v86
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v141, -16, v119
	v_or_b32_e32 v92, -16, v99
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v1, v98, v1, vcc_lo
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v91.l, v108.l
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v100, v130, v100, s13
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v111, v119, v141, s17
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s17, 0, v105.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v105, -16, v135
	.loc	1 650 33 is_stmt 1              ; attention_backward.py:650:33
	v_cndmask_b32_e64 v92, v99, v92, s2
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v1, v1
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v81.l, v108.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v106, v106
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v105, v135, v105, s18
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v92, v92
	v_mul_f32_e32 v1, v91, v1
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v139, -16, v117
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v105, v105
	v_mul_f32_e32 v89, v106, v81
	v_dual_mul_f32 v81, v100, v81 :: v_dual_mul_f32 v92, v91, v92
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v109, v117, v139, s15
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v79.l, v108.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v13, 0, v13, s1
	v_cndmask_b32_e64 v91, 0, v92, s0
	v_mov_b16_e32 v98.l, v1.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v109, v109
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v92.h, v108.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_mov_b16_e32 v92.l, v91.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_dual_mul_f32 v93, v109, v79 :: v_dual_and_b32 v98, 1, v98
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v65, 0, v65, s1
	v_and_b32_e32 v92, 1, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v98, v1, v98, 0x7fff
	v_bfe_u32 v1, v97, 16, 1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v94, v110, v78
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_add3_u32 v92, v91, v92, 0x7fff
	v_cndmask_b16 v181.h, 0x7fff, v98.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v91, v91
	v_add3_u32 v1, v97, v1, 0x7fff
	v_cndmask_b32_e64 v88, 0, v88, s1
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v87, 0, v87, s1
	v_cndmask_b16 v181.l, 0x7fff, v92.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v97, v97
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v90, v107, v80
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e32 v126.h, v108.l
	v_mov_b16_e64 v131.h, v108.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v182.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v13, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s9, 0, v96.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v96, -16, v126
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b32_e64 v86, 0, v86, s1
	v_add3_u32 v1, v13, v1, 0x7fff
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v101, -16, v131
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v6, 0, v6, s0
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v96, v126, v96, s9
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b16 v182.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v2, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v101, v131, v101, s14
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v96, v96
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v84, 0, v84, s1
	v_add3_u32 v1, v2, v1, 0x7fff
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v101, v101
	v_dual_mul_f32 v85, v96, v85 :: v_dual_mul_f32 v78, v103, v78
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v179.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v65, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v80, v101, v80
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v85, 0, v85, s1
	v_cndmask_b32_e64 v83, 0, v83, s1
	v_add3_u32 v1, v65, v1, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v96, v112, v76
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v75, 0, v75, s0
	v_cndmask_b32_e64 v82, 0, v82, s1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v76, v105, v76
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v179.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v3, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_cndmask_b32_e64 v89, 0, v89, s0
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v77.l, v108.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v111, v111
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v1, v3, v1, 0x7fff
	v_cndmask_b32_e64 v81, 0, v81, s1
	v_cndmask_b32_e64 v90, 0, v90, s0
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v132.h, v108.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v95, v111, v77
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v180.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v88, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v88, v88
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s15, 0, v104.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v102, -16, v132
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b32_e64 v80, 0, v80, s1
	v_add3_u32 v1, v88, v1, 0x7fff
	v_cndmask_b32_e64 v93, 0, v93, s0
	v_cndmask_b32_e64 v94, 0, v94, s0
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v102, v132, v102, s15
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v134.h, v108.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v180.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v4, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v102, v102
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v104, -16, v134
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v78, 0, v78, s1
	v_add3_u32 v1, v4, v1, 0x7fff
	v_cndmask_b32_e64 v95, 0, v95, s0
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v79, v102, v79
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v104, v134, v104, s17
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v96, 0, v96, s0
	v_cndmask_b16 v177.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v87, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v87, v87
	v_cndmask_b32_e64 v79, 0, v79, s1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v104, v104
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v76, 0, v76, s1
	v_add3_u32 v1, v87, v1, 0x7fff
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_mul_i32 s2, s90, s63
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s55, -1, 0
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v77, v104, v77
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_add_i32 s2, s89, s2
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v177.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v5, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_cndmask_b32_e64 v77, 0, v77, s1
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_mov_b32 s42, s66
	s_mov_b32 s43, s67
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v1, v5, v1, 0x7fff
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v225, v224
	v_mov_b32_e32 v227, v224
	v_mov_b32_e32 v229, v224
	v_mov_b32_e32 v231, v224
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v178.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v86, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v86, v86
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s46, s66
	s_mov_b32 s47, s67
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s74, s66
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v1, v86, v1, 0x7fff
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s75, s67
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s36, s4, s19
	s_and_b32 s35, s4, s28
	s_and_b32 s28, s4, s79
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v178.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v6, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s79, s67
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s34, s4, s29
	s_and_b32 s33, s4, s30
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v1, v6, v1, 0x7fff
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s31, s4, s31
	s_and_b32 s30, s4, s70
	s_and_b32 s29, s4, s71
	s_and_b32 s19, s4, s99
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v175.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v85, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v85, v85
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s18, s4, s100
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v2, off, off offset:272
	scratch_load_b32 v3, off, off offset:276
	scratch_load_b32 v4, off, off offset:280
	scratch_load_b32 v5, off, off offset:284
	scratch_load_b32 v6, off, off offset:288
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v1, v85, v1, 0x7fff
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s17, s4, s101
	s_and_b32 s16, s4, s102
	s_and_b32 s15, s4, s103
	s_and_b32 s14, s4, s104
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v175.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v7, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s13, s4, vcc_hi
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s90, s90, 32
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v1, v7, v1, 0x7fff
	.loc	1 691 36                        ; attention_backward.py:691:36
	scratch_load_b32 v7, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 697 25                        ; attention_backward.py:697:25
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v228, v224
	v_mov_b32_e32 v230, v224
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v176.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v84, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v84, v84
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v226, v224
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v1, v84, v1, 0x7fff
	v_cndmask_b16 v176.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v8, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v8, v1, 0x7fff
	.loc	1 691 36                        ; attention_backward.py:691:36
	scratch_load_b32 v8, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v153.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v83, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v83, v83
	v_add3_u32 v1, v83, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v153.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v75, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v75, v75
	v_add3_u32 v1, v75, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v174.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v82, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v82, v82
	v_add3_u32 v1, v82, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v174.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v89, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v89, v89
	v_add3_u32 v1, v89, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v111.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v81, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v81, v81
	v_add3_u32 v1, v81, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v111.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v90, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v90, v90
	v_add3_u32 v1, v90, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v112.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v80, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v80, v80
	v_add3_u32 v1, v80, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v112.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v93, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v93, v93
	v_add3_u32 v1, v93, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v109.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v79, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	v_add3_u32 v1, v79, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v109.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v94, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v94, v94
	v_add3_u32 v1, v94, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v110.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v78, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v78, v78
	v_add3_u32 v1, v78, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v110.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v95, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v95, v95
	v_add3_u32 v1, v95, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v106.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v77, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v77, v77
	v_add3_u32 v1, v77, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v106.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v96, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v96, v96
	v_add3_u32 v1, v96, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v107.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v76, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v76, v76
	v_add3_u32 v1, v76, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v107.h, 0x7fff, v1.h, vcc_lo
	.loc	1 691 36                        ; attention_backward.py:691:36
	scratch_load_b32 v1, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v2, s2, v2, 2
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v3, s2, v3, 2
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v4, s2, v4, 2
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v5, s2, v5, 2
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v6, s2, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s25
	v_cndmask_b32_e64 v3, 0x80000000, v3, s27
	v_cndmask_b32_e64 v4, 0x80000000, v4, s24
	v_cndmask_b32_e64 v5, 0x80000000, v5, s22
	v_cndmask_b32_e64 v6, 0x80000000, v6, s20
	s_clause 0x4
	buffer_load_b32 v2, v2, s[40:43], 0 offen
	buffer_load_b32 v3, v3, s[40:43], 0 offen
	buffer_load_b32 v4, v4, s[40:43], 0 offen
	buffer_load_b32 v5, v5, s[40:43], 0 offen
	buffer_load_b32 v6, v6, s[40:43], 0 offen
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v7, s2, v7, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v7, 0x80000000, v7, s23
	buffer_load_b32 v7, v7, s[40:43], 0 offen
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v8, s2, v8, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s21
	buffer_load_b32 v8, v8, s[40:43], 0 offen
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v1, s2, v1, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s26
	buffer_load_b32 v1, v1, s[40:43], 0 offen
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v13, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_waitcnt vmcnt(8)
	v_cndmask_b32_e64 v2, 0xff800000, v2, s25
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v3, 0xff800000, v3, s27
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v4, 0xff800000, v4, s24
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v5, 0xff800000, v5, s22
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v6, 0xff800000, v6, s20
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v2
	v_cmp_neq_f32_e64 s3, 0xff800000, v3
	v_cmp_neq_f32_e64 s7, 0xff800000, v4
	v_cmp_neq_f32_e64 s8, 0xff800000, v5
	v_cmp_neq_f32_e64 s9, 0xff800000, v6
	.loc	1 697 25 is_stmt 0              ; attention_backward.py:697:25
	s_and_b32 s2, s25, s2
	s_and_b32 s3, s27, s3
	s_and_b32 s7, s24, s7
	s_and_b32 s8, s22, s8
	s_and_b32 s9, s20, s9
	.loc	1 712 26 is_stmt 1              ; attention_backward.py:712:26
	s_and_b32 s27, s4, s91
	s_and_b32 s25, s4, s93
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v7, 0xff800000, v7, s23
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s24, s4, s94
	s_and_b32 s22, s4, s96
	s_and_b32 s20, s4, s98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v7
	.loc	1 697 25 is_stmt 0              ; attention_backward.py:697:25
	s_and_b32 s10, s23, s10
	.loc	1 712 26 is_stmt 1              ; attention_backward.py:712:26
	s_and_b32 s23, s4, s95
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v8, 0xff800000, v8, s21
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v8
	.loc	1 697 25 is_stmt 0              ; attention_backward.py:697:25
	s_and_b32 s11, s21, s11
	.loc	1 712 26 is_stmt 1              ; attention_backward.py:712:26
	s_and_b32 s21, s4, s97
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v1, 0xff800000, v1, s26
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, 0, v13
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v1
	.loc	1 696 35                        ; attention_backward.py:696:35
	ds_store_2addr_b32 v13, v1, v5 offset1:32
	scratch_load_b32 v13, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v1, 0, 1, s8
	s_and_b32 s12, s26, vcc_lo
	v_cndmask_b32_e64 v5, 0, 1, s7
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s26, s4, s92
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_lshlrev_b16 v1.l, 8, v1.l
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v13, v2, v6 offset1:32
	scratch_load_b32 v13, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v2, 0, 1, s12
	v_cndmask_b32_e64 v6, 0, 1, s9
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s12, s4, s38
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_or_b16 v1.l, v2.l, v1.l
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v13, v3, v7 offset1:32
	scratch_load_b32 v13, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v3, 0, 1, s2
	v_cndmask_b32_e64 v7, 0, 1, s10
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v13, v4, v8 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v13, off, off offset:304
	scratch_load_b32 v65, off, off offset:340
	scratch_load_b32 v75, off, off offset:344
	scratch_load_b32 v76, off, off offset:348
	scratch_load_b32 v77, off, off offset:352
	scratch_load_b32 v78, off, off offset:356
	scratch_load_b32 v79, off, off offset:360
	scratch_load_b32 v80, off, off offset:364
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v4, 0, 1, s3
	v_cndmask_b32_e64 v8, 0, 1, s11
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v13, 0, v13
	ds_load_b32 v13, v13
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v13, 0x3fb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 696 25 is_stmt 0              ; attention_backward.py:696:25
	v_fmac_f32_e32 v13, v66, v212
	scratch_load_b32 v66, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(7)
	ds_load_b32 v65, v65
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v65, 0x3fb8aa3b, v65
	.loc	1 696 25                        ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v65, v67, v66
	scratch_load_b32 v66, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 696 35                        ; attention_backward.py:696:35
	ds_load_b32 v75, v75
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v75, 0x3fb8aa3b, v75
	.loc	1 696 25                        ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v75, v68, v66
	scratch_load_b32 v66, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 696 35                        ; attention_backward.py:696:35
	ds_load_b32 v76, v76
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v76, 0x3fb8aa3b, v76
	.loc	1 696 25                        ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v76, v69, v66
	scratch_load_b32 v66, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 696 35                        ; attention_backward.py:696:35
	ds_load_b32 v77, v77
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v77, 0x3fb8aa3b, v77
	.loc	1 696 25                        ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v77, v70, v66
	scratch_load_b32 v66, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 696 35                        ; attention_backward.py:696:35
	ds_load_b32 v78, v78
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v78, 0x3fb8aa3b, v78
	.loc	1 696 25                        ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v78, v71, v66
	scratch_load_b32 v66, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 696 35                        ; attention_backward.py:696:35
	ds_load_b32 v79, v79
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v79, 0x3fb8aa3b, v79
	.loc	1 696 25                        ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v79, v72, v66
	scratch_load_b32 v66, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 696 35                        ; attention_backward.py:696:35
	ds_load_b32 v80, v80
	.loc	1 697 25 is_stmt 1              ; attention_backward.py:697:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v2, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 696 35                        ; attention_backward.py:696:35
	v_mul_f32_e32 v80, 0x3fb8aa3b, v80
	.loc	1 696 25 is_stmt 0              ; attention_backward.py:696:25
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v80, v73, v66
	.loc	1 697 25 is_stmt 1              ; attention_backward.py:697:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, 0, v2
	ds_store_b16 v2, v1
	v_mov_b16_e32 v1.l, v6.l
	v_mov_b16_e32 v2.l, v3.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v1.l, 8, v1.l
	v_or_b16 v1.l, v2.l, v1.l
	scratch_load_b32 v2, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v2, v1
	v_mov_b16_e32 v1.l, v7.l
	v_mov_b16_e32 v2.l, v4.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v1.l, 8, v1.l
	v_or_b16 v1.l, v2.l, v1.l
	scratch_load_b32 v2, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v2, v1
	v_mov_b16_e32 v1.l, v8.l
	v_mov_b16_e32 v2.l, v5.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v1.l, 8, v1.l
	v_or_b16 v1.l, v2.l, v1.l
	scratch_load_b32 v2, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, 0, v1
	ds_load_u8_d16 v1, v2
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v1, v2 offset:64
	ds_load_u8_d16 v2, v204
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v2, v204 offset:64
	ds_load_u8_d16 v3, v156
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v3, v156 offset:64
	ds_load_u8_d16 v4, v157
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v4, v157 offset:64
	v_and_b16 v1.l, 1, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v1.l
	v_and_b16 v1.l, 1, v2.l
	v_cmp_eq_u16_e64 s2, 1, v1.l
	v_and_b16 v1.l, 1, v3.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s3, 1, v1.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v1.l, 1, v4.l
	v_cmp_eq_u16_e64 s7, 1, v1.l
	v_and_b16 v1.l, 1, v1.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s8, 1, v1.l
	v_and_b16 v1.l, 1, v2.h
	v_cmp_eq_u16_e64 s9, 1, v1.l
	v_and_b16 v1.l, 1, v3.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s10, 1, v1.l
	v_and_b16 v1.l, 1, v4.h
	v_cmp_eq_u16_e64 s11, 1, v1.l
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v1, 2, v74
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s5
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s5, s4, s52
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v2, v1, s[44:47], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v73, v1, s[72:75], 0 offen
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(1)
	v_sub_f32_e32 v3, v65, v2
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v65, v224
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v1, v13, v2
	v_sub_f32_e32 v5, v76, v2
	v_dual_sub_f32 v7, v78, v2 :: v_dual_mov_b32 v66, v225
	v_sub_f32_e32 v4, v75, v2
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v68, v227
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v6, v77, v2
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v70, v229
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v8, v79, v2
	v_sub_f32_e32 v2, v80, v2
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v1, v1
	v_exp_f32_e32 v3, v3
	v_exp_f32_e32 v7, v7
	v_exp_f32_e32 v8, v8
	v_exp_f32_e32 v2, v2
	v_exp_f32_e32 v6, v6
	v_exp_f32_e32 v5, v5
	v_exp_f32_e32 v4, v4
	.loc	1 715 36 is_stmt 1              ; attention_backward.py:715:36
	v_dual_mov_b32 v71, v230 :: v_dual_mov_b32 v72, v231
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v184, 0, v3, s2
	v_cndmask_b32_e32 v183, 0, v1, vcc_lo
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s2, s78, s81
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v190, 0, v2, s11
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b64 v[1:2], off, off offset:104 ; 8-byte Folded Reload
	s_mov_b32 s78, s66
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s11, s4, s56
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v189, 0, v8, s10
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s10, s4, s57
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v188, 0, v7, s9
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s9, s4, s58
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v187, 0, v6, s8
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s8, s4, s59
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v186, 0, v5, s7
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s7, s4, s85
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v185, 0, v4, s3
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s3, s4, s61
	s_and_b32 vcc_lo, s4, s55
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v67, v226
	v_mov_b32_e32 v69, v228
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_i32 s90, s83
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s2, v1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s36
	buffer_load_u16 v113, v1, s[76:79], 0 offen
	scratch_load_b32 v1, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s2, v1, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s35
	buffer_load_u16 v137, v1, s[76:79], 0 offen
	scratch_load_b32 v1, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v113.h, v137.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s2, v1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s34
	buffer_load_u16 v114, v1, s[76:79], 0 offen
	scratch_load_b32 v1, off, off offset:444 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s2, v1, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s33
	buffer_load_u16 v138, v1, s[76:79], 0 offen
	scratch_load_b32 v1, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v114.h, v138.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s2, v1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s31
	buffer_load_u16 v115, v1, s[76:79], 0 offen
	scratch_load_b32 v1, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s2, v1, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s30
	buffer_load_u16 v139, v1, s[76:79], 0 offen
	scratch_load_b32 v1, off, off offset:460 ; 4-byte Folded Reload
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v115.h, v139.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s2, v1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s29
	buffer_load_u16 v116, v1, s[76:79], 0 offen
	v_add_lshl_u32 v1, s2, v15, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s28
	buffer_load_u16 v140, v1, s[76:79], 0 offen
	v_add_lshl_u32 v1, s2, v243, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s27
	buffer_load_u16 v117, v1, s[76:79], 0 offen
	v_add_lshl_u32 v1, s2, v244, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s26
	buffer_load_u16 v141, v1, s[76:79], 0 offen
	v_add_lshl_u32 v1, s2, v23, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s25
	buffer_load_u16 v118, v1, s[76:79], 0 offen
	v_add_lshl_u32 v1, s2, v241, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s24
	buffer_load_u16 v142, v1, s[76:79], 0 offen
	v_add_lshl_u32 v1, s2, v253, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s23
	buffer_load_u16 v119, v1, s[76:79], 0 offen
	v_add_lshl_u32 v1, s2, v254, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s22
	buffer_load_u16 v143, v1, s[76:79], 0 offen
	v_add_lshl_u32 v1, s2, v211, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s21
	buffer_load_u16 v120, v1, s[76:79], 0 offen
	v_add_lshl_u32 v1, s2, v237, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s20
	buffer_load_u16 v144, v1, s[76:79], 0 offen
	v_add_lshl_u32 v1, s2, v238, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s19
	buffer_load_u16 v121, v1, s[76:79], 0 offen
	v_add_lshl_u32 v1, s2, v248, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s18
	buffer_load_u16 v145, v1, s[76:79], 0 offen
	v_add_lshl_u32 v1, s2, v0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s17
	buffer_load_u16 v122, v1, s[76:79], 0 offen
	v_add_lshl_u32 v1, s2, v25, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s16
	buffer_load_u16 v146, v1, s[76:79], 0 offen
	v_add_lshl_u32 v1, s2, v199, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s15
	buffer_load_u16 v123, v1, s[76:79], 0 offen
	v_add_lshl_u32 v1, s2, v11, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s14
	buffer_load_u16 v147, v1, s[76:79], 0 offen
	v_add_lshl_u32 v1, s2, v28, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s13
	buffer_load_u16 v124, v1, s[76:79], 0 offen
	v_add_lshl_u32 v1, s2, v247, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s12
	buffer_load_u16 v148, v1, s[76:79], 0 offen
	v_add_lshl_u32 v1, s2, v205, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s11
	buffer_load_u16 v125, v1, s[76:79], 0 offen
	v_add_lshl_u32 v1, s2, v155, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s10
	buffer_load_u16 v149, v1, s[76:79], 0 offen
	v_add_lshl_u32 v1, s2, v201, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s9
	buffer_load_u16 v126, v1, s[76:79], 0 offen
	v_add_lshl_u32 v1, s2, v249, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s8
	buffer_load_u16 v150, v1, s[76:79], 0 offen
	v_add_lshl_u32 v1, s2, v252, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s7
	buffer_load_u16 v127, v1, s[76:79], 0 offen
	v_add_lshl_u32 v1, s2, v210, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s5
	buffer_load_u16 v151, v1, s[76:79], 0 offen
	v_add_lshl_u32 v1, s2, v242, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	buffer_load_u16 v128, v1, s[76:79], 0 offen
	v_add_nc_u32_e32 v1, s81, v242
	v_add_lshl_u32 v1, s2, v1, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v152, v1, s[76:79], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(25)
	v_mov_b16_e64 v116.h, v140.l
	s_waitcnt vmcnt(23)
	v_mov_b16_e64 v117.h, v141.l
	s_waitcnt vmcnt(21)
	v_mov_b16_e64 v118.h, v142.l
	s_waitcnt vmcnt(19)
	v_mov_b16_e64 v119.h, v143.l
	s_waitcnt vmcnt(17)
	v_mov_b16_e64 v120.h, v144.l
	s_waitcnt vmcnt(15)
	v_mov_b16_e64 v121.h, v145.l
	s_waitcnt vmcnt(13)
	v_mov_b16_e64 v122.h, v146.l
	s_waitcnt vmcnt(11)
	v_mov_b16_e64 v123.h, v147.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e64 v124.h, v148.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v125.h, v149.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v126.h, v150.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v127.h, v151.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v128.h, v152.l
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, 0, v1
	ds_store_b128 v1, v[113:116]
	scratch_load_b32 v1, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v1, v[117:120]
	scratch_load_b32 v1, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v1, v[121:124]
	scratch_load_b32 v1, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v1, v[125:128]
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, 0, v1
	ds_load_b128 v[90:93], v1
	ds_load_b128 v[82:85], v1 offset:2048
	ds_load_b128 v[94:97], v162
	ds_load_b128 v[86:89], v162 offset:2048
	ds_load_b128 v[98:101], v164
	ds_load_b128 v[133:136], v164 offset:2048
	ds_load_b128 v[102:105], v165
	ds_load_b128 v[129:132], v165 offset:2048
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_nc_u32_e32 v1, 0, v14
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v215, v113
	ds_store_b16 v215, v117 offset:1024
	ds_store_b16 v215, v121 offset:2048
	ds_store_b16 v215, v125 offset:3072
	ds_store_b16 v216, v137
	ds_store_b16 v216, v141 offset:1024
	ds_store_b16 v216, v145 offset:2048
	ds_store_b16 v216, v149 offset:3072
	ds_store_b16 v217, v114
	ds_store_b16 v217, v118 offset:1024
	ds_store_b16 v217, v122 offset:2048
	ds_store_b16 v217, v126 offset:3072
	ds_store_b16 v218, v138
	ds_store_b16 v218, v142 offset:1024
	ds_store_b16 v218, v146 offset:2048
	ds_store_b16 v218, v150 offset:3072
	ds_store_b16 v219, v115
	ds_store_b16 v219, v119 offset:1024
	ds_store_b16 v219, v123 offset:2048
	ds_store_b16 v219, v127 offset:3072
	ds_store_b16 v220, v139
	ds_store_b16 v220, v143 offset:1024
	ds_store_b16 v220, v147 offset:2048
	ds_store_b16 v220, v151 offset:3072
	ds_store_b16 v221, v116
	ds_store_b16 v221, v120 offset:1024
	ds_store_b16 v221, v124 offset:2048
	ds_store_b16 v221, v128 offset:3072
	ds_store_b16 v222, v140
	ds_store_b16 v222, v144 offset:1024
	ds_store_b16 v222, v148 offset:2048
	ds_store_b16 v222, v152 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[74:77], v1
	s_clause 0x4                            ; 44-byte Folded Reload
	scratch_load_b32 v1, off, off offset:392
	scratch_load_b32 v5, off, off offset:408
	scratch_load_b128 v[225:228], off, off offset:236
	scratch_load_b128 v[229:232], off, off offset:252
	scratch_load_b32 v13, off, off offset:412
	s_waitcnt vmcnt(4)
	ds_load_b128 v[78:81], v1
	s_waitcnt vmcnt(3)
	ds_load_b128 v[5:8], v5
	scratch_load_b32 v1, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[166:169], v13
	scratch_load_b32 v13, off, off offset:416 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[225:232], v[74:81], v[65:72]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[74:77], off, off offset:204
	scratch_load_b128 v[78:81], off, off offset:220
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(3)
	ds_load_b128 v[191:194], v1
	scratch_load_b32 v1, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	ds_load_b128 v[170:173], v13
	s_waitcnt vmcnt(0)
	ds_load_b128 v[195:198], v1
	scratch_load_b32 v1, off, off offset:404 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[74:81], v[191:198], v[65:72]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[74:77], off, off offset:172
	scratch_load_b128 v[78:81], off, off offset:188
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add_nc_u32_e32 v191, v215, v233
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	ds_load_b128 v[1:4], v1
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[74:81], v[1:8], v[65:72]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:140
	scratch_load_b128 v[5:8], off, off offset:156
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[1:8], v[166:173], v[65:72]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v1, v65, v73
	v_sub_f32_e32 v2, v66, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v3, v67, v73
	v_sub_f32_e32 v4, v68, v73
	v_sub_f32_e32 v5, v69, v73
	v_sub_f32_e32 v6, v70, v73
	.loc	1 720 30 is_stmt 0              ; attention_backward.py:720:30
	v_dual_mul_f32 v2, v184, v2 :: v_dual_mul_f32 v1, v183, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v3, v185, v3 :: v_dual_mul_f32 v4, v186, v4
	v_dual_mul_f32 v5, v187, v5 :: v_dual_mul_f32 v2, s60, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 721 38 is_stmt 1              ; attention_backward.py:721:38
	v_mul_f32_e32 v1, s60, v1
	v_dual_mul_f32 v3, s60, v3 :: v_dual_mul_f32 v4, s60, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_dual_mul_f32 v6, v188, v6 :: v_dual_mul_f32 v5, s60, v5
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v13, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_dual_sub_f32 v7, v71, v73 :: v_dual_mul_f32 v6, s60, v6
	v_sub_f32_e32 v8, v72, v73
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v13, v1, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_dual_mul_f32 v7, v189, v7 :: v_dual_mul_f32 v8, v190, v8
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v1.l, 0x7fff, v13.h, vcc_lo
	v_bfe_u32 v13, v2, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 721 38 is_stmt 0              ; attention_backward.py:721:38
	v_dual_mul_f32 v7, s60, v7 :: v_dual_mul_f32 v8, s60, v8
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v13, v2, v13, 0x7fff
	v_bfe_u32 v2, v3, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v1.h, 0x7fff, v13.h, vcc_lo
	v_add3_u32 v2, v3, v2, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v2.l, 0x7fff, v2.h, vcc_lo
	v_add3_u32 v3, v4, v3, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_bfe_u32 v4, v6, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v2.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v5, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_add3_u32 v4, v6, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v3, v5, v3, 0x7fff
	v_bfe_u32 v5, v8, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v5, v8, v5, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v7, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_add3_u32 v4, v7, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v4.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	v_cndmask_b16 v4.h, 0x7fff, v5.h, vcc_lo
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	v_add_nc_u32_e32 v5, 0, v17
	ds_store_b16 v5, v1
	ds_store_b16 v5, v3 offset:512
	ds_store_b16_d16_hi v234, v1
	ds_store_b16_d16_hi v234, v3 offset:512
	ds_store_b16 v9, v2
	ds_store_b16 v9, v4 offset:512
	ds_store_b16_d16_hi v10, v2
	ds_store_b16_d16_hi v10, v4 offset:512
	v_add_nc_u32_e32 v1, 0, v20
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v183, v183
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_load_b128 v[66:69], v1
	scratch_load_b32 v1, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[70:73], v1
	scratch_load_b32 v1, off, off offset:428 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[74:77], v1
	scratch_load_b32 v1, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[78:81], v1
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b32 v191, v181, v182 offset1:1
	ds_store_2addr_stride64_b32 v191, v179, v180 offset0:2 offset1:3
	ds_store_2addr_stride64_b32 v191, v177, v178 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v191, v175, v176 offset0:6 offset1:7
	ds_store_2addr_stride64_b32 v191, v153, v174 offset0:8 offset1:9
	ds_store_2addr_stride64_b32 v191, v111, v112 offset0:10 offset1:11
	ds_store_2addr_stride64_b32 v191, v109, v110 offset0:12 offset1:13
	ds_store_2addr_stride64_b32 v191, v106, v107 offset0:14 offset1:15
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v1, v250
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v1, v250 offset:128
	ds_load_u16_d16 v2, v250 offset:256
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v2, v250 offset:384
	ds_load_u16_d16 v3, v250 offset:512
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v3, v250 offset:640
	ds_load_u16_d16 v4, v250 offset:768
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v4, v250 offset:896
	ds_load_u16_d16 v5, v250 offset:1024
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v5, v250 offset:1152
	ds_load_u16_d16 v6, v250 offset:1280
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v6, v250 offset:1408
	ds_load_u16_d16 v7, v250 offset:1536
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v7, v250 offset:1664
	ds_load_u16_d16 v8, v250 offset:1792
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v8, v250 offset:1920
	ds_load_u16_d16 v166, v250 offset:2048
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v166, v250 offset:2176
	ds_load_u16_d16 v167, v250 offset:2304
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v167, v250 offset:2432
	ds_load_u16_d16 v168, v250 offset:2560
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v168, v250 offset:2688
	ds_load_u16_d16 v169, v250 offset:2816
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v169, v250 offset:2944
	ds_load_u16_d16 v170, v250 offset:3072
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v170, v250 offset:3200
	ds_load_u16_d16 v171, v250 offset:3328
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v171, v250 offset:3456
	ds_load_u16_d16 v172, v250 offset:3584
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v172, v250 offset:3712
	ds_load_u16_d16 v173, v250 offset:3840
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v173, v250 offset:3968
	ds_load_u16_d16 v174, v250 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v174, v250 offset:192
	ds_load_u16_d16 v175, v250 offset:320
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v175, v250 offset:448
	ds_load_u16_d16 v176, v250 offset:576
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v176, v250 offset:704
	ds_load_u16_d16 v177, v250 offset:832
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v177, v250 offset:960
	ds_load_u16_d16 v178, v250 offset:1088
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v178, v250 offset:1216
	ds_load_u16_d16 v179, v250 offset:1344
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v179, v250 offset:1472
	ds_load_u16_d16 v180, v250 offset:1600
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v180, v250 offset:1728
	ds_load_u16_d16 v181, v250 offset:1856
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v181, v250 offset:1984
	ds_load_u16_d16 v191, v250 offset:2112
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v191, v250 offset:2240
	ds_load_u16_d16 v192, v250 offset:2368
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v192, v250 offset:2496
	ds_load_u16_d16 v193, v250 offset:2624
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v193, v250 offset:2752
	ds_load_u16_d16 v194, v250 offset:2880
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v194, v250 offset:3008
	ds_load_u16_d16 v195, v250 offset:3136
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v195, v250 offset:3264
	ds_load_u16_d16 v196, v250 offset:3392
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[57:64], v[1:8], v[66:73], v[57:64]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v1, v183, 16, 1
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v196, v250 offset:3520
	ds_load_u16_d16 v197, v250 offset:3648
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v1, v183, v1, 0x7fff
	v_bfe_u32 v2, v185, 16, 1
	v_bfe_u32 v3, v186, 16, 1
	v_bfe_u32 v4, v187, 16, 1
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v197, v250 offset:3776
	ds_load_u16_d16 v198, v250 offset:3904
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v108.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v184, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v184, v184
	v_add3_u32 v2, v185, v2, 0x7fff
	v_add3_u32 v3, v186, v3, 0x7fff
	v_add3_u32 v4, v187, v4, 0x7fff
	v_add3_u32 v1, v184, v1, 0x7fff
	v_bfe_u32 v5, v188, 16, 1
	v_bfe_u32 v6, v189, 16, 1
	v_bfe_u32 v7, v190, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[49:56], v[174:181], v[66:73], v[49:56]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v1.h, 0x7fff, v1.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v185, v185
	v_add3_u32 v5, v188, v5, 0x7fff
	v_add3_u32 v6, v189, v6, 0x7fff
	v_add3_u32 v7, v190, v7, 0x7fff
	v_add_nc_u32_e32 v73, 0, v235
	v_cndmask_b16 v2.h, 0x7fff, v2.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v186, v186
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v1.l, v108.l
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v8, v183, v108
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v198, v250 offset:4032
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt lgkmcnt(0)
	v_cndmask_b16 v3.h, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v187, v187
	s_barrier
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v13, v184, v1
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e32 v2.l, v108.l
	v_mov_b16_e32 v3.l, v108.l
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_cndmask_b16 v4.h, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v188, v188
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v4.l, v108.l
	v_mov_b16_e32 v5.l, v108.l
	v_mov_b16_e32 v6.l, v108.l
	v_mov_b16_e32 v7.l, v108.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v5.h, 0x7fff, v5.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v189, v189
	v_add_nc_u32_e32 v68, 0, v200
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[57:64], v[166:173], v[74:81], v[57:64]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v6.h, 0x7fff, v6.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v190, v190
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[49:56], v[191:198], v[74:81], v[49:56]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v7.h, 0x7fff, v7.h, vcc_lo
	ds_store_b16_d16_hi v73, v108
	ds_store_b16_d16_hi v16, v1
	ds_store_b16_d16_hi v18, v2
	ds_store_b16_d16_hi v19, v3
	ds_store_b16_d16_hi v21, v4
	ds_store_b16_d16_hi v22, v5
	ds_store_b16_d16_hi v24, v6
	ds_store_b16_d16_hi v236, v7
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v1, v8, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_dual_sub_f32 v2, v185, v2 :: v_dual_sub_f32 v3, v186, v3
	v_sub_f32_e32 v4, v187, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v1, v8, v1, 0x7fff
	v_bfe_u32 v8, v13, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v5, v188, v5 :: v_dual_sub_f32 v6, v189, v6
	v_sub_f32_e32 v7, v190, v7
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v8, v13, v8, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[180:181], v68
	ds_load_b64 v[69:70], v239
	ds_load_b64 v[178:179], v240
	ds_load_b64 v[174:175], v26
	ds_load_b64 v[176:177], v27
	ds_load_b64 v[71:72], v29
	ds_load_b64 v[66:67], v30
	ds_load_b64 v[106:107], v32
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_waitcnt lgkmcnt(0)
	v_cndmask_b16 v1.h, 0x7fff, v8.h, vcc_lo
	v_bfe_u32 v8, v2, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	s_barrier
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v108.h, v90.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v8, v2, v8, 0x7fff
	v_cndmask_b16 v2.l, 0x7fff, v8.h, vcc_lo
	v_bfe_u32 v8, v3, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v114.h, v69.l
	v_mov_b16_e64 v115.h, v174.l
	v_mov_b16_e32 v116.h, v71.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v8, v3, v8, 0x7fff
	v_bfe_u32 v3, v4, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v71.l, v176.h
	v_mov_b16_e32 v117.h, v106.l
	v_mov_b16_e32 v118.h, v70.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v2.h, 0x7fff, v8.h, vcc_lo
	v_add3_u32 v3, v4, v3, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_bfe_u32 v4, v5, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v119.h, v175.l
	v_mov_b16_e32 v120.h, v72.l
	v_mov_b16_e32 v121.h, v107.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v3.l, 0x7fff, v3.h, vcc_lo
	v_add3_u32 v4, v5, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_bfe_u32 v5, v7, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v69.l, v180.h
	v_mov_b16_e64 v174.l, v178.h
	v_mov_b16_e32 v106.l, v66.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v3.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v6, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_add3_u32 v5, v7, v5, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v175.l, v179.h
	v_mov_b16_e32 v107.l, v67.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v4, v6, v4, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v70.l, v181.h
	v_mov_b16_e64 v72.l, v177.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v4.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_cndmask_b16 v4.h, 0x7fff, v5.h, vcc_lo
	ds_store_b16 v73, v1
	ds_store_b16_d16_hi v16, v1
	ds_store_b16 v18, v2
	ds_store_b16_d16_hi v19, v2
	ds_store_b16 v21, v3
	ds_store_b16_d16_hi v22, v3
	ds_store_b16 v24, v4
	ds_store_b16_d16_hi v236, v4
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v90
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.h, v108.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v4.h, v108.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v108.h, v91.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v1, v1
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_waitcnt lgkmcnt(0)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v4.l, v2.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_barrier
	ds_load_b64 v[184:185], v68
	ds_load_b64 v[109:110], v239
	ds_load_b64 v[186:187], v240
	ds_load_b64 v[182:183], v26
	ds_load_b64 v[188:189], v27
	ds_load_b64 v[111:112], v29
	ds_load_b64 v[192:193], v30
	ds_load_b64 v[190:191], v32
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.l, v1.h
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_and_b32_e32 v4, 1, v4
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v68, v71
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v3, 1, v3
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_barrier
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v4, v2, v4, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_store_b16 v215, v113
	ds_store_b16 v215, v137 offset:128
	ds_store_b16 v215, v114 offset:256
	ds_store_b16 v215, v138 offset:384
	ds_store_b16 v215, v115 offset:512
	ds_store_b16 v215, v139 offset:640
	ds_store_b16 v215, v116 offset:768
	ds_store_b16 v215, v140 offset:896
	ds_store_b16 v215, v117 offset:1024
	ds_store_b16 v215, v141 offset:1152
	ds_store_b16 v215, v118 offset:1280
	ds_store_b16 v215, v142 offset:1408
	ds_store_b16 v215, v119 offset:1536
	ds_store_b16 v215, v143 offset:1664
	ds_store_b16 v215, v120 offset:1792
	ds_store_b16 v215, v144 offset:1920
	ds_store_b16 v215, v121 offset:2048
	ds_store_b16 v215, v145 offset:2176
	ds_store_b16 v215, v122 offset:2304
	ds_store_b16 v215, v146 offset:2432
	ds_store_b16 v215, v123 offset:2560
	ds_store_b16 v215, v147 offset:2688
	ds_store_b16 v215, v124 offset:2816
	ds_store_b16 v215, v148 offset:2944
	ds_store_b16 v215, v125 offset:3072
	ds_store_b16 v215, v149 offset:3200
	ds_store_b16 v215, v126 offset:3328
	ds_store_b16 v215, v150 offset:3456
	ds_store_b16 v215, v127 offset:3584
	ds_store_b16 v215, v151 offset:3712
	ds_store_b16 v215, v128 offset:3840
	ds_store_b16 v215, v152 offset:3968
	s_waitcnt lgkmcnt(0)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v91
	s_barrier
	ds_load_u16_d16 v138, v250
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v138, v250 offset:128
	ds_load_u16_d16 v139, v250 offset:256
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v1, v1
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cndmask_b16 v90.h, 0x7fff, v3.h, vcc_lo
	v_mov_b16_e32 v3.h, v108.l
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.l, v1.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v108.h, v92.l
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v139, v250 offset:384
	ds_load_u16_d16 v140, v250 offset:512
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v3, 1, v3
	v_cndmask_b16 v90.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v92
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v140, v250 offset:640
	ds_load_u16_d16 v141, v250 offset:768
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v1, v1, v1 :: v_dual_and_b32 v4, 1, v4
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cndmask_b16 v91.h, 0x7fff, v3.h, vcc_lo
	v_mov_b16_e32 v3.h, v108.l
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v3.l, v1.h
	v_add3_u32 v4, v2, v4, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v108.h, v93.l
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v141, v250 offset:896
	ds_load_u16_d16 v142, v250 offset:1024
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v3, 1, v3
	v_cndmask_b16 v91.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v93
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v142, v250 offset:1152
	ds_load_u16_d16 v143, v250 offset:1280
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v1, v1, v1 :: v_dual_and_b32 v4, 1, v4
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cndmask_b16 v92.h, 0x7fff, v3.h, vcc_lo
	v_mov_b16_e32 v3.h, v108.l
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v3.l, v1.h
	v_add3_u32 v4, v2, v4, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v108.h, v94.l
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v143, v250 offset:1408
	ds_load_u16_d16 v144, v250 offset:1536
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v3, 1, v3
	v_cndmask_b16 v92.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v94
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v144, v250 offset:1664
	ds_load_u16_d16 v145, v250 offset:1792
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v1, v1, v1 :: v_dual_and_b32 v4, 1, v4
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cndmask_b16 v93.h, 0x7fff, v3.h, vcc_lo
	v_mov_b16_e32 v3.h, v108.l
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v3.l, v1.h
	v_add3_u32 v4, v2, v4, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v108.h, v95.l
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v145, v250 offset:1920
	ds_load_u16_d16 v146, v250 offset:2048
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v3, 1, v3
	v_cndmask_b16 v93.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v95
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v146, v250 offset:2176
	ds_load_u16_d16 v147, v250 offset:2304
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v1, v1, v1 :: v_dual_and_b32 v4, 1, v4
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cndmask_b16 v94.h, 0x7fff, v3.h, vcc_lo
	v_mov_b16_e32 v3.h, v108.l
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v3.l, v1.h
	v_add3_u32 v4, v2, v4, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v108.h, v96.l
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v147, v250 offset:2432
	ds_load_u16_d16 v148, v250 offset:2560
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v3, 1, v3
	v_cndmask_b16 v94.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v96
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v148, v250 offset:2688
	ds_load_u16_d16 v149, v250 offset:2816
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v1, v1, v1 :: v_dual_and_b32 v4, 1, v4
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cndmask_b16 v95.h, 0x7fff, v3.h, vcc_lo
	v_mov_b16_e32 v3.h, v108.l
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v3.l, v1.h
	v_add3_u32 v4, v2, v4, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v108.h, v97.l
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v149, v250 offset:2944
	ds_load_u16_d16 v150, v250 offset:3072
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v3, 1, v3
	v_cndmask_b16 v95.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v97
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v150, v250 offset:3200
	ds_load_u16_d16 v151, v250 offset:3328
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v1, v1, v1 :: v_dual_and_b32 v4, 1, v4
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cndmask_b16 v96.h, 0x7fff, v3.h, vcc_lo
	v_mov_b16_e32 v3.h, v108.l
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v3.l, v1.h
	v_add3_u32 v4, v2, v4, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v108.h, v98.l
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v151, v250 offset:3456
	ds_load_u16_d16 v152, v250 offset:3584
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v3, 1, v3
	v_cndmask_b16 v96.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v98
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v152, v250 offset:3712
	ds_load_u16_d16 v153, v250 offset:3840
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v1, v1, v1 :: v_dual_and_b32 v4, 1, v4
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cndmask_b16 v97.h, 0x7fff, v3.h, vcc_lo
	v_mov_b16_e32 v3.h, v108.l
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v3.l, v1.h
	v_add3_u32 v4, v2, v4, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v108.h, v99.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v114.l, v180.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v3, 1, v3
	v_cndmask_b16 v97.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v99
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v115.l, v178.l
	v_mov_b16_e64 v116.l, v176.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v4, 1, v4
	v_cndmask_b16 v98.h, 0x7fff, v3.h, vcc_lo
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v1, v1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.h, v108.l
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_add3_u32 v4, v2, v4, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.l, v1.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v108.h, v100.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v117.l, v66.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v98.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v118.l, v181.l
	v_mov_b16_e64 v119.l, v179.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v100
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v4, 1, v4
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v120.l, v177.l
	v_mov_b16_e32 v121.l, v67.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v99.h, 0x7fff, v3.h, vcc_lo
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v1, v1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.h, v108.l
	v_add3_u32 v4, v2, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.l, v1.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v108.h, v101.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[138:145], v[114:121], v[41:48]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v99.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_dual_mov_b32 v66, v69 :: v_dual_mov_b32 v67, v174
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v101
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_dual_mov_b32 v69, v106 :: v_dual_and_b32 v4, 1, v4
	v_mov_b32_e32 v71, v175
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v100.h, 0x7fff, v3.h, vcc_lo
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v1, v1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.h, v108.l
	v_add3_u32 v4, v2, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.l, v1.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v108.h, v102.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v73, v107
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v100.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v5.l, v185.l
	v_mov_b16_e32 v5.h, v110.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v102
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v4, 1, v4
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v6.l, v187.l
	v_mov_b16_e64 v6.h, v183.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v101.h, 0x7fff, v3.h, vcc_lo
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v1, v1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.h, v108.l
	v_add3_u32 v4, v2, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.l, v1.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v108.h, v103.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v7.l, v189.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v101.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e32 v7.h, v112.l
	v_mov_b16_e64 v8.l, v193.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v103
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v4, 1, v4
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v8.h, v191.l
	v_mov_b16_e64 v183.l, v187.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v102.h, 0x7fff, v3.h, vcc_lo
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v1, v1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.h, v108.l
	v_add3_u32 v4, v2, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.l, v1.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v108.h, v104.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v191.l, v193.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v102.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v110.l, v185.h
	v_mov_b16_e64 v112.l, v189.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v104
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_dual_mov_b32 v113, v191 :: v_dual_and_b32 v4, 1, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v103.h, 0x7fff, v3.h, vcc_lo
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v1, v1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.h, v108.l
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v4, v2, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.l, v1.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v108.h, v105.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v103.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v4, 1, v4
	v_cndmask_b16 v104.h, 0x7fff, v3.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v1, v1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.h, v108.l
	v_add3_u32 v4, v2, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.l, v1.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v108.h, v82.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v104.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v4, 1, v4
	v_cndmask_b16 v105.h, 0x7fff, v3.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v1, v1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.h, v108.l
	v_add3_u32 v4, v2, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.l, v1.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v108.h, v83.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v105.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v4, 1, v4
	v_cndmask_b16 v82.h, 0x7fff, v3.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v1, v1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.h, v108.l
	v_add3_u32 v4, v2, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.l, v1.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v108.h, v84.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v82.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v4, 1, v4
	v_cndmask_b16 v83.h, 0x7fff, v3.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v1, v1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.h, v108.l
	v_add3_u32 v4, v2, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.l, v1.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v108.h, v85.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v83.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v4, 1, v4
	v_cndmask_b16 v84.h, 0x7fff, v3.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v1, v1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.h, v108.l
	v_add3_u32 v4, v2, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.l, v1.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v108.h, v86.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v84.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v4, 1, v4
	v_cndmask_b16 v85.h, 0x7fff, v3.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v1, v1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.h, v108.l
	v_add3_u32 v4, v2, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.l, v1.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v108.h, v87.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v85.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v4, 1, v4
	v_cndmask_b16 v86.h, 0x7fff, v3.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v1, v1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.h, v108.l
	v_add3_u32 v4, v2, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.l, v1.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v108.h, v88.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v86.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v4, 1, v4
	v_cndmask_b16 v87.h, 0x7fff, v3.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v1, v1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.h, v108.l
	v_add3_u32 v4, v2, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.l, v1.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v108.h, v89.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v87.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v4, 1, v4
	v_cndmask_b16 v88.h, 0x7fff, v3.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v1, v1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.h, v108.l
	v_add3_u32 v4, v2, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.l, v1.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v108.h, v133.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v88.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v4, 1, v4
	v_cndmask_b16 v89.h, 0x7fff, v3.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v1, v1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.h, v108.l
	v_add3_u32 v4, v2, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.l, v1.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v108.h, v134.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v89.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v4, 1, v4
	v_cndmask_b16 v74.h, 0x7fff, v3.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v1, v1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.h, v108.l
	v_add3_u32 v4, v2, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.l, v1.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v108.h, v135.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v74.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v4, 1, v4
	v_cndmask_b16 v75.h, 0x7fff, v3.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v1, v1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.h, v108.l
	v_add3_u32 v4, v2, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.l, v1.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v108.h, v136.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v75.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v136
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v4, 1, v4
	v_cndmask_b16 v76.h, 0x7fff, v3.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v1, v1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.h, v108.l
	v_add3_u32 v4, v2, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.l, v1.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v108.h, v129.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v76.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v4, 1, v4
	v_cndmask_b16 v77.h, 0x7fff, v3.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v1, v1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.h, v108.l
	v_add3_u32 v4, v2, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.l, v1.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v108.h, v130.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v77.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v130
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v153, v250 offset:3968
	ds_load_u16_d16 v130, v250 offset:64
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v4, 1, v4
	v_cndmask_b16 v78.h, 0x7fff, v3.h, vcc_lo
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v1, v1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.h, v108.l
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v4, v2, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.l, v1.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v108.h, v131.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v78.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v131
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v130, v250 offset:192
	ds_load_u16_d16 v131, v250 offset:320
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v4, 1, v4
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[146:153], v[66:73], v[41:48]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v79.h, 0x7fff, v3.h, vcc_lo
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v1, v1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.h, v108.l
	v_add3_u32 v4, v2, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.l, v1.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v108.h, v132.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v79.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v132
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v131, v250 offset:448
	ds_load_u16_d16 v132, v250 offset:576
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v132, v250 offset:704
	ds_load_u16_d16 v133, v250 offset:832
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v133, v250 offset:960
	ds_load_u16_d16 v134, v250 offset:1088
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v134, v250 offset:1216
	ds_load_u16_d16 v135, v250 offset:1344
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v135, v250 offset:1472
	ds_load_u16_d16 v136, v250 offset:1600
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v136, v250 offset:1728
	ds_load_u16_d16 v137, v250 offset:1856
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v137, v250 offset:1984
	ds_load_u16_d16 v122, v250 offset:2112
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v122, v250 offset:2240
	ds_load_u16_d16 v123, v250 offset:2368
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v123, v250 offset:2496
	ds_load_u16_d16 v124, v250 offset:2624
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v124, v250 offset:2752
	ds_load_u16_d16 v125, v250 offset:2880
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v125, v250 offset:3008
	ds_load_u16_d16 v126, v250 offset:3136
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v126, v250 offset:3264
	ds_load_u16_d16 v127, v250 offset:3392
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v127, v250 offset:3520
	ds_load_u16_d16 v128, v250 offset:3648
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v128, v250 offset:3776
	ds_load_u16_d16 v129, v250 offset:3904
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v1, v1, v1 :: v_dual_and_b32 v4, 1, v4
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cndmask_b16 v80.h, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_mov_b16_e32 v3.h, v108.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v4, v2, v4, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v108, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.l, v1.h
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[130:137], v[114:121], v[33:40]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v80.l, 0x7fff, v4.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	v_and_b32_e32 v3, 1, v3
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_and_b32_e32 v4, 1, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v129, v250 offset:4032
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v1.l, v184.l
	v_mov_b16_e32 v1.h, v109.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v4, v2, v4, 0x7fff
	v_cndmask_b16 v81.h, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v2.l, v186.l
	v_mov_b16_e64 v2.h, v182.l
	v_mov_b16_e64 v3.l, v188.l
	v_mov_b16_e32 v3.h, v111.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v81.l, 0x7fff, v4.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v4.l, v192.l
	v_mov_b16_e64 v4.h, v190.l
	v_mov_b16_e64 v109.l, v184.h
	v_mov_b16_e64 v182.l, v186.h
	v_mov_b16_e64 v111.l, v188.h
	v_mov_b16_e64 v190.l, v192.h
	v_wmma_f32_16x16x16_bf16 v[41:48], v[138:145], v[1:8], v[41:48]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v106, v109 :: v_dual_mov_b32 v107, v182
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[122:129], v[66:73], v[33:40]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_dual_mov_b32 v108, v111 :: v_dual_mov_b32 v109, v190
	v_mov_b32_e32 v111, v183
	v_wmma_f32_16x16x16_bf16 v[33:40], v[130:137], v[1:8], v[33:40]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[146:153], v[106:113], v[41:48]
	v_wmma_f32_16x16x16_bf16 v[33:40], v[122:129], v[106:113], v[33:40]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[90:97], v[114:121], v[41:48]
	v_wmma_f32_16x16x16_bf16 v[33:40], v[82:89], v[114:121], v[33:40]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[98:105], v[66:73], v[41:48]
	v_wmma_f32_16x16x16_bf16 v[33:40], v[74:81], v[66:73], v[33:40]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_clause 0xb                            ; 56-byte Folded Reload
	scratch_load_b32 v3, off, off
	scratch_load_b32 v4, off, off offset:4
	scratch_load_b32 v5, off, off offset:8
	scratch_load_b32 v6, off, off offset:12
	scratch_load_b32 v7, off, off offset:16
	scratch_load_b32 v8, off, off offset:20
	scratch_load_b32 v13, off, off offset:24
	scratch_load_b32 v75, off, off offset:28
	scratch_load_b32 v76, off, off offset:32
	scratch_load_b64 v[77:78], off, off offset:36
	scratch_load_b64 v[79:80], off, off offset:48
	scratch_load_b32 v78, off, off offset:44
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v161
	v_dual_mov_b32 v65, v214 :: v_dual_mov_b32 v66, v31
	v_dual_mov_b32 v67, v251 :: v_dual_mov_b32 v68, v158
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s2, s54, v1
	v_dual_mov_b32 v69, v163 :: v_dual_mov_b32 v70, v202
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_add_i32 s78, s90, s88
	v_mov_b32_e32 v71, v203
	v_or_b32_e32 v72, 30, v161
	s_mul_i32 s20, s78, s80
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v2, s78, v161, 1
	s_mov_b32 s70, s66
	s_mov_b32 s71, s67
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v226, v224
	v_mov_b32_e32 v225, v224
	v_mov_b32_e32 v228, v224
	v_mov_b32_e32 v230, v224
	v_mov_b32_e32 v227, v224
	v_mov_b32_e32 v229, v224
	v_mov_b32_e32 v231, v224
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(11)
	v_or_b32_e32 v1, s90, v3
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v3, s78, v3, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s3, s54, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(10)
	v_or_b32_e32 v1, s90, v4
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v75, s20, v75
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v76, s20, v76
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v77, s20, v77
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v79, s20, v79
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s7, s54, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v5
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v78, s20, v78
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v4, s78, v4, 1
	v_add_lshl_u32 v5, s78, v5, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s8, s54, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v6
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v6, s78, v6, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v5, 0x80000000, v5, s8
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s9, s54, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v7
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v7, s78, v7, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v6, 0x80000000, v6, s9
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s10, s54, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v8
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v8, s78, v8, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v7, 0x80000000, v7, s10
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s11, s54, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v13
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v13, s78, v13, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s54, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v65
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v65, s78, v65, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s12, s54, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v66
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v66, s78, v66, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v65, 0x80000000, v65, s12
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s13, s54, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v67
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v67, s78, v67, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v66, 0x80000000, v66, s13
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s14, s54, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v68
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v68, s78, v68, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v67, 0x80000000, v67, s14
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s15, s54, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v69
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v69, s78, v69, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v68, 0x80000000, v68, s15
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s16, s54, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v70
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v70, s78, v70, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v69, 0x80000000, v69, s16
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s17, s54, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v70, 0x80000000, v70, s17
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s18, s54, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v72
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v72, s78, v72, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s19, s54, v1
	v_mov_b32_e32 v1, v159
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v72, 0x80000000, v72, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 624 25                        ; attention_backward.py:624:25
	v_add_nc_u32_e32 v74, s78, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v1
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v71, s78, v71, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s5, s54, v1
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_add_nc_u32_e32 v2, s20, v154
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s2, s37, s2
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v71, 0x80000000, v71, s18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s2, s37, s3
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v75, 0x80000000, v75, s2
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s2, s37, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s2, s37, s8
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s2, s37, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s2, s37, s10
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v79, 0x80000000, v79, s2
	s_clause 0x5
	buffer_load_u8 v92, v2, s[64:67], 0 offen
	buffer_load_u8 v97, v75, s[64:67], 0 offen
	buffer_load_u8 v96, v76, s[64:67], 0 offen
	buffer_load_u8 v95, v77, s[64:67], 0 offen
	buffer_load_u8 v94, v78, s[64:67], 0 offen
	buffer_load_u8 v93, v79, s[64:67], 0 offen
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[75:76], off, off offset:56
	scratch_load_b64 v[76:77], off, off offset:464
	scratch_load_b64 v[77:78], off, off offset:472
	scratch_load_b64 v[78:79], off, off offset:480
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v2, 0x80000000, v8, s11
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s2, s37, s11
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b64 v[79:80], off, off offset:64 ; 8-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v8, s20, v75
	v_lshl_add_u32 v75, s80, 4, v154
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
	buffer_load_u8 v101, v75, s[64:67], 0 offen
	buffer_load_u8 v100, v76, s[64:67], 0 offen
	buffer_load_u8 v99, v77, s[64:67], 0 offen
	buffer_load_u8 v98, v78, s[64:67], 0 offen
	scratch_load_b64 v[75:76], off, off offset:488 ; 8-byte Folded Reload
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v79, s20, v79
	v_add_nc_u32_e32 v78, s20, v12
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s37, vcc_lo
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v76, s20, v160
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s37, s16
	v_add_nc_u32_e32 v77, s20, v245
	v_add_nc_u32_e32 v75, s20, v75
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s37, s17
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_dual_cndmask_b32 v76, 0x80000000, v76 :: v_dual_lshlrev_b32 v73, 1, v74
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s37, s18
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s37, s19
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	s_clause 0x5
	buffer_load_u8 v104, v75, s[64:67], 0 offen
	buffer_load_u8 v102, v76, s[64:67], 0 offen
	buffer_load_u8 v107, v8, s[64:67], 0 offen
	buffer_load_u8 v106, v79, s[64:67], 0 offen
	buffer_load_u8 v105, v77, s[64:67], 0 offen
	buffer_load_u8 v103, v78, s[64:67], 0 offen
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v8, 0x80000000, v73, s5
	s_clause 0x10
	buffer_load_u16 v83, v13, s[68:71], 0 offen
	buffer_load_u16 v82, v65, s[68:71], 0 offen
	buffer_load_u16 v81, v66, s[68:71], 0 offen
	buffer_load_u16 v80, v67, s[68:71], 0 offen
	buffer_load_u16 v79, v68, s[68:71], 0 offen
	buffer_load_u16 v78, v69, s[68:71], 0 offen
	buffer_load_u16 v77, v70, s[68:71], 0 offen
	buffer_load_u16 v76, v71, s[68:71], 0 offen
	buffer_load_u16 v75, v72, s[68:71], 0 offen
	buffer_load_u16 v90, v1, s[68:71], 0 offen
	buffer_load_u16 v89, v3, s[68:71], 0 offen
	buffer_load_u16 v88, v4, s[68:71], 0 offen
	buffer_load_u16 v87, v5, s[68:71], 0 offen
	buffer_load_u16 v86, v6, s[68:71], 0 offen
	buffer_load_u16 v85, v7, s[68:71], 0 offen
	buffer_load_u16 v84, v2, s[68:71], 0 offen
	buffer_load_u16 v91, v8, s[68:71], 0 offen
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_dual_mov_b32 v66, v224 :: v_dual_add_nc_u32 v1, 0, v246
	v_dual_mov_b32 v67, v225 :: v_dual_mov_b32 v68, v226
	v_dual_mov_b32 v69, v227 :: v_dual_mov_b32 v70, v228
	v_dual_mov_b32 v71, v229 :: v_dual_mov_b32 v72, v230
	v_mov_b32_e32 v73, v231
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_store_b8 v206, v92
	ds_store_b8 v206, v97 offset:64
	ds_store_b8 v206, v101 offset:512
	ds_store_b8 v206, v100 offset:576
	ds_store_b8 v207, v96
	ds_store_b8 v207, v95 offset:64
	ds_store_b8 v207, v99 offset:512
	ds_store_b8 v207, v98 offset:576
	ds_store_b8 v208, v94
	ds_store_b8 v208, v93 offset:64
	s_waitcnt vmcnt(22)
	ds_store_b8 v208, v104 offset:512
	s_waitcnt vmcnt(21)
	ds_store_b8 v208, v102 offset:576
	s_waitcnt vmcnt(20)
	ds_store_b8 v209, v107
	s_waitcnt vmcnt(19)
	ds_store_b8 v209, v106 offset:64
	s_waitcnt vmcnt(18)
	ds_store_b8 v209, v105 offset:512
	s_waitcnt vmcnt(17)
	ds_store_b8 v209, v103 offset:576
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v3, off, off offset:316
	scratch_load_b64 v[108:109], off, off offset:72
	ds_load_b64 v[1:2], v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:320
	scratch_load_b32 v7, off, off offset:324
	s_waitcnt vmcnt(3)
	ds_load_b64 v[3:4], v3
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(2) lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[66:73], v[108:109], v[1:2], v[66:73] neg_lo:[1,1,0]
	scratch_load_b64 v[1:2], off, off offset:80 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt vmcnt(2)
	ds_load_b64 v[5:6], v5
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[66:73], v[1:2], v[3:4], v[66:73] neg_lo:[1,1,0]
	scratch_load_b64 v[1:2], off, off offset:88 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_load_b64 v[7:8], v7
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v3, 8, v223
	v_or_b32_e32 v4, 12, v223
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v3, s90, v3
	v_or_b32_e32 v4, s90, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s3, s54, v3
	v_cmp_gt_i32_e64 s7, s54, v4
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v110, s51, v3
	v_add_nc_u32_e32 v111, s51, v4
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s27, s6, s3
	s_and_b32 s24, s6, s7
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[66:73], v[1:2], v[5:6], v[66:73] neg_lo:[1,1,0]
	scratch_load_b64 v[1:2], off, off offset:96 ; 8-byte Folded Reload
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v5, 16, v223
	v_or_b32_e32 v6, 20, v223
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v5, s90, v5
	v_or_b32_e32 v6, s90, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s8, s54, v5
	v_cmp_gt_i32_e64 s9, s54, v6
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v112, s51, v5
	v_add_nc_u32_e32 v113, s51, v6
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s22, s6, s8
	s_and_b32 s20, s6, s9
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[66:73], v[1:2], v[7:8], v[66:73] neg_lo:[1,1,0]
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v2, 4, v223
	v_or_b32_e32 v7, 24, v223
	v_or_b32_e32 v8, 28, v223
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v223
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v2, s90, v2
	v_or_b32_e32 v7, s90, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v8, s90, v8
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s54, v1
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v108, s51, v1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s2, s54, v2
	v_cmp_gt_i32_e64 s10, s54, v7
	v_cmp_gt_i32_e64 s11, s54, v8
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v109, s51, v2
	v_add_nc_u32_e32 v114, s51, v7
	v_add_nc_u32_e32 v115, s51, v8
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s26, s6, vcc_lo
	s_and_b32 s25, s6, s2
	s_and_b32 s23, s6, s10
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_and_not1_b32 vcc_lo, exec_lo, s82
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s21, s6, s11
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e32 vcc_lo, v213, v108
	v_cmp_le_i32_e64 s2, v213, v109
	v_cmp_le_i32_e64 s3, v213, v110
	v_cmp_le_i32_e64 s7, v213, v111
	v_cmp_le_i32_e64 s8, v213, v112
	v_cmp_le_i32_e64 s9, v213, v113
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s12, s26, vcc_lo
	s_and_b32 s2, s25, s2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s10, v213, v114
	v_cmp_le_i32_e64 s11, v213, v115
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
	v_subrev_nc_u32_e32 v1, s49, v108
	v_subrev_nc_u32_e32 v2, s49, v109
	v_subrev_nc_u32_e32 v3, s49, v110
	v_subrev_nc_u32_e32 v4, s49, v111
	v_subrev_nc_u32_e32 v5, s49, v112
	v_subrev_nc_u32_e32 v6, s49, v113
	.loc	1 678 30 is_stmt 0              ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v213, v1
	v_cmp_ge_i32_e64 s2, v213, v2
	.loc	1 679 47 is_stmt 1              ; attention_backward.py:679:47
	v_add_nc_u32_e32 v1, s50, v108
	v_add_nc_u32_e32 v2, s50, v109
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v7, s49, v114
	v_subrev_nc_u32_e32 v8, s49, v115
	.loc	1 678 30 is_stmt 0              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s3, v213, v3
	v_cmp_ge_i32_e64 s7, v213, v4
	.loc	1 679 47 is_stmt 1              ; attention_backward.py:679:47
	v_add_nc_u32_e32 v3, s50, v110
	v_add_nc_u32_e32 v4, s50, v111
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s8, v213, v5
	v_cmp_ge_i32_e64 s9, v213, v6
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v5, s50, v112
	v_add_nc_u32_e32 v6, s50, v113
	.loc	1 679 30 is_stmt 0              ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s12, v213, v1
	v_cmp_le_i32_e64 s13, v213, v2
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s10, v213, v7
	v_cmp_ge_i32_e64 s11, v213, v8
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v7, s50, v114
	v_add_nc_u32_e32 v8, s50, v115
	.loc	1 679 30 is_stmt 0              ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s14, v213, v3
	v_cmp_le_i32_e64 s15, v213, v4
	v_cmp_le_i32_e64 s16, v213, v5
	v_cmp_le_i32_e64 s17, v213, v6
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s12, vcc_lo, s12
	s_and_b32 s2, s2, s13
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s18, v213, v7
	v_cmp_le_i32_e64 s19, v213, v8
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
.LBB0_12:                               ; %Flow358
	.loc	1 0 21                          ; attention_backward.py:0:21
	scratch_load_b32 v66, off, off offset:504 ; 4-byte Folded Reload
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
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:496
	scratch_load_b32 v16, off, off offset:500
	v_readlane_b32 s40, v255, 0
	v_readlane_b32 s41, v255, 1
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	v_readlane_b32 s42, v255, 2
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_mov_b32 s36, s40
	s_and_b32 s37, s41, 0xffff
	v_readlane_b32 s43, v255, 3
	.loc	1 550 20                        ; attention_backward.py:550:20
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v0, v0, v66
	.loc	1 753 13                        ; attention_backward.py:753:13
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v16, s62, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v14, 2, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v17, v16, s48
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v13, 4, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s15, s48, v0
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v15, 6, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s16, s48, v14
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v12, 8, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s17, s48, v13
	.loc	1 755 18 is_stmt 0              ; attention_backward.py:755:18
	s_and_b32 s15, s6, s15
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	v_add_lshl_u32 v18, v17, v0, 2
	v_add_lshl_u32 v19, v17, v14, 2
	v_add_lshl_u32 v20, v17, v13, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v11, 10, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s18, s48, v15
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, s6, s16
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v10, 12, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, s6, s17
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s19, s48, v12
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s15
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
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v16, v16, s81
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
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 512
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 512
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 26004
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 512
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 512
    .sgpr_count:     107
    .sgpr_spill_count: 9
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_fp32_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 127
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
