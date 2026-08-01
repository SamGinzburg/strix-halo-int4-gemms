	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	s_load_b128 s[16:19], s[0:1], 0x8
	s_load_b64 s[12:13], s[0:1], 0x20
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xor_b32_e32 v13, 0x88, v0
	v_xor_b32_e32 v14, 0x110, v0
	v_xor_b32_e32 v16, 0x198, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v2, 4, v9
	v_or_b32_e32 v3, 6, v9
	v_or_b32_e32 v4, 8, v9
	v_or_b32_e32 v5, 10, v9
	v_or_b32_e32 v6, 12, v9
	v_or_b32_e32 v7, 14, v9
	v_and_b32_e32 v65, 15, v0
	v_and_b32_e32 v37, 32, v0
	s_clause 0x6                            ; 28-byte Folded Spill
	scratch_store_b32 off, v2, off offset:8
	scratch_store_b32 off, v3, off offset:12
	scratch_store_b32 off, v4, off offset:16
	scratch_store_b32 off, v5, off offset:20
	scratch_store_b32 off, v6, off offset:24
	scratch_store_b32 off, v7, off offset:28
	scratch_store_b32 off, v9, off
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 521 24                        ; attention_backward.py:521:24
	s_mul_i32 s64, s3, s39
	s_cselect_b32 s65, -1, 0
	s_cmp_eq_u32 s4, 1
	s_cselect_b32 s66, -1, 0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_abs_i32 s29, s37
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_abs_i32 s5, s3
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cvt_f32_u32 s4, s29
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s11, s2, 4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
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
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s39, v8
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_readfirstlane_b32 s4, v1
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v1, 2, v9
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_f32 s4, s4, 0x4f7ffffe
	scratch_store_b32 off, v1, off offset:4 ; 4-byte Folded Spill
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v1, s11, v1
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cvt_u32_f32 s14, s4
	s_sub_i32 s4, 0, s29
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s4, s4, s14
	s_mul_hi_u32 s4, s14, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s14, s14, s4
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_mul_hi_u32 s4, s5, s14
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
	s_or_b32 s15, s11, 9
	s_or_b32 s24, s11, 10
	s_or_b32 s25, s11, 11
	s_or_b32 s26, s11, 12
	s_or_b32 s27, s11, 13
	s_or_b32 s33, s11, 14
	s_or_b32 s52, s11, 15
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cmp_lt_i32 s11, s39
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s2, s39
	v_cmp_gt_i32_e64 s2, s39, v1
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s4, s39
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_and_b32_e32 v1, 31, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s5, s39
	v_cmp_gt_i32_e64 s4, s39, v2
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s6, s39
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[114:115], null, s34, v9, v[1:2]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s7, s39
	v_cmp_gt_i32_e64 s5, s39, v3
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s8, s39
	v_cmp_gt_i32_e64 s8, s39, v5
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s9, s39
	v_cmp_gt_i32_e64 s9, s39, v6
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s10, s39
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[5:6], null, s34, 6, v[114:115]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s15, s39
	v_cmp_gt_i32_e64 s10, s39, v7
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s24, s39
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[7:8], null, s34, 10, v[114:115]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s25, s39
	v_cmp_gt_i32_e64 s7, s39, v4
	s_cselect_b32 s41, -1, 0
	s_cmp_lt_i32 s26, s39
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v2, s34, 1, v114
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s27, s39
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v3, s34, 2, v114
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s33, s39
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v6, s34, 3, v114
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s52, s39
	v_mov_b32_e32 v4, v5
	s_cselect_b32 s52, -1, 0
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_add_i32 s56, s64, s11
	v_mad_u64_u32 v[8:9], null, s34, 12, v[114:115]
	s_mul_i32 s24, s56, s34
	s_clause 0x3                            ; 20-byte Folded Spill
	scratch_store_b32 off, v2, off offset:32
	scratch_store_b32 off, v3, off offset:36
	scratch_store_b64 off, v[4:5], off offset:40
	scratch_store_b32 off, v6, off offset:48
	v_add_nc_u32_e32 v9, s24, v114
	v_add_nc_u32_e32 v4, s24, v5
	v_add_nc_u32_e32 v5, s24, v6
	v_mov_b32_e32 v6, v7
	v_mad_u64_u32 v[10:11], null, s34, 14, v[114:115]
	v_add_nc_u32_e32 v2, s24, v2
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_cmp_gt_i32_e64 s6, s34, v1
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[6:7], off offset:52 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v6, s24, v7
	v_mov_b32_e32 v7, v8
	v_add_nc_u32_e32 v3, s24, v3
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, vcc_lo, s6
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_and_b32 s25, s17, 0xffff
	s_mov_b32 s27, 0x31027000
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[7:8], off offset:60 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v7, s24, v8
	v_mov_b32_e32 v8, v10
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_mul_i32 s33, s56, s35
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_and_b32 s13, s13, 0xffff
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[8:9], off offset:68 ; 8-byte Folded Spill
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s2, s6
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_add_nc_u32_e32 v8, s24, v10
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s4, s6
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_mov_b32 s24, s16
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s5, s6
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s4, s35, v0
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s7, s6
	.loc	1 587 22                        ; attention_backward.py:587:22
	s_add_i32 s7, s38, 31
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s8, s6
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_ashr_i32 s8, s7, 31
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s9, s6
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_lshr_b32 s8, s8, 27
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s10, s6
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_add_i32 s7, s7, s8
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x7
	buffer_load_u8 v24, v9, s[24:27], 0 offen
	buffer_load_u8 v2, v2, s[24:27], 0 offen
	buffer_load_u8 v3, v3, s[24:27], 0 offen
	buffer_load_u8 v4, v4, s[24:27], 0 offen
	buffer_load_u8 v5, v5, s[24:27], 0 offen
	buffer_load_u8 v6, v6, s[24:27], 0 offen
	buffer_load_u8 v7, v7, s[24:27], 0 offen
	buffer_load_u8 v8, v8, s[24:27], 0 offen
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v9, s33, v0
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s55, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s25, s19, 0xffff
	s_mov_b32 s24, s18
	s_mov_b32 s5, 0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v10, s35, v9
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_hi_u32 s2, s40, s14
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_mov_b32 s14, s26
	.loc	1 587 20                        ; attention_backward.py:587:20
	s_and_b32 s68, s7, 0xffffffe0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v11, s35, v10
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v10, 1, v10
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v12, s35, v11
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v15, s35, v12
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v12, 1, v12
	v_lshlrev_b32_e32 v9, 1, v9
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_add_nc_u32 v210, 0, v0
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s54, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_add_nc_u32 v211, 0, v13
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v13, s35, v15
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s53, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v15, 1, v15
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_add_nc_u32 v212, 0, v14
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s51, s4
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v14, s35, v13
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_lshlrev_b32 v13, 1, v13
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s49, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s48, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s47, s4
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v213, 0, v16
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v16, s35, v14
	v_add_nc_u32_e32 v17, s35, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v18, s35, v17
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v17, 1, v17
	v_lshlrev_b32_e32 v14, 1, v14
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v19, s35, v18
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v20, 0x80000000, v14, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s46, s4
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt vmcnt(7)
	ds_store_b8 v210, v24
	s_waitcnt vmcnt(6)
	ds_store_b8 v210, v2 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v211, v3
	s_waitcnt vmcnt(4)
	ds_store_b8 v211, v4 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v212, v5
	s_waitcnt vmcnt(2)
	ds_store_b8 v212, v6 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v213, v7
	s_waitcnt vmcnt(0)
	ds_store_b8 v213, v8 offset:64
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v14, s35, v19
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v19, 1, v19
	v_lshlrev_b32_e32 v16, 1, v16
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v21, s35, v14
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v14, 1, v14
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s44, s4
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_and_b32_e32 v2, 12, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v22, s35, v21
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v21, 1, v21
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_lshlrev_b32 v18, 1, v18
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s43, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v23, s35, v22
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_lshlrev_b32 v3, 5, v65
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s42, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s41, s4
	s_mov_b32 s41, s56
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v25, 0x80000000, v14, vcc_lo
	v_lshlrev_b32_e32 v14, 1, v22
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s15, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_lshl_u32 v22, v23, s35, 1
	v_cndmask_b32_e32 v29, 0x80000000, v21, vcc_lo
	v_lshlrev_b32_e32 v21, 1, v23
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s45, s4
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_mov_b32 s15, s27
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v30, 0x80000000, v14, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s50, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v31, 0x80000000, v21, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s52, s4
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_bfe_u32 s7, s20, 0x10008
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v32, 0x80000000, v22, vcc_lo
	s_clause 0xf
	buffer_load_u16 v24, v9, s[24:27], 0 offen
	buffer_load_u16 v23, v10, s[24:27], 0 offen
	buffer_load_u16 v22, v11, s[24:27], 0 offen
	buffer_load_u16 v21, v12, s[24:27], 0 offen
	buffer_load_u16 v15, v15, s[24:27], 0 offen
	buffer_load_u16 v14, v13, s[24:27], 0 offen
	buffer_load_u16 v13, v20, s[24:27], 0 offen
	buffer_load_u16 v12, v16, s[24:27], 0 offen
	buffer_load_u16 v28, v17, s[24:27], 0 offen
	buffer_load_u16 v27, v18, s[24:27], 0 offen
	buffer_load_u16 v26, v19, s[24:27], 0 offen
	buffer_load_u16 v25, v25, s[24:27], 0 offen
	buffer_load_u16 v20, v29, s[24:27], 0 offen
	buffer_load_u16 v19, v30, s[24:27], 0 offen
	buffer_load_u16 v18, v31, s[24:27], 0 offen
	buffer_load_u16 v17, v32, s[24:27], 0 offen
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v31, v0, 4, 1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_add_lshl_u32 v35, s41, v31, 1
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v5, s11, v31
	scratch_store_b32 off, v31, off offset:736 ; 4-byte Folded Spill
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v33, 8, v35
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshlrev_b32_e32 v4, 1, v2
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v6, 2, v5
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s39, v5
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v7, 4, v5
	v_or_b32_e32 v8, 6, v5
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_or_b32_e32 v9, v3, v4
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v10, 8, v5
	v_or_b32_e32 v11, 10, v5
	v_or_b32_e32 v16, 12, v5
	v_or_b32_e32 v36, 14, v5
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v29, 0, v9
	v_xad_u32 v30, v9, 8, 0
	v_xad_u32 v31, v9, 16, 0
	v_xad_u32 v32, v9, 24, 0
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v9, 4, v35
	v_cndmask_b32_e32 v5, 0x80000000, v35, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s39, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e32 v6, 0x80000000, v9, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s39, v7
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v9, 12, v35
	v_cndmask_b32_e32 v7, 0x80000000, v33, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s39, v8
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_dual_cndmask_b32 v8, 0x80000000, v9 :: v_dual_add_nc_u32 v33, 16, v35
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s39, v10
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v34, 20, v35
	v_add_nc_u32_e32 v9, 24, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s39, v11
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s39, v16
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v10, 28, v35
	v_cndmask_b32_e32 v35, 0x80000000, v9, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s39, v36
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e32 v36, 0x80000000, v10, vcc_lo
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
	s_ashr_i32 s7, s5, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s7, s7, 27
	s_add_i32 s5, s5, s7
	.loc	1 589 24 is_stmt 1              ; attention_backward.py:589:24
	s_max_i32 s7, s8, 0
	.loc	1 600 17                        ; attention_backward.py:600:17
	s_and_b32 s8, s5, 0xffffffe0
	.loc	1 597 45                        ; attention_backward.py:597:45
	s_and_b32 s5, s7, 0x7fffffe0
	.loc	1 598 24                        ; attention_backward.py:598:24
	s_min_i32 s68, s68, s8
.LBB0_2:
	.loc	1 0 24 is_stmt 0                ; attention_backward.py:0:24
	s_clause 0x7
	buffer_load_u16 v16, v5, s[12:15], 0 offen
	buffer_load_u16 v11, v6, s[12:15], 0 offen
	buffer_load_u16 v10, v7, s[12:15], 0 offen
	buffer_load_u16 v9, v8, s[12:15], 0 offen
	buffer_load_u16 v8, v33, s[12:15], 0 offen
	buffer_load_u16 v7, v34, s[12:15], 0 offen
	buffer_load_u16 v6, v35, s[12:15], 0 offen
	buffer_load_u16 v5, v36, s[12:15], 0 offen
	ds_load_b64 v[33:34], v29
	ds_load_b64 v[29:30], v30
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_mul_i32 s7, s2, s29
	s_clause 0x1
	s_load_b128 s[44:47], s[0:1], 0x50
	s_load_b32 s67, s[0:1], 0x74
	s_sub_i32 s7, s40, s7
	s_xor_b32 s8, s30, s31
	s_add_i32 s9, s2, 1
	s_sub_i32 s10, s7, s29
	s_cmp_ge_u32 s7, s29
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v216, s11, v65
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s2, s9, s2
	s_cselect_b32 s7, s10, s7
	s_add_i32 s9, s2, 1
	s_cmp_ge_u32 s7, s29
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v66, 1, v37
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s2, s9, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s8
	s_sub_i32 s69, s2, s8
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[33:34], off offset:76
	scratch_store_b64 off, v[29:30], off offset:84
	ds_load_b64 v[29:30], v31
	.loc	1 717 21 is_stmt 1              ; attention_backward.py:717:21
	v_lshlrev_b32_e32 v33, 1, v0
	v_add_nc_u32_e32 v34, v210, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, s39, v216
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cmp_lt_i32 s69, 1
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v31, 0x1b0, v33, 0
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[29:30], off offset:92 ; 8-byte Folded Spill
	ds_load_b64 v[29:30], v32
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v32, 0x240, v33, 0
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[29:30], off offset:100 ; 8-byte Folded Spill
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v29, 0x90, v33, 0
	v_xad_u32 v30, 0x120, v33, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
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
	scratch_store_b32 off, v34, off offset:108 ; 4-byte Folded Spill
	v_xad_u32 v23, 0x3f0, v33, 0
	ds_store_b16 v32, v15
	s_waitcnt vmcnt(11)
	ds_store_b16 v32, v20 offset:1024
	ds_store_b16 v21, v14
	s_waitcnt vmcnt(10)
	ds_store_b16 v21, v19 offset:1024
	ds_store_b16 v22, v13
	s_waitcnt vmcnt(9)
	ds_store_b16 v22, v18 offset:1024
	ds_store_b16 v23, v12
	s_waitcnt vmcnt(8)
	ds_store_b16 v23, v17 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cbranch_scc1 .LBB0_13
; %bb.3:                                ; %.lr.ph103
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	s_xor_b32 s7, s3, s37
	v_writelane_b32 v255, s44, 0
	s_ashr_i32 s7, s7, 31
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	v_lshlrev_b32_e32 v1, 1, v1
	s_xor_b32 s9, s28, s7
	s_load_b256 s[24:31], s[0:1], 0x30
	v_writelane_b32 v255, s45, 1
	s_clause 0x1
	s_load_b64 s[48:49], s[0:1], 0x0
	s_load_b64 s[52:53], s[0:1], 0x18
	s_sub_i32 s7, s9, s7
	v_or_b32_e32 v13, 1, v1
	v_mov_b16_e32 v14.l, 0
	v_writelane_b32 v255, s46, 2
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v15.h, v11.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v11.h, v10.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v9.h, v8.l
	v_mov_b16_e32 v15.l, v14.l
	v_writelane_b32 v255, s47, 3
	s_clause 0x1
	s_load_b32 s8, s[0:1], 0x90
	s_load_b128 s[44:47], s[0:1], 0x80
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_sub_i32 s1, s11, s23
	s_mul_i32 s0, s7, s37
	s_max_i32 s1, s1, 0
	s_sub_i32 s0, s3, s0
	s_and_b32 s1, s1, 0x7fffffe0
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v11.l, v14.l
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_max_u32 s1, s5, s1
	s_and_b32 s3, s66, exec_lo
	s_cselect_b32 s39, s1, s5
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s1, s67, v13
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_and_b32_e32 v13, 7, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v15, off offset:124
	scratch_store_b32 off, v11, off offset:128
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v11.h, v9.l
	v_mov_b16_e32 v9.l, v14.l
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshlrev_b32_e32 v10, 4, v13
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v7.h, v6.l
	v_mov_b16_e32 v14.h, v16.l
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v11, off offset:132
	scratch_store_b32 off, v9, off offset:136
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshl_or_b32 v8, v65, 7, v10
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v9.h, v7.l
	v_mov_b16_e32 v7.l, v14.l
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v7, off offset:144
	scratch_store_b32 off, v14, off offset:120
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v6, 0x70, v8, 0
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v14.h, v5.l
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v7, 0x60, v8, 0
	scratch_store_b32 off, v9, off offset:140 ; 4-byte Folded Spill
	v_xad_u32 v5, 0x50, v8, 0
	v_xad_u32 v9, v8, 64, 0
	scratch_store_b32 off, v14, off offset:148 ; 4-byte Folded Spill
	ds_load_b128 v[18:21], v6
	ds_load_b128 v[14:17], v7
	v_xad_u32 v6, v8, 48, 0
	v_xad_u32 v7, v8, 32, 0
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v220, 4, v0
	s_cmp_lt_i32 s39, s68
	.loc	1 613 26                        ; attention_backward.py:613:26
	s_mul_i32 s36, s7, s36
	.loc	1 683 27                        ; attention_backward.py:683:27
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s45, s7, s45
	s_cselect_b32 s72, -1, 0
	s_lshl_b32 s3, s47, 2
	s_mul_i32 s7, s47, 12
	s_lshl_b32 s5, s47, 3
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[14:17], off offset:152
	scratch_store_b128 off, v[18:21], off offset:168
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[18:21], v5
	ds_load_b128 v[14:17], v9
	v_xad_u32 v5, v8, 16, 0
	v_add_nc_u32_e32 v8, 0, v8
	s_mul_i32 s10, s47, 24
	v_cmp_eq_u32_e32 vcc_lo, 0, v37
	s_mul_i32 s9, s47, 20
	s_mul_i32 s11, s47, 28
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s70, s69, s0
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s0, s67, v1
	v_cndmask_b32_e64 v9, 0x104, 0, vcc_lo
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_and_b32_e32 v1, 48, v0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[14:17], off offset:184
	scratch_store_b128 off, v[18:21], off offset:200
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[18:21], v6
	ds_load_b128 v[14:17], v7
	v_lshlrev_b32_e32 v6, 4, v37
	v_mul_lo_u32 v7, s8, v216
	s_lshl_b32 s8, s47, 4
	v_lshlrev_b32_e32 v1, 2, v1
	v_dual_mov_b32 v41, 0 :: v_dual_and_b32 v12, 16, v0
	v_lshrrev_b32_e32 v28, 5, v0
	v_lshlrev_b32_e32 v26, 1, v65
	v_lshlrev_b32_e32 v27, 3, v0
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v131, v66, v65
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[14:17], off offset:216
	scratch_store_b128 off, v[18:21], off offset:232
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[18:21], v5
	ds_load_b128 v[14:17], v8
	v_or3_b32 v5, v4, v6, v3
	v_mul_lo_u32 v6, s47, v220
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v245, 28, v28
	v_or_b32_e32 v133, 30, v28
	.loc	1 641 25                        ; attention_backward.py:641:25
	s_mul_f32 s71, s44, 0x3fb8aa3b
	v_xor_b32_e32 v3, 8, v5
	v_xor_b32_e32 v4, 16, v5
	s_mov_b32 s37, 0
	s_and_b32 s49, s49, 0xffff
	v_add_nc_u32_e32 v8, v7, v6
	scratch_store_b32 off, v5, off offset:280 ; 4-byte Folded Spill
	v_add3_u32 v11, v6, s7, v7
	s_waitcnt lgkmcnt(0)
	s_clause 0x2                            ; 36-byte Folded Spill
	scratch_store_b128 off, v[14:17], off offset:248
	scratch_store_b128 off, v[18:21], off offset:264
	scratch_store_b32 off, v8, off offset:284
	v_add3_u32 v8, v6, s3, v7
	v_add3_u32 v14, v6, s10, v7
	scratch_store_b32 off, v11, off offset:296 ; 4-byte Folded Spill
	v_add3_u32 v11, v6, s8, v7
	v_lshl_add_u32 v17, v37, 1, 0
	scratch_store_b32 off, v8, off offset:288 ; 4-byte Folded Spill
	v_add3_u32 v8, v6, s5, v7
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v8, off offset:292
	scratch_store_b32 off, v33, off offset:116
	v_and_b32_e32 v8, 60, v33
	v_lshlrev_b32_e32 v33, 3, v65
	scratch_store_b32 off, v11, off offset:300 ; 4-byte Folded Spill
	v_add3_u32 v11, v6, s9, v7
	v_lshl_add_u32 v242, v65, 2, v17
	v_lshrrev_b32_e32 v17, 1, v0
	v_xor_b32_e32 v8, v9, v8
	v_add3_u32 v6, v6, s11, v7
	scratch_store_b32 off, v11, off offset:304 ; 4-byte Folded Spill
	v_and_b32_e32 v11, 1, v0
	v_and_b32_e32 v17, 12, v17
	v_and_b32_e32 v9, 14, v0
	v_mov_b32_e32 v57, 0
	v_add_nc_u32_e32 v3, 0, v3
	v_lshl_or_b32 v15, v11, 6, v8
	scratch_store_b32 off, v14, off offset:308 ; 4-byte Folded Spill
	v_lshrrev_b32_e32 v14, 4, v37
	v_lshl_or_b32 v13, v13, 7, v17
	v_lshlrev_b32_e32 v7, 5, v11
	v_lshl_or_b32 v1, v9, 7, v1
	v_lshlrev_b32_e32 v8, 2, v0
	v_xor_b32_e32 v5, 24, v5
	v_or3_b32 v34, v13, v10, v14
	scratch_store_b32 off, v6, off offset:312 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v6, 1, v9
	v_xor_b32_e32 v11, 0x410, v15
	v_xor_b32_e32 v9, 0x208, v15
	v_mov_b32_e32 v49, 0
	v_xor_b32_e32 v18, 0x440, v8
	v_or3_b32 v29, v1, v7, v6
	v_lshrrev_b32_e32 v1, 1, v12
	v_and_b32_e32 v6, 52, v8
	v_lshrrev_b32_e32 v7, 2, v12
	v_lshlrev_b32_e32 v12, 2, v12
	scratch_store_b32 off, v15, off offset:316 ; 4-byte Folded Spill
	v_and_or_b32 v1, v0, 2, v1
	v_lshl_or_b32 v2, v2, 5, v6
	v_xor_b32_e32 v6, 0x618, v15
	v_or3_b32 v30, v7, v14, v33
	v_and_b32_e32 v14, 48, v27
	v_or3_b32 v27, v26, v12, v37
	v_or3_b32 v31, v1, v2, v28
	v_xor_b32_e32 v1, 0x110, v8
	v_xor_b32_e32 v2, 0x220, v8
	v_xor_b32_e32 v15, 4, v29
	v_xor_b32_e32 v7, 0x330, v8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v31, off offset:332
	scratch_store_b32 off, v27, off offset:344
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:352
	scratch_store_b32 off, v34, off offset:336
	v_add_nc_u32_e32 v3, 0, v4
	v_add_nc_u32_e32 v4, 0, v11
	scratch_store_b32 off, v1, off offset:416 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v2
	v_xor_b32_e32 v16, 8, v29
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:356
	scratch_store_b32 off, v4, off offset:368
	v_add_nc_u32_e32 v3, 0, v5
	v_add_nc_u32_e32 v4, 0, v6
	scratch_store_b32 off, v1, off offset:420 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v7
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v2, s35, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:360
	scratch_store_b32 off, v4, off offset:372
	v_add_nc_u32_e32 v3, 0, v9
	v_add_nc_u32_e32 v4, 0, v15
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:424
	scratch_store_b32 off, v2, off offset:468
	v_add_nc_u32_e32 v1, 0, v18
	scratch_store_b32 off, v3, off offset:364 ; 4-byte Folded Spill
	v_xor_b32_e32 v3, 12, v29
	v_xor_b32_e32 v19, 0x550, v8
	v_xor_b32_e32 v20, 0x660, v8
	v_xor_b32_e32 v5, 24, v29
	scratch_store_b32 off, v1, off offset:428 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v3
	scratch_store_b32 off, v4, off offset:376 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v16
	v_add_nc_u32_e32 v1, 0, v19
	v_xor_b32_e32 v21, 0x770, v8
	scratch_store_b32 off, v3, off offset:384 ; 4-byte Folded Spill
	v_xor_b32_e32 v3, 16, v29
	v_xor_b32_e32 v6, 28, v29
	scratch_store_b32 off, v1, off offset:432 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v20
	v_xor_b32_e32 v22, 0x880, v8
	v_add_nc_u32_e32 v3, 0, v3
	scratch_store_b32 off, v4, off offset:380 ; 4-byte Folded Spill
	v_xor_b32_e32 v4, 20, v29
	v_xor_b32_e32 v9, 0x90, v30
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:436
	scratch_store_b32 off, v3, off offset:388
	v_add_nc_u32_e32 v1, 0, v21
	v_add_nc_u32_e32 v3, 0, v4
	v_xor_b32_e32 v23, 0x990, v8
	v_xor_b32_e32 v24, 0xaa0, v8
	v_xor_b32_e32 v25, 0xbb0, v8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:440
	scratch_store_b32 off, v3, off offset:392
	v_add_nc_u32_e32 v3, 0, v5
	v_add_nc_u32_e32 v1, 0, v22
	v_xor_b32_e32 v4, 0x1b0, v30
	v_xor_b32_e32 v10, 0xcc0, v8
	v_xor_b32_e32 v13, 0xdd0, v8
	scratch_store_b32 off, v3, off offset:396 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v6
	scratch_store_b32 off, v1, off offset:444 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v23
	v_xor_b32_e32 v12, 0xee0, v8
	v_mul_u32_u24_e32 v17, 0x110, v65
	scratch_store_b32 off, v3, off offset:400 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v9
	scratch_store_b32 off, v1, off offset:448 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v24
	v_lshl_or_b32 v17, v37, 7, v17
	v_xor_b32_e32 v5, 16, v31
	scratch_store_b32 off, v3, off offset:404 ; 4-byte Folded Spill
	v_xor_b32_e32 v3, 0x120, v30
	scratch_store_b32 off, v1, off offset:452 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v25
	v_xor_b32_e32 v6, 32, v31
	v_xor_b32_e32 v9, 48, v31
	v_add_nc_u32_e32 v3, 0, v3
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v29, off offset:320
	scratch_store_b32 off, v30, off offset:328
	scratch_store_b32 off, v17, off offset:340
	scratch_store_b32 off, v1, off offset:456
	scratch_store_b32 off, v3, off offset:408
	v_add_nc_u32_e32 v3, 0, v4
	v_add_nc_u32_e32 v1, 0, v10
	v_add_nc_u32_e32 v204, 0, v9
	v_add_nc_u32_e32 v202, 0, v5
	v_add_nc_u32_e32 v203, 0, v6
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:412
	scratch_store_b32 off, v1, off offset:460
	v_add_nc_u32_e32 v1, 0, v13
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:464
	scratch_store_b32 off, v0, off offset:112
	v_add_nc_u32_e32 v0, 0, v12
	v_dual_mov_b32 v12, 0 :: v_dual_add_nc_u32 v3, s35, v2
	v_xor_b32_e32 v2, 48, v17
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v39, v12
	v_xor_b32_e32 v8, 0xff0, v8
	v_mov_b32_e32 v61, v12
	v_lshl_or_b32 v14, v65, 6, v14
	v_mov_b32_e32 v38, v12
	scratch_store_b32 off, v33, off offset:324 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v8
	scratch_store_b32 off, v0, off offset:472 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v17
	v_mov_b32_e32 v42, v12
	v_mov_b32_e32 v43, v12
	v_mov_b32_e32 v44, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v45, v12 :: v_dual_add_nc_u32 v0, 0, v0
	scratch_store_b32 off, v1, off offset:476 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 32, v17
	v_mov_b32_e32 v46, v12
	v_mov_b32_e32 v47, v12
	v_mov_b32_e32 v48, v12
	v_mov_b32_e32 v35, v12
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:488
	scratch_store_b32 off, v3, off offset:480
	v_add_nc_u32_e32 v3, s35, v3
	scratch_store_b32 off, v0, off offset:484 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v17
	v_add_nc_u32_e32 v1, 0, v2
	v_xor_b32_e32 v2, 0x70, v17
	scratch_store_b32 off, v3, off offset:492 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s35, v3
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v1, off offset:496 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x50, v17
	v_mov_b32_e32 v36, v12
	v_mov_b32_e32 v40, v12
	v_mov_b32_e32 v58, v12
	v_mov_b32_e32 v59, v12
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v0, off offset:500 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v17
	v_add3_u32 v246, 0, v37, v26
	v_mov_b32_e32 v37, v12
	v_mov_b32_e32 v60, v12
	v_mov_b32_e32 v62, v12
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:512
	scratch_store_b32 off, v3, off offset:504
	v_add_nc_u32_e32 v3, s35, v3
	scratch_store_b32 off, v1, off offset:508 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x80, v17
	v_add_nc_u32_e32 v0, 0, v2
	v_xor_b32_e32 v2, 0xb0, v17
	scratch_store_b32 off, v3, off offset:516 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s35, v3
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v0, off offset:520 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x90, v17
	v_mov_b32_e32 v63, v12
	v_mov_b32_e32 v64, v12
	v_mov_b32_e32 v50, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v51, v12 :: v_dual_add_nc_u32 v0, 0, v0
	scratch_store_b32 off, v1, off offset:524 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xa0, v17
	v_mov_b32_e32 v52, v12
	v_mov_b32_e32 v53, v12
	v_mov_b32_e32 v54, v12
	v_mov_b32_e32 v55, v12
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:536
	scratch_store_b32 off, v3, off offset:528
	v_add_nc_u32_e32 v3, s35, v3
	scratch_store_b32 off, v0, off offset:532 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xc0, v17
	v_add_nc_u32_e32 v1, 0, v2
	v_xor_b32_e32 v2, 0xf0, v17
	scratch_store_b32 off, v3, off offset:540 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s35, v3
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v1, off offset:544 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xd0, v17
	v_mov_b32_e32 v56, v12
	s_and_b32 s53, s53, 0xffff
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s29, s29, 0xffff
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v0, off offset:548 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xe0, v17
	s_and_b32 s57, s31, 0xffff
	s_mov_b32 s56, s30
	s_and_b32 s61, s27, 0xffff
	s_mov_b32 s60, s26
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:560
	scratch_store_b32 off, v3, off offset:552
	v_add_nc_u32_e32 v3, s35, v3
	scratch_store_b32 off, v1, off offset:556 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x90, v27
	v_add_nc_u32_e32 v0, 0, v2
	v_xor_b32_e32 v2, 16, v14
	v_add_nc_u32_e32 v4, s35, v3
	scratch_store_b32 off, v3, off offset:564 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v226, 0, v1
	scratch_store_b32 off, v0, off offset:568 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x120, v27
	v_xor_b32_e32 v1, 0x1b0, v27
	v_xor_b32_e32 v3, 32, v14
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v65, off offset:740
	scratch_store_b32 off, v66, off offset:744
	v_add_nc_u32_e32 v219, 0, v0
	v_add_nc_u32_e32 v0, 0, v1
	v_add_nc_u32_e32 v1, 0, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:580
	scratch_store_b32 off, v14, off offset:348
	v_xor_b32_e32 v1, 48, v14
	v_add_nc_u32_e32 v2, 0, v3
	scratch_store_b32 off, v4, off offset:572 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, s35, v4
	v_xor_b32_e32 v3, 32, v34
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v4, off offset:576 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, s35, v4
	scratch_store_b32 off, v2, off offset:584 ; 4-byte Folded Spill
	v_xor_b32_e32 v2, 16, v34
	v_add_nc_u32_e32 v29, 0, v3
	v_xor_b32_e32 v3, 0x60, v34
	scratch_store_b32 off, v4, off offset:588 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, s35, v4
	v_add_nc_u32_e32 v31, 0, v2
	v_xor_b32_e32 v2, 64, v34
	scratch_store_b32 off, v1, off offset:592 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 48, v34
	v_add_nc_u32_e32 v238, 0, v3
	v_xor_b32_e32 v3, 0x1b0, v33
	v_add_nc_u32_e32 v32, 0, v2
	v_xor_b32_e32 v2, 0x70, v34
	v_add_nc_u32_e32 v30, 0, v1
	v_xor_b32_e32 v1, 0x50, v34
	v_add_nc_u32_e32 v224, 0, v3
	v_xor_b32_e32 v3, 0x3f0, v33
	v_add_nc_u32_e32 v9, 0, v2
	v_xor_b32_e32 v2, 0x120, v33
	v_add_nc_u32_e32 v241, 0, v1
	v_xor_b32_e32 v1, 0x90, v33
	v_add_nc_u32_e32 v240, 0, v3
	v_mov_b32_e32 v34, v12
	v_add_nc_u32_e32 v222, 0, v2
	v_xor_b32_e32 v2, 0x2d0, v33
	v_add_nc_u32_e32 v236, 0, v1
	v_xor_b32_e32 v1, 0x240, v33
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v227, 0, v2
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v2, 16, v28
	scratch_store_b32 off, v4, off offset:596 ; 4-byte Folded Spill
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v4, s35, v4
	v_add_nc_u32_e32 v225, 0, v1
	v_xor_b32_e32 v1, 0x360, v33
	.loc	1 520 26                        ; attention_backward.py:520:26
	scratch_store_b32 off, v2, off offset:652 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 18, v28
	scratch_store_b32 off, v4, off offset:600 ; 4-byte Folded Spill
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v4, s35, v4
	v_add_nc_u32_e32 v237, 0, v1
	v_mov_b32_e32 v33, 0
	.loc	1 520 26                        ; attention_backward.py:520:26
	scratch_store_b32 off, v2, off offset:656 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 20, v28
	scratch_store_b32 off, v4, off offset:604 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, s35, v4
	scratch_store_b32 off, v4, off offset:608 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, s35, v4
	scratch_store_b32 off, v4, off offset:612 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, s35, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, s35, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:616
	scratch_store_b32 off, v1, off offset:620
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:624 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:628 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:632 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:636 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:640 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:644 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:648 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:660
	scratch_store_b32 off, v1, off offset:664
	v_or_b32_e32 v2, 22, v28
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v2, off offset:668 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 24, v28
	v_dual_mov_b32 v130, v1 :: v_dual_add_nc_u32 v1, s35, v1
	scratch_store_b32 off, v2, off offset:728 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 26, v28
	v_dual_mov_b32 v132, v1 :: v_dual_add_nc_u32 v201, s35, v1
	scratch_store_b32 off, v2, off offset:732 ; 4-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s34, 18, v[114:115]
	scratch_store_b64 off, v[2:3], off offset:672 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s34, 20, v[114:115]
	scratch_store_b64 off, v[2:3], off offset:680 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s34, 22, v[114:115]
	scratch_store_b64 off, v[2:3], off offset:688 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s34, 24, v[114:115]
	scratch_store_b64 off, v[2:3], off offset:696 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s34, 26, v[114:115]
	scratch_store_b64 off, v[2:3], off offset:704 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s34, 28, v[114:115]
	scratch_store_b64 off, v[2:3], off offset:712 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s34, 30, v[114:115]
	scratch_store_b64 off, v[2:3], off offset:720 ; 8-byte Folded Spill
	s_branch .LBB0_5
.LBB0_4:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_add_i32 s37, s37, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s37, s69
	s_cbranch_scc0 .LBB0_12
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s72
	s_cbranch_vccnz .LBB0_4
; %bb.6:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_add_i32 s3, s37, s70
	s_mov_b32 s75, s39
	.loc	1 613 26                        ; attention_backward.py:613:26
	s_add_i32 s73, s3, s36
	.loc	1 684 27                        ; attention_backward.py:684:27
	s_mul_i32 s74, s3, s46
	.loc	1 613 25                        ; attention_backward.py:613:25
	s_mul_i32 s73, s73, s38
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_add_i32 s74, s74, s45
	s_branch .LBB0_8
.LBB0_7:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v2, off, off offset:300
	scratch_load_b32 v4, off, off offset:304
	scratch_load_b32 v6, off, off offset:308
	scratch_load_b32 v1, off, off offset:284
	scratch_load_b32 v3, off, off offset:288
	scratch_load_b32 v5, off, off offset:292
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s3, s75, 1
	s_or_b32 s7, s75, 2
	s_or_b32 s8, s75, 3
	s_or_b32 s9, s75, 4
	s_or_b32 s10, s75, 5
	s_or_b32 s11, s75, 6
	s_or_b32 s12, s75, 7
	s_or_b32 s13, s75, 8
	s_or_b32 s14, s75, 9
	s_or_b32 s15, s75, 10
	s_or_b32 s16, s75, 11
	s_or_b32 s17, s75, 12
	s_or_b32 s18, s75, 13
	s_or_b32 s19, s75, 14
	s_or_b32 s20, s75, 15
	s_or_b32 s26, s75, 16
	s_or_b32 s27, s75, 17
	s_or_b32 s77, s75, 18
	s_or_b32 s96, s75, 19
	s_or_b32 s97, s75, 20
	s_or_b32 s98, s75, 21
	s_or_b32 s99, s75, 22
	s_or_b32 s100, s75, 23
	s_or_b32 s101, s75, 24
	s_or_b32 s102, s75, 25
	s_or_b32 s103, s75, 26
	s_or_b32 s104, s75, 27
	s_or_b32 vcc_lo, s75, 28
	s_or_b32 vcc_hi, s75, 29
	s_or_b32 s64, s75, 30
	s_or_b32 s40, s75, 31
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s75, s38
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s30, s30, s35
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s3, s38
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_mul_i32 s3, s75, s47
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s7, s38
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v72, s30, v130, 2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s8, s38
	v_add_nc_u32_e32 v84, s35, v201
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s9, s38
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v82, s30, v132, 2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s10, s38
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v84, s30, v84, 2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s11, s38
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v83, s30, v201, 2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s12, s38
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v86, 0x800, v242
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s13, s38
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v162, 0x1c00, v242
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s14, s38
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v87, 0xc00, v242
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s15, s38
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v88, 0x1000, v242
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s16, s38
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v127, 0x1400, v242
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s17, s38
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v128, 0x1800, v242
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s18, s38
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v116.h, v116.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s19, s38
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e32 v116.l, 0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s20, s38
	.loc	1 697 25                        ; attention_backward.py:697:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s26, s38
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_mov_b32 s26, s50
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s27, s38
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_mov_b32 s27, s51
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s77, s38
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v228.l, v116.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s96, s38
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v230.l, v116.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s97, s38
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v232.l, v116.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s98, s38
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v234.l, v116.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s99, s38
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v233.l, v116.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s100, s38
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v229.l, v116.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s101, s38
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v231.l, v116.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s102, s38
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v235.l, v116.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s103, s38
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v129.l, v116.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s104, s38
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v239.l, v116.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 vcc_lo, s38
	.loc	1 697 25                        ; attention_backward.py:697:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 vcc_hi, s38
	.loc	1 697 25                        ; attention_backward.py:697:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 s64, s38
	.loc	1 697 25                        ; attention_backward.py:697:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s40, s38
	.loc	1 697 25                        ; attention_backward.py:697:25
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s96, -1, 0
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_add_i32 s3, s74, s3
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s75, s75, 32
	.loc	1 697 25                        ; attention_backward.py:697:25
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	.loc	1 691 36 is_stmt 1              ; attention_backward.py:691:36
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v4, s3, v4, 2
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v7, s3, v6, 2
	scratch_load_b32 v6, off, off offset:312 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v4, 0x80000000, v4, s62
	v_cndmask_b32_e64 v7, 0x80000000, v7, s58
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v8, s3, v6, 2
	scratch_load_b32 v6, off, off offset:296 ; 4-byte Folded Reload
	v_add_lshl_u32 v1, s3, v1, 2
	v_add_lshl_u32 v3, s3, v3, 2
	v_add_lshl_u32 v5, s3, v5, 2
	v_add_lshl_u32 v2, s3, v2, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s54
	v_cndmask_b32_e64 v1, 0x80000000, v1, s63
	v_cndmask_b32_e64 v3, 0x80000000, v3, s59
	v_cndmask_b32_e64 v5, 0x80000000, v5, s55
	v_cndmask_b32_e64 v2, 0x80000000, v2, s76
	s_clause 0x3
	buffer_load_b32 v1, v1, s[24:27], 0 offen
	buffer_load_b32 v2, v2, s[24:27], 0 offen
	buffer_load_b32 v3, v3, s[24:27], 0 offen
	buffer_load_b32 v4, v4, s[24:27], 0 offen
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v10, s3, v6, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s31
	s_clause 0x3
	buffer_load_b32 v5, v5, s[24:27], 0 offen
	buffer_load_b32 v7, v7, s[24:27], 0 offen
	buffer_load_b32 v8, v8, s[24:27], 0 offen
	buffer_load_b32 v10, v10, s[24:27], 0 offen
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v6, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_waitcnt vmcnt(8)
	v_cndmask_b32_e64 v1, 0xff800000, v1, s63
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v2, 0xff800000, v2, s76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v1
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v2
	.loc	1 697 25 is_stmt 0              ; attention_backward.py:697:25
	s_and_b32 s3, s63, s3
	s_and_b32 s26, s76, vcc_lo
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	s_mov_b32 s63, s51
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v7, 0xff800000, v7, s58
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v8, 0xff800000, v8, s54
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v10, 0xff800000, v10, s31
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v11, 0, v6
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v7
	.loc	1 696 35                        ; attention_backward.py:696:35
	ds_store_2addr_b32 v11, v1, v2 offset1:32
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_cndmask_b32_e64 v1, 0xff800000, v3, s59
	.loc	1 696 35                        ; attention_backward.py:696:35
	scratch_load_b32 v3, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_cndmask_b32_e64 v2, 0xff800000, v4, s62
	v_cndmask_b32_e64 v11, 0xff800000, v5, s55
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_neq_f32_e64 s7, 0xff800000, v2
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v3, v1, v2 offset1:32
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v1, 0, 1, s26
	v_cndmask_b32_e64 v2, 0, 1, s3
	s_and_b32 s3, s62, s7
	s_and_b32 s26, s58, vcc_lo
	.loc	1 697 34 is_stmt 0              ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v10
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_lshlrev_b16 v1.l, 8, v1.l
	.loc	1 712 26 is_stmt 1              ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s95
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s62, s50
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s58, s50
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_or_b16 v3.l, v2.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s3
	s_and_b32 s3, s59, s8
	.loc	1 697 34 is_stmt 0              ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v8
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v2, 0, 1, s3
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v11
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_lshlrev_b16 v1.l, 8, v1.l
	.loc	1 700 27 is_stmt 1              ; attention_backward.py:700:27
	s_mov_b32 s59, s51
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_and_b32 s3, s55, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v3.h, v2.l, v1.l
	.loc	1 696 35                        ; attention_backward.py:696:35
	scratch_load_b32 v1, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v1, v11, v7 offset1:32
	scratch_load_b32 v1, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v7, 0, 1, s26
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v1, v10, v8 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:320
	scratch_load_b32 v6, off, off offset:400
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v1, 0, v1
	s_waitcnt vmcnt(0)
	ds_load_b32 v125, v6
	ds_load_b32 v5, v1
	scratch_load_b32 v1, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v5, 0x3fb8aa3b, v5
	s_waitcnt vmcnt(0)
	ds_load_b32 v124, v1
	scratch_load_b32 v1, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v123, v1
	scratch_load_b32 v1, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v2, v1
	scratch_load_b32 v1, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v2, 0x3fb8aa3b, v2
	s_waitcnt vmcnt(0)
	ds_load_b32 v243, v1
	scratch_load_b32 v1, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v4, v1
	scratch_load_b32 v1, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v4, 0x3fb8aa3b, v4
	s_waitcnt vmcnt(0)
	ds_load_b32 v1, v1
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v6, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 696 35                        ; attention_backward.py:696:35
	v_mul_f32_e32 v1, 0x3fb8aa3b, v1
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, 0, v6
	scratch_load_b32 v6, off, off offset:404 ; 4-byte Folded Reload
	ds_store_b16 v13, v3
	v_mov_b16_e32 v3.l, v7.l
	v_cndmask_b32_e64 v7, 0, 1, s3
	s_and_b32 s3, s54, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v3.l, 8, v3.l
	v_or_b16 v3.l, v7.l, v3.l
	v_cndmask_b32_e64 v7, 0, 1, s3
	s_and_b32 s3, s31, s7
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s31, s51
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v8, 0, 1, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v7.l, 8, v7.l
	v_or_b16 v7.l, v8.l, v7.l
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v6, v3
	scratch_load_b32 v6, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v6, v3
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:412
	scratch_load_b32 v6, off, off offset:468
	s_waitcnt vmcnt(1)
	ds_store_b16 v3, v7
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v3, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v7, s30, v6, 2
	scratch_load_b32 v6, off, off offset:480 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v3, s30, v3, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v8, s30, v6, 2
	scratch_load_b32 v6, off, off offset:492 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v10, s30, v6, 2
	scratch_load_b32 v6, off, off offset:504 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v11, s30, v6, 2
	scratch_load_b32 v6, off, off offset:516 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v13, s30, v6, 2
	scratch_load_b32 v6, off, off offset:528 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v14, s30, v6, 2
	scratch_load_b32 v6, off, off offset:540 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s94
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v15, s30, v6, 2
	scratch_load_b32 v6, off, off offset:552 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v16, s30, v6, 2
	scratch_load_b32 v6, off, off offset:564 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v17, s30, v6, 2
	scratch_load_b32 v6, off, off offset:572 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v18, s30, v6, 2
	scratch_load_b32 v6, off, off offset:576 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s93
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s92
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s91
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v19, s30, v6, 2
	scratch_load_b32 v6, off, off offset:588 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v20, s30, v6, 2
	scratch_load_b32 v6, off, off offset:596 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s90
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v21, s30, v6, 2
	scratch_load_b32 v6, off, off offset:600 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v22, s30, v6, 2
	scratch_load_b32 v6, off, off offset:604 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s89
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s88
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v23, s30, v6, 2
	scratch_load_b32 v6, off, off offset:608 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v24, s30, v6, 2
	scratch_load_b32 v6, off, off offset:612 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s87
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s86
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v25, s30, v6, 2
	scratch_load_b32 v6, off, off offset:616 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v26, s30, v6, 2
	scratch_load_b32 v6, off, off offset:620 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s85
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s84
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v27, s30, v6, 2
	scratch_load_b32 v6, off, off offset:624 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v28, s30, v6, 2
	scratch_load_b32 v6, off, off offset:628 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s83
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s82
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v65, s30, v6, 2
	scratch_load_b32 v6, off, off offset:632 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v66, s30, v6, 2
	scratch_load_b32 v6, off, off offset:636 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s81
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s80
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v67, s30, v6, 2
	scratch_load_b32 v6, off, off offset:640 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v68, s30, v6, 2
	scratch_load_b32 v6, off, off offset:644 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s79
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s78
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v69, s30, v6, 2
	scratch_load_b32 v6, off, off offset:648 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v70, s30, v6, 2
	scratch_load_b32 v6, off, off offset:664 ; 4-byte Folded Reload
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s77
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s20
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s19
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s18
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s17
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s16
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s15
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s14
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s13
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s12
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v71, s30, v6, 2
	.loc	1 697 25                        ; attention_backward.py:697:25
	scratch_load_b32 v6, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s30, s50
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s11
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s10
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s9
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v83, 0x80000000, v83, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s96
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_i32 s75, s68
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v84, 0x80000000, v84, vcc_lo
	s_clause 0x1f
	buffer_load_b32 v3, v3, s[60:63], 0 offen
	buffer_load_b32 v85, v7, s[60:63], 0 offen
	buffer_load_b32 v8, v8, s[60:63], 0 offen
	buffer_load_b32 v10, v10, s[60:63], 0 offen
	buffer_load_b32 v11, v11, s[60:63], 0 offen
	buffer_load_b32 v13, v13, s[60:63], 0 offen
	buffer_load_b32 v14, v14, s[60:63], 0 offen
	buffer_load_b32 v15, v15, s[60:63], 0 offen
	buffer_load_b32 v16, v16, s[60:63], 0 offen
	buffer_load_b32 v17, v17, s[60:63], 0 offen
	buffer_load_b32 v18, v18, s[60:63], 0 offen
	buffer_load_b32 v19, v19, s[60:63], 0 offen
	buffer_load_b32 v20, v20, s[60:63], 0 offen
	buffer_load_b32 v21, v21, s[60:63], 0 offen
	buffer_load_b32 v22, v22, s[60:63], 0 offen
	buffer_load_b32 v23, v23, s[60:63], 0 offen
	buffer_load_b32 v24, v24, s[60:63], 0 offen
	buffer_load_b32 v25, v25, s[60:63], 0 offen
	buffer_load_b32 v26, v26, s[60:63], 0 offen
	buffer_load_b32 v27, v27, s[60:63], 0 offen
	buffer_load_b32 v28, v28, s[60:63], 0 offen
	buffer_load_b32 v65, v65, s[60:63], 0 offen
	buffer_load_b32 v66, v66, s[60:63], 0 offen
	buffer_load_b32 v67, v67, s[60:63], 0 offen
	buffer_load_b32 v68, v68, s[60:63], 0 offen
	buffer_load_b32 v69, v69, s[60:63], 0 offen
	buffer_load_b32 v70, v70, s[60:63], 0 offen
	buffer_load_b32 v71, v71, s[60:63], 0 offen
	buffer_load_b32 v72, v72, s[60:63], 0 offen
	buffer_load_b32 v82, v82, s[60:63], 0 offen
	buffer_load_b32 v83, v83, s[60:63], 0 offen
	buffer_load_b32 v84, v84, s[60:63], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v7, 2, v81
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v81, 0x80000000, v7, s5
	buffer_load_b32 v7, v81, s[28:31], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v126, v81, s[56:59], 0 offen
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_waitcnt vmcnt(34)
	v_add_nc_u32_e32 v81, 0, v6
	ds_load_u8_d16_hi v92, v81
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16 v92, v81 offset:64
	ds_load_u8_d16_hi v91, v202
	ds_load_u8_d16 v90, v202 offset:64
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16 v91, v203
	ds_load_u8_d16_hi v89, v203 offset:64
	s_waitcnt lgkmcnt(2)
	ds_load_u8_d16_hi v90, v204
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16 v89, v204 offset:64
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v6, off, off offset:116
	scratch_load_b32 v81, off, off offset:108
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v122, v81, v6
	v_add_nc_u32_e32 v81, 0x400, v242
	ds_store_2addr_stride64_b32 v122, v3, v85 offset1:1
	ds_store_2addr_stride64_b32 v122, v8, v10 offset0:2 offset1:3
	ds_store_2addr_stride64_b32 v122, v11, v13 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v122, v14, v15 offset0:6 offset1:7
	ds_store_2addr_stride64_b32 v122, v16, v17 offset0:8 offset1:9
	ds_store_2addr_stride64_b32 v122, v18, v19 offset0:10 offset1:11
	ds_store_2addr_stride64_b32 v122, v20, v21 offset0:12 offset1:13
	ds_store_2addr_stride64_b32 v122, v22, v23 offset0:14 offset1:15
	ds_store_2addr_stride64_b32 v122, v24, v25 offset0:16 offset1:17
	ds_store_2addr_stride64_b32 v122, v26, v27 offset0:18 offset1:19
	ds_store_2addr_stride64_b32 v122, v28, v65 offset0:20 offset1:21
	ds_store_2addr_stride64_b32 v122, v66, v67 offset0:22 offset1:23
	ds_store_2addr_stride64_b32 v122, v68, v69 offset0:24 offset1:25
	ds_store_2addr_stride64_b32 v122, v70, v71 offset0:26 offset1:27
	ds_store_2addr_stride64_b32 v122, v72, v82 offset0:28 offset1:29
	ds_store_2addr_stride64_b32 v122, v83, v84 offset0:30 offset1:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[150:151], v81 offset1:32
	ds_load_2addr_b32 v[168:169], v81 offset0:64 offset1:96
	ds_load_2addr_b32 v[152:153], v81 offset0:128 offset1:160
	ds_load_2addr_b32 v[170:171], v81 offset0:192 offset1:224
	ds_load_2addr_b32 v[154:155], v86 offset1:32
	ds_load_2addr_b32 v[172:173], v86 offset0:64 offset1:96
	ds_load_2addr_b32 v[156:157], v86 offset0:128 offset1:160
	ds_load_2addr_b32 v[174:175], v86 offset0:192 offset1:224
	ds_load_2addr_b32 v[158:159], v87 offset1:32
	ds_load_2addr_b32 v[176:177], v87 offset0:64 offset1:96
	ds_load_2addr_b32 v[160:161], v87 offset0:128 offset1:160
	ds_load_2addr_b32 v[178:179], v87 offset0:192 offset1:224
	ds_load_2addr_b32 v[148:149], v88 offset1:32
	ds_load_2addr_b32 v[180:181], v88 offset0:64 offset1:96
	ds_load_2addr_b32 v[146:147], v88 offset0:128 offset1:160
	ds_load_2addr_b32 v[182:183], v88 offset0:192 offset1:224
	ds_load_2addr_b32 v[144:145], v127 offset1:32
	ds_load_2addr_b32 v[184:185], v127 offset0:64 offset1:96
	ds_load_2addr_b32 v[142:143], v127 offset0:128 offset1:160
	ds_load_2addr_b32 v[186:187], v127 offset0:192 offset1:224
	ds_load_2addr_b32 v[140:141], v128 offset1:32
	ds_load_2addr_b32 v[188:189], v128 offset0:64 offset1:96
	ds_load_2addr_b32 v[138:139], v128 offset0:128 offset1:160
	ds_load_2addr_b32 v[190:191], v128 offset0:192 offset1:224
	ds_load_2addr_b32 v[136:137], v162 offset1:32
	ds_load_2addr_b32 v[192:193], v162 offset0:64 offset1:96
	ds_load_2addr_b32 v[134:135], v162 offset0:128 offset1:160
	ds_load_2addr_b32 v[194:195], v162 offset0:192 offset1:224
	ds_load_2addr_b32 v[162:163], v242 offset1:32
	ds_load_2addr_b32 v[166:167], v242 offset0:64 offset1:96
	ds_load_2addr_b32 v[164:165], v242 offset0:128 offset1:160
	ds_load_2addr_b32 v[196:197], v242 offset0:192 offset1:224
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b32 v122, v3, v24 offset1:16
	scratch_load_b32 v3, off, off offset:416 ; 4-byte Folded Reload
	v_bfe_u32 v249, v140, 16, 1
	v_bfe_u32 v254, v138, 16, 1
	v_bfe_u32 v206, v136, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v249, v140, v249, 0x7fff
	v_bfe_u32 v223, v134, 16, 1
	v_add3_u32 v254, v138, v254, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v206, v136, v206, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v206.l, v116.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v223, v134, v223, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v223.l, v116.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v3, v85, v25 offset1:16
	scratch_load_b32 v3, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v3, v8, v26 offset1:16
	scratch_load_b32 v3, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v3, v10, v27 offset1:16
	scratch_load_b32 v3, off, off offset:428 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v3, v11, v28 offset1:16
	scratch_load_b32 v3, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v3, v13, v65 offset1:16
	scratch_load_b32 v3, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v3, v14, v66 offset1:16
	scratch_load_b32 v3, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v3, v15, v67 offset1:16
	scratch_load_b32 v3, off, off offset:444 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v3, v16, v68 offset1:16
	scratch_load_b32 v3, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v3, v17, v69 offset1:16
	scratch_load_b32 v3, off, off offset:452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v3, v18, v70 offset1:16
	scratch_load_b32 v3, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v3, v19, v71 offset1:16
	scratch_load_b32 v3, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v3, v20, v72 offset1:16
	scratch_load_b32 v3, off, off offset:464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v3, v21, v82 offset1:16
	scratch_load_b32 v3, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v3, v22, v83 offset1:16
	scratch_load_b32 v3, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v3, v23, v84 offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:340
	scratch_load_b32 v6, off, off offset:488
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v3, 0, v3
	ds_load_b128 v[13:16], v3
	scratch_load_b32 v3, off, off offset:484 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_bfe_u32 v8, v14, 16, 1
	v_bfe_u32 v10, v15, 16, 1
	v_bfe_u32 v11, v16, 16, 1
	v_cmp_o_f32_e64 s3, v14, v14
	v_cmp_o_f32_e64 s5, v15, v15
	v_cmp_o_f32_e64 s7, v16, v16
	v_add3_u32 v8, v14, v8, 0x7fff
	v_add3_u32 v10, v15, v10, 0x7fff
	v_add3_u32 v11, v16, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v81.h, 0x7fff, v8.h, s3
	v_cndmask_b16 v82.l, 0x7fff, v10.h, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b16 v82.h, 0x7fff, v11.h, s7
	s_waitcnt vmcnt(0)
	ds_load_b128 v[17:20], v3
	v_bfe_u32 v3, v13, 16, 1
	v_add3_u32 v3, v13, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v81.l, 0x7fff, v3.h, vcc_lo
	scratch_load_b32 v3, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v13, v17, 16, 1
	v_cmp_o_f32_e64 s8, v17, v17
	v_cmp_o_f32_e64 s9, v18, v18
	v_cmp_o_f32_e64 s10, v19, v19
	v_cmp_o_f32_e64 s11, v20, v20
	v_add3_u32 v21, v17, v13, 0x7fff
	v_bfe_u32 v13, v18, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.l, 0x7fff, v21.h, s8
	v_add3_u32 v22, v18, v13, 0x7fff
	v_bfe_u32 v13, v19, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v22.h, s9
	v_add3_u32 v23, v19, v13, 0x7fff
	v_bfe_u32 v13, v20, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v23.h, s10
	v_add3_u32 v24, v20, v13, 0x7fff
	ds_load_b128 v[13:16], v6
	scratch_load_b32 v6, off, off offset:496 ; 4-byte Folded Reload
	v_cndmask_b16 v84.h, 0x7fff, v24.h, s11
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v25, v13, 16, 1
	v_cmp_o_f32_e64 s12, v13, v13
	v_cmp_o_f32_e64 s13, v14, v14
	v_cmp_o_f32_e64 s14, v15, v15
	v_cmp_o_f32_e64 s15, v16, v16
	v_add3_u32 v13, v13, v25, 0x7fff
	v_bfe_u32 v25, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.l, 0x7fff, v13.h, s12
	v_add3_u32 v14, v14, v25, 0x7fff
	v_bfe_u32 v25, v15, 16, 1
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v13, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v85.h, 0x7fff, v14.h, s13
	v_add3_u32 v15, v15, v25, 0x7fff
	v_bfe_u32 v25, v16, 16, 1
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v14, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v86.l, 0x7fff, v15.h, s14
	v_add3_u32 v16, v16, v25, 0x7fff
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v15, v12
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v86.h, 0x7fff, v16.h, s15
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v16, v12
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_load_b128 v[17:20], v6
	scratch_load_b32 v6, off, off offset:512 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v25, v17, 16, 1
	v_cmp_o_f32_e64 s16, v17, v17
	v_cmp_o_f32_e64 s17, v18, v18
	v_cmp_o_f32_e64 s18, v19, v19
	v_cmp_o_f32_e64 s19, v20, v20
	v_add3_u32 v17, v17, v25, 0x7fff
	v_bfe_u32 v25, v18, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.l, 0x7fff, v17.h, s16
	v_add3_u32 v18, v18, v25, 0x7fff
	v_bfe_u32 v25, v19, 16, 1
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v87.h, 0x7fff, v18.h, s17
	v_add3_u32 v19, v19, v25, 0x7fff
	v_bfe_u32 v25, v20, 16, 1
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v18, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v88.l, 0x7fff, v19.h, s18
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v19, v12
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v20, v20, v25, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v72, v19
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v88.h, 0x7fff, v20.h, s19
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v71, v18 :: v_dual_mov_b32 v70, v17
	v_dual_mov_b32 v69, v16 :: v_dual_mov_b32 v68, v15
	v_dual_mov_b32 v67, v14 :: v_dual_mov_b32 v66, v13
	v_mov_b32_e32 v65, v12
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[13:16], off, off offset:248
	scratch_load_b128 v[17:20], off, off offset:264
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[13:20], v[81:88], v[65:72]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[13:16], v3
	scratch_load_b32 v3, off, off offset:508 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_bfe_u32 v8, v14, 16, 1
	v_bfe_u32 v10, v15, 16, 1
	v_bfe_u32 v11, v16, 16, 1
	v_cmp_o_f32_e64 s3, v14, v14
	v_cmp_o_f32_e64 s5, v15, v15
	v_cmp_o_f32_e64 s7, v16, v16
	v_add3_u32 v8, v14, v8, 0x7fff
	v_add3_u32 v10, v15, v10, 0x7fff
	v_add3_u32 v11, v16, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v81.h, 0x7fff, v8.h, s3
	v_cndmask_b16 v82.l, 0x7fff, v10.h, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b16 v82.h, 0x7fff, v11.h, s7
	s_waitcnt vmcnt(0)
	ds_load_b128 v[17:20], v3
	v_bfe_u32 v3, v13, 16, 1
	v_add3_u32 v3, v13, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v81.l, 0x7fff, v3.h, vcc_lo
	scratch_load_b32 v3, off, off offset:524 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v13, v17, 16, 1
	v_cmp_o_f32_e64 s8, v17, v17
	v_cmp_o_f32_e64 s9, v18, v18
	v_cmp_o_f32_e64 s10, v19, v19
	v_cmp_o_f32_e64 s11, v20, v20
	v_add3_u32 v21, v17, v13, 0x7fff
	v_bfe_u32 v13, v18, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.l, 0x7fff, v21.h, s8
	v_add3_u32 v22, v18, v13, 0x7fff
	v_bfe_u32 v13, v19, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v22.h, s9
	v_add3_u32 v23, v19, v13, 0x7fff
	v_bfe_u32 v13, v20, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v23.h, s10
	v_add3_u32 v24, v20, v13, 0x7fff
	ds_load_b128 v[13:16], v6
	scratch_load_b32 v6, off, off offset:520 ; 4-byte Folded Reload
	v_cndmask_b16 v84.h, 0x7fff, v24.h, s11
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v25, v13, 16, 1
	v_cmp_o_f32_e64 s12, v13, v13
	v_cmp_o_f32_e64 s13, v14, v14
	v_cmp_o_f32_e64 s14, v15, v15
	v_cmp_o_f32_e64 s15, v16, v16
	v_add3_u32 v13, v13, v25, 0x7fff
	v_bfe_u32 v25, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.l, 0x7fff, v13.h, s12
	v_add3_u32 v14, v14, v25, 0x7fff
	v_bfe_u32 v25, v15, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.h, 0x7fff, v14.h, s13
	v_add3_u32 v15, v15, v25, 0x7fff
	v_bfe_u32 v25, v16, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.l, 0x7fff, v15.h, s14
	v_add3_u32 v16, v16, v25, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v86.h, 0x7fff, v16.h, s15
	s_waitcnt vmcnt(0)
	ds_load_b128 v[17:20], v6
	scratch_load_b32 v6, off, off offset:536 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v25, v17, 16, 1
	v_cmp_o_f32_e64 s16, v17, v17
	v_cmp_o_f32_e64 s17, v18, v18
	v_cmp_o_f32_e64 s18, v19, v19
	v_cmp_o_f32_e64 s19, v20, v20
	v_add3_u32 v17, v17, v25, 0x7fff
	v_bfe_u32 v25, v18, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.l, 0x7fff, v17.h, s16
	v_add3_u32 v18, v18, v25, 0x7fff
	v_bfe_u32 v25, v19, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.h, 0x7fff, v18.h, s17
	v_add3_u32 v19, v19, v25, 0x7fff
	v_bfe_u32 v25, v20, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v88.l, 0x7fff, v19.h, s18
	v_add3_u32 v20, v20, v25, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v88.h, 0x7fff, v20.h, s19
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[13:16], off, off offset:216
	scratch_load_b128 v[17:20], off, off offset:232
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[13:20], v[81:88], v[65:72]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[13:16], v3
	scratch_load_b32 v3, off, off offset:532 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_bfe_u32 v8, v14, 16, 1
	v_bfe_u32 v10, v15, 16, 1
	v_bfe_u32 v11, v16, 16, 1
	v_cmp_o_f32_e64 s3, v14, v14
	v_cmp_o_f32_e64 s5, v15, v15
	v_cmp_o_f32_e64 s7, v16, v16
	v_add3_u32 v8, v14, v8, 0x7fff
	v_add3_u32 v10, v15, v10, 0x7fff
	v_add3_u32 v11, v16, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v81.h, 0x7fff, v8.h, s3
	v_cndmask_b16 v82.l, 0x7fff, v10.h, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b16 v82.h, 0x7fff, v11.h, s7
	s_waitcnt vmcnt(0)
	ds_load_b128 v[17:20], v3
	v_bfe_u32 v3, v13, 16, 1
	v_add3_u32 v3, v13, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v81.l, 0x7fff, v3.h, vcc_lo
	scratch_load_b32 v3, off, off offset:548 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v13, v17, 16, 1
	v_cmp_o_f32_e64 s8, v17, v17
	v_cmp_o_f32_e64 s9, v18, v18
	v_cmp_o_f32_e64 s10, v19, v19
	v_cmp_o_f32_e64 s11, v20, v20
	v_add3_u32 v21, v17, v13, 0x7fff
	v_bfe_u32 v13, v18, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.l, 0x7fff, v21.h, s8
	v_add3_u32 v22, v18, v13, 0x7fff
	v_bfe_u32 v13, v19, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v22.h, s9
	v_add3_u32 v23, v19, v13, 0x7fff
	v_bfe_u32 v13, v20, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v23.h, s10
	v_add3_u32 v24, v20, v13, 0x7fff
	ds_load_b128 v[13:16], v6
	scratch_load_b32 v6, off, off offset:544 ; 4-byte Folded Reload
	v_cndmask_b16 v84.h, 0x7fff, v24.h, s11
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v25, v13, 16, 1
	v_cmp_o_f32_e64 s12, v13, v13
	v_cmp_o_f32_e64 s13, v14, v14
	v_cmp_o_f32_e64 s14, v15, v15
	v_cmp_o_f32_e64 s15, v16, v16
	v_add3_u32 v13, v13, v25, 0x7fff
	v_bfe_u32 v25, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.l, 0x7fff, v13.h, s12
	v_add3_u32 v14, v14, v25, 0x7fff
	v_bfe_u32 v25, v15, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.h, 0x7fff, v14.h, s13
	v_add3_u32 v15, v15, v25, 0x7fff
	v_bfe_u32 v25, v16, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.l, 0x7fff, v15.h, s14
	v_add3_u32 v16, v16, v25, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v86.h, 0x7fff, v16.h, s15
	s_waitcnt vmcnt(0)
	ds_load_b128 v[17:20], v6
	scratch_load_b32 v6, off, off offset:560 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v25, v17, 16, 1
	v_cmp_o_f32_e64 s16, v17, v17
	v_cmp_o_f32_e64 s17, v18, v18
	v_cmp_o_f32_e64 s18, v19, v19
	v_cmp_o_f32_e64 s19, v20, v20
	v_add3_u32 v17, v17, v25, 0x7fff
	v_bfe_u32 v25, v18, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.l, 0x7fff, v17.h, s16
	v_add3_u32 v18, v18, v25, 0x7fff
	v_bfe_u32 v25, v19, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.h, 0x7fff, v18.h, s17
	v_add3_u32 v19, v19, v25, 0x7fff
	v_bfe_u32 v25, v20, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v88.l, 0x7fff, v19.h, s18
	v_add3_u32 v20, v20, v25, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v88.h, 0x7fff, v20.h, s19
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[13:16], off, off offset:184
	scratch_load_b128 v[17:20], off, off offset:200
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[13:20], v[81:88], v[65:72]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[13:16], v3
	scratch_load_b32 v3, off, off offset:556 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_bfe_u32 v8, v14, 16, 1
	v_bfe_u32 v10, v15, 16, 1
	v_bfe_u32 v11, v16, 16, 1
	v_cmp_o_f32_e64 s3, v14, v14
	v_cmp_o_f32_e64 s5, v15, v15
	v_cmp_o_f32_e64 s7, v16, v16
	v_add3_u32 v8, v14, v8, 0x7fff
	v_add3_u32 v10, v15, v10, 0x7fff
	v_add3_u32 v11, v16, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v81.h, 0x7fff, v8.h, s3
	v_cndmask_b16 v82.l, 0x7fff, v10.h, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b16 v82.h, 0x7fff, v11.h, s7
	s_waitcnt vmcnt(0)
	ds_load_b128 v[17:20], v3
	v_bfe_u32 v3, v13, 16, 1
	v_add3_u32 v3, v13, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v81.l, 0x7fff, v3.h, vcc_lo
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v13, v17, 16, 1
	v_cmp_o_f32_e64 s8, v17, v17
	v_cmp_o_f32_e64 s9, v18, v18
	v_cmp_o_f32_e64 s10, v19, v19
	v_cmp_o_f32_e64 s11, v20, v20
	v_add3_u32 v21, v17, v13, 0x7fff
	v_bfe_u32 v13, v18, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.l, 0x7fff, v21.h, s8
	v_add3_u32 v22, v18, v13, 0x7fff
	v_bfe_u32 v13, v19, 16, 1
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v21, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v83.h, 0x7fff, v22.h, s9
	v_add3_u32 v23, v19, v13, 0x7fff
	v_bfe_u32 v13, v20, 16, 1
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v22, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v84.l, 0x7fff, v23.h, s10
	v_add3_u32 v24, v20, v13, 0x7fff
	ds_load_b128 v[13:16], v6
	scratch_load_b32 v6, off, off offset:568 ; 4-byte Folded Reload
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v23, v79
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v84.h, 0x7fff, v24.h, s11
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v24, v80
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v25, v13, 16, 1
	v_cmp_o_f32_e64 s12, v13, v13
	v_cmp_o_f32_e64 s13, v14, v14
	v_cmp_o_f32_e64 s14, v15, v15
	v_cmp_o_f32_e64 s15, v16, v16
	v_add3_u32 v13, v13, v25, 0x7fff
	v_bfe_u32 v25, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.l, 0x7fff, v13.h, s12
	v_add3_u32 v14, v14, v25, 0x7fff
	v_bfe_u32 v25, v15, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.h, 0x7fff, v14.h, s13
	v_add3_u32 v15, v15, v25, 0x7fff
	v_bfe_u32 v25, v16, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.l, 0x7fff, v15.h, s14
	v_add3_u32 v16, v16, v25, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v86.h, 0x7fff, v16.h, s15
	s_waitcnt vmcnt(0)
	ds_load_b128 v[17:20], v6
	.loc	1 696 25                        ; attention_backward.py:696:25
	scratch_load_b32 v6, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v25, v17, 16, 1
	v_cmp_o_f32_e64 s16, v17, v17
	v_cmp_o_f32_e64 s17, v18, v18
	v_cmp_o_f32_e64 s18, v19, v19
	v_cmp_o_f32_e64 s19, v20, v20
	v_add3_u32 v17, v17, v25, 0x7fff
	v_bfe_u32 v25, v18, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.l, 0x7fff, v17.h, s16
	v_add3_u32 v18, v18, v25, 0x7fff
	v_bfe_u32 v25, v19, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.h, 0x7fff, v18.h, s17
	v_add3_u32 v19, v19, v25, 0x7fff
	v_bfe_u32 v25, v20, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v88.l, 0x7fff, v19.h, s18
	v_add3_u32 v20, v20, v25, 0x7fff
	.loc	1 640 41                        ; attention_backward.py:640:41
	v_mul_f32_e32 v25, s71, v116
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v88.h, 0x7fff, v20.h, s19
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[13:16], off, off offset:152
	scratch_load_b128 v[17:20], off, off offset:168
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[13:20], v[81:88], v[65:72]
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v17, v73
	v_cvt_f32_i32_e32 v18, v74
	v_cvt_f32_i32_e32 v19, v75
	v_cvt_f32_i32_e32 v20, v76
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v14, v69, v126
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_dual_mul_f32 v17, v25, v17 :: v_dual_sub_f32 v10, v66, v126
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v11, v67, v126
	v_sub_f32_e32 v8, v65, v126
	v_sub_f32_e32 v16, v71, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 696 25                        ; attention_backward.py:696:25
	v_fmac_f32_e32 v5, v17, v6
	scratch_load_b32 v6, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v17, v25, v21
	.loc	1 696 35                        ; attention_backward.py:696:35
	v_mul_f32_e32 v21, 0x3fb8aa3b, v243
	.loc	1 696 25 is_stmt 0              ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v21, v17, v6
	scratch_load_b32 v6, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_dual_mul_f32 v17, v25, v18 :: v_dual_mul_f32 v18, 0x3fb8aa3b, v124
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 696 25                        ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v18, v17, v6
	.loc	1 722 33                        ; attention_backward.py:722:33
	scratch_load_b32 v6, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v5, v5, v7
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v19, v25, v19
	v_mul_f32_e32 v20, v25, v20
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v17, v5
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_and_b16 v5.l, 1, v92.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v5.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v5, 0, v17, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_dual_sub_f32 v13, v68, v126 :: v_dual_mul_f32 v8, v5, v8
	v_dual_sub_f32 v15, v70, v126 :: v_dual_mul_f32 v8, s44, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v17, v8, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	v_add3_u32 v8, v8, v17, 0x7fff
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v17, v21, v7
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_and_b16 v8.l, 1, v92.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v17, v17
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e64 s3, 1, v8.l
	v_and_b16 v8.l, 1, v91.h
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s5, 1, v8.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v8.l, 0x7fff, v8.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v243, 0, v17, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v14, v243, v14
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v14, s44, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v17, v14, 16, 1
	v_cmp_o_f32_e64 s3, v14, v14
	v_add3_u32 v14, v14, v17, 0x7fff
	.loc	1 703 34 is_stmt 1              ; attention_backward.py:703:34
	v_sub_f32_e32 v17, v18, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v8.h, 0x7fff, v14.h, s3
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v124, 0, v17, s5
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v10, v124, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v10, s44, v10
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v17, v10, 16, 1
	v_cmp_o_f32_e64 s5, v10, v10
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v10, v10, v17, 0x7fff
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v14, 0, v6
	.loc	1 696 25                        ; attention_backward.py:696:25
	scratch_load_b32 v6, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v14, v8
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v8.l, 0x7fff, v10.h, s5
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v10, v119, 0, 8
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	ds_store_b16_d16_hi v14, v8 offset:512
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v14, 15, v10
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v8.h, v10.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v17, -16, v14
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v8.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 47 is_stmt 1              ; attention_backward.py:720:47
	v_dual_sub_f32 v3, v72, v126 :: v_dual_cndmask_b32 v14, v14, v17
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v17, v198, 0, 8
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v18, 15, v17
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v8.h, v17.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v21, -16, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v8.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v8.h, 4, v10.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v18, v18, v21, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v21.l, v8.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e32 v21.h, v116.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v10.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v8.h, 4, v17.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v18, v18
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v26, -16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v10, v21, v26, vcc_lo
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v21.l, v8.h, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v17.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v10, v10
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v26, -16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v17, v21, v26, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v21.h, v121.l
	v_mov_b16_e32 v21.l, v116.l
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v121.l, v116.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v14, v14, v21
	v_mul_f32_e32 v10, v10, v21
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v21.h, v120.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v10, 0, v10, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v18, v21, v18
	v_mul_f32_e32 v17, v21, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v21, v14, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_cndmask_b32_e64 v18, 0, v18, s0
	v_cmp_o_f32_e64 s5, v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v14, v14, v21, 0x7fff
	v_mov_b16_e32 v21.h, v116.l
	v_mov_b16_e32 v21.l, v18.h
	v_cmp_o_f32_e64 s3, v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v18, v18, v21, 0x7fff
	v_bfe_u32 v21, v10, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v10, v10, v21, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v14.h, vcc_lo
	.loc	1 696 35                        ; attention_backward.py:696:35
	v_mul_f32_e32 v14, 0x3fb8aa3b, v123
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v21.h, v116.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v123.l, v116.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s5
	.loc	1 696 25                        ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v14, v19, v6
	scratch_load_b32 v6, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v14, v14, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v21.l, v17.h
	v_cmp_o_f32_e64 s7, v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v17, v17, v21, 0x7fff
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v21, v25, v22
	v_mul_f32_e32 v22, v25, v23
	v_mul_f32_e32 v23, v25, v24
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v17.l, 0x7fff, v18.h, s3
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s7
	.loc	1 696 35                        ; attention_backward.py:696:35
	v_mul_f32_e32 v18, 0x3fb8aa3b, v125
	.loc	1 696 25 is_stmt 0              ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v2, v20, v6
	scratch_load_b32 v6, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 732 54 is_stmt 1              ; attention_backward.py:732:54
	v_mov_b16_e32 v20.l, v116.l
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v2, v2, v7
	.loc	1 696 25                        ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v4, v21, v6
	scratch_load_b32 v6, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_dual_sub_f32 v4, v4, v7 :: v_dual_fmac_f32 v1, v22, v6
	.loc	1 696 25                        ; attention_backward.py:696:25
	scratch_load_b32 v6, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v19, v1, v7
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_and_b16 v1.l, 1, v91.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v1.l
	.loc	1 696 25                        ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v18, v23, v6
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v18, v18, v7
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v7, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e32 v1, 0, v7, vcc_lo
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v7, v1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v7, s44, v7
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v11, v7, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v11, v7, v11, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v7, v2
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_and_b16 v2.l, 1, v90.h
	v_cmp_eq_u16_e64 s3, 1, v2.l
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v2, 0, v7, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v7, v2, v13
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v7, s44, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v13, v7, 16, 1
	v_cmp_o_f32_e64 s3, v7, v7
	v_add3_u32 v13, v7, v13, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v7, v4
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_and_b16 v4.l, 1, v90.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s5, 1, v4.l
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v4, 0, v7, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v7, v4, v15
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v15, v19
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v19.l, v116.l
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v7, s44, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v14, v7, 16, 1
	v_cmp_o_f32_e64 s5, v7, v7
	v_add3_u32 v14, v7, v14, 0x7fff
	.loc	1 697 25 is_stmt 1              ; attention_backward.py:697:25
	v_and_b16 v7.l, 1, v89.h
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s7, 1, v7.l
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v119, 0, v15, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v7, v119, v16
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v16, v18
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v18.l, v116.l
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v7, s44, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v15, v7, 16, 1
	v_cmp_o_f32_e64 s7, v7, v7
	v_add3_u32 v15, v7, v15, 0x7fff
	.loc	1 697 25 is_stmt 1              ; attention_backward.py:697:25
	v_and_b16 v7.l, 1, v89.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s8, 1, v7.l
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v120, 0, v16, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v3, v120, v3
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v3, s44, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v7, v3, 16, 1
	v_cmp_o_f32_e64 s8, v3, v3
	v_add3_u32 v7, v3, v7, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v14.h, s5
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	ds_store_b16 v226, v8
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v8, v209, 0, 8
	.loc	1 721 37 is_stmt 1              ; attention_backward.py:721:37
	v_cndmask_b16 v3.h, 0x7fff, v11.h, vcc_lo
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v209.l, v116.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v226, v3 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v3.l, 0x7fff, v15.h, s7
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v7.l, v8.l
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	ds_store_b16_d16_hi v219, v3
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v3.h, 0x7fff, v13.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v219, v3 offset:512
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v8, 15, v7
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v3.l, v7.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v11, -16, v8
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v8, v8, v11, vcc_lo
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v11, v115, 0, 8
	.loc	1 728 51 is_stmt 1              ; attention_backward.py:728:51
	v_mov_b16_e32 v115.l, v116.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v13, 15, v11
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v3.l, v11.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v14, -16, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.l
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v3.l, 4, v7.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v13, v13, v14, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v14.l, v3.l, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e32 v14.h, v116.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v7.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v3.l, 4, v11.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v15, -16, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v14, v14, v15, vcc_lo
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v15.l, v3.l, 15
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v3.l, 0x7fff, v7.h, s8
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e32 v15.h, v116.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v11.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v0, v3
	ds_store_b16 v0, v3 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v3, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v16, -16, v15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v11, v15, v16, vcc_lo
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v15.h, v118.l
	v_mov_b16_e32 v15.l, v116.l
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v118.l, v116.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v16.l, v116.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v8, v8, v15
	v_mul_f32_e32 v14, v14, v15
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v15.h, v117.l
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v117.l, v116.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v8, 0, v8, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v13, v13, v15
	v_mul_f32_e32 v11, v11, v15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v15, v8, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v15, v8, v15, 0x7fff
	v_cndmask_b32_e64 v8, 0, v14, s1
	v_cndmask_b16 v7.l, 0x7fff, v15.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v14, v8, 16, 1
	v_cmp_o_f32_e64 s3, v8, v8
	v_add3_u32 v14, v8, v14, 0x7fff
	v_cndmask_b32_e64 v8, 0, v13, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v7.h, 0x7fff, v14.h, s3
	v_bfe_u32 v13, v8, 16, 1
	v_cmp_o_f32_e64 s5, v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v13, v8, v13, 0x7fff
	v_cndmask_b32_e64 v8, 0, v11, s1
	v_bfe_u32 v11, v8, 16, 1
	v_cmp_o_f32_e64 s7, v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v11, v8, v11, 0x7fff
	v_cndmask_b16 v8.l, 0x7fff, v13.h, s5
	v_cndmask_b16 v8.h, 0x7fff, v11.h, s7
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, 0, v3
	ds_load_b128 v[74:77], v3
	scratch_load_b32 v3, off, off offset:580 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[78:81], v3
	scratch_load_b32 v3, off, off offset:584 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[66:69], v3
	scratch_load_b32 v3, off, off offset:592 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[70:73], v3
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v3, v205, 0, 8
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b32 v122, v17, v10 offset1:1
	ds_store_2addr_stride64_b32 v122, v7, v8 offset0:2 offset1:3
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v17.l, v116.l
	v_mov_b16_e64 v205.l, v116.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v10.l, v3.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v11, 15, v10
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v3.l, v10.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v13, -16, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.l
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v3, v112, 0, 8
	.loc	1 732 54 is_stmt 1              ; attention_backward.py:732:54
	v_mov_b16_e32 v112.l, v116.l
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e32 v3.h, v116.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v11, v11, v13, vcc_lo
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v13.l, v3.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v11, v11
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v3.l, v13.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v14, 15, v13
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e64 v13.h, v208.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v208.l, v116.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v3.l, 4, v10.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v15, -16, v14
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v3.l, v3.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v14, v14, v15, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v10.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v15, -16, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v14, v14
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v10, v3, v15, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v3.l, 4, v13.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v13.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v13.l, v116.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v10, v10
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v3.l, v3.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v11, v11, v13
	v_mul_f32_e32 v10, v10, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v15, -16, v3
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v13.h, v207.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v207.l, v116.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v10, 0, v10, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_dual_cndmask_b32 v3, v3, v15 :: v_dual_mul_f32 v14, v14, v13
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v10, v10
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v3, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v3, v3, v13
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v13, v11, 16, 1
	v_cndmask_b32_e64 v3, 0, v3, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v13, v11, v13, 0x7fff
	v_bfe_u32 v11, v10, 16, 1
	v_cmp_o_f32_e64 s7, v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v11, v10, v11, 0x7fff
	v_cndmask_b32_e64 v10, 0, v14, s0
	v_cndmask_b16 v11.l, 0x7fff, v13.h, vcc_lo
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v14, v10, 16, 1
	v_cmp_o_f32_e64 s5, v10, v10
	v_add3_u32 v14, v10, v14, 0x7fff
	v_bfe_u32 v10, v3, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v10, v3, v10, 0x7fff
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v3, v113, 0, 8
	.loc	1 732 54 is_stmt 1              ; attention_backward.py:732:54
	v_mov_b16_e32 v113.l, v116.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v10.l, 0x7fff, v14.h, s5
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v7.l, v3.l
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v8, 15, v7
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v3.l, v7.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v13, -16, v8
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.l
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v3, v110, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e32 v3.h, v116.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v8, v8, v13, vcc_lo
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v13.l, v3.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v3.l, v13.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v14, 15, v13
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v13.h, v111.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v3.l, 4, v7.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v15, -16, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v3.l, v3.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v14, v14, v15, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v7.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v15, -16, v3
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v7, v3, v15, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v3.l, 4, v13.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v13.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v13.l, v116.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v7, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v3.l, v3.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v8, v8, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v7, v7, v13
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v15, -16, v3
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v13.h, v109.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v8, 0, v8, s0
	v_cndmask_b32_e64 v7, 0, v7, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_dual_cndmask_b32 v3, v3, v15 :: v_dual_mul_f32 v14, v14, v13
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v7, v7
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v3, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v3, v3, v13
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v13, v8, 16, 1
	v_cndmask_b32_e64 v3, 0, v3, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v13, v8, v13, 0x7fff
	v_bfe_u32 v8, v7, 16, 1
	v_cmp_o_f32_e64 s7, v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v8, v7, v8, 0x7fff
	v_cndmask_b32_e64 v7, 0, v14, s0
	v_bfe_u32 v14, v7, 16, 1
	v_cmp_o_f32_e64 s5, v7, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v14, v7, v14, 0x7fff
	v_bfe_u32 v7, v3, 16, 1
	v_add3_u32 v7, v3, v7, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v13.h, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v8.h, s3
	v_cndmask_b16 v7.l, 0x7fff, v14.h, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s7
	ds_store_2addr_stride64_b32 v122, v11, v10 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v122, v3, v7 offset0:6 offset1:7
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v3, v108, 0, 8
	v_mov_b16_e32 v7.l, v3.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v3.l, v7.l, 15
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v3, v106, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e32 v3.h, v116.l
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v8, 15, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v10, -16, v8
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v8, v8, v10, vcc_lo
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v10.l, v3.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v3.l, v10.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v11, 15, v10
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v10.h, v107.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v3.l, 4, v7.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v13, -16, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v3.l, v3.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v11, v11, v13, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v7.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v13, -16, v3
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v7, v3, v13, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v3.l, 4, v10.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v10.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v10.l, v116.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v7, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v3.l, v3.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v8, v8, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v7, v7, v10
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v13, -16, v3
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v10.h, v105.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v8, 0, v8, s0
	v_cndmask_b32_e64 v7, 0, v7, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v3, v3, v13, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v11, v11, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	v_cmp_o_f32_e64 s3, v7, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v3, v3
	v_mul_f32_e32 v3, v3, v10
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v10, v8, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v3, 0, v3, s1
	v_add3_u32 v10, v8, v10, 0x7fff
	v_bfe_u32 v8, v7, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s7, v3, v3
	v_add3_u32 v8, v7, v8, 0x7fff
	v_cndmask_b32_e64 v7, 0, v11, s0
	v_cndmask_b16 v8.l, 0x7fff, v10.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s3
	v_bfe_u32 v11, v7, 16, 1
	v_cmp_o_f32_e64 s5, v7, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v11, v7, v11, 0x7fff
	v_bfe_u32 v7, v3, 16, 1
	v_add3_u32 v7, v3, v7, 0x7fff
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v3, v102, 0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v7.l, v3.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v3.l, v7.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v10, 15, v7
	.loc	1 650 42 is_stmt 1              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v3, v101, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v13, -16, v10
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e32 v3.h, v116.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v11.l, v3.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 33 is_stmt 1              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v10, v10, v13, vcc_lo
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v3.l, v11.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v13, 15, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v10, v10
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v3.l, 4, v7.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v14, -16, v13
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v3.l, v3.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v13, v13, v14, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v7.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v14, -16, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v14, v3, v14, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v3.l, 4, v11.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v11.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v14, v14
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v3.l, v3.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v15, -16, v3
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v3, v3, v15, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v15.h, v104.l
	v_mov_b16_e32 v15.l, v116.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v3, v3
	v_mul_f32_e32 v10, v10, v15
	v_mul_f32_e32 v14, v14, v15
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v15.h, v103.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v13, v13, v15
	v_mul_f32_e32 v3, v3, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v15, v10, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_cndmask_b32_e64 v3, 0, v3, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v15, v10, v15, 0x7fff
	v_cndmask_b32_e64 v10, 0, v14, s1
	v_cmp_o_f32_e64 s9, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v7.l, 0x7fff, v15.h, vcc_lo
	v_bfe_u32 v14, v10, 16, 1
	v_cmp_o_f32_e64 s3, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v14, v10, v14, 0x7fff
	v_cndmask_b32_e64 v10, 0, v13, s0
	v_bfe_u32 v13, v10, 16, 1
	v_cmp_o_f32_e64 s8, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v13, v10, v13, 0x7fff
	v_bfe_u32 v10, v3, 16, 1
	v_add3_u32 v10, v3, v10, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v11.h, s5
	v_cndmask_b16 v3.h, 0x7fff, v7.h, s7
	v_cndmask_b16 v7.h, 0x7fff, v14.h, s3
	v_cndmask_b16 v10.l, 0x7fff, v13.h, s8
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s8, v119, v119
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s9
	ds_store_2addr_stride64_b32 v122, v8, v3 offset0:8 offset1:9
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v3, v100, 0, 8
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s9, v120, v120
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_store_2addr_stride64_b32 v122, v7, v10 offset0:10 offset1:11
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v8.l, v3.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v3.l, v8.l, 15
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v3, v99, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e32 v3.h, v116.l
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v11, 15, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v13, -16, v11
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v11, v11, v13, vcc_lo
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v13.l, v3.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v11, v11
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v3.l, v13.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v14, 15, v13
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v13.h, v98.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v3.l, 4, v8.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v15, -16, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v3.l, v3.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v14, v14, v15, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v8.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v15, -16, v3
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v8, v3, v15, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v3.l, 4, v13.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v13.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v13.l, v116.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v3.l, v3.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v11, v11, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v8, v8, v13
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v15, -16, v3
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v13.h, v97.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v11, 0, v11, s0
	v_cndmask_b32_e64 v8, 0, v8, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_dual_cndmask_b32 v3, v3, v15 :: v_dual_mul_f32 v14, v14, v13
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v8, v8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v3, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v3, v3, v13
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v13, v11, 16, 1
	v_cndmask_b32_e64 v3, 0, v3, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v13, v11, v13, 0x7fff
	v_bfe_u32 v11, v8, 16, 1
	v_cmp_o_f32_e64 s7, v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v11, v8, v11, 0x7fff
	v_cndmask_b32_e64 v8, 0, v14, s0
	v_cndmask_b16 v11.l, 0x7fff, v13.h, vcc_lo
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v14, v8, 16, 1
	v_cmp_o_f32_e64 s5, v8, v8
	v_add3_u32 v14, v8, v14, 0x7fff
	v_bfe_u32 v8, v3, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v8, v3, v8, 0x7fff
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v3, v96, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v8.l, 0x7fff, v14.h, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s7
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v7.l, v3.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v10, 15, v7
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v3.l, v7.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v13, -16, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.l
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v3, v95, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e32 v3.h, v116.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v10, v10, v13, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v13.l, v3.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v3.l, v13.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v14, 15, v13
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v13.h, v94.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v3.l, 4, v7.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v15, -16, v14
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v3.l, v3.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v14, v14, v15, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v7.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v15, -16, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v14, v14
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v7, v3, v15, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v3.l, 4, v13.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v13.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v13.l, v116.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v3.l, v3.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v10, v10, v13
	v_mul_f32_e32 v7, v7, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v15, -16, v3
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v13.h, v93.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v10, 0, v10, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v7, 0, v7, s1
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_dual_cndmask_b32 v3, v3, v15 :: v_dual_mul_f32 v14, v14, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v15.l, v116.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s3, v7, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v3, v3
	v_mul_f32_e32 v3, v3, v13
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v13, v10, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v3, 0, v3, s1
	v_add3_u32 v13, v10, v13, 0x7fff
	v_bfe_u32 v10, v7, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s7, v3, v3
	v_add3_u32 v10, v7, v10, 0x7fff
	v_cndmask_b32_e64 v7, 0, v14, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v14, v7, 16, 1
	v_cmp_o_f32_e64 s5, v7, v7
	v_add3_u32 v14, v7, v14, 0x7fff
	v_bfe_u32 v7, v3, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v7, v3, v7, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v13.h, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v10.h, s3
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_bfe_u32 v13, v119, 16, 1
	v_cmp_o_f32_e64 s3, v124, v124
	v_bfe_u32 v10, v243, 16, 1
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v7.l, 0x7fff, v14.h, s5
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s5, v1, v1
	v_bfe_u32 v14, v120, 16, 1
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s7
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v13, v119, v13, 0x7fff
	v_add3_u32 v10, v243, v10, 0x7fff
	v_cmp_o_f32_e64 s7, v4, v4
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v13.l, v116.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v14, v120, v14, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v14.l, v116.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_store_2addr_stride64_b32 v122, v11, v8 offset0:12 offset1:13
	ds_store_2addr_stride64_b32 v122, v3, v7 offset0:14 offset1:15
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v95, v246 offset:512
	ds_load_u16_d16 v96, v246 offset:768
	ds_load_u16_d16 v97, v246 offset:1024
	ds_load_u16_d16 v100, v246 offset:1792
	ds_load_u16_d16 v98, v246 offset:1280
	ds_load_u16_d16 v105, v246 offset:1088
	ds_load_u16_d16 v104, v246 offset:832
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v3, v5, 16, 1
	v_bfe_u32 v11, v4, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v7.l, v116.l
	v_mov_b16_e32 v122.l, v116.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v117.h, 0x7fff, v13.h, s8
	v_cndmask_b16 v115.h, 0x7fff, v14.h, s9
	v_add3_u32 v3, v5, v3, 0x7fff
	v_add3_u32 v11, v4, v11, 0x7fff
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16_hi v105, v246 offset:1216
	ds_load_u16_d16 v94, v246 offset:256
	ds_load_u16_d16 v93, v246
	ds_load_u16_d16 v99, v246 offset:1536
	ds_load_u16_d16_hi v95, v246 offset:640
	ds_load_u16_d16_hi v96, v246 offset:896
	ds_load_u16_d16_hi v97, v246 offset:1152
	ds_load_u16_d16 v106, v246 offset:1344
	ds_load_u16_d16 v85, v246 offset:2816
	ds_load_u16_d16 v86, v246 offset:3072
	ds_load_u16_d16 v92, v246 offset:2624
	ds_load_u16_d16 v91, v246 offset:2368
	ds_load_u16_d16 v82, v246 offset:2048
	ds_load_u16_d16 v83, v246 offset:2304
	ds_load_u16_d16 v84, v246 offset:2560
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v116.h, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v118.h, 0x7fff, v11.h, s7
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v92, v246 offset:2752
	ds_load_u16_d16_hi v99, v246 offset:1664
	ds_load_u16_d16_hi v100, v246 offset:1920
	ds_load_u16_d16_hi v98, v246 offset:1408
	ds_load_u16_d16 v101, v246 offset:64
	ds_load_u16_d16_hi v94, v246 offset:384
	ds_load_u16_d16 v103, v246 offset:576
	ds_load_u16_d16 v102, v246 offset:320
	ds_load_u16_d16_hi v93, v246 offset:128
	ds_load_u16_d16 v107, v246 offset:1600
	ds_load_u16_d16 v90, v246 offset:2112
	ds_load_u16_d16 v108, v246 offset:1856
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v3, v5, v116 :: v_dual_sub_f32 v4, v4, v118
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v101, v246 offset:192
	ds_load_u16_d16_hi v104, v246 offset:960
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v103, v246 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v102, v246 offset:448
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v5, v3, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_cmp_o_f32_e64 s8, v4, v4
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(7)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[93:100], v[74:81], v[57:64]
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_load_u16_d16 v93, v246 offset:2880
	ds_load_u16_d16 v87, v246 offset:3328
	ds_load_u16_d16 v94, v246 offset:3136
	ds_load_u16_d16_hi v91, v246 offset:2496
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v90, v246 offset:2240
	ds_load_u16_d16 v88, v246 offset:3584
	ds_load_u16_d16 v89, v246 offset:3840
	ds_load_u16_d16_hi v86, v246 offset:3200
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v8, v3, v5, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v3, v124, 16, 1
	v_bfe_u32 v5, v1, 16, 1
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_load_u16_d16_hi v106, v246 offset:1472
	ds_load_u16_d16_hi v107, v246 offset:1728
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v108, v246 offset:1984
	ds_load_u16_d16_hi v85, v246 offset:2944
	ds_load_u16_d16_hi v84, v246 offset:2688
	ds_load_u16_d16_hi v83, v246 offset:2432
	ds_load_u16_d16_hi v82, v246 offset:2176
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v93, v246 offset:3008
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v87, v246 offset:3456
	ds_load_u16_d16 v97, v246 offset:3904
	ds_load_u16_d16 v96, v246 offset:3648
	ds_load_u16_d16 v95, v246 offset:3392
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v94, v246 offset:3264
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v3, v124, v3, 0x7fff
	v_add3_u32 v5, v1, v5, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v5.l, v116.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v88, v246 offset:3712
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v89, v246 offset:3968
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v97, v246 offset:4032
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v96, v246 offset:3776
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v95, v246 offset:3520
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v7.h, 0x7fff, v3.h, s3
	v_bfe_u32 v3, v2, 16, 1
	v_cmp_o_f32_e64 s3, v2, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s5
	v_add3_u32 v3, v2, v3, 0x7fff
	v_cmp_o_f32_e64 s5, v243, v243
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[49:56], v[101:108], v[74:81], v[49:56]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v1, v1, v5
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v122.h, 0x7fff, v3.h, s3
	scratch_load_b32 v3, off, off offset:336 ; 4-byte Folded Reload
	v_cndmask_b16 v121.h, 0x7fff, v10.h, s5
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s3, v197, v197
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v2, v2, v122
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[57:64], v[82:89], v[66:73], v[57:64]
	v_wmma_f32_16x16x16_bf16 v[49:56], v[90:97], v[66:73], v[49:56]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s5, v2, v2
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, 0, v3
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v3.l, 0x7fff, v8.h, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v167, v167
	v_bfe_u32 v8, v197, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	ds_store_b16_d16_hi v10, v116
	ds_store_b16_d16_hi v31, v7
	ds_store_b16_d16_hi v29, v5
	ds_store_b16_d16_hi v30, v122
	ds_store_b16_d16_hi v32, v121
	ds_store_b16_d16_hi v241, v118
	ds_store_b16_d16_hi v238, v117
	ds_store_b16_d16_hi v9, v115
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v6, off, off offset:324 ; 4-byte Folded Reload
	ds_load_b64 v[77:78], v236
	ds_load_b64 v[79:80], v227
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v8, v197, v8, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v14.h, 0x7fff, v8.h, s3
	v_bfe_u32 v8, v183, 16, 1
	v_cmp_o_f32_e64 s3, v183, v183
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v221, v197, v14
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v8, v183, v8, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e32 v98.h, v77.l
	v_mov_b16_e32 v102.h, v78.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v198, 0, v6
	ds_load_b64 v[100:101], v222
	ds_load_b64 v[106:107], v224
	ds_load_b64 v[103:104], v198
	ds_load_b64 v[74:75], v237
	ds_load_b64 v[108:109], v240
	ds_load_b64 v[110:111], v225
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v10, v3
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v3, v167, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v3, v167, v3, 0x7fff
	v_cndmask_b16 v13.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v169, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v169, v169
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v99.l, v100.l
	v_mov_b16_e32 v99.h, v106.l
	v_mov_b16_e32 v106.l, v100.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v169, v3, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v100.h, v79.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v244, v167, v13
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v167, v180, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v77.l, v103.h
	v_mov_b16_e32 v103.h, v107.l
	v_mov_b16_e32 v107.l, v101.h
	v_mov_b16_e32 v98.l, v103.l
	v_mov_b16_e32 v102.l, v104.l
	v_mov_b16_e32 v103.l, v101.l
	v_mov_b16_e32 v78.l, v104.h
	v_mov_b16_e32 v104.h, v80.l
	v_mov_b16_e32 v105.l, v75.l
	v_mov_b16_e32 v101.l, v74.l
	v_mov_b16_e32 v105.h, v109.l
	v_mov_b16_e32 v109.l, v75.h
	v_mov_b16_e32 v101.h, v108.l
	v_mov_b16_e32 v108.l, v74.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v15.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v171, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v171, v171
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v104.l, v111.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v111.l, v116.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v79.l, v110.h
	v_mov_b16_e32 v80.l, v111.h
	v_mov_b16_e32 v100.l, v110.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v110.l, v116.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v167, v180, v167, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_dual_mov_b32 v75, v106 :: v_dual_sub_f32 v6, v169, v15
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v171, v3, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_dual_mov_b32 v74, v77 :: v_dual_mov_b32 v77, v108
	v_mov_b32_e32 v81, v109
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v108.l, v116.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v76, v79
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v106.l, v116.l
	v_mov_b16_e32 v109.l, v116.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v169, v182, 16, 1
	v_cndmask_b16 v16.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v173, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v173, v173
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v169, v182, v169, 0x7fff
	v_add3_u32 v3, v173, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v17.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v175, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v175, v175
	v_add3_u32 v3, v175, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v18.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v177, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v177, v177
	v_add3_u32 v3, v177, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v19.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v179, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v179, v179
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v177, v177, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v179, v3, 0x7fff
	v_cndmask_b16 v20.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v181, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v181, v181
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v179, v179, v20
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v181, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v106.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v185, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v185, v185
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v5, v243, v121
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v243.l, v116.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v126, v181, v106
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v3, v185, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s7, v5, v5
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v108.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v187, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v187, v187
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v118, v185, v108
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v187, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v109.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v189, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v189, v189
	v_add3_u32 v3, v189, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v110.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v191, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v191, v191
	v_add3_u32 v3, v191, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v111.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v193, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v193, v193
	v_add3_u32 v3, v193, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v112.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v195, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v195, v195
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v79, v107
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v107.h, 0x7fff, v8.h, s3
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v1, v1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v195, v3, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v8, v120, v115
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v107.l, v116.l
	v_mov_b16_e32 v120.l, v116.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v113.h, 0x7fff, v3.h, vcc_lo
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v3, v124, v7
	v_sub_f32_e32 v7, v119, v117
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s10, v8, v8
	.loc	1 732 35 is_stmt 1              ; attention_backward.py:732:35
	v_sub_f32_e32 v117, v187, v109
	v_sub_f32_e32 v125, v183, v107
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e32 v119.l, v116.l
	v_mov_b16_e32 v124.l, v116.l
	.loc	1 728 34 is_stmt 1              ; attention_backward.py:728:34
	v_bfe_u32 v10, v3, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_cmp_o_f32_e64 s9, v7, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v3, v10, 0x7fff
	v_bfe_u32 v3, v1, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v10.l, v116.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v3, v1, v3, 0x7fff
	v_bfe_u32 v1, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v1, v2, v1, 0x7fff
	v_bfe_u32 v2, v5, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v10.h, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v163, v163
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v2, v5, v2, 0x7fff
	v_bfe_u32 v5, v4, 16, 1
	ds_store_b16 v31, v1
	v_cndmask_b16 v1.l, 0x7fff, v3.h, s3
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v3, v153, 16, 1
	v_cmp_o_f32_e64 s3, v151, v151
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v5, v4, v5, 0x7fff
	v_bfe_u32 v4, v7, 16, 1
	ds_store_b16 v29, v1
	v_cndmask_b16 v1.l, 0x7fff, v1.h, s5
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v153, v3, 0x7fff
	v_cmp_o_f32_e64 s5, v153, v153
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v4, v7, v4, 0x7fff
	v_bfe_u32 v7, v8, 16, 1
	ds_store_b16 v30, v1
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s7
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v2, v151, 16, 1
	v_cmp_o_f32_e64 s7, v155, v155
	v_cndmask_b16 v209.h, 0x7fff, v3.h, s5
	v_bfe_u32 v3, v149, 16, 1
	v_cmp_o_f32_e64 s5, v149, v149
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v7, v8, v7, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v8.l, v116.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v32, v1
	v_cndmask_b16 v1.l, 0x7fff, v5.h, s8
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v5, v157, 16, 1
	v_add3_u32 v2, v151, v2, 0x7fff
	v_cmp_o_f32_e64 s8, v157, v157
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v241, v1
	v_cndmask_b16 v1.l, 0x7fff, v4.h, s9
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v4, v155, 16, 1
	v_add3_u32 v5, v157, v5, 0x7fff
	v_cndmask_b16 v243.h, 0x7fff, v2.h, s3
	v_bfe_u32 v2, v161, 16, 1
	v_cmp_o_f32_e64 s3, v161, v161
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v238, v1
	v_cndmask_b16 v1.l, 0x7fff, v7.h, s10
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v4, v155, v4, 0x7fff
	v_cndmask_b16 v207.h, 0x7fff, v5.h, s8
	v_add3_u32 v2, v161, v2, 0x7fff
	v_cmp_o_f32_e64 s8, v145, v145
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v15.l, v243.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v9, v1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v1, v163, 16, 1
	v_cndmask_b16 v208.h, 0x7fff, v4.h, s7
	v_add3_u32 v4, v149, v3, 0x7fff
	v_bfe_u32 v3, v147, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[197:198], v198
	ds_load_b64 v[247:248], v222
	ds_load_b64 v[214:215], v224
	ds_load_b64 v[250:251], v236
	ds_load_b64 v[252:253], v227
	ds_load_b64 v[217:218], v237
	ds_load_b64 v[199:200], v240
	ds_load_b64 v[127:128], v225
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s7, v147, v147
	v_cndmask_b16 v10.h, 0x7fff, v2.h, s3
	v_bfe_u32 v2, v141, 16, 1
	v_add3_u32 v1, v163, v1, 0x7fff
	v_add3_u32 v5, v147, v3, 0x7fff
	v_bfe_u32 v3, v145, 16, 1
	v_cndmask_b16 v121.h, 0x7fff, v4.h, s5
	v_bfe_u32 v4, v139, 16, 1
	v_cndmask_b16 v205.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v165, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v165, v165
	v_add3_u32 v7, v145, v3, 0x7fff
	v_cndmask_b16 v120.h, 0x7fff, v5.h, s7
	v_bfe_u32 v5, v137, 16, 1
	v_add3_u32 v1, v165, v1, 0x7fff
	v_add3_u32 v2, v141, v2, 0x7fff
	v_cndmask_b16 v119.h, 0x7fff, v7.h, s8
	v_bfe_u32 v7, v135, 16, 1
	v_cmp_o_f32_e64 s3, v141, v141
	v_cndmask_b16 v8.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v159, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v159, v159
	v_add3_u32 v4, v139, v4, 0x7fff
	v_cmp_o_f32_e64 s5, v139, v139
	v_add3_u32 v5, v137, v5, 0x7fff
	v_add3_u32 v1, v159, v1, 0x7fff
	v_cmp_o_f32_e64 s7, v137, v137
	v_add3_u32 v11, v135, v7, 0x7fff
	v_cmp_o_f32_e64 s8, v135, v135
	v_cndmask_b16 v123.h, 0x7fff, v2.h, s3
	v_cndmask_b16 v3.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v143, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v143, v143
	v_cndmask_b16 v122.h, 0x7fff, v4.h, s5
	v_cndmask_b16 v7.h, 0x7fff, v5.h, s7
	v_cndmask_b16 v5.h, 0x7fff, v11.h, s8
	v_add3_u32 v1, v143, v1, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v20.l, v10.h
	v_mov_b16_e32 v19.l, v3.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v173, v17
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v17.l, v208.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v124.h, 0x7fff, v1.h, vcc_lo
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v14.l, v8.h
	v_mov_b16_e64 v13.l, v205.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(5)
	v_mov_b16_e64 v22.h, v214.l
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e64 v28.h, v200.l
	v_mov_b16_e64 v214.l, v247.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v175, v175, v18
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v18.l, v207.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v200.l, v218.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v171, v16
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v16.l, v209.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v195, v113
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v113.l, v5.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v193, v112
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v112.l, v7.h
	v_wmma_f32_16x16x16_bf16 v[33:40], v[13:20], v[98:105], v[33:40]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v4, v191, v111
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v111.l, v122.h
	v_mov_b16_e32 v109.l, v124.h
	v_mov_b16_e32 v108.l, v119.h
	v_mov_b16_e32 v107.l, v120.h
	v_mov_b16_e32 v106.l, v121.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v24.h, v199.l
	v_mov_b16_e64 v199.l, v217.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v115, v189, v110
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v110.l, v123.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v21.l, v197.l
	v_mov_b16_e64 v21.h, v250.l
	v_mov_b16_e64 v22.l, v247.l
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e32 v23.l, v127.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[106:113], v[74:81], v[33:40]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v23.h, v252.l
	v_mov_b16_e64 v24.l, v217.l
	v_mov_b16_e64 v25.l, v198.l
	v_mov_b16_e64 v25.h, v251.l
	v_mov_b16_e64 v26.l, v248.l
	v_mov_b16_e64 v26.h, v215.l
	v_mov_b16_e64 v27.l, v128.l
	v_mov_b16_e64 v27.h, v253.l
	v_mov_b16_e64 v28.l, v218.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v162, v162
	v_cmp_o_f32_e64 s3, v196, v196
	v_cmp_o_f32_e64 s7, v156, v156
	v_bfe_u32 v191, v158, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[13:20], v[21:28], v[33:40]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v13, v162, 16, 1
	v_bfe_u32 v15, v168, 16, 1
	v_bfe_u32 v16, v170, 16, 1
	v_bfe_u32 v17, v172, 16, 1
	v_bfe_u32 v18, v174, 16, 1
	v_add3_u32 v13, v162, v13, 0x7fff
	v_add3_u32 v15, v168, v15, 0x7fff
	v_add3_u32 v16, v170, v16, 0x7fff
	v_add3_u32 v17, v172, v17, 0x7fff
	v_add3_u32 v18, v174, v18, 0x7fff
	v_cndmask_b16 v13.l, 0x7fff, v13.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v168, v168
	v_bfe_u32 v19, v176, 16, 1
	v_bfe_u32 v20, v178, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v15.l, v116.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v14, v196, 16, 1
	v_cndmask_b16 v15.h, 0x7fff, v15.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v170, v170
	v_add3_u32 v19, v176, v19, 0x7fff
	v_add3_u32 v20, v178, v20, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v18.l, v116.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v183, v168, v15 :: v_dual_sub_f32 v8, v165, v8
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v16.h, 0x7fff, v16.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v172, v172
	v_add3_u32 v14, v196, v14, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v17.l, v116.l
	v_mov_b16_e32 v16.l, v116.l
	v_mov_b16_e32 v14.l, v116.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v17.h, 0x7fff, v17.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v174, v174
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s3
	v_cmp_o_f32_e64 s3, v182, v182
	v_cmp_o_f32_e64 s5, v154, v154
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v187, v172, v17
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v176, v176
	v_cndmask_b16 v229.h, 0x7fff, v169.h, s3
	v_cmp_o_f32_e64 s3, v164, v164
	v_add3_u32 v191, v158, v191, 0x7fff
	v_cmp_o_f32_e64 s8, v158, v158
	v_cndmask_b16 v19.h, 0x7fff, v19.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v178, v178
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v173, v182, v229
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v182, v164, 16, 1
	v_bfe_u32 v193, v148, 16, 1
	v_bfe_u32 v195, v144, 16, 1
	v_cndmask_b16 v20.h, 0x7fff, v20.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v180, v180
	v_add3_u32 v182, v164, v182, 0x7fff
	v_cndmask_b16 v191.h, 0x7fff, v191.h, s8
	v_add3_u32 v193, v148, v193, 0x7fff
	v_add3_u32 v195, v144, v195, 0x7fff
	v_cndmask_b16 v228.h, 0x7fff, v167.h, vcc_lo
	v_bfe_u32 v167, v184, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v184, v184
	v_cndmask_b16 v182.h, 0x7fff, v182.h, s3
	v_cmp_o_f32_e64 s3, v152, v152
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v191.l, v116.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v167, v184, v167, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v181, v196, v14
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v196, v142, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v19.l, v116.l
	v_mov_b16_e32 v20.l, v116.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v230.h, 0x7fff, v167.h, vcc_lo
	v_bfe_u32 v167, v186, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v186, v186
	v_add3_u32 v196, v142, v196, 0x7fff
	v_cmp_o_f32_e64 s8, v142, v142
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v172, v184, v230
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v167, v186, v167, 0x7fff
	v_bfe_u32 v184, v150, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v176, v176, v19
	v_sub_f32_e32 v178, v178, v20
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v196.h, 0x7fff, v196.h, s8
	v_cndmask_b16 v231.h, 0x7fff, v167.h, vcc_lo
	v_bfe_u32 v167, v188, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v188, v188
	v_add3_u32 v184, v150, v184, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v19.l, v191.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v171, v186, v231
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v167, v188, v167, 0x7fff
	v_bfe_u32 v186, v152, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v14.l, v182.h
	v_mov_b16_e64 v231.l, v196.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v116.h, v13.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v232.h, 0x7fff, v167.h, vcc_lo
	v_bfe_u32 v167, v190, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v190, v190
	v_add3_u32 v186, v152, v186, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v182.l, v116.l
	v_mov_b16_e64 v184.l, v116.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v167, v190, v167, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v186.l, v116.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v186.h, 0x7fff, v186.h, s3
	v_cmp_o_f32_e64 s3, v148, v148
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v183, v183
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v233.h, 0x7fff, v167.h, vcc_lo
	v_bfe_u32 v167, v192, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v192, v192
	v_cndmask_b16 v193.h, 0x7fff, v193.h, s3
	v_cmp_o_f32_e64 s3, v138, v138
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v169, v190, v233 :: v_dual_sub_f32 v10, v161, v10
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v167, v192, v167, 0x7fff
	v_bfe_u32 v190, v156, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v239.h, 0x7fff, v254.h, s3
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v250.l, v197.h
	v_mov_b16_e64 v215.l, v248.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v234.h, 0x7fff, v167.h, vcc_lo
	v_bfe_u32 v167, v194, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v194, v194
	v_add3_u32 v190, v156, v190, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v190.l, v116.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v168, v192, v234
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_bfe_u32 v192, v160, 16, 1
	v_add3_u32 v167, v194, v167, 0x7fff
	v_cndmask_b16 v190.h, 0x7fff, v190.h, s7
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v185, v170, v16
	v_sub_f32_e32 v170, v188, v232
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v192, v160, v192, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v192.l, v116.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v189, v174, v18 :: v_dual_sub_f32 v174, v180, v228
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_bfe_u32 v180, v166, 16, 1
	v_cndmask_b16 v235.h, 0x7fff, v167.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v166, v166
	v_bfe_u32 v188, v154, 16, 1
	v_cmp_o_f32_e64 s7, v144, v144
	v_add3_u32 v180, v166, v180, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v18.l, v190.h
	v_mov_b16_e64 v16.l, v186.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v188, v154, v188, 0x7fff
	v_cndmask_b16 v195.h, 0x7fff, v195.h, s7
	v_cndmask_b16 v180.h, 0x7fff, v180.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v150, v150
	v_cmp_o_f32_e64 s7, v134, v134
	v_cndmask_b16 v188.h, 0x7fff, v188.h, s5
	v_cmp_o_f32_e64 s5, v146, v146
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v13.h, v180.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v184.h, 0x7fff, v184.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v160, v160
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v17.l, v188.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v223.h, 0x7fff, v223.h, s7
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v233.l, v239.h
	v_mov_b16_e64 v15.l, v184.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v192.h, 0x7fff, v192.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v140, v140
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v230.l, v195.h
	v_mov_b16_e64 v228.l, v193.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v180.l, v116.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v20.l, v192.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v129.h, 0x7fff, v249.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v167, v194, v235
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v194, v146, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v235.l, v223.h
	v_wmma_f32_16x16x16_bf16 v[41:48], v[13:20], v[98:105], v[41:48]
	v_mov_b16_e64 v232.l, v129.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v188.l, v116.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v194, v146, v194, 0x7fff
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v252.l, v127.h
	v_mov_b16_e64 v251.l, v198.h
	v_mov_b16_e64 v253.l, v128.h
	v_mov_b32_e32 v248, v214
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v194.h, 0x7fff, v194.h, s5
	v_cmp_o_f32_e64 s5, v136, v136
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v254, v200
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v194.l, v116.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v249, v252
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v229.l, v194.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v206.h, 0x7fff, v206.h, s5
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_dual_mov_b32 v252, v215 :: v_dual_mov_b32 v247, v250
	v_mov_b32_e32 v250, v199
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v3.l, v116.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v234.l, v206.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v193.l, v116.l
	v_mov_b16_e64 v195.l, v116.l
	v_mov_b16_e64 v196.l, v116.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v3, v159, v3
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[228:235], v[74:81], v[41:48]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v5.l, v116.l
	v_mov_b16_e32 v7.l, v116.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[13:20], v[21:28], v[41:48]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v14, v162, v116
	v_dual_sub_f32 v13, v166, v180 :: v_dual_sub_f32 v20, v156, v190
	v_sub_f32_e32 v22, v160, v192
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[228:235], v[247:254], v[41:48]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v15, v14, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_cmp_o_f32_e64 s3, v13, v13
	v_bfe_u32 v21, v20, 16, 1
	v_bfe_u32 v23, v22, 16, 1
	v_add3_u32 v15, v14, v15, 0x7fff
	v_bfe_u32 v14, v13, 16, 1
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v5, v135, v5
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v21, v20, v21, 0x7fff
	v_add3_u32 v23, v22, v23, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v7, v137, v7
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v14, v13, v14, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v13, v164, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v16, v13, 16, 1
	v_cmp_o_f32_e64 s5, v13, v13
	v_add3_u32 v16, v13, v16, 0x7fff
	v_bfe_u32 v13, v181, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v14.l, 0x7fff, v16.h, s5
	v_add3_u32 v17, v181, v13, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v13, v150, v184 :: v_dual_sub_f32 v16, v152, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v18, v13, 16, 1
	v_cmp_o_f32_e64 s8, v13, v13
	v_add3_u32 v18, v13, v18, 0x7fff
	v_bfe_u32 v13, v183, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v15.l, 0x7fff, v18.h, s8
	v_add3_u32 v19, v183, v13, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v154, v188
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v20, v20
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v20, v158, v191
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s7, v181, v181
	v_cndmask_b16 v13.l, 0x7fff, v15.h, vcc_lo
	v_cndmask_b16 v15.h, 0x7fff, v19.h, s9
	v_bfe_u32 v19, v18, 16, 1
	v_cndmask_b16 v13.h, 0x7fff, v14.h, s3
	v_cndmask_b16 v14.h, 0x7fff, v17.h, s7
	v_bfe_u32 v17, v16, 16, 1
	v_cmp_o_f32_e64 s5, v18, v18
	v_add3_u32 v19, v18, v19, 0x7fff
	v_bfe_u32 v18, v187, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_add3_u32 v17, v16, v17, 0x7fff
	v_bfe_u32 v16, v185, 16, 1
	v_cmp_o_f32_e64 s3, v185, v185
	v_add3_u32 v18, v187, v18, 0x7fff
	v_cmp_o_f32_e64 s7, v187, v187
	v_cndmask_b16 v18.l, 0x7fff, v21.h, s8
	v_add3_u32 v16, v185, v16, 0x7fff
	v_bfe_u32 v21, v20, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v17.l, 0x7fff, v19.h, s5
	v_cndmask_b16 v17.h, 0x7fff, v18.h, s7
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s3
	v_bfe_u32 v19, v189, 16, 1
	v_add3_u32 v21, v20, v21, 0x7fff
	v_cmp_o_f32_e64 s3, v20, v20
	v_bfe_u32 v20, v176, 16, 1
	v_cmp_o_f32_e64 s7, v22, v22
	v_bfe_u32 v22, v178, 16, 1
	v_add3_u32 v19, v189, v19, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v189, v189
	v_add3_u32 v20, v176, v20, 0x7fff
	v_cmp_o_f32_e64 s5, v176, v176
	v_add3_u32 v22, v178, v22, 0x7fff
	v_cmp_o_f32_e64 s8, v178, v178
	v_cndmask_b16 v18.h, 0x7fff, v19.h, vcc_lo
	v_cndmask_b16 v19.l, 0x7fff, v21.h, s3
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s5
	v_cndmask_b16 v20.l, 0x7fff, v23.h, s7
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s8
	v_cmp_o_f32_e64 s5, v8, v8
	v_cmp_o_f32_e64 s9, v6, v6
	v_cmp_o_f32_e64 s7, v221, v221
	v_cmp_o_f32_e64 s3, v244, v244
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[13:20], v[98:105], v[41:48]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v14, v151, v243
	v_sub_f32_e32 v13, v163, v205
	v_sub_f32_e32 v16, v153, v209
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v19, v8, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v17, v155, v208
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v20, v14, 16, 1
	v_bfe_u32 v15, v13, 16, 1
	v_cmp_o_f32_e64 s8, v14, v14
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_add3_u32 v19, v8, v19, 0x7fff
	v_add3_u32 v20, v14, v20, 0x7fff
	v_bfe_u32 v14, v6, 16, 1
	v_add3_u32 v15, v13, v15, 0x7fff
	v_bfe_u32 v13, v244, 16, 1
	v_bfe_u32 v8, v221, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v157, v207
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v21, v6, v14, 0x7fff
	v_bfe_u32 v6, v16, 16, 1
	v_add3_u32 v13, v244, v13, 0x7fff
	v_add3_u32 v8, v221, v8, 0x7fff
	v_cndmask_b16 v13.l, 0x7fff, v15.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_add3_u32 v6, v16, v6, 0x7fff
	v_bfe_u32 v16, v17, 16, 1
	v_cndmask_b16 v14.l, 0x7fff, v19.h, s5
	v_cndmask_b16 v14.h, 0x7fff, v8.h, s7
	v_bfe_u32 v8, v65, 16, 1
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s3
	v_add3_u32 v19, v17, v16, 0x7fff
	v_bfe_u32 v16, v11, 16, 1
	v_cmp_o_f32_e64 s3, v65, v65
	v_add3_u32 v8, v65, v8, 0x7fff
	v_cmp_o_f32_e64 s5, v17, v17
	v_cmp_o_f32_e64 s7, v11, v11
	v_add3_u32 v17, v11, v16, 0x7fff
	v_bfe_u32 v11, v18, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v20.h, s8
	v_cmp_o_f32_e64 s8, v18, v18
	v_cndmask_b16 v16.h, 0x7fff, v8.h, s3
	v_bfe_u32 v8, v3, 16, 1
	v_add3_u32 v11, v18, v11, 0x7fff
	v_cmp_o_f32_e64 s3, v3, v3
	v_cndmask_b16 v16.l, 0x7fff, v6.h, vcc_lo
	v_cndmask_b16 v17.l, 0x7fff, v19.h, s5
	v_add3_u32 v8, v3, v8, 0x7fff
	v_cndmask_b16 v18.l, 0x7fff, v11.h, s8
	v_bfe_u32 v3, v177, 16, 1
	v_bfe_u32 v11, v10, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s7
	v_bfe_u32 v6, v175, 16, 1
	v_cmp_o_f32_e64 s5, v177, v177
	v_add3_u32 v3, v177, v3, 0x7fff
	v_add3_u32 v11, v10, v11, 0x7fff
	v_cmp_o_f32_e64 s7, v10, v10
	v_bfe_u32 v10, v179, 16, 1
	v_add3_u32 v6, v175, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v175, v175
	v_cmp_o_f32_e64 s8, v179, v179
	v_cndmask_b16 v19.l, 0x7fff, v8.h, s3
	v_add3_u32 v10, v179, v10, 0x7fff
	v_cndmask_b16 v19.h, 0x7fff, v3.h, s5
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v3, v148, v193 :: v_dual_sub_f32 v8, v146, v194
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[106:113], v[247:254], v[33:40]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v15.h, 0x7fff, v21.h, s9
	v_cndmask_b16 v18.h, 0x7fff, v6.h, vcc_lo
	v_cndmask_b16 v20.l, 0x7fff, v11.h, s7
	v_cndmask_b16 v20.h, 0x7fff, v10.h, s8
	v_bfe_u32 v6, v3, 16, 1
	v_bfe_u32 v10, v8, 16, 1
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v144, v195
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[13:20], v[98:105], v[33:40]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v6, v3, v6, 0x7fff
	v_bfe_u32 v3, v174, 16, 1
	v_add3_u32 v10, v8, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v8, v8
	v_bfe_u32 v8, v173, 16, 1
	v_bfe_u32 v13, v11, 16, 1
	v_add3_u32 v3, v174, v3, 0x7fff
	v_cmp_o_f32_e64 s3, v174, v174
	v_cmp_o_f32_e64 s7, v173, v173
	v_add3_u32 v8, v173, v8, 0x7fff
	v_add3_u32 v15, v11, v13, 0x7fff
	v_cmp_o_f32_e64 s8, v11, v11
	v_bfe_u32 v11, v172, 16, 1
	v_cmp_o_f32_e64 s9, v172, v172
	v_cndmask_b16 v13.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v14.h, 0x7fff, v8.h, s7
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v3, v142, v196
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v11, v172, v11, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v8, v140, v129
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v13.l, 0x7fff, v6.h, vcc_lo
	v_cndmask_b16 v14.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s8
	v_cndmask_b16 v15.h, 0x7fff, v11.h, s9
	v_bfe_u32 v6, v3, 16, 1
	v_bfe_u32 v10, v8, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v138, v239
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_cmp_o_f32_e64 s5, v8, v8
	v_add3_u32 v6, v3, v6, 0x7fff
	v_add3_u32 v10, v8, v10, 0x7fff
	v_bfe_u32 v8, v170, 16, 1
	v_bfe_u32 v16, v11, 16, 1
	v_bfe_u32 v3, v171, 16, 1
	v_cmp_o_f32_e64 s7, v170, v170
	v_cndmask_b16 v17.l, 0x7fff, v10.h, s5
	v_add3_u32 v8, v170, v8, 0x7fff
	v_add3_u32 v18, v11, v16, 0x7fff
	v_cndmask_b16 v16.l, 0x7fff, v6.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v6, v136, v206
	v_sub_f32_e32 v10, v134, v223
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v171, v3, 0x7fff
	v_cmp_o_f32_e64 s3, v171, v171
	v_cmp_o_f32_e64 s8, v11, v11
	v_cndmask_b16 v17.h, 0x7fff, v8.h, s7
	v_bfe_u32 v8, v6, 16, 1
	v_bfe_u32 v11, v10, 16, 1
	v_cndmask_b16 v16.h, 0x7fff, v3.h, s3
	v_bfe_u32 v3, v169, 16, 1
	v_cmp_o_f32_e64 s3, v6, v6
	v_add3_u32 v8, v6, v8, 0x7fff
	v_bfe_u32 v6, v168, 16, 1
	v_add3_u32 v11, v10, v11, 0x7fff
	v_cmp_o_f32_e64 s7, v10, v10
	v_bfe_u32 v10, v167, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s8
	v_add3_u32 v3, v169, v3, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v169, v169
	v_add3_u32 v6, v168, v6, 0x7fff
	v_cmp_o_f32_e64 s5, v168, v168
	v_add3_u32 v10, v167, v10, 0x7fff
	v_cmp_o_f32_e64 s8, v167, v167
	v_cndmask_b16 v18.h, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v19.l, 0x7fff, v8.h, s3
	v_cndmask_b16 v19.h, 0x7fff, v6.h, s5
	v_cndmask_b16 v20.l, 0x7fff, v11.h, s7
	v_cndmask_b16 v20.h, 0x7fff, v10.h, s8
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v6, v147, v120
	v_sub_f32_e32 v8, v145, v119
	v_sub_f32_e32 v3, v149, v121
	v_sub_f32_e32 v11, v141, v123
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[13:20], v[74:81], v[41:48]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v14, v6, 16, 1
	v_bfe_u32 v15, v8, 16, 1
	v_bfe_u32 v13, v3, 16, 1
	v_cmp_o_f32_e64 s5, v6, v6
	v_cmp_o_f32_e64 s8, v8, v8
	v_add3_u32 v14, v6, v14, 0x7fff
	v_bfe_u32 v6, v125, 16, 1
	v_add3_u32 v15, v8, v15, 0x7fff
	v_bfe_u32 v8, v118, 16, 1
	v_add3_u32 v13, v3, v13, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_bfe_u32 v3, v126, 16, 1
	v_add3_u32 v6, v125, v6, 0x7fff
	v_cmp_o_f32_e64 s7, v125, v125
	v_add3_u32 v8, v118, v8, 0x7fff
	v_cmp_o_f32_e64 s9, v118, v118
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v143, v124
	v_sub_f32_e32 v16, v139, v122
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v126, v3, 0x7fff
	v_cmp_o_f32_e64 s3, v126, v126
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s5
	v_cndmask_b16 v14.h, 0x7fff, v6.h, s7
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s8
	v_cndmask_b16 v15.h, 0x7fff, v8.h, s9
	v_bfe_u32 v6, v117, 16, 1
	v_bfe_u32 v8, v11, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v13.h, vcc_lo
	v_cndmask_b16 v13.h, 0x7fff, v3.h, s3
	v_bfe_u32 v3, v10, 16, 1
	v_add3_u32 v6, v117, v6, 0x7fff
	v_cmp_o_f32_e64 s3, v117, v117
	v_add3_u32 v8, v11, v8, 0x7fff
	v_cmp_o_f32_e64 s5, v11, v11
	v_bfe_u32 v11, v16, 16, 1
	v_add3_u32 v3, v10, v3, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_bfe_u32 v10, v115, 16, 1
	v_cmp_o_f32_e64 s8, v16, v16
	v_add3_u32 v11, v16, v11, 0x7fff
	v_cndmask_b16 v16.h, 0x7fff, v6.h, s3
	v_bfe_u32 v6, v2, 16, 1
	v_add3_u32 v10, v115, v10, 0x7fff
	v_cmp_o_f32_e64 s7, v115, v115
	v_cndmask_b16 v16.l, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v17.l, 0x7fff, v8.h, s5
	v_bfe_u32 v3, v4, 16, 1
	v_add3_u32 v6, v2, v6, 0x7fff
	v_cmp_o_f32_e64 s5, v2, v2
	v_bfe_u32 v2, v5, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v10.h, s7
	v_add3_u32 v3, v4, v3, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_bfe_u32 v4, v7, 16, 1
	v_add3_u32 v2, v5, v2, 0x7fff
	v_cmp_o_f32_e64 s7, v5, v5
	v_bfe_u32 v5, v1, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v11.h, s8
	v_add3_u32 v4, v7, v4, 0x7fff
	v_cmp_o_f32_e64 s3, v7, v7
	v_cmp_o_f32_e64 s8, v1, v1
	v_add3_u32 v5, v1, v5, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v19.h, 0x7fff, v6.h, s5
	v_cndmask_b16 v19.l, 0x7fff, v4.h, s3
	v_cndmask_b16 v20.l, 0x7fff, v2.h, s7
	v_cndmask_b16 v20.h, 0x7fff, v5.h, s8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[13:20], v[74:81], v[33:40]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_clause 0x5                            ; 28-byte Folded Reload
	scratch_load_b32 v2, off, off
	scratch_load_b32 v3, off, off offset:4
	scratch_load_b32 v4, off, off offset:8
	scratch_load_b32 v5, off, off offset:12
	scratch_load_b32 v6, off, off offset:16
	scratch_load_b64 v[24:25], off, off offset:40
	s_add_i32 s30, s75, s73
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_mov_b32 s54, s50
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_mul_i32 s26, s30, s34
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_mov_b32 s55, s51
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b64 v[26:27], off, off offset:52 ; 8-byte Folded Reload
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(6)
	v_or_b32_e32 v1, s75, v2
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v2, s30, v2, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v7, s30, v6, 1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s3, s38, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s75, v3
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v24, s26, v24
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v3, s30, v3, 1
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, s26, v26
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s7, s38, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s75, v4
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v4, s30, v4, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v3, 0x80000000, v3, s7
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s8, s38, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s75, v5
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v5, s30, v5, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v4, 0x80000000, v4, s8
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s9, s38, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s75, v6
	scratch_load_b32 v6, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v5, 0x80000000, v5, s9
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s10, s38, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v7, 0x80000000, v7, s10
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, s75, v6
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v8, s30, v6, 1
	scratch_load_b32 v6, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s11, s38, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v8, 0x80000000, v8, s11
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, s75, v6
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v10, s30, v6, 1
	scratch_load_b32 v6, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s12, s38, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, s75, v6
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v11, s30, v6, 1
	scratch_load_b32 v6, off, off offset:652 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s38, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, s75, v6
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v13, s30, v6, 1
	scratch_load_b32 v6, off, off offset:656 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s13, s38, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v13, 0x80000000, v13, s13
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, s75, v6
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v14, s30, v6, 1
	scratch_load_b32 v6, off, off offset:660 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s14, s38, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v14, 0x80000000, v14, s14
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, s75, v6
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v15, s30, v6, 1
	scratch_load_b32 v6, off, off offset:668 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s15, s38, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v15, 0x80000000, v15, s15
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, s75, v6
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v16, s30, v6, 1
	scratch_load_b32 v6, off, off offset:728 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s16, s38, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v16, 0x80000000, v16, s16
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, s75, v6
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v17, s30, v6, 1
	scratch_load_b32 v6, off, off offset:732 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s17, s38, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v17, 0x80000000, v17, s17
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, s75, v6
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v18, s30, v6, 1
	v_mov_b32_e32 v6, v245
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s18, s38, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s75, v6
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v19, s30, v6, 1
	v_mov_b32_e32 v6, v133
	v_cndmask_b32_e64 v18, 0x80000000, v18, s18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s19, s38, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s75, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v19, 0x80000000, v19, s19
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s20, s38, v1
	v_mov_b32_e32 v1, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 624 25                        ; attention_backward.py:624:25
	v_add_nc_u32_e32 v81, s30, v1
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v20, s30, v6, 1
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b32 v6, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s75, v1
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v20, 0x80000000, v20, s20
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s5, s38, v1
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v1, 0x80000000, v2, s3
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_add_nc_u32_e32 v2, s26, v114
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s6, s3
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s6, s7
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, s26, v6
	scratch_load_b32 v6, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s6, s8
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s26, v6
	scratch_load_b32 v6, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v24, 0x80000000, v24, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s6, s10
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s26, v6
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s6, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	s_clause 0x5
	buffer_load_u8 v198, v2, s[48:51], 0 offen
	buffer_load_u8 v119, v22, s[48:51], 0 offen
	buffer_load_u8 v209, v23, s[48:51], 0 offen
	buffer_load_u8 v115, v24, s[48:51], 0 offen
	buffer_load_u8 v205, v25, s[48:51], 0 offen
	buffer_load_u8 v112, v26, s[48:51], 0 offen
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[22:23], off, off offset:60
	scratch_load_b64 v[23:24], off, off offset:672
	scratch_load_b64 v[24:25], off, off offset:680
	scratch_load_b64 v[25:26], off, off offset:688
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v2, 0x80000000, v10, s12
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s6, s12
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b64 v[26:27], off, off offset:68 ; 8-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v10, s26, v22
	v_lshl_add_u32 v22, s34, 4, v114
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v23, s26, v23
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v24, s26, v24
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v25, s26, v25
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	v_add_nc_u32_e32 v22, s26, v22
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s6, s13
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s6, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s6, s15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v24, 0x80000000, v24, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s6, s16
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	s_clause 0x3
	buffer_load_u8 v108, v22, s[48:51], 0 offen
	buffer_load_u8 v106, v23, s[48:51], 0 offen
	buffer_load_u8 v102, v24, s[48:51], 0 offen
	buffer_load_u8 v101, v25, s[48:51], 0 offen
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[22:23], off, off offset:696
	scratch_load_b64 v[23:24], off, off offset:704
	scratch_load_b64 v[27:28], off, off offset:720
	scratch_load_b64 v[24:25], off, off offset:712
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v26, s26, v26
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v22, s26, v22
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s6, vcc_lo
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v23, s26, v23
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_lshlrev_b32 v21, 1, v81
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s6, s17
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v24, s26, v24
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s6, s18
	v_add_nc_u32_e32 v25, s26, v27
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s6, s19
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s6, s20
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	s_clause 0x5
	buffer_load_u8 v100, v22, s[48:51], 0 offen
	buffer_load_u8 v99, v23, s[48:51], 0 offen
	buffer_load_u8 v113, v10, s[48:51], 0 offen
	buffer_load_u8 v110, v26, s[48:51], 0 offen
	buffer_load_u8 v96, v24, s[48:51], 0 offen
	buffer_load_u8 v95, v25, s[48:51], 0 offen
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v10, 0x80000000, v21, s5
	s_clause 0x10
	buffer_load_u16 v109, v11, s[52:55], 0 offen
	buffer_load_u16 v107, v13, s[52:55], 0 offen
	buffer_load_u16 v105, v14, s[52:55], 0 offen
	buffer_load_u16 v104, v15, s[52:55], 0 offen
	buffer_load_u16 v103, v16, s[52:55], 0 offen
	buffer_load_u16 v98, v17, s[52:55], 0 offen
	buffer_load_u16 v97, v18, s[52:55], 0 offen
	buffer_load_u16 v94, v19, s[52:55], 0 offen
	buffer_load_u16 v93, v20, s[52:55], 0 offen
	buffer_load_u16 v120, v1, s[52:55], 0 offen
	buffer_load_u16 v121, v3, s[52:55], 0 offen
	buffer_load_u16 v118, v4, s[52:55], 0 offen
	buffer_load_u16 v117, v5, s[52:55], 0 offen
	buffer_load_u16 v208, v7, s[52:55], 0 offen
	buffer_load_u16 v207, v8, s[52:55], 0 offen
	buffer_load_u16 v111, v2, s[52:55], 0 offen
	buffer_load_u16 v116, v10, s[52:55], 0 offen
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v19, v12
	v_mov_b32_e32 v13, v12
	v_mov_b32_e32 v14, v12
	v_mov_b32_e32 v15, v12
	v_mov_b32_e32 v16, v12
	v_mov_b32_e32 v17, v12
	v_mov_b32_e32 v18, v12
	v_mov_b32_e32 v80, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v76, v15 :: v_dual_mov_b32 v77, v16
	v_dual_mov_b32 v78, v17 :: v_dual_mov_b32 v79, v18
	v_dual_mov_b32 v75, v14 :: v_dual_mov_b32 v74, v13
	v_mov_b32_e32 v73, v12
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_store_b8 v210, v198
	ds_store_b8 v210, v119 offset:64
	ds_store_b8 v210, v108 offset:512
	ds_store_b8 v210, v106 offset:576
	ds_store_b8 v211, v209
	ds_store_b8 v211, v115 offset:64
	ds_store_b8 v211, v102 offset:512
	ds_store_b8 v211, v101 offset:576
	ds_store_b8 v212, v205
	ds_store_b8 v212, v112 offset:64
	s_waitcnt vmcnt(22)
	ds_store_b8 v212, v100 offset:512
	s_waitcnt vmcnt(21)
	ds_store_b8 v212, v99 offset:576
	s_waitcnt vmcnt(20)
	ds_store_b8 v213, v113
	s_waitcnt vmcnt(19)
	ds_store_b8 v213, v110 offset:64
	s_waitcnt vmcnt(18)
	ds_store_b8 v213, v96 offset:512
	s_waitcnt vmcnt(17)
	ds_store_b8 v213, v95 offset:576
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v1, off, off offset:280
	scratch_load_b32 v5, off, off offset:356
	scratch_load_b32 v3, off, off offset:352
	s_waitcnt vmcnt(1)
	ds_load_b64 v[7:8], v5
	scratch_load_b32 v5, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[10:11], v5
	.loc	1 630 33                        ; attention_backward.py:630:33
	scratch_load_b64 v[5:6], off, off offset:76 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_add_nc_u32_e32 v1, 0, v1
	ds_load_b64 v[1:2], v1
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[5:6], v[1:2], v[73:80] neg_lo:[1,1,0]
	scratch_load_b64 v[1:2], off, off offset:84 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_load_b64 v[3:4], v3
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v5, 16, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v5, s75, v5
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s9, s38, v5
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v5, s23, v5
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s76, s2, s9
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[1:2], v[3:4], v[73:80] neg_lo:[1,1,0]
	scratch_load_b64 v[1:2], off, off offset:92 ; 8-byte Folded Reload
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v3, 8, v220
	v_or_b32_e32 v4, 12, v220
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v3, s75, v3
	v_or_b32_e32 v4, s75, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s7, s38, v3
	v_cmp_gt_i32_e64 s8, s38, v4
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v3, s23, v3
	v_add_nc_u32_e32 v4, s23, v4
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s55, s2, s7
	s_and_b32 s31, s2, s8
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[1:2], v[7:8], v[73:80] neg_lo:[1,1,0]
	scratch_load_b64 v[1:2], off, off offset:100 ; 8-byte Folded Reload
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v7, 20, v220
	v_or_b32_e32 v8, 24, v220
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v7, s75, v7
	v_or_b32_e32 v8, s75, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s10, s38, v7
	v_cmp_gt_i32_e64 s11, s38, v8
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v7, s23, v7
	v_add_nc_u32_e32 v8, s23, v8
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s62, s2, s10
	s_and_b32 s58, s2, s11
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[1:2], v[10:11], v[73:80] neg_lo:[1,1,0]
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v2, 4, v220
	v_or_b32_e32 v10, 28, v220
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s75, v220
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b32_e32 v2, s75, v2
	v_or_b32_e32 v10, s75, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s38, v1
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v1, s23, v1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s3, s38, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_i32_e64 s12, s38, v10
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v2, s23, v2
	v_add_nc_u32_e32 v10, s23, v10
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s63, s2, vcc_lo
	s_and_b32 s59, s2, s3
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_and_not1_b32 vcc_lo, exec_lo, s66
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s54, s2, s12
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e32 vcc_lo, v216, v1
	v_cmp_le_i32_e64 s3, v216, v2
	v_cmp_le_i32_e64 s7, v216, v3
	v_cmp_le_i32_e64 s8, v216, v4
	v_cmp_le_i32_e64 s9, v216, v5
	v_cmp_le_i32_e64 s10, v216, v7
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s13, s63, vcc_lo
	s_and_b32 s3, s59, s3
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s11, v216, v8
	v_cmp_le_i32_e64 s12, v216, v10
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s7, s55, s7
	s_and_b32 s8, s31, s8
	s_and_not1_b32 s14, s63, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_not1_b32 s15, s59, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s9, s76, s9
	s_and_b32 s10, s62, s10
	s_or_b32 s63, s14, s13
	s_or_b32 s59, s15, s3
	s_and_not1_b32 s3, s55, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_and_not1_b32 s13, s31, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_and_b32 s11, s58, s11
	s_and_b32 s12, s54, s12
	s_or_b32 s55, s3, s7
	s_or_b32 s31, s13, s8
	s_and_not1_b32 s3, s76, exec_lo
	s_and_b32 s7, s9, exec_lo
	s_and_not1_b32 s8, s62, exec_lo
	s_and_b32 s9, s10, exec_lo
	s_or_b32 s76, s3, s7
	s_or_b32 s62, s8, s9
	s_and_not1_b32 s3, s58, exec_lo
	s_and_b32 s7, s11, exec_lo
	s_and_not1_b32 s8, s54, exec_lo
	s_and_b32 s9, s12, exec_lo
	s_or_b32 s58, s3, s7
	s_or_b32 s54, s8, s9
.LBB0_10:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 677 17 is_stmt 1              ; attention_backward.py:677:17
	s_and_not1_b32 vcc_lo, exec_lo, s65
	s_cbranch_vccnz .LBB0_7
; %bb.11:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v11, s21, v1
	v_subrev_nc_u32_e32 v13, s21, v2
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v1, s22, v1
	v_add_nc_u32_e32 v2, s22, v2
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v14, s21, v3
	v_subrev_nc_u32_e32 v15, s21, v4
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v3, s22, v3
	v_add_nc_u32_e32 v4, s22, v4
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v16, s21, v5
	v_subrev_nc_u32_e32 v17, s21, v7
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v5, s22, v5
	v_add_nc_u32_e32 v7, s22, v7
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v216, v11
	v_cmp_ge_i32_e64 s3, v216, v13
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s13, v216, v1
	v_cmp_le_i32_e64 s14, v216, v2
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v18, s21, v8
	v_subrev_nc_u32_e32 v19, s21, v10
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v8, s22, v8
	v_add_nc_u32_e32 v10, s22, v10
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s7, v216, v14
	v_cmp_ge_i32_e64 s8, v216, v15
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s15, v216, v3
	v_cmp_le_i32_e64 s16, v216, v4
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s9, v216, v16
	v_cmp_ge_i32_e64 s10, v216, v17
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s17, v216, v5
	v_cmp_le_i32_e64 s18, v216, v7
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s13, vcc_lo, s13
	s_and_b32 s3, s3, s14
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s11, v216, v18
	v_cmp_ge_i32_e64 s12, v216, v19
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s19, v216, v8
	v_cmp_le_i32_e64 s20, v216, v10
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s13, s13, s63
	s_and_b32 s3, s3, s59
	s_and_b32 s7, s7, s15
	s_and_b32 s8, s8, s16
	s_and_b32 s7, s7, s55
	s_and_b32 s8, s8, s31
	s_and_b32 s9, s9, s17
	s_and_b32 s10, s10, s18
	s_and_not1_b32 s14, s63, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_not1_b32 s15, s59, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s9, s9, s76
	s_and_b32 s10, s10, s62
	s_and_b32 s11, s11, s19
	s_and_b32 s12, s12, s20
	s_or_b32 s63, s14, s13
	s_or_b32 s59, s15, s3
	s_and_not1_b32 s3, s55, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_and_not1_b32 s13, s31, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_and_b32 s11, s11, s58
	s_and_b32 s12, s12, s54
	s_or_b32 s55, s3, s7
	s_or_b32 s31, s13, s8
	s_and_not1_b32 s3, s76, exec_lo
	s_and_b32 s7, s9, exec_lo
	s_and_not1_b32 s8, s62, exec_lo
	s_and_b32 s9, s10, exec_lo
	s_or_b32 s76, s3, s7
	s_or_b32 s62, s8, s9
	s_and_not1_b32 s3, s58, exec_lo
	s_and_b32 s7, s11, exec_lo
	s_and_not1_b32 s8, s54, exec_lo
	s_and_b32 s9, s12, exec_lo
	s_or_b32 s58, s3, s7
	s_or_b32 s54, s8, s9
	s_branch .LBB0_7
.LBB0_12:                               ; %Flow410
	.loc	1 0 21                          ; attention_backward.py:0:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:740
	scratch_load_b32 v66, off, off offset:744
	v_readlane_b32 s44, v255, 0
	v_readlane_b32 s45, v255, 1
	v_readlane_b32 s46, v255, 2
	v_readlane_b32 s47, v255, 3
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
	scratch_load_b32 v0, off, off offset:736 ; 4-byte Folded Reload
	.loc	1 753 13                        ; attention_backward.py:753:13
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v16, s41, v65
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s37, s45, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b32 s36, s44
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v16, v16, s67
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v21, s35, v65
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, v0, v66
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
	s_and_b32 s37, s47, 0xffff
	s_mov_b32 s36, s46
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
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 752
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 752
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 29840
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 752
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 752
    .sgpr_count:     107
    .sgpr_spill_count: 4
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 187
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
