	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[20:23], s[0:1], 0x94
	s_load_b128 s[36:39], s[0:1], 0x64
	s_load_b64 s[34:35], s[0:1], 0x78
.Ltmp0:
	.loc	1 514 33 prologue_end           ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v9, 5, v0
	s_clause 0x1
	s_load_b128 s[28:31], s[0:1], 0x8
	s_load_b128 s[24:27], s[0:1], 0x20
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	v_bfe_u32 v43, v0, 4, 1
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
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v6, off offset:20
	scratch_store_b32 off, v7, off offset:24
	scratch_store_b32 off, v10, off offset:28
	s_cselect_b32 s64, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v214, 0, v0
	s_cselect_b32 s65, -1, 0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_abs_i32 s44, s37
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_abs_i32 s5, s3
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cvt_f32_u32 s4, s44
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s50, s2, 4
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v65, 15, v0
	.loc	1 514 23 is_stmt 0              ; attention_backward.py:514:23
	v_or_b32_e32 v8, s50, v2
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v2, s50, v3
	v_or_b32_e32 v3, s50, v4
	v_or_b32_e32 v4, s50, v5
	v_or_b32_e32 v5, s50, v6
	v_or_b32_e32 v6, s50, v7
	v_or_b32_e32 v7, s50, v10
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s14, s39, v2
	v_cmp_gt_i32_e64 s15, s39, v3
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v12, s50, v43
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_readfirstlane_b32 s4, v1
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v1, s50, v9
	.loc	1 514 33 is_stmt 0              ; attention_backward.py:514:33
	v_and_b32_e32 v52, 32, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v13, 8, v12
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v14, 10, v12
	v_or_b32_e32 v15, 12, v12
	v_or_b32_e32 v16, 14, v12
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cvt_u32_f32 s49, s4
	s_sub_i32 s4, 0, s44
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s4, s4, s49
	s_mul_hi_u32 s4, s49, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s49, s49, s4
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_mul_hi_u32 s4, s5, s49
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s4, s44
	s_sub_i32 s5, s5, s6
	s_add_i32 s6, s4, 1
	s_sub_i32 s7, s5, s44
	s_cmp_ge_u32 s5, s44
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s5, s7, s5
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s5, s44
	s_cselect_b32 s48, s6, s4
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_ashr_i32 s45, s36, 31
	s_ashr_i32 s46, s37, 31
	s_abs_i32 s47, s36
	.loc	1 514 23                        ; attention_backward.py:514:23
	s_or_b32 s4, s50, 1
	s_or_b32 s5, s50, 2
	s_or_b32 s6, s50, 3
	s_or_b32 s8, s50, 4
	s_or_b32 s9, s50, 5
	s_or_b32 s10, s50, 6
	s_or_b32 s11, s50, 7
	s_or_b32 s12, s50, 8
	s_or_b32 s13, s50, 9
	s_or_b32 s16, s50, 10
	s_or_b32 s17, s50, 11
	s_or_b32 s18, s50, 12
	s_or_b32 s19, s50, 13
	s_or_b32 s33, s50, 14
	s_or_b32 s40, s50, 15
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cmp_lt_i32 s50, s39
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s4, s39
	v_cmp_gt_i32_e64 s4, s39, v1
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s5, s39
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_and_b32_e32 v1, 31, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s6, s39
	v_cmp_gt_i32_e64 s6, s39, v8
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s8, s39
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[154:155], null, s34, v9, v[1:2]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s9, s39
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s10, s39
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s11, s39
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v2, s34, 1, v154
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s12, s39
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v3, s34, 2, v154
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s13, s39
	scratch_store_b32 off, v2, off offset:32 ; 4-byte Folded Spill
	s_cselect_b32 s8, -1, 0
	s_cmp_lt_i32 s16, s39
	v_cmp_gt_i32_e64 s16, s39, v4
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s17, s39
	v_cmp_gt_i32_e64 s17, s39, v5
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 s18, s39
	v_cmp_gt_i32_e64 s18, s39, v6
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[5:6], null, s34, 6, v[154:155]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s19, s39
	v_cmp_gt_i32_e64 s19, s39, v7
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s33, s39
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[7:8], null, s34, 10, v[154:155]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s40, s39
	.loc	1 521 24                        ; attention_backward.py:521:24
	s_mul_i32 s33, s3, s39
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v6, s34, 3, v154
	v_mov_b32_e32 v4, v5
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s12, -1, 0
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_add_i32 s33, s33, s50
	v_mad_u64_u32 v[8:9], null, s34, 12, v[154:155]
	s_mul_i32 s40, s33, s34
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b32 off, v3, off offset:36
	scratch_store_b64 off, v[4:5], off offset:40
	scratch_store_b32 off, v6, off offset:48
	v_add_nc_u32_e32 v9, s40, v154
	v_add_nc_u32_e32 v4, s40, v5
	v_add_nc_u32_e32 v5, s40, v6
	v_mov_b32_e32 v6, v7
	v_mad_u64_u32 v[10:11], null, s34, 14, v[154:155]
	v_add_nc_u32_e32 v2, s40, v2
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_cmp_gt_i32_e64 s13, s34, v1
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[6:7], off offset:52 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v6, s40, v7
	v_mov_b32_e32 v7, v8
	v_add_nc_u32_e32 v3, s40, v3
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s4, s13
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_and_b32 s41, s29, 0xffff
	v_xor_b32_e32 v11, 0x198, v0
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[7:8], off offset:60 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v7, s40, v8
	v_mov_b32_e32 v8, v10
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_add_lshl_u32 v17, s33, v43, 1
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v217, 0, v11
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v11, 6, v12
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[8:9], off offset:68 ; 8-byte Folded Spill
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s6, s13
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_add_nc_u32_e32 v8, s40, v10
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s14, s13
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_mov_b32 s40, s28
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s15, s13
	.loc	1 542 37                        ; attention_backward.py:542:37
	s_add_i32 s6, s39, 15
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s16, s13
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_ashr_i32 s14, s6, 31
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s17, s13
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_lshr_b32 s14, s14, 28
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s18, s13
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_add_i32 s14, s6, s14
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v7, 0x80000000, v7, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s19, s13
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s6, s39, v12
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v8, 0x80000000, v8, s4
	s_clause 0x7
	buffer_load_u8 v42, v9, s[40:43], 0 offen
	buffer_load_u8 v9, v2, s[40:43], 0 offen
	buffer_load_u8 v10, v3, s[40:43], 0 offen
	buffer_load_u8 v4, v4, s[40:43], 0 offen
	buffer_load_u8 v5, v5, s[40:43], 0 offen
	buffer_load_u8 v6, v6, s[40:43], 0 offen
	buffer_load_u8 v7, v7, s[40:43], 0 offen
	buffer_load_u8 v8, v8, s[40:43], 0 offen
	v_xor_b32_e32 v2, 0x88, v0
	v_xor_b32_e32 v3, 0x110, v0
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v18, 4, v17
	v_add_nc_u32_e32 v19, 8, v17
	v_add_nc_u32_e32 v20, 12, v17
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v215, 0, v2
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v2, 2, v12
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v216, 0, v3
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v3, 4, v12
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v12, 0x80000000, v17, s6
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_ashr_i32 s6, s14, 4
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v21, 16, v17
	.loc	1 542 35                        ; attention_backward.py:542:35
	s_lshl_b32 s14, s6, 3
	.loc	1 565 17                        ; attention_backward.py:565:17
	s_mul_i32 s16, s3, s6
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s6, s39, v2
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v22, 20, v17
	.loc	1 541 32                        ; attention_backward.py:541:32
	s_ashr_i32 s15, s50, 1
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_and_b32 s41, s25, 0xffff
	.loc	1 549 23                        ; attention_backward.py:549:23
	s_cmp_lt_i32 s15, s14
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v18, 0x80000000, v18, s6
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s6, s39, v3
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v23, 24, v17
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s4, s35, v0
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v17, 28, v17
	s_mov_b32 s40, s24
	v_cndmask_b32_e64 v19, 0x80000000, v19, s6
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s6, s39, v11
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt vmcnt(7)
	ds_store_b8 v214, v42
	s_waitcnt vmcnt(6)
	ds_store_b8 v214, v9 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v215, v10
	s_waitcnt vmcnt(4)
	ds_store_b8 v215, v4 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v216, v5
	s_waitcnt vmcnt(2)
	ds_store_b8 v216, v6 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v217, v7
	s_waitcnt vmcnt(0)
	ds_store_b8 v217, v8 offset:64
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v20, 0x80000000, v20, s6
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s6, s39, v13
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 588 9                         ; attention_backward.py:588:9
	scratch_store_b32 off, v43, off offset:520 ; 4-byte Folded Spill
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v13, 0x80000000, v21, s6
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s6, s39, v14
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v14, 0x80000000, v22, s6
	.loc	1 543 26                        ; attention_backward.py:543:26
	s_mul_i32 s6, s3, s14
	.loc	1 549 23                        ; attention_backward.py:549:23
	s_cselect_b32 s14, -1, 0
	.loc	1 545 17                        ; attention_backward.py:545:17
	s_add_i32 s6, s6, s15
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_bfe_i32 s15, s2, 0x1c0000
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mad_u64_u32 v[2:3], null, s6, s35, v[0:1]
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, s39, v15
	.loc	1 568 17                        ; attention_backward.py:568:17
	s_add_i32 s6, s16, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s35
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_add_lshl_u32 v21, s6, v0, 1
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v11, s35, v2
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v3, 0x80000000, v23, s2
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, s39, v16
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s56, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v16, s35, v11
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v22, 0x80000000, v21, s6
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, vcc_lo, s4
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v15, 0x80000000, v17, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v23, 0x80000000, v21, s6
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v17, s35, v16
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s57, s4
	.loc	1 549 22                        ; attention_backward.py:549:22
	s_and_b32 s2, s14, s4
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v24, 0x80000000, v21, s6
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s7, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v33, s35, v17
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v25, 0x80000000, v21, s6
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s55, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v39, 0x80000000, v11, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v26, 0x80000000, v21, s6
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s9, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v36, s35, v33
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v27, 0x80000000, v21, s6
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s54, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v28, 0x80000000, v21, s6
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s5, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v11, s35, v36
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v29, 0x80000000, v21, s6
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s53, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v30, 0x80000000, v21, s6
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s8, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v40, s35, v11
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v31, 0x80000000, v21, s6
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s52, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v32, 0x80000000, v21, s6
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s10, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v41, 0x80000000, v11, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v34, 0x80000000, v21, s6
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s51, s4
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_clause 0x7
	buffer_load_u16 v12, v12, s[40:43], 0 offen
	buffer_load_u16 v11, v18, s[40:43], 0 offen
	buffer_load_u16 v10, v19, s[40:43], 0 offen
	buffer_load_u16 v9, v20, s[40:43], 0 offen
	buffer_load_u16 v8, v13, s[40:43], 0 offen
	buffer_load_u16 v7, v14, s[40:43], 0 offen
	buffer_load_u16 v6, v3, s[40:43], 0 offen
	buffer_load_u16 v5, v15, s[40:43], 0 offen
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v35, 0x80000000, v21, s6
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s11, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_and_b32 s41, s31, 0xffff
	s_mov_b32 s40, s30
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v37, 0x80000000, v21, s6
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s58, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	v_cndmask_b32_e64 v3, 0x80000000, v40, s2
	s_clause 0x7
	buffer_load_u8 v19, v2, s[40:43], 0 offen
	buffer_load_u8 v20, v39, s[40:43], 0 offen
	buffer_load_u8 v15, v16, s[40:43], 0 offen
	buffer_load_u8 v16, v17, s[40:43], 0 offen
	buffer_load_u8 v17, v33, s[40:43], 0 offen
	buffer_load_u8 v18, v36, s[40:43], 0 offen
	buffer_load_u8 v13, v41, s[40:43], 0 offen
	buffer_load_u8 v14, v3, s[40:43], 0 offen
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_and_b32 s41, s27, 0xffff
	s_mov_b32 s40, s26
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s2, s12, s4
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v38, 0x80000000, v21, s6
	v_cndmask_b32_e64 v2, 0x80000000, v21, s2
	s_clause 0xf
	buffer_load_u16 v21, v22, s[40:43], 0 offen
	buffer_load_u16 v22, v23, s[40:43], 0 offen
	buffer_load_u16 v23, v24, s[40:43], 0 offen
	buffer_load_u16 v24, v25, s[40:43], 0 offen
	buffer_load_u16 v25, v26, s[40:43], 0 offen
	buffer_load_u16 v26, v27, s[40:43], 0 offen
	buffer_load_u16 v27, v28, s[40:43], 0 offen
	buffer_load_u16 v28, v29, s[40:43], 0 offen
	buffer_load_u16 v29, v30, s[40:43], 0 offen
	buffer_load_u16 v30, v31, s[40:43], 0 offen
	buffer_load_u16 v31, v32, s[40:43], 0 offen
	buffer_load_u16 v32, v34, s[40:43], 0 offen
	buffer_load_u16 v33, v35, s[40:43], 0 offen
	buffer_load_u16 v34, v37, s[40:43], 0 offen
	buffer_load_u16 v35, v38, s[40:43], 0 offen
	buffer_load_u16 v36, v2, s[40:43], 0 offen
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_and_b32_e32 v2, 12, v0
	v_lshlrev_b32_e32 v3, 5, v65
	.loc	1 587 22                        ; attention_backward.py:587:22
	s_add_i32 s2, s38, 31
	s_mov_b32 s14, 0
	.loc	1 587 21 is_stmt 0              ; attention_backward.py:587:21
	s_ashr_i32 s6, s2, 31
	.loc	1 522 24 is_stmt 1              ; attention_backward.py:522:24
	v_lshlrev_b32_e32 v4, 1, v2
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_lshr_b32 s6, s6, 27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_add_i32 s6, s2, s6
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_hi_u32 s2, s47, s49
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_or_b32_e32 v37, v3, v4
	.loc	1 587 20                        ; attention_backward.py:587:20
	s_and_b32 s67, s6, 0xffffffe0
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_bfe_u32 s6, s20, 0x10008
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v38, 0, v37
	v_xad_u32 v39, v37, 8, 0
	v_xad_u32 v40, v37, 16, 0
	v_xad_u32 v37, v37, 24, 0
	ds_load_b64 v[41:42], v38
	ds_load_b64 v[38:39], v39
	s_waitcnt lgkmcnt(1)
	scratch_store_b64 off, v[41:42], off offset:76 ; 8-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[38:39], off offset:84 ; 8-byte Folded Spill
	ds_load_b64 v[38:39], v40
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[38:39], off offset:92 ; 8-byte Folded Spill
	ds_load_b64 v[37:38], v37
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[37:38], off offset:100 ; 8-byte Folded Spill
	s_waitcnt vmcnt(15)
	v_mov_b16_e32 v53.h, v21.l
	s_waitcnt vmcnt(14)
	v_mov_b16_e32 v16.h, v22.l
	s_waitcnt vmcnt(13)
	v_mov_b16_e32 v17.h, v23.l
	s_waitcnt vmcnt(12)
	v_mov_b16_e32 v18.h, v24.l
	s_waitcnt vmcnt(11)
	v_mov_b16_e32 v19.h, v25.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v20.h, v26.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e32 v21.h, v27.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v22.h, v28.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v23.h, v29.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v24.h, v30.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v25.h, v31.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v26.h, v32.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v27.h, v33.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v13.h, v34.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v14.h, v35.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v15.h, v36.l
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s6, s50, s21
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_add_i32 s15, s22, s23
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s6, s6, s23
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_sub_i32 s15, s50, s15
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s6, s6, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 592 17                        ; attention_backward.py:592:17
	s_min_i32 s6, s38, s6
	.loc	1 590 24                        ; attention_backward.py:590:24
	s_max_i32 s6, s6, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 600 19                        ; attention_backward.py:600:19
	s_add_i32 s6, s6, 31
	.loc	1 600 18 is_stmt 0              ; attention_backward.py:600:18
	s_ashr_i32 s14, s6, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s14, s14, 27
	s_add_i32 s6, s6, s14
	.loc	1 589 24 is_stmt 1              ; attention_backward.py:589:24
	s_max_i32 s14, s15, 0
	.loc	1 600 17                        ; attention_backward.py:600:17
	s_and_not1_b32 s6, s6, 31
	.loc	1 597 45                        ; attention_backward.py:597:45
	s_and_b32 s14, s14, 0x7fffffe0
	.loc	1 598 24                        ; attention_backward.py:598:24
	s_min_i32 s67, s67, s6
.LBB0_2:
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v53.l, 0
	.loc	1 556 28 is_stmt 0              ; attention_backward.py:556:28
	v_lshrrev_b16 v36.l, 4, v19.l
	.loc	1 554 72 is_stmt 1              ; attention_backward.py:554:72
	v_and_b16 v5.h, v19.l, 15
	v_and_b16 v6.h, v20.l, 15
	v_and_b16 v7.h, v15.l, 15
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v36.h, v53.l
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v33, 15, v18
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v8.h, v16.l, 15
	v_and_b16 v9.h, v17.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v37.l, 4, v20.l
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v36, 0, v36, vcc_lo
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v49, -16, v33
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v30, 15, v15
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v5.h
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v37.h, v53.l
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v10.h, v18.l, 15
	v_and_b16 v11.h, v13.l, 15
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v46, -16, v30
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v29, 15, v20
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v37, 0, v37, s7
	.loc	1 554 72 is_stmt 0              ; attention_backward.py:554:72
	v_and_b16 v12.h, v14.l, 15
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_lshrrev_b16 v39.l, 4, v16.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v39.h, v53.l
	.loc	1 557 50 is_stmt 1              ; attention_backward.py:557:50
	v_or_b32_e32 v45, -16, v29
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v28, 15, v19
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v38.l, 4, v15.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v38.h, v53.l
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e64 v39, 0, v39, s5
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v41.l, 4, v18.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v44, -16, v28
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v35, 15, v14
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v38, 0, v38, s9
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v41.h, v53.l
	.loc	1 556 28 is_stmt 0              ; attention_backward.py:556:28
	v_lshrrev_b16 v40.l, 4, v17.l
	.loc	1 557 25 is_stmt 1              ; attention_backward.py:557:25
	v_cndmask_b32_e32 v28, v28, v44, vcc_lo
	.loc	1 557 50 is_stmt 0              ; attention_backward.py:557:50
	v_or_b32_e32 v51, -16, v35
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_and_b32_e32 v34, 15, v13
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v6.h
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v44, -16, v36
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v40.h, v53.l
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v41, 0, v41, s10
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
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v43.l, 4, v14.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v47, -16, v31
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v43.h, v53.l
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v30, v30, v46, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v8.h
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_and_b32_e32 v32, 15, v17
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v46, -16, v38
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v40, 0, v40, s8
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v42.l, 4, v13.l
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v31, v31, v47, vcc_lo
	.loc	1 557 50 is_stmt 0              ; attention_backward.py:557:50
	v_or_b32_e32 v48, -16, v32
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v9.h
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v47, -16, v39
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v42.h, v53.l
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v43, 0, v43, s12
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v28, v28
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v32, v32, v48, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v10.h
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v48, -16, v40
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v42, 0, v42, s11
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_i32 s6, s2, s44
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v16.l, v53.l
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v33, v33, v49, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v11.h
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v49, -16, v41
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v17.l, v53.l
	v_mov_b16_e32 v18.l, v53.l
	v_mov_b16_e32 v19.l, v53.l
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v34, v34, v50, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v12.h
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v50, -16, v42
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_dual_mul_f32 v28, v28, v53 :: v_dual_cndmask_b32 v35, v35, v51
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v36
	.loc	1 558 52 is_stmt 0              ; attention_backward.py:558:52
	v_or_b32_e32 v51, -16, v43
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_sub_i32 s6, s47, s6
	s_xor_b32 s15, s45, s46
	s_add_i32 s16, s2, 1
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v36, v36, v44, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v37
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_sub_i32 s17, s6, s44
	s_cmp_ge_u32 s6, s44
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v21.l, v53.l
	v_mov_b16_e32 v23.l, v53.l
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v37, v37, v45, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v38
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v24.l, v53.l
	v_mov_b16_e32 v13.l, v53.l
	v_mov_b16_e32 v14.l, v53.l
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v38, v38, v46, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v39
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v35, v35
	v_mul_f32_e32 v17, v29, v17
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v39, v39, v47, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v40
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v36, v36
	v_dual_mul_f32 v18, v37, v18 :: v_dual_mul_f32 v23, v32, v23
	v_dual_mul_f32 v19, v30, v19 :: v_dual_cndmask_b32 v40, v40, v48
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v41
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_dual_mul_f32 v16, v36, v16 :: v_dual_mul_f32 v21, v31, v21
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v29, v28, 16, 1
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_cselect_b32 s2, s16, s2
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v41, v41, v49, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v42
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_cselect_b32 s6, s17, s6
	s_add_i32 s16, s2, 1
	s_cmp_ge_u32 s6, s44
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v221, s50, v65
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v42, v42, v50, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v43
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v22.l, v53.l
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v39, v39
	v_mul_f32_e32 v31, v35, v14
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v43, v43, v51, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_add3_u32 v14, v28, v29, 0x7fff
	v_bfe_u32 v29, v17, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v30, v42, v13
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_bfe_u32 v13, v16, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v24, v40, v24
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_bfe_u32 v28, v18, 16, 1
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_cselect_b32 s2, s16, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v20.l, v53.l
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_xor_b32 s2, s2, s15
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s6, s39, v221
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_sub_i32 s39, s2, s15
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v27.l, v53.l
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v34, v34
	v_mul_f32_e32 v22, v39, v22
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_add3_u32 v13, v16, v13, 0x7fff
	v_cmp_o_f32_e64 s2, v16, v16
	v_add3_u32 v16, v17, v29, 0x7fff
	v_cmp_o_f32_e64 s5, v17, v17
	v_add3_u32 v17, v18, v28, 0x7fff
	v_cmp_o_f32_e64 s7, v18, v18
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v25.l, v53.l
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v33, v33
	v_mul_f32_e32 v20, v38, v20
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v26.l, v53.l
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v41, v41
	v_mul_f32_e32 v27, v34, v27
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_cndmask_b16 v5.h, 0x7fff, v14.h, vcc_lo
	v_bfe_u32 v14, v19, 16, 1
	v_cndmask_b16 v7.h, 0x7fff, v16.h, s5
	v_cndmask_b16 v8.h, 0x7fff, v17.h, s7
	v_bfe_u32 v16, v21, 16, 1
	v_bfe_u32 v17, v22, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v25, v33, v25
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v6.h, 0x7fff, v13.h, s2
	v_bfe_u32 v13, v20, 16, 1
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v15.l, v53.l
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v43, v43
	v_mul_f32_e32 v26, v41, v26
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_add3_u32 v14, v19, v14, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v16, v21, v16, 0x7fff
	v_cmp_o_f32_e64 s5, v21, v21
	v_add3_u32 v17, v22, v17, 0x7fff
	v_cmp_o_f32_e64 s7, v22, v22
	v_add3_u32 v13, v20, v13, 0x7fff
	v_cmp_o_f32_e64 s2, v20, v20
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v15, v43, v15
	.loc	1 575 26                        ; attention_backward.py:575:26
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
	v_add3_u32 v17, v27, v18, 0x7fff
	v_bfe_u32 v18, v31, 16, 1
	v_bfe_u32 v19, v15, 16, 1
	.loc	1 715 36 is_stmt 1              ; attention_backward.py:715:36
	v_lshlrev_b32_e32 v21, 1, v0
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_bfe_u32 v16, v30, 16, 1
	s_clause 0x1
	s_load_b128 s[40:43], s[0:1], 0x50
	s_load_b32 s66, s[0:1], 0x74
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s2
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_cmp_o_f32_e64 s2, v30, v30
	v_add3_u32 v16, v30, v16, 0x7fff
	v_add3_u32 v18, v31, v18, 0x7fff
	v_cmp_o_f32_e64 s5, v31, v31
	v_add3_u32 v19, v15, v19, 0x7fff
	v_cmp_o_f32_e64 s7, v15, v15
	v_cndmask_b16 v15.l, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v15.h, 0x7fff, v16.h, s2
	v_cndmask_b16 v16.l, 0x7fff, v18.h, s5
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_xor_b32_e32 v17, 0x90, v21
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v16.h, 0x7fff, v19.h, s7
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_xor_b32_e32 v18, 0x120, v21
	v_xor_b32_e32 v19, 0x1b0, v21
	v_xor_b32_e32 v20, 0x240, v21
	v_add_nc_u32_e32 v224, 0, v17
	v_xor_b32_e32 v17, 0x2d0, v21
	v_add_nc_u32_e32 v225, 0, v18
	v_add_nc_u32_e32 v226, 0, v19
	v_xor_b32_e32 v18, 0x360, v21
	v_xor_b32_e32 v19, 0x3f0, v21
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v66, 1, v52
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_add_nc_u32_e32 v223, v214, v0
	v_add_nc_u32_e32 v227, 0, v20
	v_add_nc_u32_e32 v228, 0, v17
	v_add_nc_u32_e32 v229, 0, v18
	v_add_nc_u32_e32 v230, 0, v19
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cmp_lt_i32 s39, 1
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_store_b32 off, v21, off offset:108 ; 4-byte Folded Spill
	ds_store_b16_d16_hi v223, v5
	ds_store_b16 v223, v13 offset:1024
	ds_store_b16_d16_hi v224, v6
	ds_store_b16_d16_hi v224, v13 offset:1024
	ds_store_b16_d16_hi v225, v7
	ds_store_b16 v225, v14 offset:1024
	ds_store_b16_d16_hi v226, v8
	ds_store_b16_d16_hi v226, v14 offset:1024
	ds_store_b16_d16_hi v227, v9
	ds_store_b16 v227, v15 offset:1024
	ds_store_b16_d16_hi v228, v10
	ds_store_b16_d16_hi v228, v15 offset:1024
	ds_store_b16_d16_hi v229, v11
	ds_store_b16 v229, v16 offset:1024
	ds_store_b16_d16_hi v230, v12
	ds_store_b16_d16_hi v230, v16 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cbranch_scc1 .LBB0_29
; %bb.3:                                ; %.lr.ph182
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	s_xor_b32 s2, s3, s37
	.loc	1 550 20 is_stmt 1              ; attention_backward.py:550:20
	v_lshlrev_b32_e32 v1, 1, v1
	s_ashr_i32 s2, s2, 31
	s_clause 0x1
	s_load_b32 s5, s[0:1], 0x90
	s_load_b128 s[44:47], s[0:1], 0x80
	s_xor_b32 s7, s48, s2
	s_clause 0x2
	s_load_b256 s[24:31], s[0:1], 0x30
	s_load_b64 s[48:49], s[0:1], 0x0
	s_load_b64 s[52:53], s[0:1], 0x18
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_sub_i32 s1, s50, s23
	s_sub_i32 s2, s7, s2
	s_max_i32 s1, s1, 0
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v14, 1, v1
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v15, 4, v0
	s_mul_i32 s0, s2, s37
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_and_b32 s1, s1, 0x7fffffe0
	s_sub_i32 s0, s3, s0
	s_max_u32 s1, s14, s1
	s_and_b32 s3, s65, exec_lo
	s_cselect_b32 s68, s1, s14
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s69, s39, s0
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s0, s66, v1
	v_cmp_gt_i32_e64 s1, s66, v14
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v14, 4, v15
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v1.l, v53.l
	v_mov_b16_e32 v1.h, v11.l
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v20, 24, v15
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v53.h, v12.l
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v14, off offset:120
	scratch_store_b32 off, v15, off offset:116
	scratch_store_b32 off, v1, off offset:148
	scratch_store_b32 off, v20, off offset:140
	v_mov_b16_e32 v1.h, v10.l
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_and_b32_e32 v12, 7, v0
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v16, 8, v15
	v_or_b32_e32 v17, 12, v15
	v_or_b32_e32 v18, 16, v15
	scratch_store_b32 off, v1, off offset:152 ; 4-byte Folded Spill
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v1.h, v9.l
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_lshlrev_b32_e32 v10, 4, v12
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v19, 20, v15
	v_and_b32_e32 v13, 16, v0
	v_or_b32_e32 v21, 28, v15
	scratch_store_b32 off, v1, off offset:156 ; 4-byte Folded Spill
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v1.h, v8.l
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_lshl_or_b32 v8, v65, 7, v10
	v_lshlrev_b32_e32 v9, 2, v0
	v_and_b32_e32 v11, 24, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v52
	scratch_store_b32 off, v1, off offset:160 ; 4-byte Folded Spill
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v1.h, v7.l
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_xad_u32 v7, v8, 64, 0
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v243, v66, v65
	v_writelane_b32 v255, s33, 0
	.loc	1 641 25                        ; attention_backward.py:641:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s70, s44, 0x3fb8aa3b
	scratch_store_b32 off, v1, off offset:164 ; 4-byte Folded Spill
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v1.h, v6.l
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:168
	scratch_store_b32 off, v53, off offset:112
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_xad_u32 v1, 0x70, v8, 0
	v_xad_u32 v6, 0x60, v8, 0
	ds_load_b128 v[26:29], v1
	ds_load_b128 v[22:25], v6
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v53.h, v5.l
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_xad_u32 v5, 0x50, v8, 0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[22:25], off offset:176
	scratch_store_b128 off, v[26:29], off offset:192
	ds_load_b128 v[26:29], v5
	ds_load_b128 v[22:25], v7
	v_xad_u32 v1, v8, 48, 0
	v_xad_u32 v6, v8, 32, 0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[22:25], off offset:208
	scratch_store_b128 off, v[26:29], off offset:224
	ds_load_b128 v[26:29], v1
	ds_load_b128 v[22:25], v6
	v_xad_u32 v5, v8, 16, 0
	v_lshlrev_b32_e32 v1, 4, v52
	v_add_nc_u32_e32 v7, 0, v8
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[22:25], off offset:240
	scratch_store_b128 off, v[26:29], off offset:256
	ds_load_b128 v[26:29], v5
	ds_load_b128 v[22:25], v7
	v_or3_b32 v5, v4, v1, v3
	v_mul_lo_u32 v1, s5, v221
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[22:25], off offset:272
	scratch_store_b128 off, v[26:29], off offset:288
	v_mad_u64_u32 v[6:7], null, s47, v14, v[1:2]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[6:7], off offset:456
	scratch_store_b32 off, v16, off offset:124
	v_mad_u64_u32 v[6:7], null, s47, v16, v[1:2]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[6:7], off offset:464
	scratch_store_b32 off, v17, off offset:128
	v_mad_u64_u32 v[6:7], null, s47, v17, v[1:2]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[6:7], off offset:472
	scratch_store_b32 off, v18, off offset:132
	v_mad_u64_u32 v[6:7], null, s47, v18, v[1:2]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[6:7], off offset:480
	scratch_store_b32 off, v19, off offset:136
	v_mad_u64_u32 v[6:7], null, s47, v19, v[1:2]
	v_mad_u64_u32 v[16:17], null, s47, v20, v[1:2]
	v_lshlrev_b32_e32 v22, 3, v65
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[16:17], off offset:496
	scratch_store_b32 off, v21, off offset:144
	v_mad_u64_u32 v[16:17], null, s47, v21, v[1:2]
	scratch_store_b64 off, v[6:7], off offset:488 ; 8-byte Folded Spill
	v_lshrrev_b32_e32 v6, 2, v13
	v_lshrrev_b32_e32 v7, 4, v52
	v_mad_u64_u32 v[14:15], null, s47, v15, v[1:2]
	v_lshrrev_b32_e32 v21, 5, v0
	scratch_store_b64 off, v[16:17], off offset:504 ; 8-byte Folded Spill
	v_or3_b32 v19, v6, v7, v22
	v_and_b32_e32 v6, 52, v9
	v_lshrrev_b32_e32 v9, 1, v13
	v_mov_b32_e32 v205, 0
	scratch_store_b64 off, v[14:15], off offset:512 ; 8-byte Folded Spill
	v_lshrrev_b32_e32 v15, 1, v11
	v_lshl_or_b32 v2, v2, 5, v6
	v_and_or_b32 v9, v0, 2, v9
	v_lshlrev_b32_e32 v6, 3, v0
	v_bfe_i32 v14, v0, 3, 1
	v_cndmask_b32_e64 v16, 0x420, 0, vcc_lo
	v_mov_b32_e32 v41, 0
	v_or3_b32 v17, v9, v2, v21
	v_and_b32_e32 v2, 48, v6
	v_lshl_or_b32 v6, v12, 7, v15
	v_and_or_b32 v14, 0x210, v14, v16
	v_xor_b32_e32 v3, 8, v5
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v53, off offset:172
	scratch_store_b32 off, v5, off offset:304
	scratch_store_b32 off, v19, off offset:308
	v_or3_b32 v20, v6, v10, v7
	v_lshl_or_b32 v12, v12, 6, v2
	v_lshlrev_b32_e32 v7, 1, v65
	v_dual_mov_b32 v43, v205 :: v_dual_lshlrev_b32 v10, 2, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v165, v20
	v_dual_mov_b32 v164, v22 :: v_dual_lshlrev_b32 v11, 1, v11
	v_xor_b32_e32 v13, v14, v12
	v_lshl_or_b32 v14, v52, 6, v8
	v_xor_b32_e32 v4, 16, v5
	v_xor_b32_e32 v8, v2, v11
	v_xor_b32_e32 v5, 24, v5
	v_xor_b32_e32 v1, 0x90, v19
	v_xor_b32_e32 v9, 0x120, v19
	v_xor_b32_e32 v15, 0x1b0, v19
	v_xor_b32_e32 v6, 16, v17
	v_xor_b32_e32 v12, 32, v17
	v_or3_b32 v19, v7, v10, v52
	v_add3_u32 v254, 0, v52, v7
	v_xor_b32_e32 v7, 48, v17
	v_mov_b32_e32 v11, v0
	scratch_store_b32 off, v17, off offset:312 ; 4-byte Folded Spill
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v17, s35, v0
	v_lshl_or_b32 v8, v0, 6, v8
	v_dual_mov_b32 v45, v205 :: v_dual_add_nc_u32 v0, 0, v3
	scratch_store_b64 off, v[11:12], off offset:316 ; 8-byte Folded Spill
	v_lshl_or_b32 v11, v65, 6, v2
	v_add_nc_u32_e32 v2, 0, v5
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_dual_mov_b32 v47, v205 :: v_dual_add_nc_u32 v0, 0, v4
	v_dual_mov_b32 v42, v205 :: v_dual_add_nc_u32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:332
	scratch_store_b32 off, v17, off offset:324
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v0, s35, v17
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:336
	scratch_store_b32 off, v1, off offset:340
	v_add_nc_u32_e32 v1, 0, v9
	v_dual_mov_b32 v35, v205 :: v_dual_add_nc_u32 v2, s35, v0
	v_dual_mov_b32 v44, v205 :: v_dual_mov_b32 v57, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:344
	scratch_store_b32 off, v19, off offset:452
	v_add_nc_u32_e32 v1, 0, v15
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:348
	scratch_store_b32 off, v0, off offset:352
	v_xor_b32_e32 v0, 16, v8
	v_mov_b32_e32 v59, v205
	v_xor_b32_e32 v1, 32, v8
	v_mov_b32_e32 v63, v205
	v_mov_b32_e32 v34, v205
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:356
	scratch_store_b32 off, v8, off offset:372
	v_xor_b32_e32 v0, 48, v8
	v_add_nc_u32_e32 v1, 0, v1
	v_mov_b32_e32 v39, v205
	v_dual_mov_b32 v58, v205 :: v_dual_mov_b32 v49, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:368
	scratch_store_b32 off, v13, off offset:400
	v_xor_b32_e32 v0, 48, v13
	v_mov_b32_e32 v36, v205
	v_mov_b32_e32 v40, v205
	v_mov_b32_e32 v60, v205
	v_mov_b32_e32 v62, v205
	v_dual_mov_b32 v61, v205 :: v_dual_add_nc_u32 v204, 0, v0
	v_xor_b32_e32 v0, 32, v14
	v_mov_b32_e32 v52, v205
	v_mov_b32_e32 v51, v205
	v_mov_b32_e32 v54, v205
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v55, v205 :: v_dual_add_nc_u32 v0, 0, v0
	scratch_store_b32 off, v2, off offset:364 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s35, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:360
	scratch_store_b32 off, v2, off offset:380
	v_xor_b32_e32 v1, 16, v13
	v_add_nc_u32_e32 v3, s35, v2
	v_xor_b32_e32 v2, 32, v13
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_dual_mov_b32 v64, v205 :: v_dual_add_nc_u32 v247, 0, v1
	v_mov_b32_e32 v38, v205
	v_xor_b32_e32 v1, 16, v14
	v_add_nc_u32_e32 v203, 0, v2
	v_xor_b32_e32 v2, 48, v14
	scratch_store_b32 off, v3, off offset:412 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s35, v3
	v_dual_mov_b32 v50, v205 :: v_dual_add_nc_u32 v1, 0, v1
	v_add_nc_u32_e32 v0, 0, v2
	v_xor_b32_e32 v2, 0x70, v14
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:424
	scratch_store_b32 off, v1, off offset:376
	v_xor_b32_e32 v1, 64, v14
	v_dual_mov_b32 v56, v205 :: v_dual_add_nc_u32 v3, s35, v3
	v_dual_mov_b32 v48, v205 :: v_dual_add_nc_u32 v231, 0, v7
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v3, off offset:432 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s35, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:392
	scratch_store_b32 off, v3, off offset:436
	v_xor_b32_e32 v1, 0x60, v14
	v_add_nc_u32_e32 v3, s35, v3
	v_mov_b32_e32 v163, v11
	v_dual_mov_b32 v46, v205 :: v_dual_add_nc_u32 v167, 0, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:388
	scratch_store_b32 off, v14, off offset:440
	v_xor_b32_e32 v0, 0x50, v14
	v_xor_b32_e32 v5, 64, v20
	scratch_store_b32 off, v1, off offset:404 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v2
	v_xor_b32_e32 v2, 16, v11
	v_add_nc_u32_e32 v0, 0, v0
	v_xor_b32_e32 v8, 0x60, v20
	v_xor_b32_e32 v9, 0x70, v20
	v_xor_b32_e32 v13, 0x120, v22
	v_xor_b32_e32 v14, 0x1b0, v22
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x90, v19
	v_xor_b32_e32 v17, 0x2d0, v22
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v155, 22, v21
	v_dual_mov_b32 v37, v205 :: v_dual_add_nc_u32 v168, 0, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v53, v205 :: v_dual_add_nc_u32 v158, 0, v0
	v_xor_b32_e32 v0, 0x1b0, v19
	v_mad_u64_u32 v[175:176], null, s34, 18, v[154:155]
	v_mad_u64_u32 v[176:177], null, s34, 20, v[154:155]
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v161, 0, v0
	v_add_nc_u32_e32 v0, 0, v2
	scratch_store_b32 off, v1, off offset:408 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x120, v19
	v_xor_b32_e32 v2, 32, v20
	v_mad_u64_u32 v[177:178], null, s34, 22, v[154:155]
	v_mad_u64_u32 v[178:179], null, s34, 24, v[154:155]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v159, 0, v1
	v_xor_b32_e32 v1, 32, v11
	v_mad_u64_u32 v[179:180], null, s34, 26, v[154:155]
	v_mad_u64_u32 v[180:181], null, s34, 28, v[154:155]
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v11
	v_mad_u64_u32 v[181:182], null, s34, 30, v[154:155]
	v_add_nc_u32_e32 v2, 0, v2
	v_add_nc_u32_e32 v5, 0, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:420
	scratch_store_b32 off, v3, off offset:444
	v_add_nc_u32_e32 v3, s35, v3
	v_xor_b32_e32 v1, 16, v20
	scratch_store_b32 off, v0, off offset:428 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v20
	v_add_nc_u32_e32 v8, 0, v8
	scratch_store_b32 off, v3, off offset:448 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s35, v3
	v_add_nc_u32_e32 v1, 0, v1
	v_add_nc_u32_e32 v9, 0, v9
	v_add_nc_u32_e32 v13, 0, v13
	v_add_nc_u32_e32 v14, 0, v14
	v_dual_mov_b32 v4, v3 :: v_dual_add_nc_u32 v3, s35, v3
	v_add_nc_u32_e32 v17, 0, v17
	v_or_b32_e32 v29, 16, v21
	v_or_b32_e32 v30, 18, v21
	v_or_b32_e32 v32, 20, v21
	v_dual_mov_b32 v16, v3 :: v_dual_add_nc_u32 v3, s35, v3
	v_or_b32_e32 v246, 26, v21
	v_or_b32_e32 v241, 28, v21
	v_or_b32_e32 v242, 30, v21
	s_cmp_lt_i32 s68, s67
	v_dual_mov_b32 v10, v3 :: v_dual_add_nc_u32 v7, s35, v3
	v_add_nc_u32_e32 v3, 0, v0
	v_xor_b32_e32 v0, 0x50, v20
	v_xor_b32_e32 v20, 0x3f0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v18, v7 :: v_dual_add_nc_u32 v7, s35, v7
	s_mov_b32 s37, 0
	.loc	1 613 26                        ; attention_backward.py:613:26
	s_mul_i32 s36, s2, s36
	v_add_nc_u32_e32 v20, 0, v20
	.loc	1 683 27                        ; attention_backward.py:683:27
	s_mul_i32 s45, s2, s45
	v_dual_mov_b32 v166, v7 :: v_dual_add_nc_u32 v11, s35, v7
	v_add_nc_u32_e32 v7, 0, v0
	v_xor_b32_e32 v0, 0x90, v22
	s_cselect_b32 s71, -1, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v15, s35, v11
	v_mov_b32_e32 v173, v11
	s_and_b32 s49, s49, 0xffff
	v_add_nc_u32_e32 v11, 0, v0
	v_xor_b32_e32 v0, 0x240, v22
	v_dual_mov_b32 v6, v15 :: v_dual_add_nc_u32 v19, s35, v15
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v156, v19 :: v_dual_add_nc_u32 v15, 0, v0
	v_add_nc_u32_e32 v19, s35, v19
	v_xor_b32_e32 v0, 0x360, v22
	s_and_b32 s53, s53, 0xffff
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s57, s31, 0xffff
	v_add_nc_u32_e32 v22, s35, v19
	v_dual_mov_b32 v160, v19 :: v_dual_add_nc_u32 v19, 0, v0
	s_mov_b32 s56, s30
	s_and_b32 s61, s27, 0xffff
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v0, s35, v22
	v_mov_b32_e32 v12, v22
	s_mov_b32 s60, s26
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v65, off offset:524
	scratch_store_b32 off, v66, off offset:528
	v_dual_mov_b32 v157, v0 :: v_dual_add_nc_u32 v0, s35, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v202, v0
	v_add_nc_u32_e32 v0, s35, v0
	v_add_nc_u32_e32 v172, s35, v0
	v_mov_b32_e32 v222, v0
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v0, 24, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v218, s35, v172
	v_add_nc_u32_e32 v169, s35, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v174, s35, v169
	v_add_nc_u32_e32 v162, s35, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v31, s35, v162
	v_add_nc_u32_e32 v240, s35, v31
	s_branch .LBB0_5
.LBB0_4:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_add_i32 s37, s37, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s37, s39
	s_cbranch_scc0 .LBB0_28
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s71
	s_cbranch_vccnz .LBB0_4
; %bb.6:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_add_i32 s2, s37, s69
	s_mov_b32 s72, s68
	.loc	1 613 26                        ; attention_backward.py:613:26
	s_add_i32 s26, s2, s36
	.loc	1 684 27                        ; attention_backward.py:684:27
	s_mul_i32 s27, s2, s46
	.loc	1 613 25                        ; attention_backward.py:613:25
	s_mul_i32 s26, s26, s38
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_add_i32 s27, s27, s45
	s_branch .LBB0_8
.LBB0_7:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 25 is_stmt 0                ; attention_backward.py:0:25
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 608 29 is_stmt 1              ; attention_backward.py:608:29
	s_or_b32 s2, s72, 1
	s_or_b32 s7, s72, 2
	s_or_b32 s8, s72, 3
	s_or_b32 s9, s72, 4
	s_or_b32 s10, s72, 5
	s_or_b32 s11, s72, 6
	s_or_b32 s12, s72, 7
	s_or_b32 s14, s72, 8
	s_or_b32 s15, s72, 9
	s_or_b32 s16, s72, 10
	s_or_b32 s17, s72, 11
	s_or_b32 s18, s72, 12
	s_or_b32 s78, s72, 13
	s_or_b32 s79, s72, 14
	s_or_b32 s80, s72, 15
	s_or_b32 s81, s72, 16
	s_or_b32 s82, s72, 17
	s_or_b32 s83, s72, 18
	s_or_b32 s94, s72, 19
	s_or_b32 s95, s72, 20
	s_or_b32 s96, s72, 21
	s_or_b32 s97, s72, 22
	s_or_b32 s98, s72, 23
	s_or_b32 s99, s72, 24
	s_or_b32 s100, s72, 25
	s_or_b32 s101, s72, 26
	s_or_b32 s102, s72, 27
	s_or_b32 s103, s72, 28
	s_or_b32 s104, s72, 29
	s_or_b32 vcc_hi, s72, 30
	s_or_b32 s33, s72, 31
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s72, s38
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_and_b16 v21.l, 0xff, v69.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s2, s38
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_waitcnt lgkmcnt(0)
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s7, s38
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e32 vcc_lo, 0, v21.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s8, s38
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_and_b16 v21.l, 0xff, v69.h
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s9, s38
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_barrier
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s10, s38
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s3, 0, v21.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s11, s38
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s30, s30, s35
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s12, s38
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v26, s30, v4, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s14, s38
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v28, s30, v166, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s15, s38
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v27, s30, v10, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s16, s38
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v207, v205
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s17, s38
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v209, v205
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s18, s38
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v211, v205
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s78, s38
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v244.h, v189.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s79, s38
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v244.l, 0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s80, s38
	.loc	1 689 25                        ; attention_backward.py:689:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s81, s38
	.loc	1 689 25                        ; attention_backward.py:689:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s82, s38
	.loc	1 689 25                        ; attention_backward.py:689:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s83, s38
	.loc	1 689 25                        ; attention_backward.py:689:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s94, s38
	.loc	1 689 25                        ; attention_backward.py:689:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s95, s38
	.loc	1 689 25                        ; attention_backward.py:689:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s96, s38
	.loc	1 689 25                        ; attention_backward.py:689:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s97, s38
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s98, s38
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s99, s38
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v210, v205
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s100, s38
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v206, v205
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s8, -1, 0
	s_cmp_lt_i32 s101, s38
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v208, v205
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s102, s38
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v212, v205
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s103, s38
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s104, s38
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 vcc_hi, s38
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s33, s38
	s_cselect_b32 s10, -1, 0
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s2, s73, s3
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s72, s72, 32
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v21, 0, 1, s2
	.loc	1 689 34 is_stmt 0              ; attention_backward.py:689:34
	s_waitcnt vmcnt(0)
	v_and_b16 v21.h, 0xff, v68.h
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s2, s63, vcc_lo
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	s_mov_b32 s63, s51
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v22, 0, 1, s2
	v_lshlrev_b16 v21.l, 8, v21.l
	.loc	1 689 34 is_stmt 0              ; attention_backward.py:689:34
	v_cmp_ne_u16_e32 vcc_lo, 0, v21.h
	v_and_b16 v21.h, 0xff, v66.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_or_b16 v21.l, v22.l, v21.l
	s_and_b32 s3, s62, vcc_lo
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s2, 0, v21.h
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v22, 0, 1, s3
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	s_mov_b32 s62, s50
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s2, s59, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v21.h, 8, v22.l
	v_cndmask_b32_e64 v22, 0, 1, s2
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s59, s51
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_or_b16 v21.h, v22.l, v21.h
	scratch_load_b32 v22, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, 0, v22
	ds_store_b16 v22, v21
	.loc	1 689 34 is_stmt 0              ; attention_backward.py:689:34
	v_and_b16 v21.l, 0xff, v67.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_ne_u16_e32 vcc_lo, 0, v21.l
	v_and_b16 v21.l, 0xff, v66.h
	v_cmp_ne_u16_e64 s2, 0, v21.l
	v_and_b16 v21.l, 0xff, v68.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s2, s31, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s3, 0, v21.l
	v_and_b16 v21.l, 0xff, v67.h
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v23, 0, 1, s2
	.loc	1 715 36 is_stmt 1              ; attention_backward.py:715:36
	v_dual_mov_b32 v65, v205 :: v_dual_mov_b32 v68, v208
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s3, s58, s3
	.loc	1 689 34 is_stmt 0              ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s7, 0, v21.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v22, 0, 1, s3
	s_and_b32 s3, s55, vcc_lo
	.loc	1 712 26 is_stmt 1              ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s93
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s58, s50
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s31, s51
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_mov_b16_e32 v21.l, v22.l
	v_cndmask_b32_e64 v22, 0, 1, s3
	s_and_b32 s3, s54, s7
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v67, v207 :: v_dual_mov_b32 v70, v210
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_lshlrev_b16 v21.l, 8, v21.l
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v69, v209 :: v_dual_mov_b32 v72, v212
	v_mov_b32_e32 v66, v206
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_or_b16 v21.l, v22.l, v21.l
	v_cndmask_b32_e64 v22, 0, 1, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v22.l, 8, v22.l
	v_or_b16 v22.l, v23.l, v22.l
	scratch_load_b32 v23, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v23, v21
	scratch_load_b32 v23, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v23, v21
	scratch_load_b32 v21, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v21, v22
	s_waitcnt lgkmcnt(0)
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[21:22], off, off offset:316
	scratch_load_b32 v22, off, off offset:352
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_barrier
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v24, off, off offset:432
	scratch_load_b32 v23, off, off offset:412
	scratch_load_b32 v25, off, off offset:444
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v21, s30, v21, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v22, s30, v22, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v24, s30, v24, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v23, s30, v23, 1
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s92
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v25, s30, v25, 1
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	s_clause 0x1
	buffer_load_u16 v105, v21, s[60:63], 0 offen
	buffer_load_u16 v106, v22, s[60:63], 0 offen
	scratch_load_b32 v21, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s91
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v22, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v21, s30, v21, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v22, s30, v22, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s90
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v107, v21, s[60:63], 0 offen
	scratch_load_b32 v21, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v21, s30, v21, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s89
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v108, v21, s[60:63], 0 offen
	scratch_load_b32 v21, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v21, s30, v21, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s88
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	s_clause 0x1
	buffer_load_u16 v109, v21, s[60:63], 0 offen
	buffer_load_u16 v110, v22, s[60:63], 0 offen
	v_add_lshl_u32 v21, s30, v16, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s87
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v22, s30, v156, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s86
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v111, v21, s[60:63], 0 offen
	v_add_lshl_u32 v21, s30, v18, 1
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s85
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v112, v21, s[60:63], 0 offen
	v_add_lshl_u32 v21, s30, v173, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s84
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	s_clause 0x1
	buffer_load_u16 v146, v21, s[60:63], 0 offen
	buffer_load_u16 v147, v22, s[60:63], 0 offen
	v_add_lshl_u32 v21, s30, v12, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s83
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v22, s30, v169, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s82
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v148, v21, s[60:63], 0 offen
	v_add_lshl_u32 v21, s30, v202, 1
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s81
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v149, v21, s[60:63], 0 offen
	v_add_lshl_u32 v21, s30, v172, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s80
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	s_clause 0x1
	buffer_load_u16 v150, v21, s[60:63], 0 offen
	buffer_load_u16 v151, v22, s[60:63], 0 offen
	v_add_lshl_u32 v21, s30, v162, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s79
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v22, off, off offset:364 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s78
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v152, v21, s[60:63], 0 offen
	v_add_lshl_u32 v21, s30, v240, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s77
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v153, v21, s[60:63], 0 offen
	scratch_load_b32 v21, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v22, s30, v22, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v21, s30, v21, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s76
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s75
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s74
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s20
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s19
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s18
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s17
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	s_clause 0x7
	buffer_load_u16 v245, v24, s[60:63], 0 offen
	buffer_load_u16 v248, v23, s[60:63], 0 offen
	buffer_load_u16 v251, v22, s[60:63], 0 offen
	buffer_load_u16 v250, v21, s[60:63], 0 offen
	buffer_load_u16 v249, v28, s[60:63], 0 offen
	buffer_load_u16 v253, v27, s[60:63], 0 offen
	buffer_load_u16 v252, v26, s[60:63], 0 offen
	buffer_load_u16 v220, v25, s[60:63], 0 offen
	v_add_lshl_u32 v21, s30, v160, 1
	v_add_lshl_u32 v22, s30, v157, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s12
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v23, s30, v222, 1
	v_add_lshl_u32 v24, s30, v6, 1
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s14
	v_add_nc_u32_e32 v27, s35, v240
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s15
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v25, s30, v174, 1
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s9
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v26, s30, v31, 1
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s11
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v27, s30, v27, 1
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s16
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v28, s30, v218, 1
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s10
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s30, s50
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s8
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_i32 s72, s67
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	s_clause 0x7
	buffer_load_u16 v232, v23, s[60:63], 0 offen
	buffer_load_u16 v235, v22, s[60:63], 0 offen
	buffer_load_u16 v237, v21, s[60:63], 0 offen
	buffer_load_u16 v219, v24, s[60:63], 0 offen
	buffer_load_u16 v233, v27, s[60:63], 0 offen
	buffer_load_u16 v236, v26, s[60:63], 0 offen
	buffer_load_u16 v238, v25, s[60:63], 0 offen
	buffer_load_u16 v170, v28, s[60:63], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v21, 2, v114
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v25, v21, s[56:59], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v171, v21, s[28:31], 0 offen
	.loc	1 689 25                        ; attention_backward.py:689:25
	scratch_load_b32 v21, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v71, v211
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(18)
	v_mov_b16_e64 v108.h, v245.l
	s_waitcnt vmcnt(17)
	v_mov_b16_e64 v107.h, v248.l
	s_waitcnt vmcnt(16)
	v_mov_b16_e64 v106.h, v251.l
	s_waitcnt vmcnt(15)
	v_mov_b16_e64 v105.h, v250.l
	s_waitcnt vmcnt(14)
	v_mov_b16_e64 v112.h, v249.l
	s_waitcnt vmcnt(13)
	v_mov_b16_e64 v111.h, v253.l
	s_waitcnt vmcnt(12)
	v_mov_b16_e64 v110.h, v252.l
	s_waitcnt vmcnt(11)
	v_mov_b16_e64 v109.h, v220.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e64 v149.h, v232.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e64 v148.h, v235.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v147.h, v237.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v146.h, v219.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v153.h, v233.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v152.h, v236.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v151.h, v238.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v150.h, v170.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, 0, v21
	ds_load_u8_d16 v21, v22
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v21, v22 offset:64
	ds_load_u8_d16 v22, v167
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v22, v167 offset:64
	ds_load_u8_d16 v23, v168
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v23, v168 offset:64
	ds_load_u8_d16 v24, v231
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v24, v231 offset:64
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v26, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_and_b16 v21.l, 1, v21.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v21.l
	v_and_b16 v21.l, 1, v21.h
	v_cmp_eq_u16_e64 s2, 1, v21.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, 0, v26
	ds_store_b128 v26, v[105:108]
	scratch_load_b32 v26, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v26, v[109:112]
	scratch_load_b32 v26, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v26, v[146:149]
	scratch_load_b32 v26, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v26, v[150:153]
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v26, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, 0, v26
	ds_load_b128 v[142:145], v26
	ds_load_b128 v[134:137], v26 offset:2048
	ds_load_b128 v[138:141], v247
	ds_load_b128 v[130:133], v247 offset:2048
	ds_load_b128 v[126:129], v203
	ds_load_b128 v[118:121], v203 offset:2048
	ds_load_b128 v[122:125], v204
	ds_load_b128 v[114:117], v204 offset:2048
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v223, v105
	ds_store_b16 v223, v109 offset:1024
	ds_store_b16 v223, v146 offset:2048
	ds_store_b16 v223, v150 offset:3072
	ds_store_b16 v224, v250
	ds_store_b16 v224, v220 offset:1024
	ds_store_b16 v224, v219 offset:2048
	ds_store_b16 v224, v170 offset:3072
	ds_store_b16 v225, v106
	ds_store_b16 v225, v110 offset:1024
	ds_store_b16 v225, v147 offset:2048
	ds_store_b16 v225, v151 offset:3072
	ds_store_b16 v226, v251
	ds_store_b16 v226, v252 offset:1024
	ds_store_b16 v226, v237 offset:2048
	ds_store_b16 v226, v238 offset:3072
	ds_store_b16 v227, v107
	ds_store_b16 v227, v111 offset:1024
	ds_store_b16 v227, v148 offset:2048
	ds_store_b16 v227, v152 offset:3072
	ds_store_b16 v228, v248
	ds_store_b16 v228, v253 offset:1024
	ds_store_b16 v228, v235 offset:2048
	ds_store_b16 v228, v236 offset:3072
	ds_store_b16 v229, v108
	ds_store_b16 v229, v112 offset:1024
	ds_store_b16 v229, v149 offset:2048
	ds_store_b16 v229, v153 offset:3072
	ds_store_b16 v230, v245
	ds_store_b16 v230, v249 offset:1024
	ds_store_b16 v230, v232 offset:2048
	ds_store_b16 v230, v233 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 36-byte Folded Reload
	scratch_load_b32 v26, off, off offset:440
	scratch_load_b128 v[206:209], off, off offset:272
	scratch_load_b128 v[210:213], off, off offset:288
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v26, 0, v26
	ds_load_b128 v[190:193], v26
	scratch_load_b32 v26, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[194:197], v26
	scratch_load_b32 v26, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[206:213], v[190:197], v[65:72]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[206:209], off, off offset:240
	scratch_load_b128 v[210:213], off, off offset:256
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	ds_load_b128 v[190:193], v26
	scratch_load_b32 v26, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[194:197], v26
	scratch_load_b32 v26, off, off offset:392 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[206:213], v[190:197], v[65:72]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[206:209], off, off offset:208
	scratch_load_b128 v[210:213], off, off offset:224
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	ds_load_b128 v[190:193], v26
	scratch_load_b32 v26, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[194:197], v26
	scratch_load_b32 v26, off, off offset:404 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[206:213], v[190:197], v[65:72]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[206:209], off, off offset:176
	scratch_load_b128 v[210:213], off, off offset:192
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	ds_load_b128 v[190:193], v26
	scratch_load_b32 v26, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[194:197], v26
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[206:213], v[190:197], v[65:72]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v27, v66, v25
	v_sub_f32_e32 v28, v67, v25
	s_delay_alu instid0(VALU_DEP_3)
	v_sub_f32_e32 v66, v69, v25
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v69, v73
	v_cvt_f32_i32_e32 v73, v77
	.loc	1 640 41                        ; attention_backward.py:640:41
	v_mul_f32_e32 v77, s70, v244
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v67, v70, v25
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v70, v74
	v_cvt_f32_i32_e32 v74, v78
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v78, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v69, v77, v69
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v26, v65, v25
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, v69, v78, -v171
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e32 v190, 0, v69, vcc_lo
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v65, v68, v25
	v_sub_f32_e32 v68, v71, v25
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v71, v75
	v_cvt_f32_i32_e32 v75, v79
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v26, v190, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v26, s44, v26
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v69, v26, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v26, v26, v69, 0x7fff
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_mul_f32_e32 v69, v77, v73
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v73, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v69, v69, v73, -v171
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v189, 0, v69, s2
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v69, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v21, v189, v66
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v21, s44, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v66, v21, 16, 1
	v_cmp_o_f32_e64 s2, v21, v21
	v_add3_u32 v21, v21, v66, 0x7fff
	.loc	1 689 25 is_stmt 1              ; attention_backward.py:689:25
	v_and_b16 v21.l, 1, v22.l
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v66, v77, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s2
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s3, 1, v21.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v21.l, 0x7fff, v26.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	scratch_load_b32 v26, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v25, v72, v25
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v72, v76
	v_cvt_f32_i32_e32 v76, v80
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(1)
	v_fma_f32 v66, v66, v69, -v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v66, v66
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v191, 0, v66, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v27, v191, v27
	.loc	1 721 38                        ; attention_backward.py:721:38
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v27, s44, v27 :: v_dual_add_nc_u32 v26, 0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v66, v27, 16, 1
	v_cmp_o_f32_e64 s3, v27, v27
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	ds_store_b16 v26, v21
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v27, v27, v66, 0x7fff
	v_cndmask_b16 v21.l, 0x7fff, v27.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v26, v21 offset:512
	v_bfe_i32 v26, v186, 0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v22.l, v26.l
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v26, 15, v22
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v21.h, v22.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v27, -16, v26
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v21.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v26, v26, v27, vcc_lo
	v_bfe_i32 v27, v185, 0, 8
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v66, 15, v27
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v21.h, v27.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v69, -16, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v21.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v21.h, 4, v22.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v66, v66, v69, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v69.l, v21.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e64 v69.h, v244.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v22.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v21.h, 4, v27.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v66, v66
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v70, -16, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v69, v69, v70, vcc_lo
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v70.l, v21.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e64 v70.h, v244.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v27.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_and_b16 v21.h, 1, v23.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v73, -16, v70
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v27, v70, v73, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e64 v70.h, v188.l
	v_mov_b16_e64 v70.l, v244.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v27, v27
	v_mul_f32_e32 v26, v26, v70
	v_mul_f32_e32 v69, v69, v70
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v70.h, v187.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v27, v70, v27
	v_mul_f32_e32 v66, v70, v66
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v70.h, v244.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v26, v26
	v_cndmask_b32_e64 v27, 0, v27, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v70.l, v27.h
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v70, 1, v70
	v_add3_u32 v70, v27, v70, 0x7fff
	v_cndmask_b32_e64 v27, 0, v66, s0
	v_mov_b16_e64 v66.h, v244.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v192.h, 0x7fff, v70.h, vcc_lo
	v_mov_b16_e32 v66.l, v27.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_o_f32_e64 s2, v27, v27
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v21.h
	v_and_b16 v21.h, 1, v24.l
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v70, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v66, v27, v66, 0x7fff
	v_bfe_u32 v27, v26, 16, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v192.l, 0x7fff, v66.h, s2
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v66, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v27, v26, v27, 0x7fff
	v_cndmask_b32_e64 v26, 0, v69, s1
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s2, 1, v21.h
	v_and_b16 v21.h, 1, v22.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s3
	v_bfe_u32 v69, v26, 16, 1
	v_cmp_o_f32_e64 s5, v26, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s3, 1, v21.h
	v_and_b16 v21.h, 1, v23.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v69, v26, v69, 0x7fff
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v26, v77, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v27.h, 0x7fff, v69.h, s5
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v69, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s5, 1, v21.h
	v_and_b16 v21.h, 1, v24.h
	v_cmp_eq_u16_e64 s7, 1, v21.h
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(1)
	v_fma_f32 v26, v26, v66, -v171
	scratch_load_b32 v66, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e32 v185, 0, v26, vcc_lo
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v26, v185, v28
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v71, v77, v72
	v_mul_f32_e32 v72, v77, v74
	v_mul_f32_e32 v74, v77, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v26, s44, v26
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(1)
	v_fma_f32 v69, v72, v69, -v171
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v28, v26, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_add3_u32 v28, v26, v28, 0x7fff
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v66, v71, v66, -v171
	scratch_load_b32 v71, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v26, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v186, 0, v26, s2
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_dual_mul_f32 v26, v186, v65 :: v_dual_mul_f32 v73, v77, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v26, s44, v26
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v70, v73, v70, -v171
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v65, v26, 16, 1
	v_cmp_o_f32_e64 s2, v26, v26
	v_add3_u32 v65, v26, v65, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v26, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v187, 0, v26, s3
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v22, v187, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v22, s44, v22
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v26, v22, 16, 1
	v_cmp_o_f32_e64 s3, v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v26, v22, v26, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v22, v70
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v21.h, 0x7fff, v26.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v158, v21
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v21.l, 0x7fff, v28.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v158, v21 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v188, 0, v22, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v22, v188, v68
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v22, s44, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v23, v22, 16, 1
	v_cmp_o_f32_e64 s5, v22, v22
	v_add3_u32 v23, v22, v23, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s5
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	ds_store_b16 v159, v21
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v21.l, 0x7fff, v65.h, s2
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add_nc_u32_e32 v65, 0, v165
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v159, v21 offset:512
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v71, v74, v71, -v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v22, v71
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v171, 0, v22, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v22, v171, v25
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v22, s44, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v24, v22, 16, 1
	v_cmp_o_f32_e64 s7, v22, v22
	v_add3_u32 v24, v22, v24, 0x7fff
	v_bfe_i32 v22, v182, 0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v23, 15, v22
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v21.h, v22.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v25, -16, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v21.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v23, v23, v25, vcc_lo
	v_bfe_i32 v25, v81, 0, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v23, v23
	v_mov_b16_e32 v24.l, v25.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v25, 15, v24
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v21.h, v24.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v26, -16, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v21.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v21.h, 4, v22.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v25, v25, v26, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v26.l, v21.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e64 v26.h, v244.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v22.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v21.h, 4, v24.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v25, v25
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v28, -16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v22, v26, v28, vcc_lo
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v26.l, v21.h, 15
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v21.h, 0x7fff, v24.h, s7
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v161, v21
	ds_store_b16_d16_hi v161, v21 offset:512
	v_add_nc_u32_e32 v21, 0, v163
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v28, -16, v26
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v24.l
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	ds_load_b128 v[74:77], v21
	scratch_load_b32 v21, off, off offset:416 ; 4-byte Folded Reload
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v22, v22
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v26, v26, v28, vcc_lo
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v28.h, v184.l
	v_mov_b16_e64 v28.l, v244.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v26, v26
	v_mul_f32_e32 v23, v23, v28
	v_mul_f32_e32 v22, v22, v28
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v28.h, v183.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v23, 0, v23, s0
	v_cndmask_b32_e64 v22, 0, v22, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v25, v25, v28
	v_mul_f32_e32 v26, v26, v28
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v28, v23, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	v_cmp_o_f32_e64 s2, v22, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v28, v23, v28, 0x7fff
	v_bfe_u32 v23, v22, 16, 1
	v_add3_u32 v23, v22, v23, 0x7fff
	v_cndmask_b32_e64 v22, 0, v25, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v25, v22, 16, 1
	v_cmp_o_f32_e64 s3, v22, v22
	v_add3_u32 v25, v22, v25, 0x7fff
	v_cndmask_b32_e64 v22, 0, v26, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v23.l, 0x7fff, v25.h, s3
	v_bfe_u32 v26, v22, 16, 1
	v_cmp_o_f32_e64 s5, v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v26, v22, v26, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v28.h, vcc_lo
	v_cndmask_b16 v22.h, 0x7fff, v23.h, s2
	v_cndmask_b16 v23.h, 0x7fff, v26.h, s5
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	ds_load_b128 v[78:81], v21
	scratch_load_b32 v21, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[66:69], v21
	scratch_load_b32 v21, off, off offset:428 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[70:73], v21
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v21, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v182, v223, v21
	v_bfe_i32 v21, v103, 0, 8
	ds_store_2addr_stride64_b32 v182, v192, v27 offset1:1
	v_mov_b16_e32 v24.l, v21.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v25, 15, v24
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v21.l, v24.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v26, -16, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v21.l
	v_bfe_i32 v21, v101, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v21.h, v244.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v25, v25, v26, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v26.l, v21.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v21.l, v26.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v27, 15, v26
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v26.h, v113.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v21.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v21.l, 4, v24.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v28, -16, v27
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v21.l, v21.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v27, v27, v28, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v24.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v28, -16, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v27, v27
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v24, v21, v28, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v21.l, 4, v26.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v26.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v26.l, v244.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v21.l, v21.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v25, v25, v26
	v_mul_f32_e32 v24, v24, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v28, -16, v21
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v26.h, v104.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v25, 0, v25, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v21, v21, v28, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v27, v27, v26
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	ds_store_2addr_stride64_b32 v182, v22, v23 offset0:2 offset1:3
	v_cmp_o_f32_e64 s2, v24, v24
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v21, v21, v26
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v26, v25, 16, 1
	v_cndmask_b32_e64 v21, 0, v21, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v26, v25, v26, 0x7fff
	v_bfe_u32 v25, v24, 16, 1
	v_cmp_o_f32_e64 s5, v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v25, v24, v25, 0x7fff
	v_cndmask_b32_e64 v24, 0, v27, s0
	v_cndmask_b16 v25.l, 0x7fff, v26.h, vcc_lo
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v27, v24, 16, 1
	v_cmp_o_f32_e64 s3, v24, v24
	v_add3_u32 v27, v24, v27, 0x7fff
	v_bfe_u32 v24, v21, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v24, v21, v24, 0x7fff
	v_bfe_i32 v21, v102, 0, 8
	v_cndmask_b16 v24.l, 0x7fff, v27.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s5
	v_mov_b16_e32 v22.l, v21.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v23, 15, v22
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v21.l, v22.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v26, -16, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v21.l
	v_bfe_i32 v21, v99, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v21.h, v244.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v23, v23, v26, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v26.l, v21.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v21.l, v26.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v27, 15, v26
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v26.h, v100.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v21.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v21.l, 4, v22.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v28, -16, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v21.l, v21.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v27, v27, v28, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v22.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v28, -16, v21
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v22, v21, v28, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v21.l, 4, v26.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v26.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v26.l, v244.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v22, v22
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v21.l, v21.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v23, v23, v26
	v_mul_f32_e32 v22, v22, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v28, -16, v21
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v26.h, v98.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v23, 0, v23, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v22, 0, v22, s1
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v21, v21, v28, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v27, v27, v26
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s2, v22, v22
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v21, v21, v26
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v26, v23, 16, 1
	v_cndmask_b32_e64 v21, 0, v21, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v26, v23, v26, 0x7fff
	v_bfe_u32 v23, v22, 16, 1
	v_cmp_o_f32_e64 s5, v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v23, v22, v23, 0x7fff
	v_cndmask_b32_e64 v22, 0, v27, s0
	v_bfe_u32 v27, v22, 16, 1
	v_cmp_o_f32_e64 s3, v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v27, v22, v27, 0x7fff
	v_bfe_u32 v22, v21, 16, 1
	v_add3_u32 v22, v21, v22, 0x7fff
	v_cndmask_b16 v21.l, 0x7fff, v26.h, vcc_lo
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s2
	v_cndmask_b16 v22.l, 0x7fff, v27.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s5
	ds_store_2addr_stride64_b32 v182, v25, v24 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v182, v21, v22 offset0:6 offset1:7
	v_bfe_i32 v21, v97, 0, 8
	v_mov_b16_e32 v22.l, v21.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v23, 15, v22
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v21.l, v22.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v24, -16, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v21.l
	v_bfe_i32 v21, v95, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v21.h, v244.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v23, v23, v24, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v24.l, v21.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v21.l, v24.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v25, 15, v24
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v24.h, v96.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v21.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v21.l, 4, v22.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v26, -16, v25
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v21.l, v21.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v25, v25, v26, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v22.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v26, -16, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v25, v25
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v22, v21, v26, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v21.l, 4, v24.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v24.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v24.l, v244.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v22, v22
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v21.l, v21.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v23, v23, v24
	v_mul_f32_e32 v22, v22, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v26, -16, v21
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v24.h, v94.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v23, 0, v23, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v22, 0, v22, s1
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v21, v21, v26, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v25, v25, v24
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s2, v22, v22
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v21, v21, v24
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v24, v23, 16, 1
	v_cndmask_b32_e64 v21, 0, v21, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v24, v23, v24, 0x7fff
	v_bfe_u32 v23, v22, 16, 1
	v_cmp_o_f32_e64 s5, v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v23, v22, v23, 0x7fff
	v_cndmask_b32_e64 v22, 0, v25, s0
	v_cndmask_b16 v23.l, 0x7fff, v24.h, vcc_lo
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v25, v22, 16, 1
	v_cmp_o_f32_e64 s3, v22, v22
	v_add3_u32 v25, v22, v25, 0x7fff
	v_bfe_u32 v22, v21, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v22, v21, v22, 0x7fff
	v_bfe_i32 v21, v91, 0, 8
	v_mov_b16_e32 v22.l, v21.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v21.l, v22.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v24, 15, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 42 is_stmt 1              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v21.l
	v_bfe_i32 v21, v90, 0, 8
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v26, -16, v24
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v21.h, v244.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v25.l, v21.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v24, v24, v26, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v21.l, v25.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v26, 15, v25
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v21.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v21.l, 4, v22.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v27, -16, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v21.l, v21.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v26, v26, v27, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v22.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v27, -16, v21
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v27, v21, v27, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v21.l, 4, v25.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v25.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v21.l, v21.l, 15
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v28, -16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v21, v21, v28, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v28.h, v93.l
	v_mov_b16_e64 v28.l, v244.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v24, v24, v28
	v_mul_f32_e32 v27, v27, v28
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v28.h, v92.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v24, 0, v24, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v26, v26, v28
	v_mul_f32_e32 v21, v21, v28
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v28, v24, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v21, 0, v21, s1
	v_add3_u32 v28, v24, v28, 0x7fff
	v_cndmask_b32_e64 v24, 0, v27, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s8, v21, v21
	v_cndmask_b16 v22.l, 0x7fff, v28.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v27, v24, 16, 1
	v_cmp_o_f32_e64 s2, v24, v24
	v_add3_u32 v27, v24, v27, 0x7fff
	v_cndmask_b32_e64 v24, 0, v26, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v26, v24, 16, 1
	v_cmp_o_f32_e64 s7, v24, v24
	v_add3_u32 v26, v24, v26, 0x7fff
	v_bfe_u32 v24, v21, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v24, v21, v24, 0x7fff
	v_cndmask_b16 v21.l, 0x7fff, v25.h, s3
	v_cndmask_b16 v21.h, 0x7fff, v22.h, s5
	v_cndmask_b16 v22.h, 0x7fff, v27.h, s2
	v_cndmask_b16 v24.l, 0x7fff, v26.h, s7
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s8
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s7, v188, v188
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_store_2addr_stride64_b32 v182, v23, v21 offset0:8 offset1:9
	v_bfe_i32 v21, v89, 0, 8
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s8, v171, v171
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_store_2addr_stride64_b32 v182, v22, v24 offset0:10 offset1:11
	v_mov_b16_e32 v23.l, v21.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v25, 15, v23
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v21.l, v23.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v26, -16, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v21.l
	v_bfe_i32 v21, v88, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v21.h, v244.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v25, v25, v26, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v26.l, v21.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v21.l, v26.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v27, 15, v26
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v26.h, v87.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v21.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v21.l, 4, v23.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v28, -16, v27
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v21.l, v21.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v27, v27, v28, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v23.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v28, -16, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v27, v27
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v23, v21, v28, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v21.l, 4, v26.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v26.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v26.l, v244.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v21.l, v21.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v25, v25, v26
	v_mul_f32_e32 v23, v23, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v28, -16, v21
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v26.h, v86.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v25, 0, v25, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v23, 0, v23, s1
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v21, v21, v28, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v27, v27, v26
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s2, v23, v23
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v21, v21, v26
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v26, v25, 16, 1
	v_cndmask_b32_e64 v21, 0, v21, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v26, v25, v26, 0x7fff
	v_bfe_u32 v25, v23, 16, 1
	v_cmp_o_f32_e64 s5, v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v25, v23, v25, 0x7fff
	v_cndmask_b32_e64 v23, 0, v27, s0
	v_cndmask_b16 v25.l, 0x7fff, v26.h, vcc_lo
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v27, v23, 16, 1
	v_cmp_o_f32_e64 s3, v23, v23
	v_add3_u32 v27, v23, v27, 0x7fff
	v_bfe_u32 v23, v21, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v23, v21, v23, 0x7fff
	v_bfe_i32 v21, v85, 0, 8
	v_cndmask_b16 v23.l, 0x7fff, v27.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s5
	v_mov_b16_e32 v22.l, v21.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v24, 15, v22
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v21.l, v22.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v26, -16, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v21.l
	v_bfe_i32 v21, v84, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v21.h, v244.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v24, v24, v26, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v26.l, v21.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v21.l, v26.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v27, 15, v26
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v26.h, v83.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v21.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v21.l, 4, v22.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v28, -16, v27
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v21.l, v21.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v27, v27, v28, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v22.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v28, -16, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v27, v27
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v22, v21, v28, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v21.l, 4, v26.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v26.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v26.l, v244.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v22, v22
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v21.l, v21.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v24, v24, v26
	v_mul_f32_e32 v22, v22, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v28, -16, v21
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v26.h, v82.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v24, 0, v24, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v22, 0, v22, s1
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v21, v21, v28, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v27, v27, v26
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v28, v171, 16, 1
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s2, v22, v22
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v28, v171, v28, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v28.l, v244.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v21, v21, v26
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v26, v24, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v21, 0, v21, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v26, v24, v26, 0x7fff
	v_bfe_u32 v24, v22, 16, 1
	v_cmp_o_f32_e64 s5, v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v24, v22, v24, 0x7fff
	v_cndmask_b32_e64 v22, 0, v27, s0
	v_bfe_u32 v27, v22, 16, 1
	v_cmp_o_f32_e64 s3, v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v27, v22, v27, 0x7fff
	v_bfe_u32 v22, v21, 16, 1
	v_add3_u32 v22, v21, v22, 0x7fff
	v_cndmask_b16 v21.l, 0x7fff, v26.h, vcc_lo
	v_cndmask_b16 v21.h, 0x7fff, v24.h, s2
	v_cndmask_b16 v22.l, 0x7fff, v27.h, s3
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v190, v190
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s5
	ds_store_2addr_stride64_b32 v182, v25, v23 offset0:12 offset1:13
	ds_store_2addr_stride64_b32 v182, v21, v22 offset0:14 offset1:15
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v95, v254 offset:512
	ds_load_u16_d16 v96, v254 offset:768
	ds_load_u16_d16 v97, v254 offset:1024
	ds_load_u16_d16 v100, v254 offset:1792
	ds_load_u16_d16 v98, v254 offset:1280
	ds_load_u16_d16 v196, v254 offset:1088
	ds_load_u16_d16 v195, v254 offset:832
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16_hi v196, v254 offset:1216
	ds_load_u16_d16 v94, v254 offset:256
	ds_load_u16_d16 v93, v254
	ds_load_u16_d16 v99, v254 offset:1536
	ds_load_u16_d16_hi v95, v254 offset:640
	ds_load_u16_d16_hi v96, v254 offset:896
	ds_load_u16_d16_hi v97, v254 offset:1152
	ds_load_u16_d16 v197, v254 offset:1344
	ds_load_u16_d16 v85, v254 offset:2816
	ds_load_u16_d16 v86, v254 offset:3072
	ds_load_u16_d16 v92, v254 offset:2624
	ds_load_u16_d16 v91, v254 offset:2368
	ds_load_u16_d16 v82, v254 offset:2048
	ds_load_u16_d16 v83, v254 offset:2304
	ds_load_u16_d16 v84, v254 offset:2560
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v92, v254 offset:2752
	ds_load_u16_d16_hi v99, v254 offset:1664
	ds_load_u16_d16_hi v100, v254 offset:1920
	ds_load_u16_d16_hi v98, v254 offset:1408
	ds_load_u16_d16 v192, v254 offset:64
	ds_load_u16_d16_hi v94, v254 offset:384
	ds_load_u16_d16 v194, v254 offset:576
	ds_load_u16_d16 v193, v254 offset:320
	ds_load_u16_d16_hi v93, v254 offset:128
	ds_load_u16_d16 v198, v254 offset:1600
	ds_load_u16_d16 v90, v254 offset:2112
	ds_load_u16_d16 v199, v254 offset:1856
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v21, v190, 16, 1
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v192, v254 offset:192
	ds_load_u16_d16_hi v195, v254 offset:960
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v194, v254 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v193, v254 offset:448
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v21, v190, v21, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(7)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[93:100], v[74:81], v[57:64]
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_load_u16_d16 v93, v254 offset:2880
	ds_load_u16_d16 v87, v254 offset:3328
	ds_load_u16_d16 v94, v254 offset:3136
	ds_load_u16_d16_hi v91, v254 offset:2496
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v90, v254 offset:2240
	ds_load_u16_d16 v88, v254 offset:3584
	ds_load_u16_d16 v89, v254 offset:3840
	ds_load_u16_d16_hi v86, v254 offset:3200
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v93, v254 offset:3008
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v87, v254 offset:3456
	ds_load_u16_d16 v97, v254 offset:3904
	ds_load_u16_d16 v96, v254 offset:3648
	ds_load_u16_d16 v95, v254 offset:3392
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v94, v254 offset:3264
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v244.h, 0x7fff, v21.h, vcc_lo
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_load_u16_d16_hi v197, v254 offset:1472
	ds_load_u16_d16_hi v198, v254 offset:1728
	ds_load_u16_d16_hi v199, v254 offset:1984
	ds_load_u16_d16_hi v85, v254 offset:2944
	ds_load_u16_d16_hi v84, v254 offset:2688
	ds_load_u16_d16_hi v83, v254 offset:2432
	ds_load_u16_d16_hi v82, v254 offset:2176
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v23, v185, 16, 1
	v_cmp_o_f32_e64 s2, v191, v191
	v_bfe_u32 v24, v186, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v21, v190, v244
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v185, v185
	v_add3_u32 v23, v185, v23, 0x7fff
	v_bfe_u32 v25, v189, 16, 1
	v_bfe_u32 v26, v187, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v22, v21, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v27, v188, 16, 1
	v_add3_u32 v24, v186, v24, 0x7fff
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s3
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v22, v21, v22, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v21, v191, 16, 1
	v_add3_u32 v25, v189, v25, 0x7fff
	v_cmp_o_f32_e64 s3, v189, v189
	v_add3_u32 v26, v187, v26, 0x7fff
	v_cmp_o_f32_e64 s5, v187, v187
	v_add3_u32 v21, v191, v21, 0x7fff
	v_add3_u32 v27, v188, v27, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v21.l, 0x7fff, v22.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add_nc_u32_e32 v22, 0, v164
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s3
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s2
	v_cmp_o_f32_e64 s2, v186, v186
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[192:199], v[74:81], v[49:56]
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_load_u16_d16_hi v88, v254 offset:3712
	ds_load_u16_d16_hi v89, v254 offset:3968
	ds_load_u16_d16_hi v97, v254 offset:4032
	ds_load_u16_d16_hi v96, v254 offset:3776
	ds_load_u16_d16_hi v95, v254 offset:3520
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s5
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s7
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16_d16_hi v65, v244
	ds_store_b16_d16_hi v1, v21
	ds_store_b16_d16_hi v2, v23
	ds_store_b16_d16_hi v3, v24
	ds_store_b16_d16_hi v5, v25
	ds_store_b16_d16_hi v7, v26
	ds_store_b16_d16_hi v8, v27
	ds_store_b16_d16_hi v9, v28
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[77:78], v11
	ds_load_b64 v[79:80], v17
	ds_load_b64 v[198:199], v13
	ds_load_b64 v[192:193], v14
	ds_load_b64 v[200:201], v22
	ds_load_b64 v[74:75], v19
	ds_load_b64 v[194:195], v20
	ds_load_b64 v[196:197], v15
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v65, v21
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e64 v21.l, v244.l
	v_mov_b16_e64 v23.l, v244.l
	v_mov_b16_e64 v24.l, v244.l
	v_mov_b16_e64 v25.l, v244.l
	v_mov_b16_e64 v26.l, v244.l
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v21, v191, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_sub_f32 v23, v185, v23 :: v_dual_sub_f32 v24, v186, v24
	v_dual_sub_f32 v25, v189, v25 :: v_dual_sub_f32 v26, v187, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v65, v21, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_cmp_o_f32_e64 s2, v23, v23
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v27.l, v244.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v24, v24
	v_add3_u32 v65, v21, v65, 0x7fff
	v_bfe_u32 v21, v23, 16, 1
	v_cmp_o_f32_e64 s5, v25, v25
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v27, v188, v27 :: v_dual_sub_f32 v28, v171, v28
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s7, v26, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v21, v23, v21, 0x7fff
	v_bfe_u32 v23, v24, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v65.h, vcc_lo
	v_cmp_o_f32_e64 s8, v27, v27
	v_cmp_o_f32_e64 s9, v28, v28
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v113.h, v195.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v23, v24, v23, 0x7fff
	v_bfe_u32 v24, v25, 16, 1
	ds_store_b16 v1, v21
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s2
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v195.l, v75.h
	v_mov_b16_e32 v108.h, v79.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v24, v25, v24, 0x7fff
	v_bfe_u32 v25, v26, 16, 1
	ds_store_b16 v2, v21
	v_cndmask_b16 v21.l, 0x7fff, v23.h, s3
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v81, v195
	v_mov_b16_e64 v79.l, v196.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v25, v26, v25, 0x7fff
	v_bfe_u32 v26, v27, 16, 1
	ds_store_b16 v3, v21
	v_cndmask_b16 v21.l, 0x7fff, v24.h, s5
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v106.h, v77.l
	v_mov_b16_e64 v77.l, v200.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v26, v27, v26, 0x7fff
	v_bfe_u32 v27, v28, 16, 1
	ds_store_b16 v5, v21
	v_cndmask_b16 v21.l, 0x7fff, v25.h, s7
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v107.h, v192.l
	v_mov_b16_e64 v111.h, v193.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v27, v28, v27, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v192.l, v198.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v7, v21
	v_cndmask_b16 v21.l, 0x7fff, v26.h, s8
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v193.l, v199.h
	v_mov_b16_e64 v109.h, v194.l
	v_mov_b16_e64 v194.l, v74.h
	v_mov_b16_e32 v113.l, v75.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v8, v21
	v_cndmask_b16 v21.l, 0x7fff, v27.h, s9
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_dual_mov_b32 v75, v192 :: v_dual_mov_b32 v76, v79
	v_mov_b32_e32 v79, v193
	v_mov_b16_e32 v112.h, v80.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v9, v21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[103:104], v17
	ds_load_b64 v[101:102], v11
	ds_load_b64 v[98:99], v13
	ds_load_b64 v[182:183], v14
	ds_load_b64 v[188:189], v22
	ds_load_b64 v[186:187], v19
	ds_load_b64 v[184:185], v20
	ds_load_b64 v[190:191], v15
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v223, v105
	ds_store_b16 v223, v106 offset:256
	ds_store_b16 v223, v107 offset:512
	ds_store_b16 v223, v108 offset:768
	ds_store_b16 v223, v109 offset:1024
	ds_store_b16 v223, v110 offset:1280
	ds_store_b16 v223, v111 offset:1536
	ds_store_b16 v223, v112 offset:1792
	ds_store_b16 v223, v146 offset:2048
	ds_store_b16 v223, v147 offset:2304
	ds_store_b16 v223, v148 offset:2560
	ds_store_b16 v223, v149 offset:2816
	ds_store_b16 v223, v150 offset:3072
	ds_store_b16 v223, v151 offset:3328
	ds_store_b16 v223, v152 offset:3584
	ds_store_b16 v223, v153 offset:3840
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v108.l, v196.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_store_b16 v223, v250 offset:128
	ds_store_b16 v223, v251 offset:384
	ds_store_b16 v223, v248 offset:640
	ds_store_b16 v223, v245 offset:896
	ds_store_b16 v223, v220 offset:1152
	ds_store_b16 v223, v252 offset:1408
	ds_store_b16 v223, v253 offset:1664
	ds_store_b16 v223, v249 offset:1920
	ds_store_b16 v223, v219 offset:2176
	ds_store_b16 v223, v237 offset:2432
	ds_store_b16 v223, v235 offset:2688
	ds_store_b16 v223, v232 offset:2944
	ds_store_b16 v223, v170 offset:3200
	ds_store_b16 v223, v238 offset:3456
	ds_store_b16 v223, v236 offset:3712
	ds_store_b16 v223, v233 offset:3968
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v152, v254 offset:1536
	ds_load_u16_d16 v151, v254 offset:1280
	ds_load_u16_d16 v196, v254 offset:1088
	ds_load_u16_d16 v195, v254 offset:832
	ds_load_u16_d16 v148, v254 offset:512
	ds_load_u16_d16 v149, v254 offset:768
	ds_load_u16_d16 v150, v254 offset:1024
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v196, v254 offset:1216
	ds_load_u16_d16 v147, v254 offset:256
	ds_load_u16_d16 v146, v254
	ds_load_u16_d16 v208, v254 offset:2624
	ds_load_u16_d16 v207, v254 offset:2368
	ds_load_u16_d16 v233, v254 offset:2304
	ds_load_u16_d16 v234, v254 offset:2560
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v112.l, v197.l
	v_mov_b16_e32 v109.l, v74.l
	v_dual_mov_b32 v74, v77 :: v_dual_mov_b32 v77, v194
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(3)
	ds_load_u16_d16_hi v208, v254 offset:2752
	ds_load_u16_d16 v153, v254 offset:1792
	ds_load_u16_d16 v232, v254 offset:2048
	ds_load_u16_d16 v236, v254 offset:3072
	ds_load_u16_d16 v235, v254 offset:2816
	ds_load_u16_d16 v237, v254 offset:3328
	ds_load_u16_d16 v238, v254 offset:3584
	ds_load_u16_d16 v239, v254 offset:3840
	ds_load_u16_d16 v197, v254 offset:1344
	ds_load_u16_d16_hi v152, v254 offset:1664
	ds_load_u16_d16_hi v150, v254 offset:1152
	ds_load_u16_d16_hi v148, v254 offset:640
	ds_load_u16_d16_hi v149, v254 offset:896
	ds_load_u16_d16_hi v151, v254 offset:1408
	ds_load_u16_d16 v192, v254 offset:64
	ds_load_u16_d16_hi v147, v254 offset:384
	ds_load_u16_d16_hi v146, v254 offset:128
	ds_load_u16_d16 v194, v254 offset:576
	ds_load_u16_d16 v193, v254 offset:320
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v107.l, v198.l
	v_mov_b16_e64 v111.l, v199.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v153, v254 offset:1920
	ds_load_u16_d16 v206, v254 offset:2112
	ds_load_u16_d16 v199, v254 offset:1856
	ds_load_u16_d16 v198, v254 offset:1600
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v232, v254 offset:2176
	ds_load_u16_d16_hi v233, v254 offset:2432
	ds_load_u16_d16_hi v234, v254 offset:2688
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v235, v254 offset:2944
	ds_load_u16_d16 v209, v254 offset:2880
	ds_load_u16_d16_hi v236, v254 offset:3200
	ds_load_u16_d16 v210, v254 offset:3136
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v237, v254 offset:3456
	ds_load_u16_d16 v213, v254 offset:3904
	ds_load_u16_d16 v212, v254 offset:3648
	ds_load_u16_d16 v211, v254 offset:3392
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v238, v254 offset:3712
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v239, v254 offset:3968
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v192, v254 offset:192
	ds_load_u16_d16_hi v195, v254 offset:960
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v194, v254 offset:704
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v193, v254 offset:448
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v80.l, v197.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_u16_d16_hi v197, v254 offset:1472
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v198, v254 offset:1728
	ds_load_u16_d16_hi v207, v254 offset:2496
	ds_load_u16_d16_hi v206, v254 offset:2240
	ds_load_u16_d16_hi v199, v254 offset:1984
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v209, v254 offset:3008
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v210, v254 offset:3264
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v213, v254 offset:4032
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v212, v254 offset:3776
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v211, v254 offset:3520
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v106.l, v200.l
	v_mov_b16_e64 v110.l, v201.l
	v_mov_b16_e32 v110.h, v78.l
	v_mov_b16_e64 v78.l, v201.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v21.l, v188.l
	v_mov_b16_e32 v21.h, v101.l
	v_mov_b16_e32 v22.l, v98.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[146:153], v[106:113], v[41:48]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v22.h, v182.l
	v_mov_b16_e64 v23.l, v190.l
	v_mov_b16_e32 v23.h, v103.l
	v_mov_b16_e64 v24.l, v186.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(14)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[232:239], v[74:81], v[41:48]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v24.h, v184.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[192:199], v[106:113], v[33:40]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v25.l, v189.l
	v_mov_b16_e32 v25.h, v102.l
	v_mov_b16_e32 v26.l, v99.l
	v_mov_b16_e64 v26.h, v183.l
	v_mov_b16_e64 v27.l, v191.l
	v_mov_b16_e32 v27.h, v104.l
	v_mov_b16_e64 v28.l, v187.l
	v_mov_b16_e64 v28.h, v185.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[206:213], v[74:81], v[33:40]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v101.l, v188.h
	v_mov_b16_e64 v182.l, v98.h
	v_mov_b16_e64 v183.l, v99.h
	v_wmma_f32_16x16x16_bf16 v[41:48], v[146:153], v[21:28], v[41:48]
	v_wmma_f32_16x16x16_bf16 v[33:40], v[192:199], v[21:28], v[33:40]
	v_mov_b16_e64 v103.l, v190.h
	v_mov_b16_e64 v184.l, v186.h
	v_mov_b16_e64 v185.l, v187.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v24, 0xffff0000, v142
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v102.l, v189.h
	v_mov_b16_e64 v104.l, v191.h
	v_dual_mov_b32 v99, v182 :: v_dual_mov_b32 v100, v103
	v_dual_mov_b32 v103, v183 :: v_dual_mov_b32 v98, v101
	v_mov_b32_e32 v101, v184
	v_dual_mov_b32 v105, v185 :: v_dual_sub_f32 v24, v24, v24
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v142.l
	v_and_b32_e32 v25, 0xffff0000, v143
	v_and_b32_e32 v26, 0xffff0000, v144
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[232:239], v[98:105], v[41:48]
	v_wmma_f32_16x16x16_bf16 v[33:40], v[206:213], v[98:105], v[33:40]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v104.l, v24.h
	v_mov_b16_e64 v104.h, v244.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v21, v244, v244
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v143.l
	v_and_b32_e32 v27, 0xffff0000, v145
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v104, 1, v104
	v_cmp_o_f32_e64 s2, v21, v21
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v100, 0xffff0000, v138
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v22, v244, v244
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v144.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v104, v24, v104, 0x7fff
	v_mov_b16_e32 v24.l, v21.h
	v_mov_b16_e64 v24.h, v244.l
	v_cmp_o_f32_e64 s5, v22, v22
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v145.l
	v_and_b32_e32 v101, 0xffff0000, v139
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v24, 1, v24
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v102, 0xffff0000, v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v28, v244, v244 :: v_dual_and_b32 v103, 0xffff0000, v141
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v138.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v24, v21, v24, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v21, v25, v25
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v25.h, v244.l
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[57:64], v[82:89], v[66:73], v[57:64]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v244, v244
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v139.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v25.l, v21.h
	v_cmp_o_f32_e64 s3, v21, v21
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[49:56], v[90:97], v[66:73], v[49:56]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v70, 0xffff0000, v116
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v98, v244, v244 :: v_dual_and_b32 v25, 1, v25
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v140.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v66.h, v244.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v69, 0xffff0000, v115
	v_and_b32_e32 v71, 0xffff0000, v117
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v25, v21, v25, 0x7fff
	v_mov_b16_e32 v21.l, v22.h
	v_mov_b16_e64 v21.h, v244.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v99, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v141.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v72.h, v244.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v105, v22, v21, 0x7fff
	v_cndmask_b16 v21.l, 0x7fff, v24.h, s2
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v24, v26, v26
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v22.h, 0x7fff, v25.h, s3
	v_mov_b16_e64 v25.h, v244.l
	v_cndmask_b16 v21.h, 0x7fff, v104.h, vcc_lo
	v_cmp_o_f32_e64 s2, v23, v23
	v_mov_b16_e32 v25.l, v24.h
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_mov_b16_e64 v26.h, v244.l
	v_cndmask_b16 v22.l, 0x7fff, v105.h, s5
	v_cmp_o_f32_e64 s5, v28, v28
	v_and_b32_e32 v25, 1, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v25, v24, v25, 0x7fff
	v_mov_b16_e32 v24.l, v23.h
	v_mov_b16_e64 v24.h, v244.l
	v_and_b32_e32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v24, v23, v24, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v27, v27
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v26.l, v23.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v23, v23
	v_and_b32_e32 v26, 1, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v26, v23, v26, 0x7fff
	v_mov_b16_e32 v23.l, v28.h
	v_mov_b16_e64 v23.h, v244.l
	v_mov_b16_e32 v26.l, v65.h
	v_and_b32_e32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v27, v28, v23, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v100, v100
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v28.h, v244.l
	v_mov_b16_e64 v100.h, v244.l
	v_cndmask_b16 v24.l, 0x7fff, v27.h, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v28.l, v23.h
	v_cmp_o_f32_e64 s7, v23, v23
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v27, v101, v101 :: v_dual_and_b32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v28, v23, v28, 0x7fff
	v_cndmask_b16 v23.h, 0x7fff, v25.h, vcc_lo
	v_mov_b16_e32 v28.l, v27.h
	v_cndmask_b16 v23.l, 0x7fff, v24.h, s2
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s3
	v_cndmask_b16 v25.h, 0x7fff, v28.h, s7
	v_mov_b16_e64 v28.h, v244.l
	v_mov_b16_e64 v26.h, v244.l
	v_cmp_o_f32_e64 s2, v27, v27
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	v_cmp_o_f32_e64 s3, v98, v98
	v_and_b32_e32 v28, 1, v28
	v_and_b32_e32 v26, 1, v26
	v_cmp_o_f32_e64 s7, v99, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_add3_u32 v28, v27, v28, 0x7fff
	v_mov_b16_e32 v27.l, v98.h
	v_mov_b16_e64 v27.h, v244.l
	v_add3_u32 v26, v65, v26, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v102, v102
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v27, 1, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v25.l, 0x7fff, v26.h, vcc_lo
	v_cmp_o_f32_e64 s5, v65, v65
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v28, v103, v103
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v27, v98, v27, 0x7fff
	v_mov_b16_e32 v98.l, v65.h
	v_mov_b16_e64 v98.h, v244.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_cndmask_b16 v26.l, 0x7fff, v27.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v98, 1, v98
	v_add3_u32 v98, v65, v98, 0x7fff
	v_mov_b16_e32 v65.l, v99.h
	v_mov_b16_e64 v65.h, v244.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v27.h, 0x7fff, v98.h, s5
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v65, v99, v65, 0x7fff
	v_mov_b16_e32 v99.l, v28.h
	v_mov_b16_e64 v99.h, v244.l
	v_cndmask_b16 v27.l, 0x7fff, v65.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v99, 1, v99
	v_add3_u32 v99, v28, v99, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v28, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v126.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v100.l, v28.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v127.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v28, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v100, 1, v100
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v98, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v128.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v100, v28, v100, 0x7fff
	v_cndmask_b16 v28.h, 0x7fff, v99.h, vcc_lo
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v99, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v129.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v28.l, 0x7fff, v100.h, s2
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v100, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v122.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[21:28], v[106:113], v[41:48]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v24, 0xffff0000, v134
	v_and_b32_e32 v26, 0xffff0000, v136
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v136.h, v244.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v101, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v123.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v24, v24, v24 :: v_dual_and_b32 v25, 0xffff0000, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_sub_f32 v102, v244, v244 :: v_dual_and_b32 v27, 0xffff0000, v137
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v124.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v103, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v125.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v104, v244, v244
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v134.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v21, v244, v244
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v135.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v22, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v136.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v136.l, v24.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v244, v244
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v136, 1, v136
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v137.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s5, v23, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v136, v24, v136, 0x7fff
	v_mov_b16_e32 v24.l, v21.h
	v_mov_b16_e64 v24.h, v244.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v28, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v130.l
	v_and_b32_e32 v130, 0xffff0000, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v24, 1, v24
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v105, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v131.l
	v_and_b32_e32 v131, 0xffff0000, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v24, v21, v24, 0x7fff
	v_cndmask_b16 v21.h, 0x7fff, v136.h, vcc_lo
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v134, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v132.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v21.l, 0x7fff, v24.h, s2
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v24, v25, v25
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v25.h, v244.l
	v_cmp_o_f32_e64 s2, v22, v22
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v135, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v133.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v25.l, v24.h
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v133, 0xffff0000, v133
	v_and_b32_e32 v132, 0xffff0000, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v25, 1, v25
	v_add3_u32 v25, v24, v25, 0x7fff
	v_mov_b16_e32 v24.l, v22.h
	v_mov_b16_e64 v24.h, v244.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v24, 1, v24
	v_add3_u32 v24, v22, v24, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v22, v26, v26
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v26.h, v244.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v26.l, v22.h
	v_cmp_o_f32_e64 s3, v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v26, 1, v26
	v_add3_u32 v26, v22, v26, 0x7fff
	v_mov_b16_e32 v22.l, v23.h
	v_mov_b16_e64 v22.h, v244.l
	v_mov_b16_e32 v26.l, v105.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v22, 1, v22
	v_add3_u32 v136, v23, v22, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v22, v27, v27
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v23.h, v244.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v23.l, v22.h
	v_cmp_o_f32_e64 s7, v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v27, v22, v23, 0x7fff
	v_mov_b16_e32 v23.l, v28.h
	v_mov_b16_e64 v23.h, v244.l
	v_cndmask_b16 v22.h, 0x7fff, v25.h, vcc_lo
	v_cndmask_b16 v22.l, 0x7fff, v24.h, s2
	v_mov_b16_e64 v24.h, v244.l
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_and_b32_e32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v25, v28, v23, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v23, v130, v130 :: v_dual_sub_f32 v130, v133, v133
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v24.l, v23.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v23, v23
	v_and_b32_e32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v28, v23, v24, 0x7fff
	v_cndmask_b16 v24.h, 0x7fff, v27.h, s7
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v131, v131
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v23.h, 0x7fff, v26.h, s3
	v_cndmask_b16 v24.l, 0x7fff, v25.h, vcc_lo
	v_cndmask_b16 v25.h, 0x7fff, v28.h, s2
	v_mov_b16_e64 v26.h, v244.l
	v_mov_b16_e32 v28.l, v27.h
	v_mov_b16_e64 v28.h, v244.l
	v_cmp_o_f32_e32 vcc_lo, v105, v105
	v_cmp_o_f32_e64 s2, v27, v27
	v_and_b32_e32 v26, 1, v26
	v_mov_b16_e64 v131.l, v130.h
	v_and_b32_e32 v28, 1, v28
	v_mov_b16_e64 v131.h, v244.l
	v_cndmask_b16 v23.l, 0x7fff, v136.h, s5
	v_add3_u32 v26, v105, v26, 0x7fff
	v_mov_b16_e64 v105.h, v244.l
	v_add3_u32 v28, v27, v28, 0x7fff
	v_and_b32_e32 v131, 1, v131
	v_cmp_o_f32_e64 s5, v130, v130
	v_cndmask_b16 v25.l, 0x7fff, v26.h, vcc_lo
	v_mov_b16_e64 v27.l, v134.h
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v28, v132, v132
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v131, v130, v131, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v130, v244, v244
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v27.h, v244.l
	v_mov_b16_e64 v132.h, v244.l
	v_mov_b16_e32 v105.l, v28.h
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_mov_b16_e64 v132.l, v130.h
	v_and_b32_e32 v27, 1, v27
	v_cmp_o_f32_e64 s3, v134, v134
	v_and_b32_e32 v105, 1, v105
	v_cmp_o_f32_e64 s2, v135, v135
	v_and_b32_e32 v132, 1, v132
	v_add3_u32 v27, v134, v27, 0x7fff
	v_cmp_o_f32_e64 s7, v130, v130
	v_add3_u32 v105, v28, v105, 0x7fff
	v_mov_b16_e64 v28.l, v135.h
	v_mov_b16_e64 v28.h, v244.l
	v_add3_u32 v132, v130, v132, 0x7fff
	v_cndmask_b16 v26.l, 0x7fff, v27.h, s3
	v_cndmask_b16 v27.h, 0x7fff, v105.h, vcc_lo
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v118.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v28, v135, v28, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v132.h, s7
	v_cmp_o_f32_e64 s7, v100, v100
	v_cndmask_b16 v27.l, 0x7fff, v28.h, s2
	v_cndmask_b16 v28.h, 0x7fff, v131.h, s5
	v_cmp_o_f32_e64 s2, v65, v65
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[21:28], v[106:113], v[33:40]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v21, 0xffff0000, v126
	v_and_b32_e32 v22, 0xffff0000, v127
	v_and_b32_e32 v23, 0xffff0000, v128
	v_and_b32_e32 v24, 0xffff0000, v129
	v_and_b32_e32 v25, 0xffff0000, v122
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v21, v21, v21 :: v_dual_and_b32 v26, 0xffff0000, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_sub_f32 v23, v23, v23 :: v_dual_and_b32 v28, 0xffff0000, v125
	v_sub_f32_e32 v25, v25, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v66.l, v21.h
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v27, 0xffff0000, v124
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v28, v28, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v66, v21, v66, 0x7fff
	v_mov_b16_e32 v21.l, v65.h
	v_mov_b16_e64 v21.h, v244.l
	v_mov_b16_e32 v66.l, v23.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v67, v65, v21, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v21, v22, v22
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v22.h, v244.l
	v_mov_b16_e32 v65.l, v98.h
	v_mov_b16_e64 v65.h, v244.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v22.l, v21.h
	v_cmp_o_f32_e64 s3, v21, v21
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v22, 1, v22
	v_add3_u32 v65, v98, v65, 0x7fff
	v_mov_b16_e32 v65.l, v25.h
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v22, v21, v22, 0x7fff
	v_cndmask_b16 v21.h, 0x7fff, v66.h, vcc_lo
	v_mov_b16_e64 v66.h, v244.l
	v_cndmask_b16 v21.l, 0x7fff, v67.h, s2
	v_cmp_o_f32_e64 s2, v23, v23
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s3
	v_and_b32_e32 v66, 1, v66
	v_cmp_o_f32_e64 s3, v99, v99
	v_cndmask_b16 v22.l, 0x7fff, v65.h, vcc_lo
	v_mov_b16_e64 v65.h, v244.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_add3_u32 v66, v23, v66, 0x7fff
	v_mov_b16_e32 v23.l, v99.h
	v_mov_b16_e64 v23.h, v244.l
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_and_b32_e32 v65, 1, v65
	v_and_b32_e32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v65, v25, v65, 0x7fff
	v_mov_b16_e32 v25.l, v101.h
	v_mov_b16_e64 v25.h, v244.l
	v_add3_u32 v67, v99, v23, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v24, v24
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v24.h, v244.l
	v_mov_b16_e32 v65.l, v103.h
	v_and_b32_e32 v25, 1, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v24.l, v23.h
	v_cmp_o_f32_e64 s5, v23, v23
	v_and_b32_e32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v24, v23, v24, 0x7fff
	v_mov_b16_e32 v23.l, v100.h
	v_mov_b16_e64 v23.h, v244.l
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s5
	v_cmp_o_f32_e64 s5, v102, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v68, v100, v23, 0x7fff
	v_cndmask_b16 v23.h, 0x7fff, v66.h, s2
	v_add3_u32 v66, v101, v25, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v25, v26, v26
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v26.h, v244.l
	v_cndmask_b16 v23.l, 0x7fff, v67.h, s3
	v_mov_b16_e32 v66.l, v28.h
	v_cmp_o_f32_e64 s2, v101, v101
	v_mov_b16_e32 v26.l, v25.h
	v_cmp_o_f32_e64 s3, v25, v25
	v_cndmask_b16 v24.l, 0x7fff, v68.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v26, 1, v26
	v_add3_u32 v26, v25, v26, 0x7fff
	v_mov_b16_e32 v25.l, v102.h
	v_mov_b16_e64 v25.h, v244.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s3
	v_cmp_o_f32_e64 s3, v104, v104
	v_and_b32_e32 v25, 1, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v67, v102, v25, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v25, v27, v27
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v27.h, v244.l
	v_cndmask_b16 v26.l, 0x7fff, v67.h, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v27.l, v25.h
	v_cmp_o_f32_e64 s7, v25, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v27, 1, v27
	v_add3_u32 v27, v25, v27, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v66.h, s2
	v_mov_b16_e64 v66.h, v244.l
	v_cndmask_b16 v25.h, 0x7fff, v65.h, vcc_lo
	v_mov_b16_e64 v65.h, v244.l
	v_cmp_o_f32_e64 s2, v28, v28
	v_cmp_o_f32_e32 vcc_lo, v103, v103
	v_and_b32_e32 v66, 1, v66
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s7
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v66, v28, v66, 0x7fff
	v_mov_b16_e32 v28.l, v104.h
	v_mov_b16_e64 v28.h, v244.l
	v_add3_u32 v65, v103, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v28, 1, v28
	v_cndmask_b16 v27.l, 0x7fff, v65.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v68, v104, v28, 0x7fff
	v_cndmask_b16 v28.h, 0x7fff, v66.h, s2
	v_cndmask_b16 v28.l, 0x7fff, v68.h, s3
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v68, 0xffff0000, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[21:28], v[74:81], v[41:48]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v21, v244, v244 :: v_dual_and_b32 v24, 0xffff0000, v118
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v25, 0xffff0000, v119
	v_and_b32_e32 v26, 0xffff0000, v120
	v_mov_b16_e64 v244.h, v119.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v21, v21
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v24, v24, v24 :: v_dual_and_b32 v27, 0xffff0000, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_sub_f32_e32 v22, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v120.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v72.l, v24.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_cmp_o_f32_e64 s5, v22, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v244, v244
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v72, 1, v72
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v121.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v23, v23
	v_add3_u32 v72, v24, v72, 0x7fff
	v_mov_b16_e32 v24.l, v21.h
	v_mov_b16_e64 v24.h, v244.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v28, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v114.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v24, 1, v24
	v_add3_u32 v24, v21, v24, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v21, v25, v25
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v25.h, v244.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v25.l, v21.h
	v_cmp_o_f32_e64 s3, v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v25, 1, v25
	v_add3_u32 v25, v21, v25, 0x7fff
	v_mov_b16_e32 v21.l, v22.h
	v_mov_b16_e64 v21.h, v244.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v73, v22, v21, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v21, v26, v26
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v22.h, v244.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v22.l, v21.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v244, v244
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s7, v21, v21
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v115.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v22, 1, v22
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v66, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v116.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v26, v21, v22, 0x7fff
	v_mov_b16_e32 v21.l, v23.h
	v_mov_b16_e64 v21.h, v244.l
	v_cndmask_b16 v22.h, 0x7fff, v25.h, s3
	v_mov_b16_e64 v25.h, v244.l
	v_cndmask_b16 v22.l, 0x7fff, v73.h, s5
	v_cmp_o_f32_e64 s5, v65, v65
	v_and_b32_e32 v21, 1, v21
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v67, v244, v244
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v244.h, v117.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v82, v23, v21, 0x7fff
	v_cndmask_b16 v21.l, 0x7fff, v24.h, s2
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v24, v27, v27
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v21.h, 0x7fff, v72.h, vcc_lo
	v_cndmask_b16 v23.h, 0x7fff, v26.h, s7
	v_mov_b16_e64 v27.h, v244.l
	v_cmp_o_f32_e64 s2, v28, v28
	v_mov_b16_e32 v25.l, v24.h
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_cndmask_b16 v23.l, 0x7fff, v82.h, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v25, 1, v25
	v_add3_u32 v25, v24, v25, 0x7fff
	v_mov_b16_e32 v24.l, v28.h
	v_mov_b16_e64 v24.h, v244.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v24, 1, v24
	v_add3_u32 v26, v28, v24, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v24, v68, v68
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v68.h, v244.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v27.l, v24.h
	v_cmp_o_f32_e64 s3, v24, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v27, 1, v27
	v_add3_u32 v27, v24, v27, 0x7fff
	v_mov_b16_e32 v24.l, v65.h
	v_mov_b16_e64 v24.h, v244.l
	v_mov_b16_e32 v27.l, v66.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v24, 1, v24
	v_add3_u32 v28, v65, v24, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v24, v69, v69
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v65.h, v244.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v25.l, 0x7fff, v28.h, s5
	v_mov_b16_e32 v65.l, v24.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s7, v24, v24
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v28, v70, v70 :: v_dual_and_b32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v65, v24, v65, 0x7fff
	v_cndmask_b16 v24.l, 0x7fff, v26.h, s2
	v_mov_b16_e32 v65.l, v28.h
	v_cndmask_b16 v24.h, 0x7fff, v25.h, vcc_lo
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s3
	v_cndmask_b16 v26.h, 0x7fff, v65.h, s7
	v_mov_b16_e64 v65.h, v244.l
	v_mov_b16_e64 v27.h, v244.l
	v_cmp_o_f32_e64 s2, v28, v28
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	v_cmp_o_f32_e64 s3, v67, v67
	v_and_b32_e32 v65, 1, v65
	v_and_b32_e32 v27, 1, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v65, v28, v65, 0x7fff
	v_mov_b16_e32 v28.l, v67.h
	v_mov_b16_e64 v28.h, v244.l
	v_add3_u32 v27, v66, v27, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v66, v71, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v28, 1, v28
	v_cndmask_b16 v26.l, 0x7fff, v27.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s5, v66, v66
	v_cndmask_b16 v27.h, 0x7fff, v65.h, s2
	v_add3_u32 v28, v67, v28, 0x7fff
	v_mov_b16_e64 v67.h, v244.l
	v_mov_b16_e32 v67.l, v66.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v27.l, 0x7fff, v28.h, s3
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v67, v66, v67, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v66, v244, v244
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v28.h, 0x7fff, v67.h, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v68.l, v66.h
	v_cmp_o_f32_e64 s7, v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v68, 1, v68
	v_add3_u32 v68, v66, v68, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v28.l, 0x7fff, v68.h, s7
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[21:28], v[74:81], v[33:40]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_clause 0xc                            ; 60-byte Folded Reload
	scratch_load_b32 v22, off, off
	scratch_load_b32 v23, off, off offset:4
	scratch_load_b32 v24, off, off offset:8
	scratch_load_b32 v25, off, off offset:12
	scratch_load_b32 v26, off, off offset:16
	scratch_load_b32 v27, off, off offset:20
	scratch_load_b32 v28, off, off offset:24
	scratch_load_b32 v65, off, off offset:28
	scratch_load_b32 v75, off, off offset:32
	scratch_load_b32 v76, off, off offset:36
	scratch_load_b64 v[77:78], off, off offset:40
	scratch_load_b64 v[79:80], off, off offset:52
	scratch_load_b32 v78, off, off offset:48
	s_add_i32 s30, s72, s26
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_dual_mov_b32 v207, v205 :: v_dual_add_nc_u32 v114, s30, v243
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_mul_i32 s31, s30, s34
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v212, v205
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v66, s30, v29, 1
	v_add_lshl_u32 v67, s30, v30, 1
	v_add_lshl_u32 v68, s30, v32, 1
	v_add_lshl_u32 v69, s30, v155, 1
	v_add_lshl_u32 v70, s30, v0, 1
	v_add_lshl_u32 v71, s30, v246, 1
	v_add_lshl_u32 v72, s30, v241, 1
	v_add_lshl_u32 v73, s30, v242, 1
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v206, v205
	v_mov_b32_e32 v208, v205
	v_mov_b32_e32 v210, v205
	v_mov_b32_e32 v211, v205
	v_mov_b32_e32 v209, v205
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(12)
	v_or_b32_e32 v21, s72, v22
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v22, s30, v22, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s2, s38, v21
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(11)
	v_or_b32_e32 v21, s72, v23
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v23, s30, v23, 1
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v75, s31, v75
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v76, s31, v76
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v77, s31, v77
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s3, s38, v21
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v21, s72, v24
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v78, s31, v78
	v_add_nc_u32_e32 v79, s31, v79
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v24, s30, v24, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s7, s38, v21
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v21, s72, v25
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v25, s30, v25, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v24, 0x80000000, v24, s7
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s8, s38, v21
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v21, s72, v26
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v26, s30, v26, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v25, 0x80000000, v25, s8
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s9, s38, v21
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v21, s72, v27
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v27, s30, v27, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v26, 0x80000000, v26, s9
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s10, s38, v21
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v21, s72, v28
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v28, s30, v28, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v27, 0x80000000, v27, s10
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s11, s38, v21
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v21, s72, v65
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v65, s30, v65, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s38, v21
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v21, s72, v29
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_dual_cndmask_b32 v65, 0x80000000, v65 :: v_dual_lshlrev_b32 v74, 1, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s12, s38, v21
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v21, s72, v30
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s13, vcc_lo
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v66, 0x80000000, v66, s12
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s14, s38, v21
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v21, s72, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v67, 0x80000000, v67, s14
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s15, s38, v21
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v21, s72, v155
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v68, 0x80000000, v68, s15
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s16, s38, v21
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v21, s72, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v69, 0x80000000, v69, s16
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s17, s38, v21
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v21, s72, v246
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v70, 0x80000000, v70, s17
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s18, s38, v21
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v21, s72, v241
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v71, 0x80000000, v71, s18
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s19, s38, v21
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v21, s72, v242
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v72, 0x80000000, v72, s19
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s20, s38, v21
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v21, s72, v243
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v73, 0x80000000, v73, s20
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s5, s38, v21
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v21, 0x80000000, v22, s2
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_add_nc_u32_e32 v22, s31, v154
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s2, s13, s2
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s2, s13, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v75, 0x80000000, v75, s2
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s2, s13, s7
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s2, s13, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s2, s13, s9
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s2, s13, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v79, 0x80000000, v79, s2
	s_clause 0x5
	buffer_load_u8 v185, v22, s[48:51], 0 offen
	buffer_load_u8 v186, v75, s[48:51], 0 offen
	buffer_load_u8 v182, v76, s[48:51], 0 offen
	buffer_load_u8 v81, v77, s[48:51], 0 offen
	buffer_load_u8 v103, v78, s[48:51], 0 offen
	buffer_load_u8 v101, v79, s[48:51], 0 offen
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[75:76], off, off offset:60
	scratch_load_b64 v[79:80], off, off offset:68
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v22, 0x80000000, v28, s11
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s2, s13, s11
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v76, s31, v175
	v_add_nc_u32_e32 v77, s31, v176
	v_add_nc_u32_e32 v78, s31, v177
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_add_nc_u32_e32 v28, s31, v75
	v_lshl_add_u32 v75, s34, 4, v154
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v79, s31, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	v_add_nc_u32_e32 v75, s31, v75
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s2, s13, s12
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v75, 0x80000000, v75, s2
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s2, s13, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s2, s13, s15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s2, s13, s16
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	s_clause 0x3
	buffer_load_u8 v97, v75, s[48:51], 0 offen
	buffer_load_u8 v95, v76, s[48:51], 0 offen
	buffer_load_u8 v91, v77, s[48:51], 0 offen
	buffer_load_u8 v90, v78, s[48:51], 0 offen
	v_add_nc_u32_e32 v75, s31, v178
	v_add_nc_u32_e32 v76, s31, v179
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s13, s17
	v_add_nc_u32_e32 v77, s31, v180
	v_add_nc_u32_e32 v78, s31, v181
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s13, s18
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s13, s19
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s13, s20
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	s_clause 0x5
	buffer_load_u8 v89, v75, s[48:51], 0 offen
	buffer_load_u8 v88, v76, s[48:51], 0 offen
	buffer_load_u8 v102, v28, s[48:51], 0 offen
	buffer_load_u8 v99, v79, s[48:51], 0 offen
	buffer_load_u8 v85, v77, s[48:51], 0 offen
	buffer_load_u8 v84, v78, s[48:51], 0 offen
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v28, 0x80000000, v74, s5
	s_clause 0x10
	buffer_load_u16 v98, v65, s[52:55], 0 offen
	buffer_load_u16 v96, v66, s[52:55], 0 offen
	buffer_load_u16 v94, v67, s[52:55], 0 offen
	buffer_load_u16 v93, v68, s[52:55], 0 offen
	buffer_load_u16 v92, v69, s[52:55], 0 offen
	buffer_load_u16 v87, v70, s[52:55], 0 offen
	buffer_load_u16 v86, v71, s[52:55], 0 offen
	buffer_load_u16 v83, v72, s[52:55], 0 offen
	buffer_load_u16 v82, v73, s[52:55], 0 offen
	buffer_load_u16 v187, v21, s[52:55], 0 offen
	buffer_load_u16 v188, v23, s[52:55], 0 offen
	buffer_load_u16 v184, v24, s[52:55], 0 offen
	buffer_load_u16 v183, v25, s[52:55], 0 offen
	buffer_load_u16 v113, v26, s[52:55], 0 offen
	buffer_load_u16 v104, v27, s[52:55], 0 offen
	buffer_load_u16 v100, v22, s[52:55], 0 offen
	buffer_load_u16 v189, v28, s[52:55], 0 offen
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v214, v185
	ds_store_b8 v214, v186 offset:64
	s_waitcnt vmcnt(26)
	ds_store_b8 v214, v97 offset:512
	s_waitcnt vmcnt(25)
	ds_store_b8 v214, v95 offset:576
	ds_store_b8 v215, v182
	ds_store_b8 v215, v81 offset:64
	s_waitcnt vmcnt(24)
	ds_store_b8 v215, v91 offset:512
	s_waitcnt vmcnt(23)
	ds_store_b8 v215, v90 offset:576
	ds_store_b8 v216, v103
	ds_store_b8 v216, v101 offset:64
	s_waitcnt vmcnt(22)
	ds_store_b8 v216, v89 offset:512
	s_waitcnt vmcnt(21)
	ds_store_b8 v216, v88 offset:576
	s_waitcnt vmcnt(20)
	ds_store_b8 v217, v102
	s_waitcnt vmcnt(19)
	ds_store_b8 v217, v99 offset:64
	s_waitcnt vmcnt(18)
	ds_store_b8 v217, v85 offset:512
	s_waitcnt vmcnt(17)
	ds_store_b8 v217, v84 offset:576
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x4                            ; 24-byte Folded Reload
	scratch_load_b32 v21, off, off offset:304
	scratch_load_b64 v[65:66], off, off offset:76
	scratch_load_b32 v23, off, off offset:328
	scratch_load_b32 v25, off, off offset:332
	scratch_load_b32 v27, off, off offset:336
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v21, 0, v21
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_dual_mov_b32 v73, v205 :: v_dual_mov_b32 v74, v206
	v_dual_mov_b32 v75, v207 :: v_dual_mov_b32 v76, v208
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_load_b64 v[21:22], v21
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_dual_mov_b32 v77, v209 :: v_dual_mov_b32 v78, v210
	v_dual_mov_b32 v79, v211 :: v_dual_mov_b32 v80, v212
	s_waitcnt vmcnt(3) lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[65:66], v[21:22], v[73:80] neg_lo:[1,1,0]
	scratch_load_b64 v[21:22], off, off offset:84 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt vmcnt(3)
	ds_load_b64 v[23:24], v23
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[21:22], v[23:24], v[73:80] neg_lo:[1,1,0]
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[21:22], off, off offset:92
	scratch_load_b32 v23, off, off offset:124
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_load_b64 v[25:26], v25
	.loc	1 608 29                        ; attention_backward.py:608:29
	scratch_load_b32 v24, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(2) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[21:22], v[25:26], v[73:80] neg_lo:[1,1,0]
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[21:22], off, off offset:100
	scratch_load_b32 v26, off, off offset:136
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_load_b64 v[27:28], v27
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v23, s72, v23
	scratch_load_b32 v25, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v24, s72, v24
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s3, s38, v23
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v68, s23, v23
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s7, s38, v24
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v69, s23, v24
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s55, s6, s3
	s_and_b32 s31, s6, s7
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(2) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[21:22], v[27:28], v[73:80] neg_lo:[1,1,0]
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v21, off, off offset:116
	scratch_load_b32 v22, off, off offset:120
	scratch_load_b32 v27, off, off offset:140
	scratch_load_b32 v28, off, off offset:144
	s_waitcnt vmcnt(5)
	v_or_b32_e32 v26, s72, v26
	s_waitcnt vmcnt(4)
	v_or_b32_e32 v25, s72, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s9, s38, v26
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v71, s23, v26
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s8, s38, v25
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v70, s23, v25
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s62, s6, s9
	s_and_b32 s73, s6, s8
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v21, s72, v21
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v22, s72, v22
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v27, s72, v27
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v28, s72, v28
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s38, v21
	v_cmp_gt_i32_e64 s2, s38, v22
	v_cmp_gt_i32_e64 s10, s38, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_i32_e64 s11, s38, v28
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v66, s23, v21
	v_add_nc_u32_e32 v67, s23, v22
	v_add_nc_u32_e32 v72, s23, v27
	v_add_nc_u32_e32 v105, s23, v28
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s63, s6, vcc_lo
	s_and_b32 s59, s6, s2
	s_and_b32 s58, s6, s10
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_and_not1_b32 vcc_lo, exec_lo, s65
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s54, s6, s11
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e32 vcc_lo, v221, v66
	v_cmp_le_i32_e64 s2, v221, v67
	v_cmp_le_i32_e64 s3, v221, v68
	v_cmp_le_i32_e64 s7, v221, v69
	v_cmp_le_i32_e64 s8, v221, v70
	v_cmp_le_i32_e64 s9, v221, v71
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s12, s63, vcc_lo
	s_and_b32 s2, s59, s2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s10, v221, v72
	v_cmp_le_i32_e64 s11, v221, v105
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s3, s55, s3
	s_and_b32 s7, s31, s7
	s_and_not1_b32 s14, s63, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s15, s59, exec_lo
	s_and_b32 s2, s2, exec_lo
	s_and_b32 s8, s73, s8
	s_and_b32 s9, s62, s9
	s_or_b32 s63, s14, s12
	s_or_b32 s59, s15, s2
	s_and_not1_b32 s2, s55, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s12, s31, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_and_b32 s10, s58, s10
	s_and_b32 s11, s54, s11
	s_or_b32 s55, s2, s3
	s_or_b32 s31, s12, s7
	s_and_not1_b32 s2, s73, exec_lo
	s_and_b32 s3, s8, exec_lo
	s_and_not1_b32 s7, s62, exec_lo
	s_and_b32 s8, s9, exec_lo
	s_or_b32 s73, s2, s3
	s_or_b32 s62, s7, s8
	s_and_not1_b32 s2, s58, exec_lo
	s_and_b32 s3, s10, exec_lo
	s_and_not1_b32 s7, s54, exec_lo
	s_and_b32 s8, s11, exec_lo
	s_or_b32 s58, s2, s3
	s_or_b32 s54, s7, s8
.LBB0_10:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 677 17 is_stmt 1              ; attention_backward.py:677:17
	s_and_not1_b32 vcc_lo, exec_lo, s64
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v21, s21, v66
	v_subrev_nc_u32_e32 v22, s21, v67
	v_subrev_nc_u32_e32 v23, s21, v68
	v_subrev_nc_u32_e32 v24, s21, v69
	v_subrev_nc_u32_e32 v25, s21, v70
	v_subrev_nc_u32_e32 v26, s21, v71
	.loc	1 678 30 is_stmt 0              ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v221, v21
	v_cmp_ge_i32_e64 s2, v221, v22
	.loc	1 679 47 is_stmt 1              ; attention_backward.py:679:47
	v_add_nc_u32_e32 v21, s22, v66
	v_add_nc_u32_e32 v22, s22, v67
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v27, s21, v72
	v_subrev_nc_u32_e32 v28, s21, v105
	.loc	1 678 30 is_stmt 0              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s3, v221, v23
	v_cmp_ge_i32_e64 s7, v221, v24
	.loc	1 679 47 is_stmt 1              ; attention_backward.py:679:47
	v_add_nc_u32_e32 v23, s22, v68
	v_add_nc_u32_e32 v24, s22, v69
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s8, v221, v25
	v_cmp_ge_i32_e64 s9, v221, v26
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v25, s22, v70
	v_add_nc_u32_e32 v26, s22, v71
	.loc	1 679 30 is_stmt 0              ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s12, v221, v21
	v_cmp_le_i32_e64 s14, v221, v22
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s10, v221, v27
	v_cmp_ge_i32_e64 s11, v221, v28
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v27, s22, v72
	v_add_nc_u32_e32 v28, s22, v105
	.loc	1 679 30 is_stmt 0              ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s15, v221, v23
	v_cmp_le_i32_e64 s16, v221, v24
	v_cmp_le_i32_e64 s17, v221, v25
	v_cmp_le_i32_e64 s18, v221, v26
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s12, vcc_lo, s12
	s_and_b32 s2, s2, s14
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s19, v221, v27
	v_cmp_le_i32_e64 s20, v221, v28
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s12, s12, s63
	s_and_b32 s2, s2, s59
	s_and_b32 s3, s3, s15
	s_and_b32 s7, s7, s16
	s_and_b32 s3, s3, s55
	s_and_b32 s7, s7, s31
	s_and_b32 s8, s8, s17
	s_and_b32 s9, s9, s18
	s_and_not1_b32 s14, s63, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s15, s59, exec_lo
	s_and_b32 s2, s2, exec_lo
	s_and_b32 s8, s8, s73
	s_and_b32 s9, s9, s62
	s_and_b32 s10, s10, s19
	s_and_b32 s11, s11, s20
	s_or_b32 s63, s14, s12
	s_or_b32 s59, s15, s2
	s_and_not1_b32 s2, s55, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s12, s31, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_and_b32 s10, s10, s58
	s_and_b32 s11, s11, s54
	s_or_b32 s55, s2, s3
	s_or_b32 s31, s12, s7
	s_and_not1_b32 s2, s73, exec_lo
	s_and_b32 s3, s8, exec_lo
	s_and_not1_b32 s7, s62, exec_lo
	s_and_b32 s8, s9, exec_lo
	s_or_b32 s73, s2, s3
	s_or_b32 s62, s7, s8
	s_and_not1_b32 s2, s58, exec_lo
	s_and_b32 s3, s10, exec_lo
	s_and_not1_b32 s7, s54, exec_lo
	s_and_b32 s8, s11, exec_lo
	s_or_b32 s58, s2, s3
	s_or_b32 s54, s7, s8
.LBB0_12:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 21                          ; attention_backward.py:0:21
	v_mov_b16_e32 v66.l, 0
	.loc	1 682 25 is_stmt 1              ; attention_backward.py:682:25
	s_mul_i32 s2, s72, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s2, s27, s2
	v_mov_b16_e32 v69.l, v66.l
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s3, s63
	s_cbranch_execz .LBB0_14
; %bb.13:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34 is_stmt 0                ; attention_backward.py:0:34
	scratch_load_b64 v[21:22], off, off offset:512 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s2, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v22, 31, v21
	v_add_co_u32 v21, vcc_lo, s24, v21
	v_add_co_ci_u32_e64 v22, null, s25, v22, vcc_lo
	global_load_d16_u8 v69, v[21:22], off
.LBB0_14:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s3, s59
	s_cbranch_execz .LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[21:22], off, off offset:456 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s2, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v22, 31, v21
	v_add_co_u32 v21, vcc_lo, s24, v21
	v_add_co_ci_u32_e64 v22, null, s25, v22, vcc_lo
	global_load_d16_u8 v66, v[21:22], off
.LBB0_16:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v66.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v67.l, v66.h
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s3, s55
	s_cbranch_execz .LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[21:22], off, off offset:464 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s2, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v22, 31, v21
	v_add_co_u32 v21, vcc_lo, s24, v21
	v_add_co_ci_u32_e64 v22, null, s25, v22, vcc_lo
	global_load_d16_u8 v67, v[21:22], off
.LBB0_18:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s3, s31
	s_cbranch_execz .LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[21:22], off, off offset:472 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s2, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v22, 31, v21
	v_add_co_u32 v21, vcc_lo, s24, v21
	v_add_co_ci_u32_e64 v22, null, s25, v22, vcc_lo
	global_load_d16_hi_u8 v66, v[21:22], off
.LBB0_20:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v68.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v69.h, v68.h
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s3, s73
	s_cbranch_execz .LBB0_22
; %bb.21:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[21:22], off, off offset:480 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s2, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v22, 31, v21
	v_add_co_u32 v21, vcc_lo, s24, v21
	v_add_co_ci_u32_e64 v22, null, s25, v22, vcc_lo
	global_load_d16_hi_u8 v69, v[21:22], off
.LBB0_22:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s3, s62
	s_cbranch_execz .LBB0_24
; %bb.23:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[21:22], off, off offset:488 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s2, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v22, 31, v21
	v_add_co_u32 v21, vcc_lo, s24, v21
	v_add_co_ci_u32_e64 v22, null, s25, v22, vcc_lo
	global_load_d16_hi_u8 v68, v[21:22], off
.LBB0_24:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v67.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v68.l, v67.h
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s3, s58
	s_cbranch_execz .LBB0_26
; %bb.25:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[21:22], off, off offset:496 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s2, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v22, 31, v21
	v_add_co_u32 v21, vcc_lo, s24, v21
	v_add_co_ci_u32_e64 v22, null, s25, v22, vcc_lo
	global_load_d16_u8 v68, v[21:22], off
.LBB0_26:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s3, s54
	s_cbranch_execz .LBB0_7
; %bb.27:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[21:22], off, off offset:504 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s2, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v22, 31, v21
	v_add_co_u32 v21, vcc_lo, s24, v21
	v_add_co_ci_u32_e64 v22, null, s25, v22, vcc_lo
	global_load_d16_hi_u8 v67, v[21:22], off
	s_branch .LBB0_7
.LBB0_28:                               ; %Flow338
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:524
	scratch_load_b32 v66, off, off offset:528
	v_readlane_b32 s33, v255, 0
	s_branch .LBB0_30
.LBB0_29:
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
.LBB0_30:                               ; %._crit_edge183
	.loc	1 550 20 is_stmt 1              ; attention_backward.py:550:20
	scratch_load_b32 v0, off, off offset:520 ; 4-byte Folded Reload
	.loc	1 753 13                        ; attention_backward.py:753:13
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v16, s33, v65
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s37, s41, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b32 s36, s40
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v17, v16, s66
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v16, v16, s35
	.loc	1 550 20                        ; attention_backward.py:550:20
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, v0, v66
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v14, 2, v0
	v_or_b32_e32 v13, 4, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s15, s66, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v18, v17, v0, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v15, 6, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s16, s66, v14
	v_cmp_gt_i32_e64 s17, s66, v13
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
	v_cmp_gt_i32_e64 s18, s66, v15
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s15
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v10, 12, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s19, s66, v12
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v57, v18, s[36:39], 0 offen
	v_add_lshl_u32 v18, v17, v15, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s20, s66, v11
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
	v_cmp_gt_i32_e64 s21, s66, v10
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
	v_cmp_gt_i32_e64 s22, s66, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s6, s21
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v6, 36, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s23, s66, v8
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v21, 0x80000000, v21, s16
	s_clause 0x1
	buffer_store_b32 v60, v18, s[36:39], 0 offen
	buffer_store_b32 v61, v19, s[36:39], 0 offen
	v_add_lshl_u32 v18, v17, v9, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s24, s66, v7
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v19, v17, v8, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s6, s22
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v5, 38, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s25, s66, v6
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
	v_cmp_gt_i32_e64 s26, s66, v5
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s6, s25
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v2, 44, v0
	v_or_b32_e32 v1, 46, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s27, s66, v4
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v21, 0x80000000, v21, s16
	s_clause 0x1
	buffer_store_b32 v64, v18, s[36:39], 0 offen
	buffer_store_b32 v49, v19, s[36:39], 0 offen
	v_add_lshl_u32 v18, v17, v5, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s28, s66, v3
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v19, v17, v4, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s14, s35, v0
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s6, s26
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s29, s66, v2
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v50, v20, s[36:39], 0 offen
	buffer_store_b32 v51, v21, s[36:39], 0 offen
	v_add_lshl_u32 v20, v17, v3, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s15, s66, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s6, s27
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v0, v16, v0, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s12, s35, v13
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
	v_cmp_gt_i32_e64 s13, s35, v14
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
	v_cmp_gt_i32_e64 s12, s35, v15
	v_cmp_gt_i32_e64 s11, s35, v12
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
	v_cmp_gt_i32_e64 s8, s35, v9
	v_cmp_gt_i32_e64 s10, s35, v11
	v_cmp_gt_i32_e64 s7, s35, v8
	v_cmp_gt_i32_e64 s9, s35, v10
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
	v_cmp_gt_i32_e64 s3, s35, v5
	v_cmp_gt_i32_e64 s5, s35, v7
	v_cmp_gt_i32_e64 s2, s35, v4
	v_cmp_gt_i32_e64 s4, s35, v6
	v_cmp_gt_i32_e64 s1, s35, v3
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
	v_cmp_gt_i32_e64 s0, s35, v2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v6, v16, v6, 2
	v_add_lshl_u32 v4, v16, v4, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v1
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
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 536
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 26344
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 536
    .sgpr_count:     107
    .sgpr_spill_count: 1
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
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
