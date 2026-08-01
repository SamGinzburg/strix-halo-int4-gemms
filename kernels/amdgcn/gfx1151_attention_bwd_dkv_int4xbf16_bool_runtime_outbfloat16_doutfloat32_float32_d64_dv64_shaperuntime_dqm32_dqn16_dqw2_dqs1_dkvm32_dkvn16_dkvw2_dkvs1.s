	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	v_bfe_u32 v17, v0, 4, 1
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x8
	s_load_b64 s[12:13], s[0:1], 0x20
	v_and_b32_e32 v66, 15, v0
	v_or_b32_e32 v2, 4, v9
	v_or_b32_e32 v3, 6, v9
	v_or_b32_e32 v4, 8, v9
	v_or_b32_e32 v5, 10, v9
	v_or_b32_e32 v6, 12, v9
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v2, off offset:8
	scratch_store_b32 off, v3, off offset:12
	scratch_store_b32 off, v4, off offset:16
	scratch_store_b32 off, v5, off offset:20
	scratch_store_b32 off, v9, off
	v_or_b32_e32 v7, 14, v9
	scratch_store_b32 off, v6, off offset:24 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 521 24                        ; attention_backward.py:521:24
	s_mul_i32 s64, s3, s39
	s_cselect_b32 s65, -1, 0
	s_cmp_eq_u32 s4, 1
	scratch_store_b32 off, v7, off offset:28 ; 4-byte Folded Spill
	s_cselect_b32 s66, -1, 0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_abs_i32 s29, s37
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_abs_i32 s5, s3
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cvt_f32_u32 s4, s29
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s11, s2, 4
	scratch_store_b32 off, v17, off offset:748 ; 4-byte Folded Spill
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v2, s11, v2
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v5, s11, v5
	v_or_b32_e32 v6, s11, v6
	v_or_b32_e32 v8, s11, v9
	v_or_b32_e32 v7, s11, v7
	v_or_b32_e32 v3, s11, v3
	v_or_b32_e32 v4, s11, v4
	.loc	1 514 33 is_stmt 0              ; attention_backward.py:514:33
	v_or_b32_e32 v12, s11, v17
	.loc	1 517 21 is_stmt 1              ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s39, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_readfirstlane_b32 s4, v1
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v1, 2, v9
	.loc	1 514 23 is_stmt 0              ; attention_backward.py:514:23
	v_or_b32_e32 v13, 8, v12
	v_or_b32_e32 v14, 10, v12
	v_or_b32_e32 v15, 12, v12
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_mul_f32 s4, s4, 0x4f7ffffe
	scratch_store_b32 off, v1, off offset:4 ; 4-byte Folded Spill
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v1, s11, v1
	v_or_b32_e32 v16, 14, v12
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cvt_u32_f32 s41, s4
	s_sub_i32 s4, 0, s29
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s4, s4, s41
	s_mul_hi_u32 s4, s41, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s41, s41, s4
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_mul_hi_u32 s4, s5, s41
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s4, s29
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
	v_and_b32_e32 v1, 31, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s5, s39
	v_cmp_gt_i32_e64 s4, s39, v2
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s6, s39
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[114:115], null, s34, v9, v[1:2]
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
	v_mad_u64_u32 v[5:6], null, s34, 6, v[114:115]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s14, s39
	v_cmp_gt_i32_e64 s10, s39, v7
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s15, s39
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[7:8], null, s34, 10, v[114:115]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s24, s39
	v_cmp_gt_i32_e64 s6, s39, v4
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s25, s39
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v2, s34, 1, v114
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s26, s39
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v3, s34, 2, v114
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s27, s39
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v6, s34, 3, v114
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s33, s39
	v_mov_b32_e32 v4, v5
	s_cselect_b32 s54, -1, 0
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_add_i32 s58, s64, s11
	v_mad_u64_u32 v[8:9], null, s34, 12, v[114:115]
	s_mul_i32 s14, s58, s34
	s_clause 0x3                            ; 20-byte Folded Spill
	scratch_store_b32 off, v2, off offset:32
	scratch_store_b32 off, v3, off offset:36
	scratch_store_b64 off, v[4:5], off offset:40
	scratch_store_b32 off, v6, off offset:48
	v_add_nc_u32_e32 v9, s14, v114
	v_add_nc_u32_e32 v4, s14, v5
	v_add_nc_u32_e32 v5, s14, v6
	v_mov_b32_e32 v6, v7
	v_mad_u64_u32 v[10:11], null, s34, 14, v[114:115]
	v_add_nc_u32_e32 v2, s14, v2
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_cmp_gt_i32_e64 s7, s34, v1
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[6:7], off offset:52 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v6, s14, v7
	v_mov_b32_e32 v7, v8
	v_add_nc_u32_e32 v3, s14, v3
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, vcc_lo, s7
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_and_b32 s25, s17, 0xffff
	s_mov_b32 s27, 0x31027000
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[7:8], off offset:60 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v7, s14, v8
	v_mov_b32_e32 v8, v10
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_mov_b32 s24, s16
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_mul_i32 s33, s58, s35
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_add_lshl_u32 v17, s58, v17, 1
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[8:9], off offset:68 ; 8-byte Folded Spill
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s2, s7
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_add_nc_u32_e32 v8, s14, v10
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s4, s7
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v18, s33, v0
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s5, s7
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xor_b32_e32 v10, 0x110, v0
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s6, s7
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xor_b32_e32 v11, 0x198, v0
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s8, s7
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v21, s35, v18
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s9, s7
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_add_nc_u32 v22, 12, v17
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s10, s7
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_add_nc_u32 v19, 4, v17
	s_clause 0x7
	buffer_load_u8 v37, v9, s[24:27], 0 offen
	buffer_load_u8 v2, v2, s[24:27], 0 offen
	buffer_load_u8 v3, v3, s[24:27], 0 offen
	buffer_load_u8 v4, v4, s[24:27], 0 offen
	buffer_load_u8 v5, v5, s[24:27], 0 offen
	buffer_load_u8 v6, v6, s[24:27], 0 offen
	buffer_load_u8 v7, v7, s[24:27], 0 offen
	buffer_load_u8 v8, v8, s[24:27], 0 offen
	v_xor_b32_e32 v9, 0x88, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s39, v12
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v219, 0, v0
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v24, 20, v17
	v_add_nc_u32_e32 v23, 16, v17
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v220, 0, v9
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v9, 2, v12
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v20, 8, v17
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v221, 0, v10
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v10, 4, v12
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v26, s35, v21
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v21, 1, v21
	v_lshlrev_b32_e32 v18, 1, v18
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v25, 24, v17
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v222, 0, v11
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v11, 6, v12
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e32 v12, 0x80000000, v17, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s39, v9
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s4, s35, v0
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	s_and_b32 s13, s13, 0xffff
	v_cndmask_b32_e32 v9, 0x80000000, v19, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s39, v10
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v19, s35, v26
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s25, s19, 0xffff
	s_mov_b32 s24, s18
	.loc	1 587 22                        ; attention_backward.py:587:22
	s_add_i32 s2, s38, 31
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e32 v10, 0x80000000, v20, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s39, v11
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v11, s35, v19
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v19, 1, v19
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_ashr_i32 s6, s2, 31
	s_mov_b32 s5, 0
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e32 v20, 0x80000000, v22, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s39, v13
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v22, s35, v11
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v11, 1, v11
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_lshr_b32 s6, s6, 27
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e32 v13, 0x80000000, v23, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s39, v14
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_add_i32 s6, s2, s6
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_hi_u32 s2, s40, s41
	.loc	1 587 20                        ; attention_backward.py:587:20
	s_and_b32 s68, s6, 0xffffffe0
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e32 v14, 0x80000000, v24, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s39, v15
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v24, 1, v26
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v17, 28, v17
	v_cndmask_b32_e32 v15, 0x80000000, v25, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s39, v16
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt vmcnt(7)
	ds_store_b8 v219, v37
	s_waitcnt vmcnt(6)
	ds_store_b8 v219, v2 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v220, v3
	s_waitcnt vmcnt(4)
	ds_store_b8 v220, v4 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v221, v5
	s_waitcnt vmcnt(2)
	ds_store_b8 v221, v6 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v222, v7
	s_waitcnt vmcnt(0)
	ds_store_b8 v222, v8 offset:64
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
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(0)
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v26, 0x80000000, v24, vcc_lo
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v25, s35, v23
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s53, s4
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_barrier
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s51, s4
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v24, s35, v25
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v27, 0x80000000, v11, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s50, s4
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_and_b32_e32 v2, 12, v0
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v28, 0x80000000, v22, vcc_lo
	v_lshlrev_b32_e32 v22, 1, v23
	v_lshlrev_b32_e32 v23, 1, v25
	v_lshlrev_b32_e32 v11, 1, v17
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v17, s35, v24
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s49, s4
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshlrev_b32_e32 v3, 5, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v29, 0x80000000, v11 :: v_dual_lshlrev_b32 v4, 1, v2
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v11, s35, v17
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s48, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v17, 1, v17
	v_dual_cndmask_b32 v25, 0x80000000, v22 :: v_dual_lshlrev_b32 v22, 1, v24
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v24, s35, v11
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s46, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v11, 1, v11
	v_cndmask_b32_e32 v30, 0x80000000, v23, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s45, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v23, 1, v24
	v_cndmask_b32_e32 v31, 0x80000000, v22, vcc_lo
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v22, s35, v24
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s44, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s43, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v24, s35, v22
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v32, 0x80000000, v11, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s42, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v33, 0x80000000, v23, vcc_lo
	v_add_lshl_u32 v23, v24, s35, 1
	v_lshlrev_b32_e32 v11, 1, v22
	v_lshlrev_b32_e32 v22, 1, v24
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s47, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v34, 0x80000000, v11, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s52, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v35, 0x80000000, v22, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s54, s4
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_bfe_u32 s6, s20, 0x10008
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v36, 0x80000000, v23, vcc_lo
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
	buffer_load_u16 v24, v18, s[24:27], 0 offen
	buffer_load_u16 v23, v21, s[24:27], 0 offen
	buffer_load_u16 v22, v26, s[24:27], 0 offen
	buffer_load_u16 v21, v19, s[24:27], 0 offen
	buffer_load_u16 v16, v27, s[24:27], 0 offen
	buffer_load_u16 v15, v28, s[24:27], 0 offen
	buffer_load_u16 v14, v29, s[24:27], 0 offen
	buffer_load_u16 v13, v25, s[24:27], 0 offen
	buffer_load_u16 v28, v30, s[24:27], 0 offen
	buffer_load_u16 v27, v31, s[24:27], 0 offen
	buffer_load_u16 v26, v17, s[24:27], 0 offen
	buffer_load_u16 v25, v32, s[24:27], 0 offen
	buffer_load_u16 v20, v33, s[24:27], 0 offen
	buffer_load_u16 v19, v34, s[24:27], 0 offen
	buffer_load_u16 v18, v35, s[24:27], 0 offen
	buffer_load_u16 v17, v36, s[24:27], 0 offen
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_or_b32_e32 v32, v3, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v29, 0, v32
	v_xad_u32 v30, v32, 8, 0
	v_xad_u32 v31, v32, 16, 0
	v_xad_u32 v32, v32, 24, 0
	ds_load_b64 v[33:34], v29
	ds_load_b64 v[29:30], v30
	s_waitcnt lgkmcnt(1)
	scratch_store_b64 off, v[33:34], off offset:76 ; 8-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[29:30], off offset:84 ; 8-byte Folded Spill
	ds_load_b64 v[29:30], v31
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v33, 32, v0
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[29:30], off offset:92 ; 8-byte Folded Spill
	ds_load_b64 v[29:30], v32
	.loc	1 587 22                        ; attention_backward.py:587:22
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[29:30], off offset:100 ; 8-byte Folded Spill
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
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_mul_i32 s6, s2, s29
	s_xor_b32 s8, s30, s31
	s_sub_i32 s6, s40, s6
	s_add_i32 s9, s2, 1
	s_sub_i32 s10, s6, s29
	s_cmp_ge_u32 s6, s29
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshlrev_b32_e32 v34, 1, v0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s2, s9, s2
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s2, 1
	s_cmp_ge_u32 s6, s29
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v224, s11, v66
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s2, s9, s2
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_add_nc_u32_e32 v35, v219, v0
	v_xad_u32 v29, 0x90, v34, 0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_xor_b32 s6, s2, s8
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, s39, v224
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v67, 1, v33
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v255, s12, 0
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v30, 0x120, v34, 0
	v_xad_u32 v32, 0x240, v34, 0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_sub_i32 s39, s6, s8
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v255, s13, 1
	s_barrier
	v_xad_u32 v31, 0x1b0, v34, 0
	s_waitcnt vmcnt(7)
	ds_store_b16 v35, v28 offset:1024
	ds_store_b16 v29, v23
	s_waitcnt vmcnt(6)
	ds_store_b16 v29, v27 offset:1024
	ds_store_b16 v30, v22
	s_waitcnt vmcnt(5)
	ds_store_b16 v30, v26 offset:1024
	ds_store_b16 v31, v21
	s_waitcnt vmcnt(4)
	ds_store_b16 v31, v25 offset:1024
	v_xad_u32 v21, 0x2d0, v34, 0
	v_writelane_b32 v255, s14, 2
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cmp_lt_i32 s39, 1
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v22, 0x360, v34, 0
	ds_store_b16 v35, v24
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v35, off offset:112
	scratch_store_b32 off, v34, off offset:108
	v_writelane_b32 v255, s15, 3
	v_xad_u32 v23, 0x3f0, v34, 0
	ds_store_b16 v32, v16
	s_waitcnt vmcnt(3)
	ds_store_b16 v32, v20 offset:1024
	ds_store_b16 v21, v15
	s_waitcnt vmcnt(2)
	ds_store_b16 v21, v19 offset:1024
	ds_store_b16 v22, v14
	s_waitcnt vmcnt(1)
	ds_store_b16 v22, v18 offset:1024
	ds_store_b16 v23, v13
	s_waitcnt vmcnt(0)
	ds_store_b16 v23, v17 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cbranch_scc1 .LBB0_29
; %bb.3:                                ; %.lr.ph103
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	s_xor_b32 s6, s3, s37
	.loc	1 527 29 is_stmt 1              ; attention_backward.py:527:29
	v_mov_b16_e32 v19.h, v12.l
	s_ashr_i32 s6, s6, 31
	v_dual_mov_b32 v117, 0 :: v_dual_and_b32 v12, 7, v0
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshlrev_b32_e32 v1, 1, v1
	s_clause 0x1
	s_load_b32 s8, s[0:1], 0x90
	s_load_b128 s[44:47], s[0:1], 0x80
	s_xor_b32 s9, s28, s6
	s_clause 0x2
	s_load_b256 s[24:31], s[0:1], 0x30
	s_load_b64 s[48:49], s[0:1], 0x0
	s_load_b64 s[52:53], s[0:1], 0x18
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_sub_i32 s1, s11, s23
	s_sub_i32 s6, s9, s6
	s_max_i32 s1, s1, 0
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v15, 4, v0
	v_mov_b16_e32 v19.l, 0
	v_mov_b32_e32 v42, v117
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v14, 1, v1
	s_mul_i32 s0, s6, s37
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_and_b32 s1, s1, 0x7fffffe0
	s_sub_i32 s0, s3, s0
	s_max_u32 s1, s5, s1
	s_and_b32 s3, s66, exec_lo
	s_cselect_b32 s69, s1, s5
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s70, s39, s0
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s0, s67, v1
	v_cmp_gt_i32_e64 s1, s67, v14
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v14, 4, v15
	v_or_b32_e32 v20, 20, v15
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v1.l, v19.l
	v_mov_b16_e32 v1.h, v11.l
	v_mov_b16_e32 v8.h, v7.l
	v_mov_b16_e32 v7.l, v19.l
	v_mov_b16_e32 v7.h, v6.l
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v22, 28, v15
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v7, off offset:176
	scratch_store_b32 off, v19, off offset:140
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v19.h, v5.l
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v14, off offset:124
	scratch_store_b32 off, v20, off offset:144
	scratch_store_b32 off, v1, off offset:156
	scratch_store_b32 off, v22, off offset:152
	v_mov_b16_e32 v1.h, v10.l
	v_dual_mov_b32 v41, 0 :: v_dual_lshlrev_b32 v10, 4, v12
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v16, 8, v15
	v_or_b32_e32 v17, 12, v15
	scratch_store_b32 off, v1, off offset:160 ; 4-byte Folded Spill
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v1.h, v9.l
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v18, 16, v15
	v_or_b32_e32 v21, 24, v15
	v_dual_mov_b32 v44, v117 :: v_dual_and_b32 v13, 16, v0
	scratch_store_b32 off, v1, off offset:164 ; 4-byte Folded Spill
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v1.h, v8.l
	v_mov_b16_e32 v8.l, v19.l
	v_lshrrev_b32_e32 v65, 5, v0
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v139, v67, v66
	.loc	1 641 25                        ; attention_backward.py:641:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s71, s44, 0x3fb8aa3b
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:168
	scratch_store_b32 off, v8, off offset:172
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshl_or_b32 v1, v66, 7, v10
	v_mov_b32_e32 v46, v117
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v226, 26, v65
	v_or_b32_e32 v250, 28, v65
	v_or_b32_e32 v141, 30, v65
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v6, 0x70, v1, 0
	v_xad_u32 v7, 0x60, v1, 0
	ds_load_b128 v[27:30], v6
	ds_load_b128 v[23:26], v7
	v_xad_u32 v5, 0x50, v1, 0
	v_xad_u32 v8, v1, 64, 0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[23:26], off offset:184
	scratch_store_b128 off, v[27:30], off offset:200
	ds_load_b128 v[27:30], v5
	ds_load_b128 v[23:26], v8
	v_xad_u32 v6, v1, 48, 0
	v_xad_u32 v7, v1, 32, 0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[23:26], off offset:216
	scratch_store_b128 off, v[27:30], off offset:232
	ds_load_b128 v[27:30], v6
	ds_load_b128 v[23:26], v7
	v_xad_u32 v5, v1, 16, 0
	v_add_nc_u32_e32 v1, 0, v1
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[23:26], off offset:248
	scratch_store_b128 off, v[27:30], off offset:264
	ds_load_b128 v[27:30], v5
	ds_load_b128 v[23:26], v1
	v_mul_lo_u32 v1, s8, v224
	v_dual_mov_b32 v48, v117 :: v_dual_lshlrev_b32 v5, 4, v33
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[23:26], off offset:280
	scratch_store_b128 off, v[27:30], off offset:296
	v_dual_mov_b32 v38, v117 :: v_dual_lshlrev_b32 v29, 3, v66
	scratch_store_b32 off, v19, off offset:180 ; 4-byte Folded Spill
	v_or3_b32 v19, v4, v5, v3
	v_mad_u64_u32 v[3:4], null, s47, v14, v[1:2]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[3:4], off offset:684
	scratch_store_b32 off, v16, off offset:128
	v_mad_u64_u32 v[3:4], null, s47, v16, v[1:2]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[3:4], off offset:692
	scratch_store_b32 off, v17, off offset:132
	v_mad_u64_u32 v[3:4], null, s47, v17, v[1:2]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[3:4], off offset:700
	scratch_store_b32 off, v18, off offset:136
	v_mad_u64_u32 v[3:4], null, s47, v18, v[1:2]
	v_mov_b32_e32 v34, v117
	v_mov_b32_e32 v36, v117
	v_lshrrev_b32_e32 v6, 2, v13
	v_lshrrev_b32_e32 v7, 4, v33
	v_mul_u32_u24_e32 v14, 0x110, v66
	v_xor_b32_e32 v16, 8, v19
	scratch_store_b64 off, v[3:4], off offset:708 ; 8-byte Folded Spill
	v_mad_u64_u32 v[4:5], null, s47, v20, v[1:2]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[4:5], off offset:716
	scratch_store_b32 off, v21, off offset:148
	v_mad_u64_u32 v[4:5], null, s47, v21, v[1:2]
	v_lshlrev_b32_e32 v3, 2, v0
	v_mov_b32_e32 v43, v117
	v_or3_b32 v21, v6, v7, v29
	v_mov_b32_e32 v60, v117
	v_lshl_or_b32 v24, v33, 7, v14
	v_xor_b32_e32 v17, 16, v19
	scratch_store_b64 off, v[4:5], off offset:724 ; 8-byte Folded Spill
	v_and_b32_e32 v5, 52, v3
	v_lshrrev_b32_e32 v4, 1, v13
	v_dual_mov_b32 v58, v117 :: v_dual_lshlrev_b32 v13, 2, v13
	v_mov_b32_e32 v62, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v2, v2, 5, v5
	v_and_or_b32 v4, v0, 2, v4
	scratch_store_b32 off, v19, off offset:312 ; 4-byte Folded Spill
	v_xor_b32_e32 v18, 24, v19
	v_mov_b32_e32 v40, v117
	v_mad_u64_u32 v[8:9], null, s47, v22, v[1:2]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[8:9], off offset:732
	scratch_store_b32 off, v15, off offset:120
	v_mad_u64_u32 v[8:9], null, s47, v15, v[1:2]
	v_or3_b32 v22, v4, v2, v65
	v_lshrrev_b32_e32 v2, 1, v0
	v_lshl_add_u32 v1, v33, 1, 0
	v_lshlrev_b32_e32 v15, 1, v66
	v_xor_b32_e32 v4, 0x220, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v21, off offset:316
	scratch_store_b32 off, v22, off offset:320
	v_and_b32_e32 v2, 12, v2
	v_lshl_add_u32 v247, v66, 2, v1
	v_xor_b32_e32 v1, 0x110, v3
	v_or3_b32 v25, v15, v13, v33
	scratch_store_b32 off, v24, off offset:324 ; 4-byte Folded Spill
	v_lshl_or_b32 v2, v12, 7, v2
	v_dual_mov_b32 v64, v117 :: v_dual_add_nc_u32 v1, 0, v1
	v_xor_b32_e32 v5, 0x330, v3
	v_xor_b32_e32 v19, 0x90, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v23, v2, v10, v7
	v_lshlrev_b32_e32 v7, 3, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:360
	scratch_store_b32 off, v25, off offset:328
	v_dual_mov_b32 v50, v117 :: v_dual_add_nc_u32 v1, 0, v4
	v_and_b32_e32 v7, 48, v7
	v_xor_b32_e32 v6, 0x440, v3
	v_mov_b32_e32 v52, v117
	scratch_store_b32 off, v1, off offset:364 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v5
	v_lshl_or_b32 v26, v66, 6, v7
	v_dual_mov_b32 v54, v117 :: v_dual_add_nc_u32 v7, 0, v16
	v_xor_b32_e32 v16, 0x1b0, v21
	scratch_store_b32 off, v1, off offset:368 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v6
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v7, off offset:336
	scratch_store_b32 off, v23, off offset:548
	v_add_nc_u32_e32 v7, 0, v17
	v_xor_b32_e32 v11, 0x770, v3
	scratch_store_b32 off, v1, off offset:372 ; 4-byte Folded Spill
	v_mov_b32_e32 v56, v117
	v_xor_b32_e32 v12, 0x880, v3
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v7, off offset:340
	scratch_store_b64 off, v[8:9], off offset:740
	v_add_nc_u32_e32 v7, 0, v18
	v_xor_b32_e32 v8, 0x550, v3
	v_xor_b32_e32 v9, 0x660, v3
	v_xor_b32_e32 v2, 0x990, v3
	v_xor_b32_e32 v20, 0xaa0, v3
	scratch_store_b32 off, v7, off offset:344 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v7, 0, v19
	v_add_nc_u32_e32 v1, 0, v8
	v_xor_b32_e32 v10, 0xbb0, v3
	v_xor_b32_e32 v13, 0xcc0, v3
	v_add3_u32 v251, 0, v33, v15
	scratch_store_b32 off, v7, off offset:348 ; 4-byte Folded Spill
	v_xor_b32_e32 v7, 0x120, v21
	scratch_store_b32 off, v1, off offset:376 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v9
	v_xor_b32_e32 v14, 0xdd0, v3
	v_xor_b32_e32 v15, 0xee0, v3
	v_add_nc_u32_e32 v7, 0, v7
	v_xor_b32_e32 v3, 0xff0, v3
	scratch_store_b32 off, v1, off offset:380 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v11
	v_mov_b32_e32 v33, 0
	scratch_store_b32 off, v7, off offset:352 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v7, 0, v16
	v_mov_b32_e32 v35, v117
	scratch_store_b32 off, v1, off offset:384 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v12
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v1, off offset:388
	scratch_store_b32 off, v0, off offset:116
	scratch_store_b32 off, v7, off offset:356
	v_add_nc_u32_e32 v1, 0, v2
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v0, s35, v0
	v_dual_mov_b32 v39, v117 :: v_dual_add_nc_u32 v2, 0, v3
	v_mov_b32_e32 v37, v117
	scratch_store_b32 off, v1, off offset:396 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v20
	v_mov_b32_e32 v57, 0
	v_mov_b32_e32 v59, v117
	v_mov_b32_e32 v61, v117
	v_xor_b32_e32 v17, 16, v22
	scratch_store_b32 off, v1, off offset:400 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v10
	v_xor_b32_e32 v18, 32, v22
	v_xor_b32_e32 v19, 48, v22
	v_dual_mov_b32 v45, v117 :: v_dual_add_nc_u32 v228, 0, v17
	scratch_store_b32 off, v1, off offset:404 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v13
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:408
	scratch_store_b32 off, v0, off offset:392
	v_add_nc_u32_e32 v1, s35, v0
	v_add_nc_u32_e32 v0, 0, v14
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:424
	scratch_store_b32 off, v1, off offset:412
	v_add_nc_u32_e32 v3, s35, v1
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v15
	v_xor_b32_e32 v1, 32, v24
	v_xor_b32_e32 v2, 48, v24
	scratch_store_b32 off, v3, off offset:428 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s35, v3
	v_mov_b32_e32 v63, v117
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v24
	v_mov_b32_e32 v49, 0
	v_mov_b32_e32 v51, v117
	scratch_store_b32 off, v1, off offset:440 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v2
	v_add_nc_u32_e32 v0, 0, v0
	v_xor_b32_e32 v2, 0x70, v24
	v_dual_mov_b32 v47, v117 :: v_dual_add_nc_u32 v230, 0, v19
	v_add_nc_u32_e32 v229, 0, v18
	scratch_store_b32 off, v0, off offset:432 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v24
	v_mov_b32_e32 v53, v117
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v16, 24, v65
	s_cmp_lt_i32 s69, s68
	s_mov_b32 s42, s58
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:448
	scratch_store_b32 off, v3, off offset:436
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v3, s35, v3
	scratch_store_b32 off, v1, off offset:444 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x50, v24
	v_xor_b32_e32 v0, 0x60, v24
	v_mov_b32_e32 v55, v117
	scratch_store_b32 off, v3, off offset:452 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s35, v3
	v_add_nc_u32_e32 v1, 0, v1
	v_add_nc_u32_e32 v0, 0, v0
	s_mov_b32 s37, 0
	.loc	1 613 26                        ; attention_backward.py:613:26
	s_mul_i32 s36, s6, s36
	.loc	1 683 27                        ; attention_backward.py:683:27
	s_mul_i32 s45, s6, s45
	scratch_store_b32 off, v1, off offset:456 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x80, v24
	s_cselect_b32 s72, -1, 0
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:472
	scratch_store_b32 off, v3, off offset:460
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v3, s35, v3
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	v_xor_b32_e32 v1, 0xa0, v24
	v_xor_b32_e32 v2, 0xb0, v24
	scratch_store_b32 off, v3, off offset:476 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s35, v3
	s_and_b32 s53, s53, 0xffff
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v0, off offset:468 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x90, v24
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s57, s31, 0xffff
	scratch_store_b32 off, v1, off offset:488 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v2
	v_add_nc_u32_e32 v0, 0, v0
	v_xor_b32_e32 v2, 0xf0, v24
	s_mov_b32 s56, s30
	s_and_b32 s61, s27, 0xffff
	s_mov_b32 s60, s26
	scratch_store_b32 off, v0, off offset:480 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xc0, v24
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v66, off offset:752
	scratch_store_b32 off, v67, off offset:756
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:496
	scratch_store_b32 off, v3, off offset:484
	v_add_nc_u32_e32 v3, s35, v3
	scratch_store_b32 off, v1, off offset:492 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xd0, v24
	v_xor_b32_e32 v0, 0xe0, v24
	scratch_store_b32 off, v3, off offset:500 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s35, v3
	v_add_nc_u32_e32 v1, 0, v1
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v3, off offset:508
	scratch_store_b32 off, v1, off offset:504
	scratch_store_b32 off, v0, off offset:512
	v_xor_b32_e32 v1, 0x90, v25
	v_add_nc_u32_e32 v0, 0, v2
	v_xor_b32_e32 v2, 16, v26
	v_add_nc_u32_e32 v3, s35, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v126, 0, v1
	v_xor_b32_e32 v1, 0x1b0, v25
	scratch_store_b32 off, v3, off offset:520 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s35, v3
	v_add_nc_u32_e32 v22, 0, v1
	v_add_nc_u32_e32 v1, 0, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:528
	scratch_store_b32 off, v26, off offset:332
	v_xor_b32_e32 v1, 48, v26
	v_xor_b32_e32 v2, 32, v23
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v0, off offset:516 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x120, v25
	v_add_nc_u32_e32 v28, 0, v2
	v_xor_b32_e32 v2, 0x60, v23
	scratch_store_b32 off, v1, off offset:540 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 48, v23
	v_add_nc_u32_e32 v249, 0, v0
	v_xor_b32_e32 v0, 32, v26
	v_add_nc_u32_e32 v20, 0, v2
	v_xor_b32_e32 v2, 0x1b0, v29
	v_add_nc_u32_e32 v30, 0, v1
	v_xor_b32_e32 v1, 0x50, v23
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:532
	scratch_store_b32 off, v3, off offset:524
	v_xor_b32_e32 v0, 16, v23
	v_add_nc_u32_e32 v19, 0, v1
	v_xor_b32_e32 v1, 0x90, v29
	v_add_nc_u32_e32 v3, s35, v3
	v_add_nc_u32_e32 v26, 0, v2
	v_add_nc_u32_e32 v24, 0, v0
	v_xor_b32_e32 v0, 64, v23
	v_xor_b32_e32 v2, 0x3f0, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v17, 0, v0
	v_xor_b32_e32 v0, 0x70, v23
	v_add_nc_u32_e32 v23, 0, v1
	v_xor_b32_e32 v1, 0x240, v29
	v_add_nc_u32_e32 v32, 0, v2
	v_add_nc_u32_e32 v21, 0, v0
	v_xor_b32_e32 v0, 0x120, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v27, 0, v1
	v_xor_b32_e32 v1, 0x360, v29
	v_add_nc_u32_e32 v25, 0, v0
	v_xor_b32_e32 v0, 0x2d0, v29
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v31, 0, v1
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v1, 16, v65
	scratch_store_b32 off, v3, off offset:536 ; 4-byte Folded Spill
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v3, s35, v3
	.loc	1 520 26                        ; attention_backward.py:520:26
	scratch_store_b32 off, v1, off offset:608 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 18, v65
	scratch_store_b32 off, v3, off offset:544 ; 4-byte Folded Spill
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v3, s35, v3
	scratch_store_b32 off, v3, off offset:552 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s35, v3
	scratch_store_b32 off, v3, off offset:556 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s35, v3
	scratch_store_b32 off, v3, off offset:560 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s35, v3
	scratch_store_b32 off, v3, off offset:564 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s35, v3
	scratch_store_b32 off, v29, off offset:568 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v29, 0, v0
	v_add_nc_u32_e32 v0, s35, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:572
	scratch_store_b32 off, v0, off offset:576
	v_add_nc_u32_e32 v0, s35, v0
	scratch_store_b32 off, v0, off offset:580 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s35, v0
	scratch_store_b32 off, v0, off offset:584 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s35, v0
	scratch_store_b32 off, v0, off offset:588 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s35, v0
	scratch_store_b32 off, v0, off offset:592 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s35, v0
	scratch_store_b32 off, v0, off offset:596 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s35, v0
	scratch_store_b32 off, v0, off offset:600 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s35, v0
	scratch_store_b32 off, v0, off offset:604 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s35, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:612
	scratch_store_b32 off, v0, off offset:672
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v1, 20, v65
	v_add_nc_u32_e32 v0, s35, v0
	scratch_store_b32 off, v1, off offset:676 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 22, v65
	v_mov_b32_e32 v140, v0
	v_add_nc_u32_e32 v214, s35, v0
	scratch_store_b32 off, v1, off offset:680 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s34, 18, v[114:115]
	scratch_store_b64 off, v[0:1], off offset:616 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s34, 20, v[114:115]
	scratch_store_b64 off, v[0:1], off offset:624 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s34, 22, v[114:115]
	scratch_store_b64 off, v[0:1], off offset:632 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s34, 24, v[114:115]
	scratch_store_b64 off, v[0:1], off offset:640 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s34, 26, v[114:115]
	scratch_store_b64 off, v[0:1], off offset:648 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s34, 28, v[114:115]
	scratch_store_b64 off, v[0:1], off offset:656 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s34, 30, v[114:115]
	scratch_store_b64 off, v[0:1], off offset:664 ; 8-byte Folded Spill
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
	s_and_not1_b32 vcc_lo, exec_lo, s72
	s_cbranch_vccnz .LBB0_4
; %bb.6:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_add_i32 s3, s37, s70
	s_mov_b32 s73, s69
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
	s_or_b32 s19, s73, 13
	s_or_b32 s20, s73, 14
	s_or_b32 s75, s73, 15
	s_or_b32 s76, s73, 16
	s_or_b32 s77, s73, 17
	s_or_b32 s95, s73, 18
	s_or_b32 s96, s73, 19
	s_or_b32 s97, s73, 20
	s_or_b32 s98, s73, 21
	s_or_b32 s99, s73, 22
	s_or_b32 s100, s73, 23
	s_or_b32 s101, s73, 24
	s_or_b32 s102, s73, 25
	s_or_b32 s103, s73, 26
	s_or_b32 s104, s73, 27
	s_or_b32 vcc_hi, s73, 28
	s_or_b32 s64, s73, 29
	s_or_b32 s40, s73, 30
	s_or_b32 s41, s73, 31
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s73, s38
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_and_b16 v0.l, 0xff, v69.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s3, s38
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_waitcnt lgkmcnt(0)
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s8, s38
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e32 vcc_lo, 0, v0.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s9, s38
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_and_b16 v0.l, 0xff, v69.h
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s10, s38
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_barrier
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s11, s38
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s6, 0, v0.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s12, s38
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s30, s30, s35
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s13, s38
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v81, 2, v81
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s14, s38
	v_add_nc_u32_e32 v89, s35, v214
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s15, s38
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v87, s30, v140, 2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s16, s38
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_cndmask_b32_e64 v81, 0x80000000, v81, s5
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s17, s38
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v88, s30, v214, 2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s18, s38
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v89, s30, v89, 2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s19, s38
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v124, v117 :: v_dual_add_nc_u32 v119, 0x1000, v247
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s20, s38
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v123, v117 :: v_dual_add_nc_u32 v120, 0x1400, v247
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s75, s38
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v116, 0x800, v247
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s76, s38
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v118, 0xc00, v247
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s77, s38
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v227.h, v227.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s95, s38
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v227.l, 0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s96, s38
	.loc	1 689 25                        ; attention_backward.py:689:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s97, s38
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v125.l, v227.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s98, s38
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v134.l, v227.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s99, s38
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v129.l, v227.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s100, s38
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v211.l, v227.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s101, s38
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v212.l, v227.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s102, s38
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v218.l, v227.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s103, s38
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v223.l, v227.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s104, s38
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v215.l, v227.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 vcc_hi, s38
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v232.l, v227.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s64, s38
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v206.l, v227.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s40, s38
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v213.l, v227.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 s41, s38
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v210.l, v227.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s9, -1, 0
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s3, s74, s6
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s73, s73, 32
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v0, 0, 1, s3
	.loc	1 689 34 is_stmt 0              ; attention_backward.py:689:34
	s_waitcnt vmcnt(0)
	v_and_b16 v0.h, 0xff, v68.h
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s3, s63, vcc_lo
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	s_mov_b32 s63, s51
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v1, 0, 1, s3
	v_lshlrev_b16 v0.l, 8, v0.l
	.loc	1 689 34 is_stmt 0              ; attention_backward.py:689:34
	v_cmp_ne_u16_e32 vcc_lo, 0, v0.h
	v_and_b16 v0.h, 0xff, v66.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b16 v0.l, v1.l, v0.l
	s_and_b32 s6, s62, vcc_lo
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s3, 0, v0.h
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v1, 0, 1, s6
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	s_mov_b32 s62, s50
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s3, s59, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v0.h, 8, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s3
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s59, s51
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_or_b16 v0.h, v1.l, v0.h
	scratch_load_b32 v1, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, 0, v1
	ds_store_b16 v1, v0
	.loc	1 689 34 is_stmt 0              ; attention_backward.py:689:34
	v_and_b16 v0.l, 0xff, v67.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_ne_u16_e32 vcc_lo, 0, v0.l
	v_and_b16 v0.l, 0xff, v66.h
	v_cmp_ne_u16_e64 s3, 0, v0.l
	v_and_b16 v0.l, 0xff, v68.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s3, s31, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s6, 0, v0.l
	v_and_b16 v0.l, 0xff, v67.h
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v2, 0, 1, s3
	.loc	1 699 25 is_stmt 1              ; attention_backward.py:699:25
	s_mov_b32 s31, s51
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s6, s58, s6
	.loc	1 689 34 is_stmt 0              ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s8, 0, v0.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v1, 0, 1, s6
	s_and_b32 s6, s55, vcc_lo
	.loc	1 712 26 is_stmt 1              ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s94
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s58, s50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_mov_b16_e32 v0.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s6
	s_and_b32 s6, s54, s8
	v_lshlrev_b16 v0.l, 8, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v0.l, v1.l, v0.l
	v_cndmask_b32_e64 v1, 0, 1, s6
	v_lshlrev_b16 v1.l, 8, v1.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v1.l, v2.l, v1.l
	scratch_load_b32 v2, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v2, v0
	scratch_load_b32 v2, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v2, v0
	scratch_load_b32 v0, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x10                           ; 68-byte Folded Reload
	scratch_load_b32 v15, off, off offset:552
	scratch_load_b32 v18, off, off offset:556
	scratch_load_b32 v0, off, off offset:116
	scratch_load_b32 v1, off, off offset:392
	scratch_load_b32 v2, off, off offset:412
	scratch_load_b32 v3, off, off offset:428
	scratch_load_b32 v4, off, off offset:436
	scratch_load_b32 v5, off, off offset:452
	scratch_load_b32 v6, off, off offset:460
	scratch_load_b32 v7, off, off offset:476
	scratch_load_b32 v8, off, off offset:484
	scratch_load_b32 v9, off, off offset:500
	scratch_load_b32 v10, off, off offset:508
	scratch_load_b32 v11, off, off offset:520
	scratch_load_b32 v12, off, off offset:524
	scratch_load_b32 v13, off, off offset:536
	scratch_load_b32 v14, off, off offset:544
	s_waitcnt vmcnt(16)
	v_add_lshl_u32 v15, s30, v15, 2
	s_waitcnt vmcnt(15)
	v_add_lshl_u32 v65, s30, v18, 2
	scratch_load_b32 v18, off, off offset:560 ; 4-byte Folded Reload
	s_waitcnt vmcnt(13)
	v_add_lshl_u32 v2, s30, v2, 2
	s_waitcnt vmcnt(12)
	v_add_lshl_u32 v3, s30, v3, 2
	s_waitcnt vmcnt(11)
	v_add_lshl_u32 v4, s30, v4, 2
	s_waitcnt vmcnt(10)
	v_add_lshl_u32 v5, s30, v5, 2
	s_waitcnt vmcnt(9)
	v_add_lshl_u32 v6, s30, v6, 2
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v7, s30, v7, 2
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v8, s30, v8, 2
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v9, s30, v9, 2
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v10, s30, v10, 2
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v11, s30, v11, 2
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v12, s30, v12, 2
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v13, s30, v13, 2
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v14, s30, v14, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v66, s30, v18, 2
	scratch_load_b32 v18, off, off offset:564 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v67, s30, v18, 2
	scratch_load_b32 v18, off, off offset:572 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v68, s30, v18, 2
	scratch_load_b32 v18, off, off offset:576 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v69, s30, v18, 2
	scratch_load_b32 v18, off, off offset:580 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v70, s30, v18, 2
	scratch_load_b32 v18, off, off offset:584 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v71, s30, v18, 2
	scratch_load_b32 v18, off, off offset:588 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v72, s30, v18, 2
	scratch_load_b32 v18, off, off offset:592 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v82, s30, v18, 2
	scratch_load_b32 v18, off, off offset:596 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v83, s30, v18, 2
	scratch_load_b32 v18, off, off offset:600 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v84, s30, v18, 2
	scratch_load_b32 v18, off, off offset:604 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v85, s30, v18, 2
	scratch_load_b32 v18, off, off offset:672 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v86, s30, v18, 2
	.loc	1 689 25                        ; attention_backward.py:689:25
	scratch_load_b32 v18, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v0, s30, v0, 2
	v_add_lshl_u32 v1, s30, v1, 2
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s30, s50
	buffer_load_b32 v207, v81, s[28:31], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v132, v81, s[56:59], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s93
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v121, 0x1800, v247
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s92
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v122, 0x1c00, v247
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s91
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s90
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s89
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s88
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s87
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s86
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s85
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_b32 v0, v0, s[60:63], 0 offen
	buffer_load_b32 v1, v1, s[60:63], 0 offen
	buffer_load_b32 v2, v2, s[60:63], 0 offen
	buffer_load_b32 v3, v3, s[60:63], 0 offen
	buffer_load_b32 v4, v4, s[60:63], 0 offen
	buffer_load_b32 v5, v5, s[60:63], 0 offen
	buffer_load_b32 v6, v6, s[60:63], 0 offen
	buffer_load_b32 v7, v7, s[60:63], 0 offen
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s84
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s83
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s82
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s81
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s80
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s79
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s78
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s77
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s76
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_b32 v8, v8, s[60:63], 0 offen
	buffer_load_b32 v9, v9, s[60:63], 0 offen
	buffer_load_b32 v10, v10, s[60:63], 0 offen
	buffer_load_b32 v11, v11, s[60:63], 0 offen
	buffer_load_b32 v12, v12, s[60:63], 0 offen
	buffer_load_b32 v13, v13, s[60:63], 0 offen
	buffer_load_b32 v14, v14, s[60:63], 0 offen
	buffer_load_b32 v15, v15, s[60:63], 0 offen
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s75
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s20
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s19
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s18
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s17
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s16
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s15
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_b32 v65, v65, s[60:63], 0 offen
	buffer_load_b32 v66, v66, s[60:63], 0 offen
	buffer_load_b32 v67, v67, s[60:63], 0 offen
	buffer_load_b32 v68, v68, s[60:63], 0 offen
	buffer_load_b32 v69, v69, s[60:63], 0 offen
	buffer_load_b32 v70, v70, s[60:63], 0 offen
	buffer_load_b32 v71, v71, s[60:63], 0 offen
	buffer_load_b32 v72, v72, s[60:63], 0 offen
	v_cndmask_b32_e32 v83, 0x80000000, v83, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s14
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v84, 0x80000000, v84, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s13
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v85, 0x80000000, v85, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s12
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v86, 0x80000000, v86, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s11
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v87, 0x80000000, v87, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s10
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v88, 0x80000000, v88, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s9
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_i32 s73, s68
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v89, 0x80000000, v89, vcc_lo
	s_clause 0x7
	buffer_load_b32 v82, v82, s[60:63], 0 offen
	buffer_load_b32 v83, v83, s[60:63], 0 offen
	buffer_load_b32 v84, v84, s[60:63], 0 offen
	buffer_load_b32 v85, v85, s[60:63], 0 offen
	buffer_load_b32 v86, v86, s[60:63], 0 offen
	buffer_load_b32 v87, v87, s[60:63], 0 offen
	buffer_load_b32 v88, v88, s[60:63], 0 offen
	buffer_load_b32 v115, v89, s[60:63], 0 offen
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_waitcnt vmcnt(34)
	v_add_nc_u32_e32 v81, 0, v18
	ds_load_u8_d16_hi v92, v81
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16 v92, v81 offset:64
	ds_load_u8_d16_hi v91, v228
	ds_load_u8_d16 v90, v228 offset:64
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16 v91, v229
	ds_load_u8_d16_hi v89, v229 offset:64
	s_waitcnt lgkmcnt(2)
	ds_load_u8_d16_hi v90, v230
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16 v89, v230 offset:64
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:108
	scratch_load_b32 v81, off, off offset:112
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v133, v81, v18
	v_add_nc_u32_e32 v81, 0x400, v247
	ds_store_2addr_stride64_b32 v133, v0, v1 offset1:1
	ds_store_2addr_stride64_b32 v133, v2, v3 offset0:2 offset1:3
	ds_store_2addr_stride64_b32 v133, v4, v5 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v133, v6, v7 offset0:6 offset1:7
	ds_store_2addr_stride64_b32 v133, v8, v9 offset0:8 offset1:9
	ds_store_2addr_stride64_b32 v133, v10, v11 offset0:10 offset1:11
	ds_store_2addr_stride64_b32 v133, v12, v13 offset0:12 offset1:13
	ds_store_2addr_stride64_b32 v133, v14, v15 offset0:14 offset1:15
	ds_store_2addr_stride64_b32 v133, v65, v66 offset0:16 offset1:17
	ds_store_2addr_stride64_b32 v133, v67, v68 offset0:18 offset1:19
	ds_store_2addr_stride64_b32 v133, v69, v70 offset0:20 offset1:21
	ds_store_2addr_stride64_b32 v133, v71, v72 offset0:22 offset1:23
	ds_store_2addr_stride64_b32 v133, v82, v83 offset0:24 offset1:25
	ds_store_2addr_stride64_b32 v133, v84, v85 offset0:26 offset1:27
	ds_store_2addr_stride64_b32 v133, v86, v87 offset0:28 offset1:29
	ds_store_2addr_stride64_b32 v133, v88, v115 offset0:30 offset1:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[160:161], v81 offset1:32
	ds_load_2addr_b32 v[176:177], v81 offset0:64 offset1:96
	ds_load_2addr_b32 v[162:163], v81 offset0:128 offset1:160
	ds_load_2addr_b32 v[178:179], v81 offset0:192 offset1:224
	ds_load_2addr_b32 v[164:165], v116 offset1:32
	ds_load_2addr_b32 v[180:181], v116 offset0:64 offset1:96
	ds_load_2addr_b32 v[166:167], v116 offset0:128 offset1:160
	ds_load_2addr_b32 v[182:183], v116 offset0:192 offset1:224
	ds_load_2addr_b32 v[168:169], v118 offset1:32
	ds_load_2addr_b32 v[184:185], v118 offset0:64 offset1:96
	ds_load_2addr_b32 v[158:159], v118 offset0:128 offset1:160
	ds_load_2addr_b32 v[186:187], v118 offset0:192 offset1:224
	ds_load_2addr_b32 v[156:157], v119 offset1:32
	ds_load_2addr_b32 v[188:189], v119 offset0:64 offset1:96
	ds_load_2addr_b32 v[154:155], v119 offset0:128 offset1:160
	ds_load_2addr_b32 v[190:191], v119 offset0:192 offset1:224
	ds_load_2addr_b32 v[152:153], v120 offset1:32
	ds_load_2addr_b32 v[192:193], v120 offset0:64 offset1:96
	ds_load_2addr_b32 v[150:151], v120 offset0:128 offset1:160
	ds_load_2addr_b32 v[194:195], v120 offset0:192 offset1:224
	ds_load_2addr_b32 v[148:149], v121 offset1:32
	ds_load_2addr_b32 v[196:197], v121 offset0:64 offset1:96
	ds_load_2addr_b32 v[146:147], v121 offset0:128 offset1:160
	ds_load_2addr_b32 v[198:199], v121 offset0:192 offset1:224
	ds_load_2addr_b32 v[144:145], v122 offset1:32
	ds_load_2addr_b32 v[200:201], v122 offset0:64 offset1:96
	ds_load_2addr_b32 v[142:143], v122 offset0:128 offset1:160
	ds_load_2addr_b32 v[202:203], v122 offset0:192 offset1:224
	ds_load_2addr_b32 v[170:171], v247 offset1:32
	ds_load_2addr_b32 v[174:175], v247 offset0:64 offset1:96
	ds_load_2addr_b32 v[172:173], v247 offset0:128 offset1:160
	ds_load_2addr_b32 v[204:205], v247 offset0:192 offset1:224
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b32 v133, v0, v65 offset1:16
	scratch_load_b32 v0, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v118, v117
	v_mov_b32_e32 v119, v117
	v_mov_b32_e32 v120, v117
	v_mov_b32_e32 v121, v117
	v_mov_b32_e32 v122, v117
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v116.l, v227.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v1, v66 offset1:16
	scratch_load_b32 v0, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v2, v67 offset1:16
	scratch_load_b32 v0, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v3, v68 offset1:16
	scratch_load_b32 v0, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v4, v69 offset1:16
	scratch_load_b32 v0, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v5, v70 offset1:16
	scratch_load_b32 v0, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v6, v71 offset1:16
	scratch_load_b32 v0, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v7, v72 offset1:16
	scratch_load_b32 v0, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v8, v82 offset1:16
	scratch_load_b32 v0, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v9, v83 offset1:16
	scratch_load_b32 v0, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v10, v84 offset1:16
	scratch_load_b32 v0, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v11, v85 offset1:16
	scratch_load_b32 v0, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v12, v86 offset1:16
	scratch_load_b32 v0, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v13, v87 offset1:16
	scratch_load_b32 v0, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v14, v88 offset1:16
	scratch_load_b32 v0, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v15, v115 offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:324
	scratch_load_b32 v4, off, off offset:432
	scratch_load_b32 v18, off, off offset:140
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v115.l, v227.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, 0, v0
	s_waitcnt vmcnt(1)
	ds_load_b128 v[4:7], v4
	ds_load_b128 v[0:3], v0
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s8, v4, v4
	v_cmp_o_f32_e64 s9, v5, v5
	v_cmp_o_f32_e64 s10, v6, v6
	v_cmp_o_f32_e64 s11, v7, v7
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v8, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cmp_o_f32_e64 s3, v1, v1
	v_cmp_o_f32_e64 s5, v2, v2
	v_cmp_o_f32_e64 s6, v3, v3
	v_add3_u32 v8, v0, v8, 0x7fff
	v_bfe_u32 v0, v1, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v81.l, 0x7fff, v8.h, vcc_lo
	v_add3_u32 v9, v1, v0, 0x7fff
	v_bfe_u32 v0, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v81.h, 0x7fff, v9.h, s3
	v_add3_u32 v10, v2, v0, 0x7fff
	v_bfe_u32 v0, v3, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v82.l, 0x7fff, v10.h, s5
	v_add3_u32 v11, v3, v0, 0x7fff
	v_bfe_u32 v0, v4, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v82.h, 0x7fff, v11.h, s6
	v_add3_u32 v12, v4, v0, 0x7fff
	v_bfe_u32 v0, v5, 16, 1
	scratch_load_b32 v4, off, off offset:444 ; 4-byte Folded Reload
	v_cndmask_b16 v83.l, 0x7fff, v12.h, s8
	v_add3_u32 v13, v5, v0, 0x7fff
	v_bfe_u32 v0, v6, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v13.h, s9
	v_add3_u32 v14, v6, v0, 0x7fff
	v_bfe_u32 v0, v7, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v14.h, s10
	v_add3_u32 v15, v7, v0, 0x7fff
	scratch_load_b32 v0, off, off offset:440 ; 4-byte Folded Reload
	v_cndmask_b16 v84.h, 0x7fff, v15.h, s11
	s_waitcnt vmcnt(1)
	ds_load_b128 v[4:7], v4
	s_waitcnt vmcnt(0)
	ds_load_b128 v[0:3], v0
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s16, v4, v4
	v_cmp_o_f32_e64 s17, v5, v5
	v_cmp_o_f32_e64 s18, v6, v6
	v_cmp_o_f32_e64 s19, v7, v7
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v65, v0, 16, 1
	v_cmp_o_f32_e64 s12, v0, v0
	v_cmp_o_f32_e64 s13, v1, v1
	v_cmp_o_f32_e64 s14, v2, v2
	v_cmp_o_f32_e64 s15, v3, v3
	v_add3_u32 v0, v0, v65, 0x7fff
	v_bfe_u32 v65, v1, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.l, 0x7fff, v0.h, s12
	v_add3_u32 v1, v1, v65, 0x7fff
	v_bfe_u32 v65, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.h, 0x7fff, v1.h, s13
	v_add3_u32 v2, v2, v65, 0x7fff
	v_bfe_u32 v65, v3, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.l, 0x7fff, v2.h, s14
	v_add3_u32 v3, v3, v65, 0x7fff
	v_bfe_u32 v65, v4, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.h, 0x7fff, v3.h, s15
	v_add3_u32 v4, v4, v65, 0x7fff
	v_bfe_u32 v65, v5, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.l, 0x7fff, v4.h, s16
	v_add3_u32 v5, v5, v65, 0x7fff
	v_bfe_u32 v65, v6, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.h, 0x7fff, v5.h, s17
	v_add3_u32 v6, v6, v65, 0x7fff
	v_bfe_u32 v65, v7, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v88.l, 0x7fff, v6.h, s18
	v_add3_u32 v7, v7, v65, 0x7fff
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v65, v117 :: v_dual_mov_b32 v70, v122
	v_dual_mov_b32 v66, v118 :: v_dual_mov_b32 v67, v119
	v_mov_b32_e32 v72, v124
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v88.h, 0x7fff, v7.h, s19
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:280
	scratch_load_b128 v[4:7], off, off offset:296
	v_dual_mov_b32 v68, v120 :: v_dual_mov_b32 v69, v121
	v_mov_b32_e32 v71, v123
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v124.l, v227.l
	v_mov_b16_e64 v122.l, v227.l
	v_mov_b16_e64 v123.l, v227.l
	v_mov_b16_e64 v121.l, v227.l
	v_mov_b16_e64 v119.l, v227.l
	v_mov_b16_e64 v118.l, v227.l
	v_mov_b16_e64 v120.l, v227.l
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[0:7], v[81:88], v[65:72]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:448
	scratch_load_b32 v4, off, off offset:456
	s_waitcnt vmcnt(1)
	ds_load_b128 v[0:3], v0
	s_waitcnt vmcnt(0)
	ds_load_b128 v[4:7], v4
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v8, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s8, v4, v4
	v_cmp_o_f32_e64 s3, v1, v1
	v_cmp_o_f32_e64 s5, v2, v2
	v_add3_u32 v8, v0, v8, 0x7fff
	v_bfe_u32 v0, v1, 16, 1
	v_cmp_o_f32_e64 s6, v3, v3
	v_cmp_o_f32_e64 s9, v5, v5
	v_cmp_o_f32_e64 s10, v6, v6
	v_cmp_o_f32_e64 s11, v7, v7
	v_add3_u32 v9, v1, v0, 0x7fff
	v_bfe_u32 v0, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v2, v0, 0x7fff
	v_bfe_u32 v0, v3, 16, 1
	v_cndmask_b16 v82.l, 0x7fff, v10.h, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v11, v3, v0, 0x7fff
	v_bfe_u32 v0, v4, 16, 1
	v_cndmask_b16 v82.h, 0x7fff, v11.h, s6
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v12, v4, v0, 0x7fff
	v_bfe_u32 v0, v5, 16, 1
	scratch_load_b32 v4, off, off offset:468 ; 4-byte Folded Reload
	v_cndmask_b16 v83.l, 0x7fff, v12.h, s8
	v_add3_u32 v13, v5, v0, 0x7fff
	v_bfe_u32 v0, v6, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v13.h, s9
	v_add3_u32 v14, v6, v0, 0x7fff
	v_bfe_u32 v0, v7, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v14.h, s10
	v_add3_u32 v15, v7, v0, 0x7fff
	scratch_load_b32 v0, off, off offset:464 ; 4-byte Folded Reload
	v_cndmask_b16 v84.h, 0x7fff, v15.h, s11
	s_waitcnt vmcnt(1)
	ds_load_b128 v[4:7], v4
	s_waitcnt vmcnt(0)
	ds_load_b128 v[0:3], v0
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s16, v4, v4
	v_cmp_o_f32_e64 s17, v5, v5
	v_cmp_o_f32_e64 s18, v6, v6
	v_cmp_o_f32_e64 s19, v7, v7
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v81, v0, 16, 1
	v_cmp_o_f32_e64 s12, v0, v0
	v_cmp_o_f32_e64 s13, v1, v1
	v_cmp_o_f32_e64 s14, v2, v2
	v_cmp_o_f32_e64 s15, v3, v3
	v_add3_u32 v85, v0, v81, 0x7fff
	v_bfe_u32 v0, v1, 16, 1
	v_cndmask_b16 v81.l, 0x7fff, v8.h, vcc_lo
	v_cndmask_b16 v81.h, 0x7fff, v9.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v85.l, 0x7fff, v85.h, s12
	v_add3_u32 v0, v1, v0, 0x7fff
	v_bfe_u32 v1, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.h, 0x7fff, v0.h, s13
	v_add3_u32 v1, v2, v1, 0x7fff
	v_bfe_u32 v2, v3, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.l, 0x7fff, v1.h, s14
	v_add3_u32 v2, v3, v2, 0x7fff
	v_bfe_u32 v3, v4, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.h, 0x7fff, v2.h, s15
	v_add3_u32 v3, v4, v3, 0x7fff
	v_bfe_u32 v4, v5, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.l, 0x7fff, v3.h, s16
	v_add3_u32 v4, v5, v4, 0x7fff
	v_bfe_u32 v5, v6, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.h, 0x7fff, v4.h, s17
	v_add3_u32 v5, v6, v5, 0x7fff
	v_bfe_u32 v6, v7, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v88.l, 0x7fff, v5.h, s18
	v_add3_u32 v6, v7, v6, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v88.h, 0x7fff, v6.h, s19
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:248
	scratch_load_b128 v[4:7], off, off offset:264
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[0:7], v[81:88], v[65:72]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:472
	scratch_load_b32 v4, off, off offset:480
	s_waitcnt vmcnt(1)
	ds_load_b128 v[0:3], v0
	s_waitcnt vmcnt(0)
	ds_load_b128 v[4:7], v4
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v8, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s8, v4, v4
	v_cmp_o_f32_e64 s3, v1, v1
	v_cmp_o_f32_e64 s5, v2, v2
	v_add3_u32 v8, v0, v8, 0x7fff
	v_bfe_u32 v0, v1, 16, 1
	v_cmp_o_f32_e64 s6, v3, v3
	v_cmp_o_f32_e64 s9, v5, v5
	v_cmp_o_f32_e64 s10, v6, v6
	v_cmp_o_f32_e64 s11, v7, v7
	v_add3_u32 v9, v1, v0, 0x7fff
	v_bfe_u32 v0, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v2, v0, 0x7fff
	v_bfe_u32 v0, v3, 16, 1
	v_cndmask_b16 v82.l, 0x7fff, v10.h, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v11, v3, v0, 0x7fff
	v_bfe_u32 v0, v4, 16, 1
	v_cndmask_b16 v82.h, 0x7fff, v11.h, s6
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v12, v4, v0, 0x7fff
	v_bfe_u32 v0, v5, 16, 1
	scratch_load_b32 v4, off, off offset:492 ; 4-byte Folded Reload
	v_cndmask_b16 v83.l, 0x7fff, v12.h, s8
	v_add3_u32 v13, v5, v0, 0x7fff
	v_bfe_u32 v0, v6, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v13.h, s9
	v_add3_u32 v14, v6, v0, 0x7fff
	v_bfe_u32 v0, v7, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v14.h, s10
	v_add3_u32 v15, v7, v0, 0x7fff
	scratch_load_b32 v0, off, off offset:488 ; 4-byte Folded Reload
	v_cndmask_b16 v84.h, 0x7fff, v15.h, s11
	s_waitcnt vmcnt(1)
	ds_load_b128 v[4:7], v4
	s_waitcnt vmcnt(0)
	ds_load_b128 v[0:3], v0
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s16, v4, v4
	v_cmp_o_f32_e64 s17, v5, v5
	v_cmp_o_f32_e64 s18, v6, v6
	v_cmp_o_f32_e64 s19, v7, v7
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v81, v0, 16, 1
	v_cmp_o_f32_e64 s12, v0, v0
	v_cmp_o_f32_e64 s13, v1, v1
	v_cmp_o_f32_e64 s14, v2, v2
	v_cmp_o_f32_e64 s15, v3, v3
	v_add3_u32 v85, v0, v81, 0x7fff
	v_bfe_u32 v0, v1, 16, 1
	v_cndmask_b16 v81.l, 0x7fff, v8.h, vcc_lo
	v_cndmask_b16 v81.h, 0x7fff, v9.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v85.l, 0x7fff, v85.h, s12
	v_add3_u32 v0, v1, v0, 0x7fff
	v_bfe_u32 v1, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.h, 0x7fff, v0.h, s13
	v_add3_u32 v1, v2, v1, 0x7fff
	v_bfe_u32 v2, v3, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.l, 0x7fff, v1.h, s14
	v_add3_u32 v2, v3, v2, 0x7fff
	v_bfe_u32 v3, v4, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.h, 0x7fff, v2.h, s15
	v_add3_u32 v3, v4, v3, 0x7fff
	v_bfe_u32 v4, v5, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.l, 0x7fff, v3.h, s16
	v_add3_u32 v4, v5, v4, 0x7fff
	v_bfe_u32 v5, v6, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.h, 0x7fff, v4.h, s17
	v_add3_u32 v5, v6, v5, 0x7fff
	v_bfe_u32 v6, v7, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v88.l, 0x7fff, v5.h, s18
	v_add3_u32 v6, v7, v6, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v88.h, 0x7fff, v6.h, s19
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:216
	scratch_load_b128 v[4:7], off, off offset:232
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[0:7], v[81:88], v[65:72]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:496
	scratch_load_b32 v4, off, off offset:504
	s_waitcnt vmcnt(1)
	ds_load_b128 v[0:3], v0
	s_waitcnt vmcnt(0)
	ds_load_b128 v[4:7], v4
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v8, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s8, v4, v4
	v_cmp_o_f32_e64 s3, v1, v1
	v_cmp_o_f32_e64 s5, v2, v2
	v_add3_u32 v8, v0, v8, 0x7fff
	v_bfe_u32 v0, v1, 16, 1
	v_cmp_o_f32_e64 s6, v3, v3
	v_cmp_o_f32_e64 s9, v5, v5
	v_cmp_o_f32_e64 s10, v6, v6
	v_cmp_o_f32_e64 s11, v7, v7
	v_add3_u32 v9, v1, v0, 0x7fff
	v_bfe_u32 v0, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v2, v0, 0x7fff
	v_bfe_u32 v0, v3, 16, 1
	v_cndmask_b16 v82.l, 0x7fff, v10.h, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v11, v3, v0, 0x7fff
	v_bfe_u32 v0, v4, 16, 1
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v10, v75
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v82.h, 0x7fff, v11.h, s6
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v12, v4, v0, 0x7fff
	v_bfe_u32 v0, v5, 16, 1
	scratch_load_b32 v4, off, off offset:516 ; 4-byte Folded Reload
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v11, v76
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v83.l, 0x7fff, v12.h, s8
	v_add3_u32 v13, v5, v0, 0x7fff
	v_bfe_u32 v0, v6, 16, 1
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v12, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v83.h, 0x7fff, v13.h, s9
	v_add3_u32 v14, v6, v0, 0x7fff
	v_bfe_u32 v0, v7, 16, 1
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v13, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v84.l, 0x7fff, v14.h, s10
	v_add3_u32 v15, v7, v0, 0x7fff
	scratch_load_b32 v0, off, off offset:512 ; 4-byte Folded Reload
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v14, v79
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v84.h, 0x7fff, v15.h, s11
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v15, v80
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(1)
	ds_load_b128 v[4:7], v4
	s_waitcnt vmcnt(0)
	ds_load_b128 v[0:3], v0
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s16, v4, v4
	v_cmp_o_f32_e64 s17, v5, v5
	v_cmp_o_f32_e64 s18, v6, v6
	v_cmp_o_f32_e64 s19, v7, v7
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v81, v0, 16, 1
	v_cmp_o_f32_e64 s12, v0, v0
	v_cmp_o_f32_e64 s13, v1, v1
	v_cmp_o_f32_e64 s14, v2, v2
	v_cmp_o_f32_e64 s15, v3, v3
	v_add3_u32 v85, v0, v81, 0x7fff
	v_bfe_u32 v0, v1, 16, 1
	v_cndmask_b16 v81.l, 0x7fff, v8.h, vcc_lo
	v_cndmask_b16 v81.h, 0x7fff, v9.h, s3
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v9, v74
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v85.l, 0x7fff, v85.h, s12
	v_add3_u32 v0, v1, v0, 0x7fff
	v_bfe_u32 v1, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.h, 0x7fff, v0.h, s13
	v_add3_u32 v1, v2, v1, 0x7fff
	v_bfe_u32 v2, v3, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.l, 0x7fff, v1.h, s14
	v_add3_u32 v2, v3, v2, 0x7fff
	v_bfe_u32 v3, v4, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.h, 0x7fff, v2.h, s15
	v_add3_u32 v3, v4, v3, 0x7fff
	v_bfe_u32 v4, v5, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.l, 0x7fff, v3.h, s16
	v_add3_u32 v4, v5, v4, 0x7fff
	v_bfe_u32 v5, v6, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.h, 0x7fff, v4.h, s17
	v_add3_u32 v5, v6, v5, 0x7fff
	v_bfe_u32 v6, v7, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v88.l, 0x7fff, v5.h, s18
	v_add3_u32 v6, v7, v6, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v88.h, 0x7fff, v6.h, s19
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:184
	scratch_load_b128 v[4:7], off, off offset:200
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[0:7], v[81:88], v[65:72]
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v0, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v1, v65, v132
	v_dual_sub_f32 v8, v72, v132 :: v_dual_mul_f32 v65, s71, v227
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_sub_f32_e32 v2, v66, v132
	v_sub_f32_e32 v4, v68, v132
	v_sub_f32_e32 v6, v70, v132
	v_sub_f32_e32 v7, v71, v132
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v0, v65, v0
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v0, v0, v18, -v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v66, v0
	.loc	1 689 25 is_stmt 1              ; attention_backward.py:689:25
	v_and_b16 v0.l, 1, v92.h
	v_cmp_eq_u16_e32 vcc_lo, 1, v0.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v87, 0, v66, vcc_lo
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_dual_sub_f32 v5, v69, v132 :: v_dual_mul_f32 v0, v87, v1
	v_sub_f32_e32 v3, v67, v132
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v0, s44, v0
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v1, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v1, v0, v1, 0x7fff
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_mul_f32_e32 v0, v65, v12
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v12, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v12, -v207
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v12, v0
	.loc	1 689 25 is_stmt 1              ; attention_backward.py:689:25
	v_and_b16 v0.l, 1, v92.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s3, 1, v0.l
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v132, 0, v12, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v0, v132, v5
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v0, s44, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v5, v0, 16, 1
	v_cmp_o_f32_e64 s3, v0, v0
	v_add3_u32 v5, v0, v5, 0x7fff
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_mul_f32_e32 v0, v65, v9
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v9, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v9, -v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v9, v0
	.loc	1 689 25 is_stmt 1              ; attention_backward.py:689:25
	v_and_b16 v0.l, 1, v91.h
	v_cmp_eq_u16_e64 s5, 1, v0.l
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v244, 0, v9, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v0, v244, v2
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v0, s44, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v2, v0, 16, 1
	v_cmp_o_f32_e64 s5, v0, v0
	v_add3_u32 v2, v0, v2, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v1.h, vcc_lo
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	scratch_load_b32 v1, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v0.h, 0x7fff, v5.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, 0, v1
	ds_store_b16 v1, v0
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s5
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v1, v0 offset:512
	v_bfe_i32 v1, v248, 0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v2, 15, v1
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.h, v1.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v5, -16, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v1.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v2, v2, v5, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v5.l, v0.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e64 v5.h, v227.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v1.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v9, -16, v5
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v1, v5, v9, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e64 v5.h, v131.l
	v_mov_b16_e64 v5.l, v227.l
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v9.h, v227.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v1, v1
	v_mul_f32_e32 v2, v2, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v1, v1, v5
	v_bfe_i32 v5, v252, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v2, 0, v2, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v5.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v5.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s5, v2, v2
	v_cmp_o_f32_e64 s6, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v9.l, v0.h, 15
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.h, v5.l, 15
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v12, -16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_dual_cndmask_b32 v9, v9, v12 :: v_dual_and_b32 v12, 15, v5
	.loc	1 650 42 is_stmt 1              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_and_b16 v0.h, 1, v91.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v9, v9
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v5, -16, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v5, v12, v5, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e64 v12.h, v130.l
	v_mov_b16_e64 v12.l, v227.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v9, v12, v9
	v_mul_f32_e32 v5, v12, v5
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v12.h, v227.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_mov_b16_e32 v12.l, v9.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_and_b32_e32 v12, 1, v12
	v_cndmask_b32_e64 v5, 0, v5, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v9, v12, 0x7fff
	v_mov_b16_e32 v9.l, v5.h
	v_mov_b16_e64 v9.h, v227.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v5, v5
	v_cndmask_b16 v12.h, 0x7fff, v12.h, vcc_lo
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v9, 1, v9
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_and_b16 v0.h, 1, v90.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v9, v5, v9, 0x7fff
	v_bfe_u32 v5, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s3
	v_add3_u32 v5, v2, v5, 0x7fff
	v_bfe_u32 v2, v1, 16, 1
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v9, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s3, 1, v0.h
	v_and_b16 v0.h, 1, v90.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v2, v1, v2, 0x7fff
	v_cndmask_b16 v2.l, 0x7fff, v5.h, s5
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v5, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v1, v65, v10
	v_mul_f32_e32 v10, v65, v11
	v_mul_f32_e32 v11, v65, v13
	v_mul_f32_e32 v13, v65, v14
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s5, 1, v0.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s6
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_and_b16 v0.h, 1, v89.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s6, 1, v0.h
	v_and_b16 v0.h, 1, v89.l
	v_cmp_eq_u16_e64 s8, 1, v0.h
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(1)
	v_fma_f32 v9, v11, v9, -v207
	scratch_load_b32 v11, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v1, v1, v5, -v207
	scratch_load_b32 v5, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e32 v130, 0, v1, vcc_lo
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v1, v130, v3
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v14, v65, v15
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v15, v202, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v1, s44, v1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v15, v202, v15, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v15.l, v227.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v3, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(1)
	v_fma_f32 v11, v14, v11, -v207
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v14, v200, 16, 1
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v5, v10, v5, -v207
	scratch_load_b32 v10, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v14, v200, v14, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v14.l, v227.l
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v1, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v131, 0, v1, s3
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v1, v131, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v1, s44, v1
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v4, v1, 16, 1
	v_cmp_o_f32_e64 s3, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v4, v1, v4, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v1, v9
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v9, v204, 16, 1
	v_add3_u32 v9, v204, v9, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v248, 0, v1, s5
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v1, v248, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v1, s44, v1
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v5, v1, 16, 1
	v_cmp_o_f32_e64 s5, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v5, v1, v5, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v5.h, s5
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	ds_store_b16 v126, v0
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v0.l, 0x7fff, v3.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v126, v0 offset:512
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v10, v13, v10, -v207
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v13, v198, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v1, v10
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v10, v192, 16, 1
	v_add3_u32 v13, v198, v13, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v13.l, v227.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v10, v192, v10, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v10.l, v227.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v252, 0, v1, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v1, v252, v7
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v1, s44, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v6, v1, 16, 1
	v_cmp_o_f32_e64 s6, v1, v1
	v_add3_u32 v6, v1, v6, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v1, v11
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v11, v194, 16, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v0.h, 0x7fff, v6.h, s6
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v249, v0
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v0.l, 0x7fff, v4.h, s3
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v11, v194, v11, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v11.l, v227.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v249, v0 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v207, 0, v1, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v1, v207, v8
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v1, s44, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v7, v1, 16, 1
	v_cmp_o_f32_e64 s8, v1, v1
	v_add3_u32 v7, v1, v7, 0x7fff
	v_bfe_i32 v1, v225, 0, 8
	.loc	1 732 54 is_stmt 1              ; attention_backward.py:732:54
	v_mov_b16_e64 v225.l, v227.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v3, 15, v1
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.h, v1.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v4, -16, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v3, v3, v4, vcc_lo
	v_bfe_i32 v4, v235, 0, 8
	.loc	1 732 54 is_stmt 1              ; attention_backward.py:732:54
	v_mov_b16_e64 v235.l, v227.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v3, v3
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v5, 15, v4
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.h, v4.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v6, -16, v5
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v5, v5, v6, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v6.l, v0.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e64 v6.h, v227.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v1.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v4.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v8, -16, v6
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v1, v6, v8, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v6.l, v0.h, 15
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v0.h, 0x7fff, v7.h, s8
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v22, v0
	ds_store_b16_d16_hi v22, v0 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v8, -16, v6
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v4.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v4, v6, v8, vcc_lo
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v6.h, v128.l
	v_mov_b16_e64 v6.l, v227.l
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v128.l, v227.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v8, v170, 16, 1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v3, v3, v6
	v_mul_f32_e32 v1, v1, v6
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v6.h, v127.l
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v127.l, v227.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v8, v170, v8, 0x7fff
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v5, v5, v6
	v_mul_f32_e32 v4, v4, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v6, v3, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_cmp_o_f32_e64 s3, v1, v1
	v_add3_u32 v6, v3, v6, 0x7fff
	v_bfe_u32 v3, v1, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b32_e64 v1, 0, v5, s0
	v_bfe_u32 v5, v1, 16, 1
	v_cmp_o_f32_e64 s5, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v5, v1, v5, 0x7fff
	v_cndmask_b32_e64 v1, 0, v4, s1
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v4, v1, 16, 1
	v_cmp_o_f32_e64 s6, v1, v1
	v_add3_u32 v4, v1, v4, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v6.h, vcc_lo
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s6
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, 0, v0
	ds_load_b128 v[74:77], v0
	scratch_load_b32 v0, off, off offset:528 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[78:81], v0
	scratch_load_b32 v0, off, off offset:532 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[66:69], v0
	scratch_load_b32 v0, off, off offset:540 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[70:73], v0
	v_bfe_i32 v0, v231, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b32 v133, v12, v2 offset1:1
	ds_store_2addr_stride64_b32 v133, v1, v3 offset0:2 offset1:3
	v_mov_b16_e32 v2.l, v0.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v12, v196, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v231.l, v227.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v4, 15, v2
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.l, v2.l, 15
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v12, v196, v12, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v12.l, v227.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v5, -16, v4
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	v_bfe_i32 v0, v112, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v0.h, v227.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v112.l, v227.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v4, v4, v5, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v5.l, v0.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.l, v5.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v6, 15, v5
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e64 v5.h, v234.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v234.l, v227.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v2.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v7, -16, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v6, v6, v7, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v2.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v7, -16, v0
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v2, v0, v7, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v5.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v5.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v5.l, v227.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v4, v4, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v2, v2, v5
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v7, -16, v0
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v5.h, v233.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v233.l, v227.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v0, v0, v7, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v6, v6, v5
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v2, v2
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v0, v0, v5
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v5, v4, 16, 1
	v_cndmask_b32_e64 v0, 0, v0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v5, v4, v5, 0x7fff
	v_bfe_u32 v4, v2, 16, 1
	v_cmp_o_f32_e64 s6, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v4, v2, v4, 0x7fff
	v_cndmask_b32_e64 v2, 0, v6, s0
	v_cndmask_b16 v4.l, 0x7fff, v5.h, vcc_lo
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v6, v2, 16, 1
	v_cmp_o_f32_e64 s5, v2, v2
	v_add3_u32 v6, v2, v6, 0x7fff
	v_bfe_u32 v2, v0, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v2, v0, v2, 0x7fff
	v_bfe_i32 v0, v113, 0, 8
	v_cndmask_b16 v2.l, 0x7fff, v6.h, s5
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v113.l, v227.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s6
	v_mov_b16_e32 v1.l, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v3, 15, v1
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.l, v1.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v5, -16, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	v_bfe_i32 v0, v110, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v0.h, v227.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v3, v3, v5, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v5.l, v0.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.l, v5.l, 15
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b16 v0.l, v0.l, 15
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v6, 15, v5
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v5.h, v111.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v7, -16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v6, v6, v7, vcc_lo
	.loc	1 651 60 is_stmt 1              ; attention_backward.py:651:60
	v_or_b32_e32 v7, -16, v0
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v1.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v1, v0, v7, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v5.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v5.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v5.l, v227.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v3, v3, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v1, v1, v5
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v7, -16, v0
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v5.h, v109.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v1, 0, v1, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v0, v0, v7, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v6, v6, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_cmp_o_f32_e64 s3, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v0, v0
	v_mul_f32_e32 v0, v0, v5
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v5, v3, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v0, 0, v0, s1
	v_add3_u32 v5, v3, v5, 0x7fff
	v_bfe_u32 v3, v1, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s6, v0, v0
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b32_e64 v1, 0, v6, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v6, v1, 16, 1
	v_cmp_o_f32_e64 s5, v1, v1
	v_add3_u32 v6, v1, v6, 0x7fff
	v_bfe_u32 v1, v0, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v1, v0, v1, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v5.h, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v1.l, 0x7fff, v6.h, s5
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s6
	ds_store_2addr_stride64_b32 v133, v4, v2 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v133, v0, v1 offset0:6 offset1:7
	v_bfe_i32 v0, v108, 0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v1.l, v0.l
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v2, 15, v1
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.l, v1.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v3, -16, v2
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	v_bfe_i32 v0, v106, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v0.h, v227.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v2, v2, v3, vcc_lo
	v_mov_b16_e32 v3.l, v0.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.l, v3.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v1.l
	v_and_b16 v0.l, v0.l, 15
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v4, 15, v3
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v3.h, v107.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v5, -16, v4
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v4, v4, v5, vcc_lo
	.loc	1 651 60 is_stmt 1              ; attention_backward.py:651:60
	v_or_b32_e32 v5, -16, v0
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v1, v0, v5, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v3.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v3.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v3.l, v227.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v1, v1
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v2, v2, v3
	v_mul_f32_e32 v1, v1, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v5, -16, v0
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v3.h, v105.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v2, 0, v2, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v0, v0, v5, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v4, v4, v3
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v1, v1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v0, v0, v3
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v3, v2, 16, 1
	v_cndmask_b32_e64 v0, 0, v0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v3, v2, v3, 0x7fff
	v_bfe_u32 v2, v1, 16, 1
	v_cmp_o_f32_e64 s6, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v2, v1, v2, 0x7fff
	v_cndmask_b32_e64 v1, 0, v4, s0
	v_cndmask_b16 v2.l, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v4, v1, 16, 1
	v_cmp_o_f32_e64 s5, v1, v1
	v_add3_u32 v4, v1, v4, 0x7fff
	v_bfe_u32 v1, v0, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v1, v0, v1, 0x7fff
	v_bfe_i32 v0, v102, 0, 8
	v_mov_b16_e32 v1.l, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.l, v1.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v3, 15, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 42 is_stmt 1              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	v_bfe_i32 v0, v101, 0, 8
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v5, -16, v3
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v0.h, v227.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v4.l, v0.l
	.loc	1 650 33                        ; attention_backward.py:650:33
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
	v_or_b32_e32 v6, -16, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v5, v5, v6, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v6, -16, v0
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v6, v0, v6, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v4.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v4.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v7, -16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v0, v0, v7, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v7.h, v104.l
	v_mov_b16_e64 v7.l, v227.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v3, v3, v7
	v_mul_f32_e32 v6, v6, v7
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v7.h, v103.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v3, 0, v3, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v5, v5, v7
	v_mul_f32_e32 v0, v0, v7
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v7, v3, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v0, 0, v0, s1
	v_add3_u32 v7, v3, v7, 0x7fff
	v_cndmask_b32_e64 v3, 0, v6, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s9, v0, v0
	v_cndmask_b16 v1.l, 0x7fff, v7.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v6, v3, 16, 1
	v_cmp_o_f32_e64 s3, v3, v3
	v_add3_u32 v6, v3, v6, 0x7fff
	v_cndmask_b32_e64 v3, 0, v5, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v5, v3, 16, 1
	v_cmp_o_f32_e64 s8, v3, v3
	v_add3_u32 v5, v3, v5, 0x7fff
	v_bfe_u32 v3, v0, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v3, v0, v3, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v4.h, s5
	v_cndmask_b16 v0.h, 0x7fff, v1.h, s6
	v_cndmask_b16 v1.h, 0x7fff, v6.h, s3
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s8
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s9
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s8, v252, v252
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_store_2addr_stride64_b32 v133, v2, v0 offset0:8 offset1:9
	v_bfe_i32 v0, v100, 0, 8
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s9, v207, v207
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_store_2addr_stride64_b32 v133, v1, v3 offset0:10 offset1:11
	v_mov_b16_e32 v2.l, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v4, 15, v2
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.l, v2.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v5, -16, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	v_bfe_i32 v0, v99, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v0.h, v227.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v4, v4, v5, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v5.l, v0.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.l, v5.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v6, 15, v5
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v5.h, v98.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v2.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v7, -16, v6
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v6, v6, v7, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v2.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v7, -16, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v2, v0, v7, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v5.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v5.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v5.l, v227.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v4, v4, v5
	v_mul_f32_e32 v2, v2, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v7, -16, v0
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v5.h, v97.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v4, 0, v4, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v0, v0, v7, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v6, v6, v5
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v2, v2
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v0, v0, v5
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v5, v4, 16, 1
	v_cndmask_b32_e64 v0, 0, v0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v5, v4, v5, 0x7fff
	v_bfe_u32 v4, v2, 16, 1
	v_cmp_o_f32_e64 s6, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v4, v2, v4, 0x7fff
	v_cndmask_b32_e64 v2, 0, v6, s0
	v_cndmask_b16 v4.l, 0x7fff, v5.h, vcc_lo
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v6, v2, 16, 1
	v_cmp_o_f32_e64 s5, v2, v2
	v_add3_u32 v6, v2, v6, 0x7fff
	v_bfe_u32 v2, v0, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v2, v0, v2, 0x7fff
	v_bfe_i32 v0, v96, 0, 8
	v_cndmask_b16 v2.l, 0x7fff, v6.h, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s6
	v_mov_b16_e32 v1.l, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v3, 15, v1
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.l, v1.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v5, -16, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	v_bfe_i32 v0, v95, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v0.h, v227.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v3, v3, v5, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v5.l, v0.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.l, v5.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v6, 15, v5
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v5.h, v94.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v1.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v7, -16, v6
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v6, v6, v7, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v1.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v7, -16, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v1, v0, v7, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v5.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v5.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v5.l, v227.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v1, v1
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v3, v3, v5
	v_mul_f32_e32 v1, v1, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v7, -16, v0
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v5.h, v93.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v3, 0, v3, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v0, v0, v7, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v6, v6, v5
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v1, v1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v0, v0, v5
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v5, v3, 16, 1
	v_cndmask_b32_e64 v0, 0, v0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v5, v3, v5, 0x7fff
	v_bfe_u32 v3, v1, 16, 1
	v_cmp_o_f32_e64 s6, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v3, v1, v3, 0x7fff
	v_cndmask_b32_e64 v1, 0, v6, s0
	v_bfe_u32 v6, v1, 16, 1
	v_cmp_o_f32_e64 s5, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v6, v1, v6, 0x7fff
	v_bfe_u32 v1, v0, 16, 1
	v_add3_u32 v1, v0, v1, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v5.h, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v1.l, 0x7fff, v6.h, s5
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v87, v87
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s6
	ds_store_2addr_stride64_b32 v133, v4, v2 offset0:12 offset1:13
	ds_store_2addr_stride64_b32 v133, v0, v1 offset0:14 offset1:15
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v95, v251 offset:512
	ds_load_u16_d16 v96, v251 offset:768
	ds_load_u16_d16 v97, v251 offset:1024
	ds_load_u16_d16 v100, v251 offset:1792
	ds_load_u16_d16 v98, v251 offset:1280
	ds_load_u16_d16 v105, v251 offset:1088
	ds_load_u16_d16 v104, v251 offset:832
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16_hi v105, v251 offset:1216
	ds_load_u16_d16 v94, v251 offset:256
	ds_load_u16_d16 v93, v251
	ds_load_u16_d16 v99, v251 offset:1536
	ds_load_u16_d16_hi v95, v251 offset:640
	ds_load_u16_d16_hi v96, v251 offset:896
	ds_load_u16_d16_hi v97, v251 offset:1152
	ds_load_u16_d16 v106, v251 offset:1344
	ds_load_u16_d16 v85, v251 offset:2816
	ds_load_u16_d16 v86, v251 offset:3072
	ds_load_u16_d16 v92, v251 offset:2624
	ds_load_u16_d16 v91, v251 offset:2368
	ds_load_u16_d16 v82, v251 offset:2048
	ds_load_u16_d16 v83, v251 offset:2304
	ds_load_u16_d16 v84, v251 offset:2560
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v92, v251 offset:2752
	ds_load_u16_d16_hi v99, v251 offset:1664
	ds_load_u16_d16_hi v100, v251 offset:1920
	ds_load_u16_d16_hi v98, v251 offset:1408
	ds_load_u16_d16 v101, v251 offset:64
	ds_load_u16_d16_hi v94, v251 offset:384
	ds_load_u16_d16 v103, v251 offset:576
	ds_load_u16_d16 v102, v251 offset:320
	ds_load_u16_d16_hi v93, v251 offset:128
	ds_load_u16_d16 v107, v251 offset:1600
	ds_load_u16_d16 v90, v251 offset:2112
	ds_load_u16_d16 v108, v251 offset:1856
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v0, v87, 16, 1
	v_cmp_o_f32_e64 s3, v244, v244
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v101, v251 offset:192
	ds_load_u16_d16_hi v104, v251 offset:960
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v103, v251 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v102, v251 offset:448
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v0, v87, v0, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(7)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[93:100], v[74:81], v[57:64]
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_load_u16_d16_hi v106, v251 offset:1472
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v107, v251 offset:1728
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v108, v251 offset:1984
	ds_load_u16_d16_hi v85, v251 offset:2944
	ds_load_u16_d16_hi v84, v251 offset:2688
	ds_load_u16_d16_hi v83, v251 offset:2432
	ds_load_u16_d16_hi v82, v251 offset:2176
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v2, v130, 16, 1
	v_cndmask_b16 v227.h, 0x7fff, v0.h, vcc_lo
	v_cmp_o_f32_e64 s5, v130, v130
	v_bfe_u32 v3, v248, 16, 1
	v_bfe_u32 v4, v252, 16, 1
	v_add3_u32 v2, v130, v2, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v0, v87, v227
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_load_u16_d16 v93, v251 offset:2880
	ds_load_u16_d16 v87, v251 offset:3328
	ds_load_u16_d16 v94, v251 offset:3136
	ds_load_u16_d16_hi v91, v251 offset:2496
	ds_load_u16_d16_hi v90, v251 offset:2240
	ds_load_u16_d16 v88, v251 offset:3584
	ds_load_u16_d16 v89, v251 offset:3840
	ds_load_u16_d16_hi v86, v251 offset:3200
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v93, v251 offset:3008
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v87, v251 offset:3456
	ds_load_u16_d16 v97, v251 offset:3904
	ds_load_u16_d16 v96, v251 offset:3648
	ds_load_u16_d16 v95, v251 offset:3392
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v94, v251 offset:3264
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v1, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v88, v251 offset:3712
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v89, v251 offset:3968
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v97, v251 offset:4032
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v96, v251 offset:3776
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v95, v251 offset:3520
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v1, v0, v1, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v0, v244, 16, 1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b16 v115.h, 0x7fff, v2.h, s5
	v_bfe_u32 v2, v132, 16, 1
	v_add3_u32 v0, v244, v0, 0x7fff
	v_cmp_o_f32_e64 s5, v132, v132
	v_bfe_u32 v5, v207, 16, 1
	v_add3_u32 v3, v248, v3, 0x7fff
	v_add3_u32 v2, v132, v2, 0x7fff
	v_cndmask_b16 v116.h, 0x7fff, v0.h, s3
	v_bfe_u32 v0, v131, 16, 1
	v_cmp_o_f32_e64 s3, v131, v131
	v_cmp_o_f32_e64 s6, v248, v248
	v_add3_u32 v4, v252, v4, 0x7fff
	v_add3_u32 v5, v207, v5, 0x7fff
	v_add3_u32 v0, v131, v0, 0x7fff
	v_cndmask_b16 v133.h, 0x7fff, v2.h, s5
	v_cndmask_b16 v129.h, 0x7fff, v3.h, s6
	v_cndmask_b16 v128.h, 0x7fff, v4.h, s8
	v_cndmask_b16 v127.h, 0x7fff, v5.h, s9
	v_cndmask_b16 v134.h, 0x7fff, v0.h, s3
	scratch_load_b32 v0, off, off offset:548 ; 4-byte Folded Reload
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s3, v205, v205
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[49:56], v[101:108], v[74:81], v[49:56]
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v133.l, v227.l
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v5, v252, v128
	.loc	1 732 54 is_stmt 1              ; attention_backward.py:732:54
	v_mov_b16_e64 v252.l, v227.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[57:64], v[82:89], v[66:73], v[57:64]
	v_wmma_f32_16x16x16_bf16 v[49:56], v[90:97], v[66:73], v[49:56]
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v3, v132, v133
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s9, v5, v5
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_o_f32_e64 s6, v3, v3
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, 0, v0
	ds_store_b16_d16_hi v2, v227
	ds_store_b16_d16_hi v24, v116
	ds_store_b16_d16_hi v28, v115
	ds_store_b16_d16_hi v30, v134
	ds_store_b16_d16_hi v17, v133
	ds_store_b16_d16_hi v19, v129
	ds_store_b16_d16_hi v20, v128
	ds_store_b16_d16_hi v21, v127
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.l, 0x7fff, v1.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	scratch_load_b32 v1, off, off offset:568 ; 4-byte Folded Reload
	ds_load_b64 v[77:78], v23
	ds_load_b64 v[79:80], v29
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v175, v175
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e32 v98.h, v77.l
	v_mov_b16_e32 v102.h, v78.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v208, 0, v1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v1, v205, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v1, v205, v1, 0x7fff
	v_cndmask_b16 v119.h, 0x7fff, v1.h, s3
	v_bfe_u32 v1, v191, 16, 1
	v_cmp_o_f32_e64 s3, v191, v191
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v205, v205, v119
	.loc	1 727 34                        ; attention_backward.py:727:34
	ds_load_b64 v[100:101], v25
	ds_load_b64 v[106:107], v26
	ds_load_b64 v[103:104], v208
	ds_load_b64 v[74:75], v31
	ds_load_b64 v[108:109], v32
	ds_load_b64 v[110:111], v27
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v2, v0
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v0, v175, 16, 1
	v_add3_u32 v1, v191, v1, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v2, v131, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v175, v0, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s5, v2, v2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v118.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v177, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v177, v177
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v99.h, v106.l
	v_mov_b16_e32 v106.l, v100.h
	v_mov_b16_e32 v105.l, v75.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v177, v0, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v105.h, v109.l
	v_mov_b16_e32 v109.l, v75.h
	v_mov_b32_e32 v75, v106
	v_mov_b16_e32 v77.l, v103.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v120.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v179, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v179, v179
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v103.h, v107.l
	v_mov_b16_e32 v107.l, v101.h
	v_mov_b16_e32 v101.h, v108.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v179, v0, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v108.l, v74.h
	v_mov_b16_e32 v98.l, v103.l
	v_mov_b16_e32 v103.l, v101.l
	v_mov_b16_e32 v101.l, v74.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v121.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v181, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v181, v181
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_dual_mov_b32 v74, v77 :: v_dual_sub_f32 v209, v175, v118
	v_mov_b32_e32 v77, v108
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v181, v0, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v81, v109
	v_mov_b16_e32 v100.h, v79.l
	v_mov_b16_e32 v79.l, v110.h
	v_mov_b16_e32 v78.l, v104.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v122.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v183, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v183, v183
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v104.h, v80.l
	v_mov_b16_e32 v80.l, v111.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v106.l, v227.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v183, v0, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v108.l, v227.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v102.l, v104.l
	v_mov_b16_e32 v99.l, v100.l
	v_mov_b16_e32 v100.l, v110.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v123.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v185, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v185, v185
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v104.l, v111.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v109.l, v227.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v183, v183, v123
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v0, v185, v0, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v181, v181, v122
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v110.l, v227.l
	v_mov_b16_e64 v111.l, v227.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v124.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v187, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v187, v187
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v185, v185, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v187, v0, 0x7fff
	v_cndmask_b16 v125.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v189, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v189, v189
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v187, v187, v125
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v189, v0, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cndmask_b16 v106.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v193, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v193, v193
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v6, v207, v127
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v207.l, v227.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v193, v0, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v108.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v195, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v195, v195
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v76, v79
	v_mov_b32_e32 v79, v107
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v107.h, 0x7fff, v1.h, s3
	v_add3_u32 v0, v195, v0, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v1, v130, v115
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v107.l, v227.l
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v4, v248, v129
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v115, v179, v121
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v109.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v197, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v197, v197
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v179, v189, v106
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s10, v6, v6
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v197, v0, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v132, v195, v109 :: v_dual_sub_f32 v175, v193, v108
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v193, v166, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v248.l, v227.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v110.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v199, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v199, v199
	v_add3_u32 v193, v166, v193, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v131, v197, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v199, v0, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v197.l, v227.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v111.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v201, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v201, v201
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v130, v199, v111
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v201, v0, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v112.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v203, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v203, v203
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v128, v201, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v203, v0, 0x7fff
	v_cndmask_b16 v113.h, 0x7fff, v0.h, vcc_lo
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v0, v244, v116
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v116, v177, v120 :: v_dual_sub_f32 v177, v191, v107
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s8, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v127, v203, v113
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v7, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v191, v172, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v244.l, v227.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v7, v0, v7, 0x7fff
	v_bfe_u32 v0, v1, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v191, v172, v191, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v0, v1, v0, 0x7fff
	v_bfe_u32 v1, v2, 16, 1
	v_cndmask_b16 v0.l, 0x7fff, v7.h, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v171, v171
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v1, v2, v1, 0x7fff
	v_bfe_u32 v2, v3, 16, 1
	ds_store_b16 v24, v0
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s3, v161, v161
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v2, v3, v2, 0x7fff
	v_bfe_u32 v3, v4, 16, 1
	ds_store_b16 v28, v0
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s5
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v1, v161, 16, 1
	v_cmp_o_f32_e64 s5, v163, v163
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v3, v4, v3, 0x7fff
	v_bfe_u32 v4, v5, 16, 1
	ds_store_b16 v30, v0
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s6
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v2, v163, 16, 1
	v_add3_u32 v1, v161, v1, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v4, v5, v4, 0x7fff
	v_bfe_u32 v5, v6, 16, 1
	ds_store_b16 v17, v0
	v_cndmask_b16 v0.l, 0x7fff, v3.h, s8
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v3, v165, 16, 1
	v_add3_u32 v2, v163, v2, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v5, v6, v5, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s6, v165, v165
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v19, v0
	v_cndmask_b16 v0.l, 0x7fff, v4.h, s9
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v4, v167, 16, 1
	v_add3_u32 v3, v165, v3, 0x7fff
	v_cmp_o_f32_e64 s8, v167, v167
	v_cndmask_b16 v129.h, 0x7fff, v1.h, s3
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v20, v0
	v_cndmask_b16 v0.l, 0x7fff, v5.h, s10
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v4, v167, v4, 0x7fff
	v_cndmask_b16 v212.h, 0x7fff, v2.h, s5
	v_cndmask_b16 v210.h, 0x7fff, v3.h, s6
	v_bfe_u32 v1, v159, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v21, v0
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v0, v171, 16, 1
	v_cndmask_b16 v252.h, 0x7fff, v4.h, s8
	v_bfe_u32 v2, v157, 16, 1
	v_bfe_u32 v3, v155, 16, 1
	v_bfe_u32 v4, v153, 16, 1
	v_add3_u32 v0, v171, v0, 0x7fff
	v_add3_u32 v1, v159, v1, 0x7fff
	v_cmp_o_f32_e64 s3, v159, v159
	v_add3_u32 v2, v157, v2, 0x7fff
	v_cmp_o_f32_e64 s5, v157, v157
	v_cndmask_b16 v248.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v173, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v173, v173
	v_add3_u32 v3, v155, v3, 0x7fff
	v_cmp_o_f32_e64 s6, v155, v155
	v_add3_u32 v4, v153, v4, 0x7fff
	v_add3_u32 v0, v173, v0, 0x7fff
	v_cmp_o_f32_e64 s8, v153, v153
	v_cndmask_b16 v215.h, 0x7fff, v1.h, s3
	v_cndmask_b16 v233.h, 0x7fff, v2.h, s5
	v_cndmask_b16 v225.h, 0x7fff, v3.h, s6
	v_cndmask_b16 v213.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v169, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v169, v169
	v_cndmask_b16 v133.h, 0x7fff, v4.h, s8
	v_bfe_u32 v1, v149, 16, 1
	v_bfe_u32 v2, v147, 16, 1
	v_add3_u32 v0, v169, v0, 0x7fff
	v_bfe_u32 v3, v145, 16, 1
	v_bfe_u32 v4, v143, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v134.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v151, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_load_b64 v[236:237], v208
	ds_load_b64 v[253:254], v25
	ds_load_b64 v[216:217], v26
	ds_load_b64 v[239:240], v23
	ds_load_b64 v[241:242], v29
	ds_load_b64 v[135:136], v31
	ds_load_b64 v[137:138], v32
	ds_load_b64 v[245:246], v27
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v151, v151
	v_add3_u32 v1, v149, v1, 0x7fff
	v_add3_u32 v0, v151, v0, 0x7fff
	v_cmp_o_f32_e64 s3, v149, v149
	v_add3_u32 v2, v147, v2, 0x7fff
	v_cmp_o_f32_e64 s5, v147, v147
	v_add3_u32 v3, v145, v3, 0x7fff
	v_cmp_o_f32_e64 s6, v145, v145
	v_add3_u32 v4, v143, v4, 0x7fff
	v_cmp_o_f32_e64 s8, v143, v143
	v_cndmask_b16 v244.h, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v235.h, 0x7fff, v1.h, s3
	v_cndmask_b16 v234.h, 0x7fff, v2.h, s5
	v_cndmask_b16 v231.h, 0x7fff, v3.h, s6
	v_cndmask_b16 v207.h, 0x7fff, v4.h, s8
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v125.l, v215.h
	v_mov_b16_e64 v124.l, v134.h
	v_mov_b16_e64 v123.l, v252.h
	v_mov_b16_e64 v122.l, v210.h
	v_mov_b16_e64 v121.l, v212.h
	v_mov_b16_e64 v120.l, v129.h
	v_mov_b16_e64 v119.l, v213.h
	v_mov_b16_e64 v118.l, v248.h
	v_mov_b16_e64 v113.l, v207.h
	v_mov_b16_e64 v112.l, v231.h
	v_mov_b16_e64 v111.l, v234.h
	v_mov_b16_e64 v110.l, v235.h
	v_wmma_f32_16x16x16_bf16 v[33:40], v[118:125], v[98:105], v[33:40]
	v_mov_b16_e64 v109.l, v244.h
	v_mov_b16_e64 v108.l, v133.h
	v_mov_b16_e64 v107.l, v225.h
	v_mov_b16_e64 v106.l, v233.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(7)
	v_mov_b16_e64 v0.l, v236.l
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e64 v0.h, v239.l
	v_mov_b16_e64 v1.l, v253.l
	v_mov_b16_e64 v1.h, v216.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[106:113], v[74:81], v[33:40]
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e64 v2.l, v245.l
	v_mov_b16_e64 v2.h, v241.l
	v_mov_b16_e64 v3.l, v135.l
	v_mov_b16_e64 v3.h, v137.l
	v_mov_b16_e64 v4.l, v237.l
	v_mov_b16_e64 v4.h, v240.l
	v_mov_b16_e64 v5.l, v254.l
	v_mov_b16_e64 v5.h, v217.l
	v_mov_b16_e64 v6.l, v246.l
	v_mov_b16_e64 v6.h, v242.l
	v_mov_b16_e64 v7.l, v136.l
	v_mov_b16_e64 v7.h, v138.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v170, v170
	v_cmp_o_f32_e64 s3, v204, v204
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v137.l, v135.h
	v_mov_b16_e64 v138.l, v136.h
	v_wmma_f32_16x16x16_bf16 v[33:40], v[118:125], v[0:7], v[33:40]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v118.l, 0x7fff, v8.h, vcc_lo
	v_bfe_u32 v8, v176, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v176, v176
	v_cndmask_b16 v119.h, 0x7fff, v9.h, s3
	v_bfe_u32 v9, v190, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v125.l, v227.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v8, v176, v8, 0x7fff
	v_cmp_o_f32_e64 s3, v190, v190
	v_cmp_o_f32_e64 s5, v164, v164
	v_add3_u32 v9, v190, v9, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v9.l, v227.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v120.h, 0x7fff, v8.h, vcc_lo
	v_bfe_u32 v8, v178, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v178, v178
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s3
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v122.l, v227.l
	v_mov_b16_e64 v124.l, v227.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v8, v178, v8, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v120.l, v227.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v217.l, v254.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v121.l, v227.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s3, v172, v172
	v_cndmask_b16 v121.h, 0x7fff, v8.h, vcc_lo
	v_bfe_u32 v8, v180, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v180, v180
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v199, v176, v120
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s8, v168, v168
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v201, v178, v121
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v8, v180, v8, 0x7fff
	v_cmp_o_f32_e64 s6, v166, v166
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v119.l, v227.l
	v_mov_b16_e64 v123.l, v227.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v216.l, v253.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v122.h, 0x7fff, v8.h, vcc_lo
	v_bfe_u32 v8, v182, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v182, v182
	v_cndmask_b16 v232.h, 0x7fff, v193.h, s6
	v_bfe_u32 v193, v152, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v203, v180, v122
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v8, v182, v8, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v204, v119
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s6, v152, v152
	v_add3_u32 v193, v152, v193, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v227.h, v118.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v123.h, 0x7fff, v8.h, vcc_lo
	v_bfe_u32 v8, v184, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v184, v184
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v239.l, v236.h
	v_mov_b16_e64 v241.l, v245.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v204, v182, v123
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v8, v184, v8, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v123.l, v232.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v199, v199
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v240.l, v237.h
	v_mov_b16_e64 v242.l, v246.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v124.h, 0x7fff, v8.h, vcc_lo
	v_bfe_u32 v8, v186, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v186, v186
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_dual_mov_b32 v237, v216 :: v_dual_mov_b32 v238, v241
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v208, v184, v124 :: v_dual_mov_b32 v241, v217
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v8, v186, v8, 0x7fff
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v243, v138
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v125.h, 0x7fff, v8.h, vcc_lo
	v_bfe_u32 v8, v188, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v188, v188
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v186, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v8, v188, v8, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v8.l, v227.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v8.h, 0x7fff, v8.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v192, v192
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v189, v188, v8
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v10.h, 0x7fff, v10.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v194, v194
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v186, v192, v10
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v11.h, 0x7fff, v11.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v196, v196
	v_bfe_u32 v192, v164, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v184, v194, v11
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v12.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v198, v198
	v_add3_u32 v192, v164, v192, 0x7fff
	v_bfe_u32 v194, v168, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v182, v196, v12
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v13.h, 0x7fff, v13.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v200, v200
	v_cndmask_b16 v211.h, 0x7fff, v192.h, s5
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v188, v190, v9
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v190, v174, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v180, v198, v13
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v14.h, 0x7fff, v14.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v202, v202
	v_add3_u32 v194, v168, v194, 0x7fff
	v_add3_u32 v190, v174, v190, 0x7fff
	v_bfe_u32 v192, v154, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v178, v200, v14
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v15.h, 0x7fff, v15.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v174, v174
	v_cndmask_b16 v200.h, 0x7fff, v191.h, s3
	v_bfe_u32 v191, v162, 16, 1
	v_cndmask_b16 v218.h, 0x7fff, v194.h, s8
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v176, v202, v15
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v198.h, 0x7fff, v190.h, vcc_lo
	v_bfe_u32 v190, v160, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v160, v160
	v_bfe_u32 v194, v150, 16, 1
	v_add3_u32 v191, v162, v191, 0x7fff
	v_cmp_o_f32_e64 s3, v162, v162
	v_add3_u32 v190, v160, v190, 0x7fff
	v_add3_u32 v192, v154, v192, 0x7fff
	v_cmp_o_f32_e64 s5, v154, v154
	v_add3_u32 v195, v150, v194, 0x7fff
	v_cmp_o_f32_e64 s8, v150, v150
	v_cndmask_b16 v202.h, 0x7fff, v190.h, vcc_lo
	v_bfe_u32 v190, v158, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v158, v158
	v_cndmask_b16 v223.h, 0x7fff, v191.h, s3
	v_bfe_u32 v191, v156, 16, 1
	v_cndmask_b16 v196.h, 0x7fff, v192.h, s5
	v_add3_u32 v190, v158, v190, 0x7fff
	v_cndmask_b16 v192.h, 0x7fff, v195.h, s8
	v_cmp_o_f32_e64 s3, v156, v156
	v_add3_u32 v191, v156, v191, 0x7fff
	v_cndmask_b16 v194.h, 0x7fff, v193.h, s6
	v_cndmask_b16 v206.h, 0x7fff, v190.h, vcc_lo
	v_bfe_u32 v190, v148, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v148, v148
	v_cndmask_b16 v197.h, 0x7fff, v191.h, s3
	v_cmp_o_f32_e64 s3, v146, v146
	v_cmp_o_f32_e64 s5, v144, v144
	v_add3_u32 v195, v148, v190, 0x7fff
	v_bfe_u32 v190, v146, 16, 1
	v_cmp_o_f32_e64 s6, v142, v142
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v125.l, v206.h
	v_mov_b16_e64 v124.l, v218.h
	v_mov_b16_e64 v122.l, v211.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v193, v146, v190, 0x7fff
	v_bfe_u32 v190, v144, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v121.l, v223.h
	v_mov_b16_e64 v120.l, v202.h
	v_mov_b16_e64 v119.l, v200.h
	v_mov_b16_e64 v118.h, v198.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v191, v144, v190, 0x7fff
	v_bfe_u32 v190, v142, 16, 1
	v_cndmask_b16 v193.h, 0x7fff, v193.h, s3
	v_cndmask_b16 v195.h, 0x7fff, v195.h, vcc_lo
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[118:125], v[98:105], v[41:48]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v191.h, 0x7fff, v191.h, s5
	v_add3_u32 v190, v142, v190, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v13.l, v193.h
	v_mov_b16_e64 v12.l, v195.h
	v_mov_b16_e64 v11.l, v192.h
	v_mov_b16_e64 v14.l, v191.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v190.h, 0x7fff, v190.h, s6
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v10.l, v194.h
	v_mov_b16_e64 v9.l, v196.h
	v_mov_b16_e64 v8.l, v197.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v198.l, v227.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v15.l, v190.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v200.l, v227.l
	v_mov_b16_e64 v202.l, v227.l
	v_mov_b16_e64 v192.l, v227.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v236, v239
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[8:15], v[74:81], v[41:48]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v239, v137
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v65, v65
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v195.l, v227.l
	v_mov_b16_e64 v190.l, v227.l
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[118:125], v[0:7], v[41:48]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v170, v227
	v_sub_f32_e32 v0, v174, v198
	v_sub_f32_e32 v7, v166, v232
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v193.l, v227.l
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[8:15], v[236:243], v[41:48]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v2, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cmp_o_f32_e64 s3, v0, v0
	v_bfe_u32 v8, v7, 16, 1
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v9, v158, v206
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v2, v1, v2, 0x7fff
	v_bfe_u32 v1, v0, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v191.l, v227.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v8, v7, v8, 0x7fff
	v_bfe_u32 v10, v9, 16, 1
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[106:113], v[236:243], v[33:40]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v1, v0, v1, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v172, v200
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v196.l, v227.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v10, v9, v10, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v194.l, v227.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v3, v0, 16, 1
	v_cmp_o_f32_e64 s5, v0, v0
	v_add3_u32 v3, v0, v3, 0x7fff
	v_bfe_u32 v0, v65, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v1.l, 0x7fff, v3.h, s5
	v_add3_u32 v4, v65, v0, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v0, v160, v202 :: v_dual_sub_f32 v3, v162, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v5, v0, 16, 1
	v_cmp_o_f32_e64 s8, v0, v0
	v_add3_u32 v5, v0, v5, 0x7fff
	v_bfe_u32 v0, v199, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v2.l, 0x7fff, v5.h, s8
	v_add3_u32 v6, v199, v0, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v5, v164, v211
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v0.l, 0x7fff, v2.h, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v1.h, s3
	v_cndmask_b16 v1.h, 0x7fff, v4.h, s6
	v_cndmask_b16 v2.h, 0x7fff, v6.h, s9
	v_bfe_u32 v6, v5, 16, 1
	v_bfe_u32 v4, v3, 16, 1
	v_cmp_o_f32_e64 s5, v5, v5
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_cmp_o_f32_e64 s8, v7, v7
	v_add3_u32 v6, v5, v6, 0x7fff
	v_bfe_u32 v5, v203, 16, 1
	v_add3_u32 v4, v3, v4, 0x7fff
	v_bfe_u32 v3, v201, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v7, v168, v218
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v201, v201
	v_add3_u32 v5, v203, v5, 0x7fff
	v_cmp_o_f32_e64 s6, v203, v203
	v_add3_u32 v3, v201, v3, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v8.h, s8
	v_bfe_u32 v8, v7, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v4.h, vcc_lo
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s5
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s6
	v_bfe_u32 v6, v204, 16, 1
	v_add3_u32 v8, v7, v8, 0x7fff
	v_cmp_o_f32_e64 s3, v7, v7
	v_bfe_u32 v7, v208, 16, 1
	v_cmp_o_f32_e64 s6, v9, v9
	v_bfe_u32 v9, v18, 16, 1
	v_add3_u32 v6, v204, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v204, v204
	v_add3_u32 v7, v208, v7, 0x7fff
	v_cmp_o_f32_e64 s5, v208, v208
	v_add3_u32 v9, v18, v9, 0x7fff
	v_cmp_o_f32_e64 s8, v18, v18
	v_cndmask_b16 v5.h, 0x7fff, v6.h, vcc_lo
	v_cndmask_b16 v6.l, 0x7fff, v8.h, s3
	v_cndmask_b16 v6.h, 0x7fff, v7.h, s5
	v_cndmask_b16 v7.l, 0x7fff, v10.h, s6
	v_cndmask_b16 v7.h, 0x7fff, v9.h, s8
	v_cmp_o_f32_e64 s6, v205, v205
	v_cmp_o_f32_e64 s3, v209, v209
	v_cmp_o_f32_e64 s9, v116, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[0:7], v[98:105], v[41:48]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v173, v213
	v_dual_sub_f32 v1, v161, v129 :: v_dual_sub_f32 v2, v171, v248
	v_dual_sub_f32 v4, v165, v210 :: v_dual_sub_f32 v3, v163, v212
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v9, v0, 16, 1
	v_cmp_o_f32_e64 s5, v0, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_bfe_u32 v8, v2, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v5, v167, v252
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_add3_u32 v9, v0, v9, 0x7fff
	v_bfe_u32 v0, v205, 16, 1
	v_add3_u32 v8, v2, v8, 0x7fff
	v_bfe_u32 v2, v209, 16, 1
	v_cmp_o_f32_e64 s8, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v6, v169, v134
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v10, v205, v0, 0x7fff
	v_bfe_u32 v0, v1, 16, 1
	v_add3_u32 v2, v209, v2, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v7, v159, v215
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v11, v1, v0, 0x7fff
	v_bfe_u32 v0, v116, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v9.h, s5
	v_bfe_u32 v9, v4, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v10.h, s6
	v_bfe_u32 v10, v5, 16, 1
	v_add3_u32 v12, v116, v0, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v8.h, vcc_lo
	v_bfe_u32 v8, v3, 16, 1
	v_add3_u32 v9, v4, v9, 0x7fff
	v_cmp_o_f32_e64 s5, v4, v4
	v_bfe_u32 v4, v181, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v11.h, s8
	v_add3_u32 v8, v3, v8, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_bfe_u32 v3, v115, 16, 1
	v_add3_u32 v10, v5, v10, 0x7fff
	v_cmp_o_f32_e64 s8, v5, v5
	v_add3_u32 v4, v181, v4, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s3
	v_add3_u32 v3, v115, v3, 0x7fff
	v_cmp_o_f32_e64 s3, v115, v115
	v_cmp_o_f32_e64 s6, v181, v181
	v_cndmask_b16 v4.l, 0x7fff, v9.h, s5
	v_cndmask_b16 v5.l, 0x7fff, v10.h, s8
	v_bfe_u32 v9, v6, 16, 1
	v_bfe_u32 v10, v7, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v8.h, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s6
	v_bfe_u32 v8, v183, 16, 1
	v_add3_u32 v9, v6, v9, 0x7fff
	v_cmp_o_f32_e64 s3, v6, v6
	v_bfe_u32 v6, v185, 16, 1
	v_add3_u32 v10, v7, v10, 0x7fff
	v_cmp_o_f32_e64 s6, v7, v7
	v_bfe_u32 v7, v187, 16, 1
	v_add3_u32 v8, v183, v8, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v183, v183
	v_add3_u32 v6, v185, v6, 0x7fff
	v_cmp_o_f32_e64 s5, v185, v185
	v_add3_u32 v7, v187, v7, 0x7fff
	v_cmp_o_f32_e64 s8, v187, v187
	v_cndmask_b16 v2.h, 0x7fff, v12.h, s9
	v_cndmask_b16 v5.h, 0x7fff, v8.h, vcc_lo
	v_cndmask_b16 v6.l, 0x7fff, v9.h, s3
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s5
	v_cndmask_b16 v7.l, 0x7fff, v10.h, s6
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s8
	v_cmp_o_f32_e64 s6, v188, v188
	v_cmp_o_f32_e64 s9, v186, v186
	v_cmp_o_f32_e64 s3, v189, v189
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v9, v142, v190
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[0:7], v[98:105], v[33:40]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v154, v196
	v_sub_f32_e32 v4, v152, v194
	v_sub_f32_e32 v0, v156, v197
	v_sub_f32_e32 v7, v146, v193
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v10, v9, 16, 1
	v_bfe_u32 v3, v2, 16, 1
	v_bfe_u32 v5, v4, 16, 1
	v_cmp_o_f32_e64 s5, v2, v2
	v_bfe_u32 v1, v0, 16, 1
	v_cmp_o_f32_e64 s8, v4, v4
	v_add3_u32 v3, v2, v3, 0x7fff
	v_bfe_u32 v2, v188, 16, 1
	v_add3_u32 v5, v4, v5, 0x7fff
	v_bfe_u32 v4, v186, 16, 1
	v_add3_u32 v1, v0, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_add3_u32 v2, v188, v2, 0x7fff
	v_bfe_u32 v0, v189, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v5.h, s8
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v5, v148, v195
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v4, v186, v4, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v3.h, s5
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v3, v150, v192
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v0, v189, v0, 0x7fff
	v_bfe_u32 v6, v5, 16, 1
	v_cndmask_b16 v0.l, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s6
	v_cndmask_b16 v2.h, 0x7fff, v4.h, s9
	v_bfe_u32 v4, v3, 16, 1
	v_bfe_u32 v8, v7, 16, 1
	v_add3_u32 v6, v5, v6, 0x7fff
	v_cmp_o_f32_e64 s5, v5, v5
	v_bfe_u32 v5, v182, 16, 1
	v_add3_u32 v4, v3, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_bfe_u32 v3, v184, 16, 1
	v_add3_u32 v8, v7, v8, 0x7fff
	v_cmp_o_f32_e64 s8, v7, v7
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v7, v144, v191
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v5, v182, v5, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s3
	v_add3_u32 v3, v184, v3, 0x7fff
	v_cmp_o_f32_e64 s3, v184, v184
	v_cmp_o_f32_e64 s6, v182, v182
	v_cndmask_b16 v5.l, 0x7fff, v8.h, s8
	v_bfe_u32 v8, v7, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v4.h, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s5
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s6
	v_bfe_u32 v6, v180, 16, 1
	v_add3_u32 v8, v7, v8, 0x7fff
	v_cmp_o_f32_e64 s3, v7, v7
	v_bfe_u32 v7, v178, 16, 1
	v_add3_u32 v10, v9, v10, 0x7fff
	v_cmp_o_f32_e64 s6, v9, v9
	v_bfe_u32 v9, v176, 16, 1
	v_add3_u32 v6, v180, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v180, v180
	v_add3_u32 v7, v178, v7, 0x7fff
	v_cmp_o_f32_e64 s5, v178, v178
	v_add3_u32 v9, v176, v9, 0x7fff
	v_cmp_o_f32_e64 s8, v176, v176
	v_cndmask_b16 v5.h, 0x7fff, v6.h, vcc_lo
	v_cndmask_b16 v6.l, 0x7fff, v8.h, s3
	v_cndmask_b16 v6.h, 0x7fff, v7.h, s5
	v_cndmask_b16 v7.l, 0x7fff, v10.h, s6
	v_cndmask_b16 v7.h, 0x7fff, v9.h, s8
	v_cmp_o_f32_e64 s3, v179, v179
	v_cmp_o_f32_e64 s6, v177, v177
	v_cmp_o_f32_e64 s9, v175, v175
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[0:7], v[74:81], v[41:48]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v155, v225
	v_dual_sub_f32 v0, v157, v233 :: v_dual_sub_f32 v5, v147, v234
	v_sub_f32_e32 v2, v153, v133
	v_sub_f32_e32 v4, v149, v235
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v9, v1, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_bfe_u32 v8, v0, 16, 1
	v_cmp_o_f32_e64 s5, v1, v1
	v_bfe_u32 v10, v2, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_add3_u32 v9, v1, v9, 0x7fff
	v_bfe_u32 v1, v177, 16, 1
	v_add3_u32 v8, v0, v8, 0x7fff
	v_bfe_u32 v0, v179, 16, 1
	v_add3_u32 v10, v2, v10, 0x7fff
	v_cmp_o_f32_e64 s8, v2, v2
	v_bfe_u32 v2, v175, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v3, v151, v244
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v1, v177, v1, 0x7fff
	v_add3_u32 v0, v179, v0, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v9.h, s5
	v_add3_u32 v2, v175, v2, 0x7fff
	v_bfe_u32 v9, v4, 16, 1
	v_cndmask_b16 v0.l, 0x7fff, v8.h, vcc_lo
	v_cndmask_b16 v2.l, 0x7fff, v10.h, s8
	v_bfe_u32 v8, v3, 16, 1
	v_bfe_u32 v10, v5, 16, 1
	v_add3_u32 v9, v4, v9, 0x7fff
	v_cmp_o_f32_e64 s5, v4, v4
	v_bfe_u32 v4, v131, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v6, v145, v231
	v_sub_f32_e32 v7, v143, v207
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v8, v3, v8, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_bfe_u32 v3, v132, 16, 1
	v_add3_u32 v10, v5, v10, 0x7fff
	v_cmp_o_f32_e64 s8, v5, v5
	v_add3_u32 v4, v131, v4, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s3
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s6
	v_add3_u32 v3, v132, v3, 0x7fff
	v_cmp_o_f32_e64 s3, v132, v132
	v_cmp_o_f32_e64 s6, v131, v131
	v_cndmask_b16 v4.l, 0x7fff, v9.h, s5
	v_cndmask_b16 v5.l, 0x7fff, v10.h, s8
	v_bfe_u32 v9, v6, 16, 1
	v_bfe_u32 v10, v7, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v8.h, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s6
	v_bfe_u32 v8, v130, 16, 1
	v_add3_u32 v9, v6, v9, 0x7fff
	v_cmp_o_f32_e64 s3, v6, v6
	v_bfe_u32 v6, v128, 16, 1
	v_add3_u32 v10, v7, v10, 0x7fff
	v_cmp_o_f32_e64 s6, v7, v7
	v_bfe_u32 v7, v127, 16, 1
	v_add3_u32 v8, v130, v8, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v130, v130
	v_add3_u32 v6, v128, v6, 0x7fff
	v_cmp_o_f32_e64 s5, v128, v128
	v_add3_u32 v7, v127, v7, 0x7fff
	v_cmp_o_f32_e64 s8, v127, v127
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s9
	v_cndmask_b16 v5.h, 0x7fff, v8.h, vcc_lo
	v_cndmask_b16 v6.l, 0x7fff, v9.h, s3
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s5
	v_cndmask_b16 v7.l, 0x7fff, v10.h, s6
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[0:7], v[74:81], v[33:40]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	s_clause 0xb                            ; 48-byte Folded Reload
	scratch_load_b32 v1, off, off
	scratch_load_b32 v2, off, off offset:4
	scratch_load_b32 v3, off, off offset:8
	scratch_load_b32 v4, off, off offset:12
	scratch_load_b32 v5, off, off offset:16
	scratch_load_b32 v6, off, off offset:20
	scratch_load_b32 v7, off, off offset:24
	scratch_load_b32 v8, off, off offset:28
	scratch_load_b32 v9, off, off offset:608
	scratch_load_b32 v10, off, off offset:612
	scratch_load_b32 v11, off, off offset:676
	scratch_load_b32 v12, off, off offset:680
	v_dual_mov_b32 v13, v16 :: v_dual_mov_b32 v14, v226
	v_dual_mov_b32 v15, v250 :: v_dual_mov_b32 v18, v141
	.loc	1 616 25 is_stmt 1              ; attention_backward.py:616:25
	s_add_i32 s30, s73, s26
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_mov_b32 s54, s50
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_mul_i32 s31, s30, s34
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_mov_b32 s55, s51
	v_add_lshl_u32 v65, s30, v18, 1
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b64 v[69:70], off, off offset:40 ; 8-byte Folded Reload
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v118, v117
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b64 v[71:72], off, off offset:52 ; 8-byte Folded Reload
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v120, v117
	v_mov_b32_e32 v122, v117
	v_mov_b32_e32 v119, v117
	v_mov_b32_e32 v124, v117
	v_mov_b32_e32 v121, v117
	v_mov_b32_e32 v123, v117
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(13)
	v_or_b32_e32 v0, s73, v1
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v1, s30, v1, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s3, s38, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(12)
	v_or_b32_e32 v0, s73, v2
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v2, s30, v2, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s6, s38, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(11)
	v_or_b32_e32 v0, s73, v3
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v3, s30, v3, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s6
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s8, s38, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(10)
	v_or_b32_e32 v0, s73, v4
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v4, s30, v4, 1
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v69, s31, v69
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v3, 0x80000000, v3, s8
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s9, s38, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s73, v5
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s31, v71
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v5, s30, v5, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s9
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s10, s38, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s73, v6
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v6, s30, v6, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v5, 0x80000000, v5, s10
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s11, s38, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s73, v7
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v7, s30, v7, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v6, 0x80000000, v6, s11
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s12, s38, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s73, v8
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v8, s30, v8, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s38, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s73, v9
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v9, s30, v9, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s13, s38, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s73, v10
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v10, s30, v10, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v9, 0x80000000, v9, s13
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s14, s38, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s73, v11
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v11, s30, v11, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s14
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s15, s38, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s73, v12
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v12, s30, v12, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v11, 0x80000000, v11, s15
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s16, s38, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s73, v13
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v13, s30, v13, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v12, 0x80000000, v12, s16
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s17, s38, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s73, v14
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v14, s30, v14, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v13, 0x80000000, v13, s17
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s18, s38, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s73, v15
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v15, s30, v15, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v14, 0x80000000, v14, s18
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s19, s38, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s73, v18
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b32 v18, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v15, 0x80000000, v15, s19
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s20, s38, v0
	v_mov_b32_e32 v0, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v65, 0x80000000, v65, s20
	.loc	1 624 25                        ; attention_backward.py:624:25
	v_add_nc_u32_e32 v81, s30, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s73, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s5, s38, v0
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v0, 0x80000000, v1, s3
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_add_nc_u32_e32 v1, s31, v114
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s7, s3
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s7, s6
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s31, v18
	scratch_load_b32 v18, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s7, s8
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s31, v18
	scratch_load_b32 v18, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v68, 0x80000000, v68, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s7, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v69, 0x80000000, v69, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s7, s10
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, s31, v18
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v70, 0x80000000, v70, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s7, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v71, 0x80000000, v71, s3
	s_clause 0x5
	buffer_load_u8 v252, v1, s[48:51], 0 offen
	buffer_load_u8 v248, v67, s[48:51], 0 offen
	buffer_load_u8 v225, v68, s[48:51], 0 offen
	buffer_load_u8 v235, v69, s[48:51], 0 offen
	buffer_load_u8 v231, v70, s[48:51], 0 offen
	buffer_load_u8 v112, v71, s[48:51], 0 offen
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[67:68], off, off offset:60
	scratch_load_b64 v[68:69], off, off offset:616
	scratch_load_b64 v[69:70], off, off offset:624
	scratch_load_b64 v[70:71], off, off offset:632
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v1, 0x80000000, v7, s12
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s7, s12
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b64 v[71:72], off, off offset:68 ; 8-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v7, s31, v67
	v_lshl_add_u32 v67, s34, 4, v114
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v68, s31, v68
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v69, s31, v69
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v70, s31, v70
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	v_add_nc_u32_e32 v67, s31, v67
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s7, s13
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s7, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v68, 0x80000000, v68, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s7, s15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v69, 0x80000000, v69, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s7, s16
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v70, 0x80000000, v70, s3
	s_clause 0x3
	buffer_load_u8 v108, v67, s[48:51], 0 offen
	buffer_load_u8 v106, v68, s[48:51], 0 offen
	buffer_load_u8 v102, v69, s[48:51], 0 offen
	buffer_load_u8 v101, v70, s[48:51], 0 offen
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[67:68], off, off offset:640
	scratch_load_b64 v[68:69], off, off offset:648
	scratch_load_b64 v[72:73], off, off offset:664
	scratch_load_b64 v[69:70], off, off offset:656
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v71, s31, v71
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v73, v117 :: v_dual_mov_b32 v80, v124
	v_mov_b32_e32 v74, v118
	v_mov_b32_e32 v76, v120
	v_dual_mov_b32 v78, v122 :: v_dual_mov_b32 v75, v119
	v_mov_b32_e32 v77, v121
	v_mov_b32_e32 v79, v123
	v_add_nc_u32_e32 v67, s31, v67
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s7, vcc_lo
	v_add_nc_u32_e32 v68, s31, v68
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_dual_cndmask_b32 v71, 0x80000000, v71 :: v_dual_lshlrev_b32 v66, 1, v81
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s7, s17
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s31, v69
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s7, s18
	v_add_nc_u32_e32 v70, s31, v72
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s7, s19
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s7, s20
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	s_clause 0x5
	buffer_load_u8 v100, v67, s[48:51], 0 offen
	buffer_load_u8 v99, v68, s[48:51], 0 offen
	buffer_load_u8 v113, v7, s[48:51], 0 offen
	buffer_load_u8 v110, v71, s[48:51], 0 offen
	buffer_load_u8 v96, v69, s[48:51], 0 offen
	buffer_load_u8 v95, v70, s[48:51], 0 offen
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v7, 0x80000000, v66, s5
	s_clause 0x10
	buffer_load_u16 v109, v8, s[52:55], 0 offen
	buffer_load_u16 v107, v9, s[52:55], 0 offen
	buffer_load_u16 v105, v10, s[52:55], 0 offen
	buffer_load_u16 v104, v11, s[52:55], 0 offen
	buffer_load_u16 v103, v12, s[52:55], 0 offen
	buffer_load_u16 v98, v13, s[52:55], 0 offen
	buffer_load_u16 v97, v14, s[52:55], 0 offen
	buffer_load_u16 v94, v15, s[52:55], 0 offen
	buffer_load_u16 v93, v65, s[52:55], 0 offen
	buffer_load_u16 v130, v0, s[52:55], 0 offen
	buffer_load_u16 v131, v2, s[52:55], 0 offen
	buffer_load_u16 v128, v3, s[52:55], 0 offen
	buffer_load_u16 v127, v4, s[52:55], 0 offen
	buffer_load_u16 v234, v5, s[52:55], 0 offen
	buffer_load_u16 v233, v6, s[52:55], 0 offen
	buffer_load_u16 v111, v1, s[52:55], 0 offen
	buffer_load_u16 v227, v7, s[52:55], 0 offen
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v219, v252
	ds_store_b8 v219, v248 offset:64
	ds_store_b8 v219, v108 offset:512
	ds_store_b8 v219, v106 offset:576
	ds_store_b8 v220, v225
	ds_store_b8 v220, v235 offset:64
	ds_store_b8 v220, v102 offset:512
	ds_store_b8 v220, v101 offset:576
	ds_store_b8 v221, v231
	ds_store_b8 v221, v112 offset:64
	s_waitcnt vmcnt(22)
	ds_store_b8 v221, v100 offset:512
	s_waitcnt vmcnt(21)
	ds_store_b8 v221, v99 offset:576
	s_waitcnt vmcnt(20)
	ds_store_b8 v222, v113
	s_waitcnt vmcnt(19)
	ds_store_b8 v222, v110 offset:64
	s_waitcnt vmcnt(18)
	ds_store_b8 v222, v96 offset:512
	s_waitcnt vmcnt(17)
	ds_store_b8 v222, v95 offset:576
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x4                            ; 24-byte Folded Reload
	scratch_load_b32 v0, off, off offset:312
	scratch_load_b64 v[8:9], off, off offset:76
	scratch_load_b32 v2, off, off offset:336
	scratch_load_b32 v4, off, off offset:340
	scratch_load_b32 v6, off, off offset:344
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v0, 0, v0
	ds_load_b64 v[0:1], v0
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(3) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[8:9], v[0:1], v[73:80] neg_lo:[1,1,0]
	scratch_load_b64 v[0:1], off, off offset:84 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt vmcnt(3)
	ds_load_b64 v[2:3], v2
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[0:1], v[2:3], v[73:80] neg_lo:[1,1,0]
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[0:1], off, off offset:92
	scratch_load_b32 v2, off, off offset:128
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_load_b64 v[4:5], v4
	.loc	1 608 29                        ; attention_backward.py:608:29
	scratch_load_b32 v3, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(2) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[0:1], v[4:5], v[73:80] neg_lo:[1,1,0]
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[0:1], off, off offset:100
	scratch_load_b32 v5, off, off offset:144
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_load_b64 v[6:7], v6
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v2, s73, v2
	scratch_load_b32 v4, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v3, s73, v3
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s6, s38, v2
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v68, s23, v2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s8, s38, v3
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v69, s23, v3
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s55, s2, s6
	s_and_b32 s31, s2, s8
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(2) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[0:1], v[6:7], v[73:80] neg_lo:[1,1,0]
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v0, off, off offset:120
	scratch_load_b32 v1, off, off offset:124
	scratch_load_b32 v6, off, off offset:148
	scratch_load_b32 v7, off, off offset:152
	s_waitcnt vmcnt(5)
	v_or_b32_e32 v5, s73, v5
	s_waitcnt vmcnt(4)
	v_or_b32_e32 v4, s73, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s10, s38, v5
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v71, s23, v5
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s9, s38, v4
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v70, s23, v4
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s62, s2, s10
	s_and_b32 s74, s2, s9
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v0, s73, v0
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v1, s73, v1
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v6, s73, v6
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v7, s73, v7
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s38, v0
	v_cmp_gt_i32_e64 s3, s38, v1
	v_cmp_gt_i32_e64 s11, s38, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_i32_e64 s12, s38, v7
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v66, s23, v0
	v_add_nc_u32_e32 v67, s23, v1
	v_add_nc_u32_e32 v72, s23, v6
	v_add_nc_u32_e32 v82, s23, v7
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
	v_cmp_le_i32_e32 vcc_lo, v224, v66
	v_cmp_le_i32_e64 s3, v224, v67
	v_cmp_le_i32_e64 s6, v224, v68
	v_cmp_le_i32_e64 s8, v224, v69
	v_cmp_le_i32_e64 s9, v224, v70
	v_cmp_le_i32_e64 s10, v224, v71
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s13, s63, vcc_lo
	s_and_b32 s3, s59, s3
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s11, v224, v72
	v_cmp_le_i32_e64 s12, v224, v82
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
	v_subrev_nc_u32_e32 v0, s21, v66
	v_subrev_nc_u32_e32 v1, s21, v67
	v_subrev_nc_u32_e32 v2, s21, v68
	v_subrev_nc_u32_e32 v3, s21, v69
	v_subrev_nc_u32_e32 v4, s21, v70
	v_subrev_nc_u32_e32 v5, s21, v71
	.loc	1 678 30 is_stmt 0              ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v224, v0
	v_cmp_ge_i32_e64 s3, v224, v1
	.loc	1 679 47 is_stmt 1              ; attention_backward.py:679:47
	v_add_nc_u32_e32 v0, s22, v66
	v_add_nc_u32_e32 v1, s22, v67
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v6, s21, v72
	v_subrev_nc_u32_e32 v7, s21, v82
	.loc	1 678 30 is_stmt 0              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s6, v224, v2
	v_cmp_ge_i32_e64 s8, v224, v3
	.loc	1 679 47 is_stmt 1              ; attention_backward.py:679:47
	v_add_nc_u32_e32 v2, s22, v68
	v_add_nc_u32_e32 v3, s22, v69
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s9, v224, v4
	v_cmp_ge_i32_e64 s10, v224, v5
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v4, s22, v70
	v_add_nc_u32_e32 v5, s22, v71
	.loc	1 679 30 is_stmt 0              ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s13, v224, v0
	v_cmp_le_i32_e64 s14, v224, v1
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s11, v224, v6
	v_cmp_ge_i32_e64 s12, v224, v7
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v6, s22, v72
	v_add_nc_u32_e32 v7, s22, v82
	.loc	1 679 30 is_stmt 0              ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s15, v224, v2
	v_cmp_le_i32_e64 s16, v224, v3
	v_cmp_le_i32_e64 s17, v224, v4
	v_cmp_le_i32_e64 s18, v224, v5
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s13, vcc_lo, s13
	s_and_b32 s3, s3, s14
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s19, v224, v6
	v_cmp_le_i32_e64 s20, v224, v7
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
	scratch_load_b64 v[0:1], off, off offset:740 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s3, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_co_u32 v0, vcc_lo, s24, v0
	v_add_co_ci_u32_e64 v1, null, s25, v1, vcc_lo
	global_load_d16_u8 v69, v[0:1], off
.LBB0_14:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s6, s59
	s_cbranch_execz .LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[0:1], off, off offset:684 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s3, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_co_u32 v0, vcc_lo, s24, v0
	v_add_co_ci_u32_e64 v1, null, s25, v1, vcc_lo
	global_load_d16_u8 v66, v[0:1], off
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
	scratch_load_b64 v[0:1], off, off offset:692 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s3, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_co_u32 v0, vcc_lo, s24, v0
	v_add_co_ci_u32_e64 v1, null, s25, v1, vcc_lo
	global_load_d16_u8 v67, v[0:1], off
.LBB0_18:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s6, s31
	s_cbranch_execz .LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[0:1], off, off offset:700 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s3, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_co_u32 v0, vcc_lo, s24, v0
	v_add_co_ci_u32_e64 v1, null, s25, v1, vcc_lo
	global_load_d16_hi_u8 v66, v[0:1], off
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
	scratch_load_b64 v[0:1], off, off offset:708 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s3, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_co_u32 v0, vcc_lo, s24, v0
	v_add_co_ci_u32_e64 v1, null, s25, v1, vcc_lo
	global_load_d16_hi_u8 v69, v[0:1], off
.LBB0_22:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s6, s62
	s_cbranch_execz .LBB0_24
; %bb.23:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[0:1], off, off offset:716 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s3, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_co_u32 v0, vcc_lo, s24, v0
	v_add_co_ci_u32_e64 v1, null, s25, v1, vcc_lo
	global_load_d16_hi_u8 v68, v[0:1], off
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
	scratch_load_b64 v[0:1], off, off offset:724 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s3, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_co_u32 v0, vcc_lo, s24, v0
	v_add_co_ci_u32_e64 v1, null, s25, v1, vcc_lo
	global_load_d16_u8 v68, v[0:1], off
.LBB0_26:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s6, s54
	s_cbranch_execz .LBB0_7
; %bb.27:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[0:1], off, off offset:732 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s3, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_co_u32 v0, vcc_lo, s24, v0
	v_add_co_ci_u32_e64 v1, null, s25, v1, vcc_lo
	global_load_d16_hi_u8 v67, v[0:1], off
	s_branch .LBB0_7
.LBB0_28:                               ; %Flow390
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v66, off, off offset:752
	scratch_load_b32 v67, off, off offset:756
	s_mov_b32 s58, s42
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
.LBB0_30:                               ; %._crit_edge104
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	scratch_load_b32 v0, off, off offset:748 ; 4-byte Folded Reload
	.loc	1 753 13                        ; attention_backward.py:753:13
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v16, s58, v66
	v_readlane_b32 s40, v255, 0
	v_readlane_b32 s41, v255, 1
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	v_mul_lo_u32 v16, v16, s67
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_mov_b32 s36, s40
	s_and_b32 s37, s41, 0xffff
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v21, s35, v66
	v_readlane_b32 s42, v255, 2
	v_readlane_b32 s43, v255, 3
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, v0, v67
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
	buffer_store_b32 v33, v8, s[36:39], 0 offen
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
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 764
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 764
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 29788
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 764
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 764
    .sgpr_count:     107
    .sgpr_spill_count: 4
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 190
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
