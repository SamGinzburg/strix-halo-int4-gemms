	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[36:39], s[0:1], 0x94
	s_load_b128 s[28:31], s[0:1], 0x64
	s_load_b64 s[34:35], s[0:1], 0x78
.Ltmp0:
	.loc	1 514 33 prologue_end           ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v9, 5, v0
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x8
	s_load_b64 s[16:17], s[0:1], 0x20
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
	v_and_b32_e32 v37, 15, v0
	v_and_b32_e32 v41, 32, v0
	s_clause 0x6                            ; 28-byte Folded Spill
	scratch_store_b32 off, v2, off offset:8
	scratch_store_b32 off, v3, off offset:12
	scratch_store_b32 off, v4, off offset:16
	scratch_store_b32 off, v5, off offset:20
	scratch_store_b32 off, v6, off offset:24
	scratch_store_b32 off, v7, off offset:28
	scratch_store_b32 off, v9, off
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s36
	s_bitcmp1_b32 s36, 8
	.loc	1 521 24                        ; attention_backward.py:521:24
	s_mul_i32 s65, s3, s31
	s_cselect_b32 s66, -1, 0
	s_cmp_eq_u32 s4, 1
	s_cselect_b32 s67, -1, 0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_abs_i32 s25, s29
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_abs_i32 s5, s3
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cvt_f32_u32 s4, s25
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s64, s2, 4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v2, s64, v2
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v5, s64, v5
	v_or_b32_e32 v6, s64, v6
	v_or_b32_e32 v8, s64, v9
	v_or_b32_e32 v7, s64, v7
	v_or_b32_e32 v3, s64, v3
	v_or_b32_e32 v4, s64, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s31, v8
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_readfirstlane_b32 s4, v1
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v1, 2, v9
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_f32 s4, s4, 0x4f7ffffe
	scratch_store_b32 off, v1, off offset:4 ; 4-byte Folded Spill
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v1, s64, v1
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cvt_u32_f32 s11, s4
	s_sub_i32 s4, 0, s25
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s4, s4, s11
	s_mul_hi_u32 s4, s11, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s11, s11, s4
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_mul_hi_u32 s4, s5, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s4, s25
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
	s_ashr_i32 s26, s28, 31
	s_ashr_i32 s27, s29, 31
	s_abs_i32 s40, s28
	.loc	1 514 23                        ; attention_backward.py:514:23
	s_or_b32 s2, s64, 1
	s_or_b32 s4, s64, 2
	s_or_b32 s5, s64, 3
	s_or_b32 s6, s64, 4
	s_or_b32 s7, s64, 5
	s_or_b32 s8, s64, 6
	s_or_b32 s9, s64, 7
	s_or_b32 s10, s64, 8
	s_or_b32 s18, s64, 9
	s_or_b32 s19, s64, 10
	s_or_b32 s20, s64, 11
	s_or_b32 s21, s64, 12
	s_or_b32 s22, s64, 13
	s_or_b32 s23, s64, 14
	s_or_b32 s33, s64, 15
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cmp_lt_i32 s64, s31
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s2, s31
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s4, s31
	v_cmp_gt_i32_e64 s4, s31, v1
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s5, s31
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_and_b32_e32 v1, 31, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s6, s31
	v_cmp_gt_i32_e64 s5, s31, v2
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s7, s31
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[106:107], null, s34, v9, v[1:2]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s8, s31
	v_cmp_gt_i32_e64 s8, s31, v5
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s9, s31
	v_cmp_gt_i32_e64 s9, s31, v6
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s10, s31
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[5:6], null, s34, 6, v[106:107]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s18, s31
	v_cmp_gt_i32_e64 s10, s31, v7
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s19, s31
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[7:8], null, s34, 10, v[106:107]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s41, -1, 0
	s_cmp_lt_i32 s20, s31
	v_cmp_gt_i32_e64 s6, s31, v3
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s21, s31
	v_cmp_gt_i32_e64 s7, s31, v4
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s22, s31
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v2, s34, 1, v106
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s23, s31
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v3, s34, 2, v106
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s33, s31
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v6, s34, 3, v106
	v_mov_b32_e32 v4, v5
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s51, -1, 0
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_add_i32 s55, s65, s64
	v_mad_u64_u32 v[8:9], null, s34, 12, v[106:107]
	s_mul_i32 s20, s55, s34
	s_clause 0x3                            ; 20-byte Folded Spill
	scratch_store_b32 off, v2, off offset:32
	scratch_store_b32 off, v3, off offset:36
	scratch_store_b64 off, v[4:5], off offset:40
	scratch_store_b32 off, v6, off offset:48
	v_add_nc_u32_e32 v9, s20, v106
	v_add_nc_u32_e32 v4, s20, v5
	v_add_nc_u32_e32 v5, s20, v6
	v_mov_b32_e32 v6, v7
	v_mad_u64_u32 v[10:11], null, s34, 14, v[106:107]
	v_add_nc_u32_e32 v2, s20, v2
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_cmp_gt_i32_e64 s2, s34, v1
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[6:7], off offset:52 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v6, s20, v7
	v_mov_b32_e32 v7, v8
	v_add_nc_u32_e32 v3, s20, v3
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s23, 0x31027000
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[7:8], off offset:60 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v7, s20, v8
	v_mov_b32_e32 v8, v10
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_mul_i32 s33, s55, s35
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s13, s35, v0
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_and_b32 s17, s17, 0xffff
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[8:9], off offset:68 ; 8-byte Folded Spill
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s4, s2
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_add_nc_u32_e32 v8, s20, v10
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s5, s2
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_mov_b32 s20, s12
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s6, s2
	s_mov_b32 s12, 0
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s7, s2
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s8, s2
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s9, s2
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s10, s2
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x7
	buffer_load_u8 v20, v9, s[20:23], 0 offen
	buffer_load_u8 v2, v2, s[20:23], 0 offen
	buffer_load_u8 v3, v3, s[20:23], 0 offen
	buffer_load_u8 v4, v4, s[20:23], 0 offen
	buffer_load_u8 v5, v5, s[20:23], 0 offen
	buffer_load_u8 v6, v6, s[20:23], 0 offen
	buffer_load_u8 v7, v7, s[20:23], 0 offen
	buffer_load_u8 v8, v8, s[20:23], 0 offen
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v9, s33, v0
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s54, s13
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s21, s15, 0xffff
	s_mov_b32 s20, s14
	.loc	1 587 22                        ; attention_backward.py:587:22
	s_add_i32 s15, s30, 31
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v10, s35, v9
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_hi_u32 s14, s40, s11
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_ashr_i32 s11, s15, 31
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
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_add_nc_u32 v202, 0, v0
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s53, s13
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_add_nc_u32 v203, 0, v13
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v13, s35, v15
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s52, s13
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_add_nc_u32 v204, 0, v14
	v_lshlrev_b32_e32 v15, 1, v15
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v14, s35, v13
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s50, s13
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_lshlrev_b32 v13, 1, v13
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s48, s13
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s47, s13
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v22, 0x80000000, v13 :: v_dual_add_nc_u32 v205, 0, v16
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v16, s35, v14
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s46, s13
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt vmcnt(7)
	ds_store_b8 v202, v20
	s_waitcnt vmcnt(6)
	ds_store_b8 v202, v2 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v203, v3
	s_waitcnt vmcnt(4)
	ds_store_b8 v203, v4 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v204, v5
	s_waitcnt vmcnt(2)
	ds_store_b8 v204, v6 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v205, v7
	s_waitcnt vmcnt(0)
	ds_store_b8 v205, v8 offset:64
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v17, s35, v16
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v13, 1, v16
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v5, v0, 4, 1
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v18, s35, v17
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v17, 1, v17
	v_lshlrev_b32_e32 v14, 1, v14
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshlrev_b32_e32 v3, 1, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v208, s64, v5
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v19, s35, v18
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshlrev_b32_e32 v2, 5, v37
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s45, s13
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:76
	scratch_store_b32 off, v5, off offset:460
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v16, s35, v19
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v23, 0x80000000, v13, vcc_lo
	v_lshlrev_b32_e32 v13, 1, v18
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s43, s13
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v19, 1, v19
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v18, s35, v16
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s42, s13
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v24, 0x80000000, v13 :: v_dual_and_b32 v3, 24, v3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v13, s35, v18
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s41, s13
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v18, 1, v18
	v_cndmask_b32_e32 v26, 0x80000000, v19, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s19, s13
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v19, s35, v13
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v13, 1, v13
	v_lshlrev_b32_e32 v16, 1, v16
	s_mov_b32 s41, s55
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v32, 8, v208
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_add_lshl_u32 v8, s41, v5, 1
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v7, 2, v208
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s18, s13
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_or_b32_e32 v4, v2, v3
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v28, 0x80000000, v18, vcc_lo
	v_lshlrev_b32_e32 v18, 1, v19
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s44, s13
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_lshl_u32 v19, v19, s35, 1
	v_cndmask_b32_e32 v29, 0x80000000, v13, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s49, s13
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v33, 10, v208
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v30, 0x80000000, v18, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s51, s13
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v34, 12, v208
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v31, 0x80000000, v19, vcc_lo
	s_clause 0xf
	buffer_load_u16 v21, v9, s[20:23], 0 offen
	buffer_load_u16 v20, v10, s[20:23], 0 offen
	buffer_load_u16 v19, v11, s[20:23], 0 offen
	buffer_load_u16 v18, v12, s[20:23], 0 offen
	buffer_load_u16 v13, v15, s[20:23], 0 offen
	buffer_load_u16 v12, v22, s[20:23], 0 offen
	buffer_load_u16 v11, v14, s[20:23], 0 offen
	buffer_load_u16 v10, v23, s[20:23], 0 offen
	buffer_load_u16 v27, v17, s[20:23], 0 offen
	buffer_load_u16 v25, v24, s[20:23], 0 offen
	buffer_load_u16 v23, v26, s[20:23], 0 offen
	buffer_load_u16 v22, v16, s[20:23], 0 offen
	buffer_load_u16 v17, v28, s[20:23], 0 offen
	buffer_load_u16 v16, v29, s[20:23], 0 offen
	buffer_load_u16 v15, v30, s[20:23], 0 offen
	buffer_load_u16 v14, v31, s[20:23], 0 offen
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v9, 4, v208
	v_or_b32_e32 v26, 6, v208
	v_or_b32_e32 v35, 14, v208
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s4, s31, v208
	v_cmp_gt_i32_e64 s8, s31, v32
	v_cmp_gt_i32_e64 s6, s31, v9
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v9, 16, v8
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v28, 0, v4
	v_xad_u32 v29, v4, 8, 0
	v_xad_u32 v30, v4, 16, 0
	v_xad_u32 v31, v4, 24, 0
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v5, 4, v8
	v_cndmask_b32_e64 v4, 0x80000000, v8, s4
	v_add_nc_u32_e32 v6, 8, v8
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s5, s31, v7
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v7, 12, v8
	v_add_nc_u32_e32 v24, 20, v8
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s7, s31, v26
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v32, 0x80000000, v9, s8
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s9, s31, v33
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v9, 24, v8
	v_add_nc_u32_e32 v8, 28, v8
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s10, s31, v34
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_lshr_b32 s19, s11, 27
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s11, s31, v35
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v5, 0x80000000, v5, s5
	v_cndmask_b32_e64 v6, 0x80000000, v6, s6
	v_cndmask_b32_e64 v7, 0x80000000, v7, s7
	v_cndmask_b32_e64 v33, 0x80000000, v24, s9
	v_cndmask_b32_e64 v34, 0x80000000, v9, s10
	v_cndmask_b32_e64 v35, 0x80000000, v8, s11
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_add_i32 s15, s15, s19
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
	.loc	1 587 20                        ; attention_backward.py:587:20
	s_and_b32 s69, s15, 0xffffffe0
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_bfe_u32 s15, s36, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s12, s64, s37
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_add_i32 s20, s38, s39
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s12, s12, s39
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_sub_i32 s20, s64, s20
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s12, s12, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 592 17                        ; attention_backward.py:592:17
	s_min_i32 s12, s30, s12
	.loc	1 590 24                        ; attention_backward.py:590:24
	s_max_i32 s12, s12, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 600 19                        ; attention_backward.py:600:19
	s_add_i32 s12, s12, 31
	.loc	1 600 18 is_stmt 0              ; attention_backward.py:600:18
	s_ashr_i32 s15, s12, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s15, s15, 27
	s_add_i32 s12, s12, s15
	.loc	1 589 24 is_stmt 1              ; attention_backward.py:589:24
	s_max_i32 s15, s20, 0
	.loc	1 600 17                        ; attention_backward.py:600:17
	s_and_b32 s20, s12, 0xffffffe0
	.loc	1 597 45                        ; attention_backward.py:597:45
	s_and_b32 s12, s15, 0x7fffffe0
	.loc	1 598 24                        ; attention_backward.py:598:24
	s_min_i32 s69, s69, s20
.LBB0_2:
	.loc	1 0 24 is_stmt 0                ; attention_backward.py:0:24
	s_clause 0x7
	buffer_load_u16 v26, v4, s[16:19], 0 offen
	buffer_load_u16 v24, v5, s[16:19], 0 offen
	buffer_load_u16 v9, v6, s[16:19], 0 offen
	buffer_load_u16 v8, v7, s[16:19], 0 offen
	buffer_load_u16 v7, v32, s[16:19], 0 offen
	buffer_load_u16 v6, v33, s[16:19], 0 offen
	buffer_load_u16 v5, v34, s[16:19], 0 offen
	buffer_load_u16 v4, v35, s[16:19], 0 offen
	ds_load_b64 v[32:33], v28
	ds_load_b64 v[28:29], v29
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_mul_i32 s15, s14, s25
	s_clause 0x1
	s_load_b128 s[44:47], s[0:1], 0x50
	s_load_b32 s68, s[0:1], 0x74
	s_sub_i32 s15, s40, s15
	s_xor_b32 s16, s26, s27
	s_add_i32 s17, s14, 1
	s_sub_i32 s18, s15, s25
	s_cmp_ge_u32 s15, s25
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_add_nc_u32_e32 v34, v202, v0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s14, s17, s14
	s_cselect_b32 s15, s18, s15
	s_add_i32 s17, s14, 1
	s_cmp_ge_u32 s15, s25
	s_cselect_b32 s14, s17, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s14, s14, s16
	s_sub_i32 s36, s14, s16
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[32:33], off offset:80
	scratch_store_b64 off, v[28:29], off offset:88
	ds_load_b64 v[28:29], v30
	v_lshlrev_b32_e32 v32, 1, v0
	.loc	1 520 26 is_stmt 1              ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v33, 1, v41
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cmp_lt_i32 s36, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v30, 0x1b0, v32, 0
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[28:29], off offset:96 ; 8-byte Folded Spill
	ds_load_b64 v[28:29], v31
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v31, 0x240, v32, 0
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[28:29], off offset:104 ; 8-byte Folded Spill
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v28, 0x90, v32, 0
	v_xad_u32 v29, 0x120, v32, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b16 v34, v27 offset:1024
	ds_store_b16 v28, v20
	s_waitcnt vmcnt(14)
	ds_store_b16 v28, v25 offset:1024
	ds_store_b16 v29, v19
	s_waitcnt vmcnt(13)
	ds_store_b16 v29, v23 offset:1024
	ds_store_b16 v30, v18
	s_waitcnt vmcnt(12)
	ds_store_b16 v30, v22 offset:1024
	v_xad_u32 v18, 0x2d0, v32, 0
	v_xad_u32 v19, 0x360, v32, 0
	ds_store_b16 v34, v21
	scratch_store_b32 off, v34, off offset:112 ; 4-byte Folded Spill
	v_xad_u32 v20, 0x3f0, v32, 0
	ds_store_b16 v31, v13
	s_waitcnt vmcnt(11)
	ds_store_b16 v31, v17 offset:1024
	ds_store_b16 v18, v12
	s_waitcnt vmcnt(10)
	ds_store_b16 v18, v16 offset:1024
	ds_store_b16 v19, v11
	s_waitcnt vmcnt(9)
	ds_store_b16 v19, v15 offset:1024
	ds_store_b16 v20, v10
	s_waitcnt vmcnt(8)
	ds_store_b16 v20, v14 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cbranch_scc1 .LBB0_13
; %bb.3:                                ; %.lr.ph87
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	s_xor_b32 s14, s3, s29
	v_writelane_b32 v255, s44, 0
	s_ashr_i32 s14, s14, 31
	s_load_b32 s70, s[0:1], 0x80
	s_xor_b32 s15, s24, s14
	s_clause 0x1
	s_load_b64 s[52:53], s[0:1], 0x0
	s_load_b64 s[56:57], s[0:1], 0x18
	v_writelane_b32 v255, s45, 1
	s_sub_i32 s14, s15, s14
	v_dual_mov_b32 v42, v37 :: v_dual_lshlrev_b32 v1, 1, v1
	v_mov_b16_e32 v12.l, 0
	v_writelane_b32 v255, s46, 2
	.loc	1 527 29 is_stmt 1              ; attention_backward.py:527:29
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v7.h, v6.l
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v11, 1, v1
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v6.h, v5.l
	v_mov_b16_e32 v6.l, v12.l
	v_writelane_b32 v255, s47, 3
	s_clause 0x1
	s_load_b64 s[44:45], s[0:1], 0x48
	s_load_b128 s[48:51], s[0:1], 0x38
	s_mul_i32 s0, s14, s29
	v_mov_b16_e32 v12.h, v26.l
	s_sub_i32 s3, s3, s0
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_sub_i32 s0, s64, s39
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v9.h, v8.l
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_max_i32 s0, s0, 0
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v8.l, v12.l
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_and_b32 s0, s0, 0x7fffffe0
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v8.h, v7.l
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_max_u32 s0, s12, s0
	s_and_b32 s1, s67, exec_lo
	s_cselect_b32 s71, s0, s12
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s0, s68, v1
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v1.l, v12.l
	v_mov_b16_e32 v1.h, v24.l
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s1, s68, v11
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v11.l, v12.l
	v_mov_b16_e32 v11.h, v9.l
	v_mov_b16_e32 v9.l, v12.l
	scratch_store_b32 off, v1, off offset:120 ; 4-byte Folded Spill
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshlrev_b32_e32 v1, 4, v0
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v7.l, v12.l
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:140
	scratch_store_b32 off, v12, off offset:116
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v12.h, v4.l
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v11, off offset:124
	scratch_store_b32 off, v9, off offset:128
	scratch_store_b32 off, v8, off offset:132
	scratch_store_b32 off, v7, off offset:136
	scratch_store_b32 off, v12, off offset:144
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_and_b32_e32 v1, 0x70, v1
	v_dual_mov_b32 v43, v33 :: v_dual_and_b32 v10, 16, v0
	.loc	1 613 26                        ; attention_backward.py:613:26
	s_mul_i32 s14, s14, s28
	v_mov_b32_e32 v246, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshl_or_b32 v1, v37, 7, v1
	v_lshlrev_b32_e32 v29, 3, v0
	v_lshlrev_b32_e32 v10, 2, v10
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s28, s36, s3
	.loc	1 641 25                        ; attention_backward.py:641:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s72, s70, 0x3fb8aa3b
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v4, 0x70, v1, 0
	v_xad_u32 v5, 0x60, v1, 0
	ds_load_b128 v[15:18], v4
	ds_load_b128 v[11:14], v5
	v_xad_u32 v6, 0x50, v1, 0
	v_xad_u32 v7, v1, 64, 0
	v_xad_u32 v8, v1, 48, 0
	v_xad_u32 v9, v1, 32, 0
	v_xad_u32 v4, v1, 16, 0
	v_add_nc_u32_e32 v1, 0, v1
	v_lshlrev_b32_e32 v5, 4, v41
	v_and_b32_e32 v29, 48, v29
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[11:14], off offset:148
	scratch_store_b128 off, v[15:18], off offset:164
	ds_load_b128 v[15:18], v6
	ds_load_b128 v[11:14], v7
	v_or3_b32 v5, v3, v5, v2
	v_lshl_add_u32 v2, v41, 1, 0
	v_lshlrev_b32_e32 v3, 2, v0
	v_lshl_or_b32 v40, v42, 6, v29
	s_add_i32 s28, s28, s14
	v_mov_b32_e32 v53, v246
	v_lshl_add_u32 v227, v37, 2, v2
	v_xor_b32_e32 v2, 0x110, v3
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[11:14], off offset:180
	scratch_store_b128 off, v[15:18], off offset:196
	ds_load_b128 v[15:18], v8
	ds_load_b128 v[11:14], v9
	v_xor_b32_e32 v6, 0x220, v3
	v_xor_b32_e32 v7, 0x330, v3
	v_xor_b32_e32 v8, 0x440, v3
	v_xor_b32_e32 v38, 16, v40
	v_xor_b32_e32 v39, 32, v40
	s_cmp_lt_i32 s71, s69
	s_mov_b32 s29, 0
	s_cselect_b32 s73, -1, 0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[11:14], off offset:212
	scratch_store_b128 off, v[15:18], off offset:228
	ds_load_b128 v[15:18], v4
	ds_load_b128 v[11:14], v1
	v_xor_b32_e32 v1, 8, v5
	v_xor_b32_e32 v4, 16, v5
	v_add_nc_u32_e32 v116, 0, v38
	v_add_nc_u32_e32 v118, 0, v39
	s_and_b32 s53, s53, 0xffff
	v_add_nc_u32_e32 v1, 0, v1
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[11:14], off offset:244
	scratch_store_b128 off, v[15:18], off offset:260
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v17, s35, v0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v5, off offset:276
	scratch_store_b32 off, v1, off offset:300
	scratch_store_b32 off, v40, off offset:456
	v_xor_b32_e32 v5, 24, v5
	v_add_nc_u32_e32 v19, s35, v17
	scratch_store_b32 off, v17, off offset:280 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v4
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_mul_u32_u24_e32 v13, 0x110, v37
	v_add_nc_u32_e32 v22, s35, v19
	scratch_store_b32 off, v19, off offset:284 ; 4-byte Folded Spill
	v_xor_b32_e32 v40, 48, v40
	s_and_b32 s57, s57, 0xffff
	v_lshl_or_b32 v230, v41, 7, v13
	v_add_nc_u32_e32 v26, s35, v22
	scratch_store_b32 off, v22, off offset:288 ; 4-byte Folded Spill
	s_and_b32 s61, s51, 0xffff
	s_mov_b32 s60, s50
	scratch_store_b32 off, v1, off offset:304 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v30, s35, v26
	scratch_store_b32 off, v26, off offset:292 ; 4-byte Folded Spill
	v_dual_mov_b32 v4, v246 :: v_dual_add_nc_u32 v1, 0, v5
	v_xor_b32_e32 v20, 16, v230
	scratch_store_b32 off, v30, off offset:308 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s35, v30
	scratch_store_b32 off, v1, off offset:312 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v2
	v_lshlrev_b32_e32 v30, 1, v42
	v_xor_b32_e32 v21, 32, v230
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s35, v0
	scratch_store_b32 off, v1, off offset:316 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v6
	v_or3_b32 v37, v30, v10, v41
	v_mov_b32_e32 v58, v246
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s35, v0
	scratch_store_b32 off, v1, off offset:320 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v7
	scratch_store_b32 off, v37, off offset:448 ; 4-byte Folded Spill
	v_mov_b32_e32 v60, v246
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s35, v0
	scratch_store_b32 off, v1, off offset:324 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v8
	v_xor_b32_e32 v35, 0x90, v37
	v_xor_b32_e32 v22, 48, v230
	scratch_store_b32 off, v0, off offset:452 ; 4-byte Folded Spill
	v_dual_mov_b32 v5, v246 :: v_dual_add_nc_u32 v0, s35, v0
	scratch_store_b32 off, v1, off offset:328 ; 4-byte Folded Spill
	v_xor_b32_e32 v23, 64, v230
	v_mov_b32_e32 v7, v246
	v_dual_mov_b32 v107, v0 :: v_dual_add_nc_u32 v0, s35, v0
	v_xor_b32_e32 v24, 0x50, v230
	v_xor_b32_e32 v25, 0x60, v230
	v_mov_b32_e32 v57, 0
	v_xor_b32_e32 v26, 0x70, v230
	v_dual_mov_b32 v109, v0 :: v_dual_add_nc_u32 v0, s35, v0
	v_xor_b32_e32 v27, 0x80, v230
	v_mov_b32_e32 v59, v246
	v_xor_b32_e32 v28, 0x90, v230
	v_xor_b32_e32 v31, 0xa0, v230
	v_mov_b32_e32 v108, v0
	v_dual_mov_b32 v61, v246 :: v_dual_add_nc_u32 v0, s35, v0
	v_xor_b32_e32 v32, 0xb0, v230
	v_xor_b32_e32 v33, 0xc0, v230
	v_xor_b32_e32 v10, 0xd0, v230
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v110, v0
	v_dual_mov_b32 v63, v246 :: v_dual_add_nc_u32 v0, s35, v0
	v_xor_b32_e32 v34, 0xe0, v230
	v_xor_b32_e32 v29, 0xf0, v230
	v_mad_u64_u32 v[119:120], null, s34, 18, v[106:107]
	v_dual_mov_b32 v113, v0 :: v_dual_add_nc_u32 v0, s35, v0
	v_mad_u64_u32 v[120:121], null, s34, 20, v[106:107]
	v_mov_b32_e32 v49, 0
	v_mad_u64_u32 v[121:122], null, s34, 22, v[106:107]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v111, v0 :: v_dual_add_nc_u32 v0, s35, v0
	v_mov_b32_e32 v55, v246
	v_mad_u64_u32 v[122:123], null, s34, 24, v[106:107]
	v_xor_b32_e32 v36, 0x120, v37
	v_dual_mov_b32 v117, v0 :: v_dual_add_nc_u32 v0, s35, v0
	v_mov_b32_e32 v62, v246
	v_xor_b32_e32 v37, 0x1b0, v37
	v_mad_u64_u32 v[123:124], null, s34, 26, v[106:107]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v193, v0 :: v_dual_add_nc_u32 v0, s35, v0
	v_mov_b32_e32 v64, v246
	v_mad_u64_u32 v[124:125], null, s34, 28, v[106:107]
	v_mov_b32_e32 v50, v246
	v_mov_b32_e32 v236, v0
	v_add_nc_u32_e32 v0, s35, v0
	v_mad_u64_u32 v[125:126], null, s34, 30, v[106:107]
	v_mov_b32_e32 v52, v246
	v_add3_u32 v241, 0, v41, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v206, v0
	v_add_nc_u32_e32 v0, s35, v0
	v_xor_b32_e32 v9, 0x550, v3
	v_xor_b32_e32 v11, 0x660, v3
	v_xor_b32_e32 v12, 0x770, v3
	v_xor_b32_e32 v14, 0x880, v3
	v_mov_b32_e32 v190, v0
	v_add_nc_u32_e32 v0, s35, v0
	v_add_nc_u32_e32 v112, 0, v35
	v_add_nc_u32_e32 v1, 0, v9
	v_xor_b32_e32 v15, 0x990, v3
	v_xor_b32_e32 v16, 0xaa0, v3
	v_mov_b32_e32 v239, v0
	v_add_nc_u32_e32 v217, s35, v0
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	scratch_store_b32 off, v1, off offset:332 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v11
	v_xor_b32_e32 v17, 0xbb0, v3
	v_mov_b32_e32 v54, v246
	v_xor_b32_e32 v13, 0xcc0, v3
	v_mov_b32_e32 v56, v246
	scratch_store_b32 off, v1, off offset:336 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v12
	v_xor_b32_e32 v18, 0xdd0, v3
	v_xor_b32_e32 v19, 0xee0, v3
	v_xor_b32_e32 v3, 0xff0, v3
	v_add_nc_u32_e32 v244, s35, v217
	scratch_store_b32 off, v1, off offset:340 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v14
	v_dual_mov_b32 v51, v246 :: v_dual_add_nc_u32 v114, 0, v36
	v_add_nc_u32_e32 v191, s35, v244
	v_add_nc_u32_e32 v115, 0, v37
	scratch_store_b32 off, v1, off offset:348 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v15
	v_mov_b32_e32 v9, 0
	v_add_nc_u32_e32 v207, s35, v191
	v_mov_b32_e32 v11, v246
	v_mov_b32_e32 v12, v246
	scratch_store_b32 off, v1, off offset:352 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v16
	v_add_nc_u32_e32 v238, s35, v207
	v_mov_b32_e32 v14, v246
	v_mov_b32_e32 v15, v246
	v_mov_b32_e32 v16, v246
	scratch_store_b32 off, v1, off offset:356 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v17
	v_add_nc_u32_e32 v192, s35, v238
	v_dual_mov_b32 v2, v246 :: v_dual_add_nc_u32 v17, 0, v40
	v_mov_b32_e32 v6, v246
	scratch_store_b32 off, v1, off offset:360 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v13
	v_dual_mov_b32 v13, v246 :: v_dual_add_nc_u32 v240, s35, v192
	v_mov_b32_e32 v8, v246
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v36, v43, v42
	scratch_store_b32 off, v1, off offset:364 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v18
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s49, s49, 0xffff
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v42, off offset:464
	scratch_store_b32 off, v43, off offset:468
	scratch_store_b32 off, v1, off offset:368
	v_add_nc_u32_e32 v1, 0, v19
	scratch_store_b32 off, v1, off offset:372 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v3
	v_mov_b32_e32 v3, v246
	scratch_store_b32 off, v1, off offset:376 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v20
	scratch_store_b32 off, v1, off offset:384 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v21
	scratch_store_b32 off, v1, off offset:388 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v22
	scratch_store_b32 off, v1, off offset:392 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v23
	scratch_store_b32 off, v1, off offset:396 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v24
	scratch_store_b32 off, v1, off offset:400 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v25
	scratch_store_b32 off, v1, off offset:404 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v26
	scratch_store_b32 off, v1, off offset:408 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v27
	scratch_store_b32 off, v1, off offset:412 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v28
	v_add_nc_u32_e32 v28, s35, v240
	scratch_store_b32 off, v1, off offset:420 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v31
	scratch_store_b32 off, v1, off offset:424 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v32
	scratch_store_b32 off, v1, off offset:428 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v33
	v_add_nc_u32_e32 v33, s35, v28
	scratch_store_b32 off, v1, off offset:432 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v10
	v_mov_b32_e32 v10, v246
	scratch_store_b32 off, v1, off offset:436 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v34
	scratch_store_b32 off, v1, off offset:440 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v29
	scratch_store_b32 off, v1, off offset:444 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, 0
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v26, 16, v0
	v_or_b32_e32 v27, 18, v0
	v_or_b32_e32 v29, 20, v0
	v_or_b32_e32 v30, 22, v0
	v_or_b32_e32 v31, 24, v0
	v_or_b32_e32 v32, 26, v0
	v_or_b32_e32 v34, 28, v0
	v_or_b32_e32 v35, 30, v0
	s_branch .LBB0_5
.LBB0_4:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_add_i32 s29, s29, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s29, s36
	s_cbranch_scc0 .LBB0_12
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s73
	s_cbranch_vccnz .LBB0_4
; %bb.6:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 613 26                        ; attention_backward.py:613:26
	s_add_i32 s74, s28, s29
	s_mov_b32 s75, s71
	.loc	1 613 25 is_stmt 0              ; attention_backward.py:613:25
	s_mul_i32 s74, s74, s30
	s_branch .LBB0_8
.LBB0_7:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	s_clause 0x9                            ; 40-byte Folded Reload
	scratch_load_b32 v18, off, off offset:296
	scratch_load_b32 v19, off, off offset:280
	scratch_load_b32 v20, off, off offset:284
	scratch_load_b32 v21, off, off offset:288
	scratch_load_b32 v23, off, off offset:308
	scratch_load_b32 v24, off, off offset:344
	scratch_load_b32 v25, off, off offset:380
	scratch_load_b32 v22, off, off offset:292
	scratch_load_b32 v65, off, off offset:416
	scratch_load_b32 v66, off, off offset:452
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s3, s75, 1
	s_or_b32 s14, s75, 2
	s_or_b32 s15, s75, 3
	s_or_b32 s16, s75, 4
	s_or_b32 s17, s75, 5
	s_or_b32 s18, s75, 6
	s_or_b32 s19, s75, 7
	s_or_b32 s20, s75, 8
	s_or_b32 s21, s75, 9
	s_or_b32 s22, s75, 10
	s_or_b32 s23, s75, 11
	s_or_b32 s24, s75, 12
	s_or_b32 s25, s75, 13
	s_or_b32 s26, s75, 14
	s_or_b32 s27, s75, 15
	s_or_b32 s51, s75, 16
	s_or_b32 s94, s75, 17
	s_or_b32 s95, s75, 18
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
	s_or_b32 s65, s75, 30
	s_or_b32 s40, s75, 31
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s75, s30
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v248, v246 :: v_dual_add_nc_u32 v133, s35, v33
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s3, s30
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v251, v246 :: v_dual_add_nc_u32 v154, 0x1800, v227
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s14, s30
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s15, s30
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s16, s30
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s17, s30
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s18, s30
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s19, s30
	.loc	1 699 25 is_stmt 1              ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v81, 2, v81
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s20, s30
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v247, v246
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s21, s30
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_cndmask_b32_e64 v81, 0x80000000, v81, s12
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s22, s30
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v249, v246
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s23, s30
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v250, v246
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s24, s30
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v252, v246
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s25, s30
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s26, s30
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s27, s30
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s51, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s51, s55
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s94, s30
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s94, s46, s35
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s95, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v67, s94, v107, 2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s96, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v68, s94, v109, 2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s97, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v69, s94, v108, 2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s98, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v70, s94, v110, 2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s22, -1, 0
	s_cmp_lt_i32 s99, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v71, s94, v113, 2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s21, -1, 0
	s_cmp_lt_i32 s100, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v72, s94, v111, 2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s101, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v82, s94, v117, 2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s102, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v83, s94, v193, 2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s103, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v84, s94, v236, 2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s104, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v85, s94, v206, 2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 vcc_lo, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v86, s94, v190, 2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 vcc_hi, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v87, s94, v239, 2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s65, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v88, s94, v217, 2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s40, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v126, s94, v244, 2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s46, -1, 0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s50
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v127, s94, v207, 2
	s_mov_b32 s50, s54
	v_add_lshl_u32 v129, s94, v192, 2
	v_add_lshl_u32 v128, s94, v238, 2
	v_add_lshl_u32 v131, s94, v28, 2
	v_add_lshl_u32 v130, s94, v240, 2
	v_add_lshl_u32 v133, s94, v133, 2
	v_add_lshl_u32 v132, s94, v33, 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s75, s75, 32
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(9)
	v_add_lshl_u32 v18, s94, v18, 2
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v19, s94, v19, 2
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v20, s94, v20, 2
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v21, s94, v21, 2
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v23, s94, v23, 2
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s93
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v22, s94, v22, 2
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s92
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v24, s94, v24, 2
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s91
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v25, s94, v25, 2
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s90
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v65, s94, v65, 2
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s89
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v66, s94, v66, 2
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s88
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s87
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s86
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_b32 v18, v18, s[48:51], 0 offen
	buffer_load_b32 v19, v19, s[48:51], 0 offen
	buffer_load_b32 v20, v20, s[48:51], 0 offen
	buffer_load_b32 v21, v21, s[48:51], 0 offen
	buffer_load_b32 v22, v22, s[48:51], 0 offen
	buffer_load_b32 v23, v23, s[48:51], 0 offen
	buffer_load_b32 v24, v24, s[48:51], 0 offen
	buffer_load_b32 v25, v25, s[48:51], 0 offen
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s85
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s84
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s83
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s82
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s63
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s63, s55
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s62
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s62, s54
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s47
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s47, s55
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s27
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_b32 v65, v65, s[48:51], 0 offen
	buffer_load_b32 v66, v66, s[48:51], 0 offen
	buffer_load_b32 v67, v67, s[48:51], 0 offen
	buffer_load_b32 v68, v68, s[48:51], 0 offen
	buffer_load_b32 v69, v69, s[48:51], 0 offen
	buffer_load_b32 v70, v70, s[48:51], 0 offen
	buffer_load_b32 v71, v71, s[48:51], 0 offen
	buffer_load_b32 v72, v72, s[48:51], 0 offen
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s26
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v83, 0x80000000, v83, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s25
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v84, 0x80000000, v84, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s24
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v85, 0x80000000, v85, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s23
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v86, 0x80000000, v86, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s22
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v87, 0x80000000, v87, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s21
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v88, 0x80000000, v88, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s20
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v126, 0x80000000, v126, vcc_lo
	s_clause 0x7
	buffer_load_b32 v82, v82, s[48:51], 0 offen
	buffer_load_b32 v83, v83, s[48:51], 0 offen
	buffer_load_b32 v84, v84, s[48:51], 0 offen
	buffer_load_b32 v85, v85, s[48:51], 0 offen
	buffer_load_b32 v86, v86, s[48:51], 0 offen
	buffer_load_b32 v87, v87, s[48:51], 0 offen
	buffer_load_b32 v88, v88, s[48:51], 0 offen
	buffer_load_b32 v194, v126, s[48:51], 0 offen
	v_add_lshl_u32 v126, s94, v191, 2
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s19
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v126, 0x80000000, v126, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s18
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v127, 0x80000000, v127, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s17
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v128, 0x80000000, v128, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s16
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v129, 0x80000000, v129, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s15
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v130, 0x80000000, v130, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s14
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v131, 0x80000000, v131, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s3
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v132, 0x80000000, v132, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s46
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s46, s54
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v133, 0x80000000, v133, vcc_lo
	s_clause 0x7
	buffer_load_b32 v195, v126, s[48:51], 0 offen
	buffer_load_b32 v196, v127, s[48:51], 0 offen
	buffer_load_b32 v197, v128, s[48:51], 0 offen
	buffer_load_b32 v198, v129, s[48:51], 0 offen
	buffer_load_b32 v199, v130, s[48:51], 0 offen
	buffer_load_b32 v200, v131, s[48:51], 0 offen
	buffer_load_b32 v201, v132, s[48:51], 0 offen
	buffer_load_b32 v209, v133, s[48:51], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v218, v81, s[60:63], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v219, v81, s[44:47], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v81, off, off offset:76
	scratch_load_b32 v126, off, off offset:112
	v_add_nc_u32_e32 v127, 0xc00, v227
	v_add_nc_u32_e32 v128, 0x1000, v227
	v_add_nc_u32_e32 v129, 0x1400, v227
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v253, v246
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v155, 0x1c00, v227
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_i32 s75, s69
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v224, v126, v81
	v_add_nc_u32_e32 v81, 0x400, v227
	v_add_nc_u32_e32 v126, 0x800, v227
	ds_store_2addr_stride64_b32 v224, v18, v19 offset1:1
	ds_store_2addr_stride64_b32 v224, v20, v21 offset0:2 offset1:3
	ds_store_2addr_stride64_b32 v224, v22, v23 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v224, v24, v25 offset0:6 offset1:7
	ds_store_2addr_stride64_b32 v224, v65, v66 offset0:8 offset1:9
	ds_store_2addr_stride64_b32 v224, v67, v68 offset0:10 offset1:11
	ds_store_2addr_stride64_b32 v224, v69, v70 offset0:12 offset1:13
	ds_store_2addr_stride64_b32 v224, v71, v72 offset0:14 offset1:15
	ds_store_2addr_stride64_b32 v224, v82, v83 offset0:16 offset1:17
	ds_store_2addr_stride64_b32 v224, v84, v85 offset0:18 offset1:19
	ds_store_2addr_stride64_b32 v224, v86, v87 offset0:20 offset1:21
	ds_store_2addr_stride64_b32 v224, v88, v194 offset0:22 offset1:23
	ds_store_2addr_stride64_b32 v224, v195, v196 offset0:24 offset1:25
	ds_store_2addr_stride64_b32 v224, v197, v198 offset0:26 offset1:27
	ds_store_2addr_stride64_b32 v224, v199, v200 offset0:28 offset1:29
	ds_store_2addr_stride64_b32 v224, v201, v209 offset0:30 offset1:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[142:143], v81 offset1:32
	ds_load_2addr_b32 v[158:159], v81 offset0:64 offset1:96
	ds_load_2addr_b32 v[144:145], v81 offset0:128 offset1:160
	ds_load_2addr_b32 v[160:161], v81 offset0:192 offset1:224
	ds_load_2addr_b32 v[146:147], v126 offset1:32
	ds_load_2addr_b32 v[162:163], v126 offset0:64 offset1:96
	ds_load_2addr_b32 v[148:149], v126 offset0:128 offset1:160
	ds_load_2addr_b32 v[164:165], v126 offset0:192 offset1:224
	ds_load_2addr_b32 v[150:151], v127 offset1:32
	ds_load_2addr_b32 v[166:167], v127 offset0:64 offset1:96
	ds_load_2addr_b32 v[152:153], v127 offset0:128 offset1:160
	ds_load_2addr_b32 v[168:169], v127 offset0:192 offset1:224
	ds_load_2addr_b32 v[140:141], v128 offset1:32
	ds_load_2addr_b32 v[170:171], v128 offset0:64 offset1:96
	ds_load_2addr_b32 v[138:139], v128 offset0:128 offset1:160
	ds_load_2addr_b32 v[172:173], v128 offset0:192 offset1:224
	ds_load_2addr_b32 v[136:137], v129 offset1:32
	ds_load_2addr_b32 v[174:175], v129 offset0:64 offset1:96
	ds_load_2addr_b32 v[134:135], v129 offset0:128 offset1:160
	ds_load_2addr_b32 v[176:177], v129 offset0:192 offset1:224
	ds_load_2addr_b32 v[132:133], v154 offset1:32
	ds_load_2addr_b32 v[178:179], v154 offset0:64 offset1:96
	ds_load_2addr_b32 v[130:131], v154 offset0:128 offset1:160
	ds_load_2addr_b32 v[180:181], v154 offset0:192 offset1:224
	ds_load_2addr_b32 v[128:129], v155 offset1:32
	ds_load_2addr_b32 v[182:183], v155 offset0:64 offset1:96
	ds_load_2addr_b32 v[126:127], v155 offset0:128 offset1:160
	ds_load_2addr_b32 v[184:185], v155 offset0:192 offset1:224
	ds_load_2addr_b32 v[154:155], v227 offset1:32
	ds_load_2addr_b32 v[186:187], v227 offset0:64 offset1:96
	ds_load_2addr_b32 v[156:157], v227 offset0:128 offset1:160
	ds_load_2addr_b32 v[188:189], v227 offset0:192 offset1:224
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b32 v224, v18, v82 offset1:16
	scratch_load_b32 v18, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v18, v19, v83 offset1:16
	scratch_load_b32 v18, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v18, v20, v84 offset1:16
	scratch_load_b32 v18, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v18, v21, v85 offset1:16
	scratch_load_b32 v18, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v18, v22, v86 offset1:16
	scratch_load_b32 v18, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v18, v23, v87 offset1:16
	scratch_load_b32 v18, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v18, v24, v88 offset1:16
	scratch_load_b32 v18, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v18, v25, v194 offset1:16
	scratch_load_b32 v18, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v18, v65, v195 offset1:16
	scratch_load_b32 v18, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v18, v66, v196 offset1:16
	scratch_load_b32 v18, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v18, v67, v197 offset1:16
	scratch_load_b32 v18, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v18, v68, v198 offset1:16
	scratch_load_b32 v18, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v18, v69, v199 offset1:16
	scratch_load_b32 v18, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v18, v70, v200 offset1:16
	scratch_load_b32 v18, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v18, v71, v201 offset1:16
	scratch_load_b32 v18, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v18, v72, v209 offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v22, off, off offset:384 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v18, 0, v230
	ds_load_b128 v[18:21], v18
	s_waitcnt vmcnt(0)
	ds_load_b128 v[22:25], v22
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v65, v18, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_cmp_o_f32_e64 s3, v19, v19
	v_cmp_o_f32_e64 s12, v20, v20
	v_cmp_o_f32_e64 s14, v21, v21
	v_add3_u32 v65, v18, v65, 0x7fff
	v_bfe_u32 v18, v19, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v66, v19, v18, 0x7fff
	v_bfe_u32 v18, v20, 16, 1
	v_add3_u32 v67, v20, v18, 0x7fff
	v_bfe_u32 v18, v21, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s15, v22, v22
	v_cmp_o_f32_e64 s16, v23, v23
	v_cmp_o_f32_e64 s17, v24, v24
	v_cmp_o_f32_e64 s18, v25, v25
	v_add3_u32 v68, v21, v18, 0x7fff
	v_bfe_u32 v18, v22, 16, 1
	v_cndmask_b16 v82.l, 0x7fff, v67.h, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v82.h, 0x7fff, v68.h, s14
	v_add3_u32 v69, v22, v18, 0x7fff
	v_bfe_u32 v18, v23, 16, 1
	scratch_load_b32 v22, off, off offset:392 ; 4-byte Folded Reload
	v_cndmask_b16 v83.l, 0x7fff, v69.h, s15
	v_add3_u32 v70, v23, v18, 0x7fff
	v_bfe_u32 v18, v24, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v70.h, s16
	v_add3_u32 v71, v24, v18, 0x7fff
	v_bfe_u32 v18, v25, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v71.h, s17
	v_add3_u32 v72, v25, v18, 0x7fff
	scratch_load_b32 v18, off, off offset:388 ; 4-byte Folded Reload
	v_cndmask_b16 v84.h, 0x7fff, v72.h, s18
	s_waitcnt vmcnt(1)
	ds_load_b128 v[22:25], v22
	s_waitcnt vmcnt(0)
	ds_load_b128 v[18:21], v18
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s23, v22, v22
	v_cmp_o_f32_e64 s24, v23, v23
	v_cmp_o_f32_e64 s25, v24, v24
	v_cmp_o_f32_e64 s26, v25, v25
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v81, v18, 16, 1
	v_cmp_o_f32_e64 s19, v18, v18
	v_cmp_o_f32_e64 s20, v19, v19
	v_cmp_o_f32_e64 s21, v20, v20
	v_cmp_o_f32_e64 s22, v21, v21
	v_add3_u32 v18, v18, v81, 0x7fff
	v_bfe_u32 v81, v19, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.l, 0x7fff, v18.h, s19
	v_add3_u32 v19, v19, v81, 0x7fff
	v_bfe_u32 v81, v20, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.h, 0x7fff, v19.h, s20
	v_add3_u32 v20, v20, v81, 0x7fff
	v_bfe_u32 v81, v21, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.l, 0x7fff, v20.h, s21
	v_add3_u32 v21, v21, v81, 0x7fff
	v_bfe_u32 v81, v22, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.h, 0x7fff, v21.h, s22
	v_add3_u32 v22, v22, v81, 0x7fff
	v_bfe_u32 v81, v23, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.l, 0x7fff, v22.h, s23
	v_add3_u32 v23, v23, v81, 0x7fff
	v_bfe_u32 v81, v24, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.h, 0x7fff, v23.h, s24
	v_add3_u32 v24, v24, v81, 0x7fff
	v_bfe_u32 v81, v25, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v88.l, 0x7fff, v24.h, s25
	v_add3_u32 v25, v25, v81, 0x7fff
	v_cndmask_b16 v81.l, 0x7fff, v65.h, vcc_lo
	v_cndmask_b16 v81.h, 0x7fff, v66.h, s3
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v65, v246 :: v_dual_mov_b32 v66, v247
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v88.h, 0x7fff, v25.h, s26
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[18:21], off, off offset:244
	scratch_load_b128 v[22:25], off, off offset:260
	v_dual_mov_b32 v67, v248 :: v_dual_mov_b32 v68, v249
	v_dual_mov_b32 v69, v250 :: v_dual_mov_b32 v70, v251
	v_dual_mov_b32 v71, v252 :: v_dual_mov_b32 v72, v253
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[18:25], v[81:88], v[65:72]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:396
	scratch_load_b32 v22, off, off offset:400
	s_waitcnt vmcnt(1)
	ds_load_b128 v[18:21], v18
	s_waitcnt vmcnt(0)
	ds_load_b128 v[22:25], v22
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v81, v18, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s15, v22, v22
	v_cmp_o_f32_e64 s3, v19, v19
	v_cmp_o_f32_e64 s12, v20, v20
	v_add3_u32 v81, v18, v81, 0x7fff
	v_bfe_u32 v18, v19, 16, 1
	v_cmp_o_f32_e64 s14, v21, v21
	v_cmp_o_f32_e64 s16, v23, v23
	v_cmp_o_f32_e64 s17, v24, v24
	v_cmp_o_f32_e64 s18, v25, v25
	v_add3_u32 v82, v19, v18, 0x7fff
	v_bfe_u32 v18, v20, 16, 1
	v_cndmask_b16 v81.l, 0x7fff, v81.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v81.h, 0x7fff, v82.h, s3
	v_add3_u32 v83, v20, v18, 0x7fff
	v_bfe_u32 v18, v21, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v82.l, 0x7fff, v83.h, s12
	v_add3_u32 v84, v21, v18, 0x7fff
	v_bfe_u32 v18, v22, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v82.h, 0x7fff, v84.h, s14
	v_add3_u32 v85, v22, v18, 0x7fff
	v_bfe_u32 v18, v23, 16, 1
	scratch_load_b32 v22, off, off offset:408 ; 4-byte Folded Reload
	v_cndmask_b16 v83.l, 0x7fff, v85.h, s15
	v_add3_u32 v86, v23, v18, 0x7fff
	v_bfe_u32 v18, v24, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v86.h, s16
	v_add3_u32 v87, v24, v18, 0x7fff
	v_bfe_u32 v18, v25, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v87.h, s17
	v_add3_u32 v88, v25, v18, 0x7fff
	scratch_load_b32 v18, off, off offset:404 ; 4-byte Folded Reload
	v_cndmask_b16 v84.h, 0x7fff, v88.h, s18
	s_waitcnt vmcnt(1)
	ds_load_b128 v[22:25], v22
	s_waitcnt vmcnt(0)
	ds_load_b128 v[18:21], v18
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s23, v22, v22
	v_cmp_o_f32_e64 s24, v23, v23
	v_cmp_o_f32_e64 s25, v24, v24
	v_cmp_o_f32_e64 s26, v25, v25
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v194, v18, 16, 1
	v_cmp_o_f32_e64 s19, v18, v18
	v_cmp_o_f32_e64 s20, v19, v19
	v_cmp_o_f32_e64 s21, v20, v20
	v_cmp_o_f32_e64 s22, v21, v21
	v_add3_u32 v18, v18, v194, 0x7fff
	v_bfe_u32 v194, v19, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.l, 0x7fff, v18.h, s19
	v_add3_u32 v19, v19, v194, 0x7fff
	v_bfe_u32 v194, v20, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.h, 0x7fff, v19.h, s20
	v_add3_u32 v20, v20, v194, 0x7fff
	v_bfe_u32 v194, v21, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.l, 0x7fff, v20.h, s21
	v_add3_u32 v194, v21, v194, 0x7fff
	v_bfe_u32 v21, v22, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.h, 0x7fff, v194.h, s22
	v_add3_u32 v21, v22, v21, 0x7fff
	v_bfe_u32 v22, v23, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.l, 0x7fff, v21.h, s23
	v_add3_u32 v22, v23, v22, 0x7fff
	v_bfe_u32 v23, v24, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.h, 0x7fff, v22.h, s24
	v_add3_u32 v23, v24, v23, 0x7fff
	v_bfe_u32 v24, v25, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v88.l, 0x7fff, v23.h, s25
	v_add3_u32 v24, v25, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v88.h, 0x7fff, v24.h, s26
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[18:21], off, off offset:212
	scratch_load_b128 v[22:25], off, off offset:228
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[18:25], v[81:88], v[65:72]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:412
	scratch_load_b32 v22, off, off offset:420
	s_waitcnt vmcnt(1)
	ds_load_b128 v[18:21], v18
	s_waitcnt vmcnt(0)
	ds_load_b128 v[22:25], v22
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v81, v18, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s15, v22, v22
	v_cmp_o_f32_e64 s3, v19, v19
	v_cmp_o_f32_e64 s12, v20, v20
	v_add3_u32 v81, v18, v81, 0x7fff
	v_bfe_u32 v18, v19, 16, 1
	v_cmp_o_f32_e64 s14, v21, v21
	v_cmp_o_f32_e64 s16, v23, v23
	v_cmp_o_f32_e64 s17, v24, v24
	v_cmp_o_f32_e64 s18, v25, v25
	v_add3_u32 v82, v19, v18, 0x7fff
	v_bfe_u32 v18, v20, 16, 1
	v_cndmask_b16 v81.l, 0x7fff, v81.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v81.h, 0x7fff, v82.h, s3
	v_add3_u32 v83, v20, v18, 0x7fff
	v_bfe_u32 v18, v21, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v82.l, 0x7fff, v83.h, s12
	v_add3_u32 v84, v21, v18, 0x7fff
	v_bfe_u32 v18, v22, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v82.h, 0x7fff, v84.h, s14
	v_add3_u32 v85, v22, v18, 0x7fff
	v_bfe_u32 v18, v23, 16, 1
	scratch_load_b32 v22, off, off offset:428 ; 4-byte Folded Reload
	v_cndmask_b16 v83.l, 0x7fff, v85.h, s15
	v_add3_u32 v86, v23, v18, 0x7fff
	v_bfe_u32 v18, v24, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v86.h, s16
	v_add3_u32 v87, v24, v18, 0x7fff
	v_bfe_u32 v18, v25, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v87.h, s17
	v_add3_u32 v88, v25, v18, 0x7fff
	scratch_load_b32 v18, off, off offset:424 ; 4-byte Folded Reload
	v_cndmask_b16 v84.h, 0x7fff, v88.h, s18
	s_waitcnt vmcnt(1)
	ds_load_b128 v[22:25], v22
	s_waitcnt vmcnt(0)
	ds_load_b128 v[18:21], v18
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s23, v22, v22
	v_cmp_o_f32_e64 s24, v23, v23
	v_cmp_o_f32_e64 s25, v24, v24
	v_cmp_o_f32_e64 s26, v25, v25
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v194, v18, 16, 1
	v_cmp_o_f32_e64 s19, v18, v18
	v_cmp_o_f32_e64 s20, v19, v19
	v_cmp_o_f32_e64 s21, v20, v20
	v_cmp_o_f32_e64 s22, v21, v21
	v_add3_u32 v194, v18, v194, 0x7fff
	v_bfe_u32 v18, v19, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.l, 0x7fff, v194.h, s19
	v_add3_u32 v18, v19, v18, 0x7fff
	v_bfe_u32 v19, v20, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.h, 0x7fff, v18.h, s20
	v_add3_u32 v19, v20, v19, 0x7fff
	v_bfe_u32 v20, v21, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.l, 0x7fff, v19.h, s21
	v_add3_u32 v20, v21, v20, 0x7fff
	v_bfe_u32 v21, v22, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.h, 0x7fff, v20.h, s22
	v_add3_u32 v21, v22, v21, 0x7fff
	v_bfe_u32 v22, v23, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.l, 0x7fff, v21.h, s23
	v_add3_u32 v22, v23, v22, 0x7fff
	v_bfe_u32 v23, v24, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.h, 0x7fff, v22.h, s24
	v_add3_u32 v23, v24, v23, 0x7fff
	v_bfe_u32 v24, v25, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v88.l, 0x7fff, v23.h, s25
	v_add3_u32 v24, v25, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v88.h, 0x7fff, v24.h, s26
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[18:21], off, off offset:180
	scratch_load_b128 v[22:25], off, off offset:196
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[18:25], v[81:88], v[65:72]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:432
	scratch_load_b32 v22, off, off offset:436
	s_waitcnt vmcnt(1)
	ds_load_b128 v[18:21], v18
	s_waitcnt vmcnt(0)
	ds_load_b128 v[22:25], v22
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v81, v18, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s15, v22, v22
	v_cmp_o_f32_e64 s3, v19, v19
	v_cmp_o_f32_e64 s12, v20, v20
	v_add3_u32 v81, v18, v81, 0x7fff
	v_bfe_u32 v18, v19, 16, 1
	v_cmp_o_f32_e64 s14, v21, v21
	v_cmp_o_f32_e64 s16, v23, v23
	v_cmp_o_f32_e64 s17, v24, v24
	v_cmp_o_f32_e64 s18, v25, v25
	v_add3_u32 v82, v19, v18, 0x7fff
	v_bfe_u32 v18, v20, 16, 1
	v_cndmask_b16 v81.l, 0x7fff, v81.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v81.h, 0x7fff, v82.h, s3
	v_add3_u32 v83, v20, v18, 0x7fff
	v_bfe_u32 v18, v21, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v82.l, 0x7fff, v83.h, s12
	v_add3_u32 v84, v21, v18, 0x7fff
	v_bfe_u32 v18, v22, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v82.h, 0x7fff, v84.h, s14
	v_add3_u32 v85, v22, v18, 0x7fff
	v_bfe_u32 v18, v23, 16, 1
	scratch_load_b32 v22, off, off offset:444 ; 4-byte Folded Reload
	v_cndmask_b16 v83.l, 0x7fff, v85.h, s15
	v_add3_u32 v86, v23, v18, 0x7fff
	v_bfe_u32 v18, v24, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v86.h, s16
	v_add3_u32 v87, v24, v18, 0x7fff
	v_bfe_u32 v18, v25, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v87.h, s17
	v_add3_u32 v88, v25, v18, 0x7fff
	scratch_load_b32 v18, off, off offset:440 ; 4-byte Folded Reload
	v_cndmask_b16 v84.h, 0x7fff, v88.h, s18
	s_waitcnt vmcnt(1)
	ds_load_b128 v[22:25], v22
	s_waitcnt vmcnt(0)
	ds_load_b128 v[18:21], v18
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s23, v22, v22
	v_cmp_o_f32_e64 s24, v23, v23
	v_cmp_o_f32_e64 s25, v24, v24
	v_cmp_o_f32_e64 s26, v25, v25
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v194, v18, 16, 1
	v_cmp_o_f32_e64 s19, v18, v18
	v_cmp_o_f32_e64 s20, v19, v19
	v_cmp_o_f32_e64 s21, v20, v20
	v_cmp_o_f32_e64 s22, v21, v21
	v_add3_u32 v194, v18, v194, 0x7fff
	v_bfe_u32 v18, v19, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.l, 0x7fff, v194.h, s19
	v_add3_u32 v18, v19, v18, 0x7fff
	v_bfe_u32 v19, v20, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.h, 0x7fff, v18.h, s20
	v_add3_u32 v19, v20, v19, 0x7fff
	v_bfe_u32 v20, v21, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.l, 0x7fff, v19.h, s21
	v_add3_u32 v20, v21, v20, 0x7fff
	v_bfe_u32 v21, v22, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.h, 0x7fff, v20.h, s22
	v_add3_u32 v21, v22, v21, 0x7fff
	v_bfe_u32 v22, v23, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.l, 0x7fff, v21.h, s23
	v_add3_u32 v22, v23, v22, 0x7fff
	v_bfe_u32 v23, v24, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.h, 0x7fff, v22.h, s24
	v_add3_u32 v23, v24, v23, 0x7fff
	v_bfe_u32 v24, v25, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v88.l, 0x7fff, v23.h, s25
	v_add3_u32 v24, v25, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v88.h, 0x7fff, v24.h, s26
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[18:21], off, off offset:148
	scratch_load_b128 v[22:25], off, off offset:164
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[18:25], v[81:88], v[65:72]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v18, v65, v219
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v65, v73
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v73, v92, 0, 8
	.loc	1 720 47 is_stmt 1              ; attention_backward.py:720:47
	v_sub_f32_e32 v19, v66, v219
	v_sub_f32_e32 v21, v68, v219
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v66, v74
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v20, v67, v219
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v74, 15, v73
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.h, v73.l, 15
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v67, v75
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v23, v70, v219
	v_sub_f32_e32 v24, v71, v219
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v75, -16, v74
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v73.l
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v25, v72, v219
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v68, v76
	v_cvt_f32_i32_e32 v70, v78
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v74, v74, v75, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v75.l, v0.h, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v73.l
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v22, v69, v219
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v219.l, 0
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v74, v74
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v69, v77
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v219.h, v226.l
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v71, v79
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v75.h, v219.l
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v72, v80
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v254.l, v219.l
	v_mov_b16_e64 v249.l, v219.l
	v_mov_b16_e64 v247.l, v219.l
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v76, -16, v75
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v252.l, v219.l
	v_mov_b16_e64 v250.l, v219.l
	v_mov_b16_e64 v200.l, v219.l
	v_mov_b16_e64 v228.l, v219.l
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v73, v75, v76, vcc_lo
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v75.h, v221.l
	v_mov_b16_e64 v75.l, v219.l
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v76.h, v219.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v248.l, v219.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v73, v73
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v251.l, v219.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v74, v74, v75
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v253.l, v219.l
	v_mov_b16_e64 v194.l, v219.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v73, v73, v75
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v75, v91, 0, 8
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b32_e64 v74, 0, v74, s0
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v195.l, v219.l
	v_mov_b16_e64 v196.l, v219.l
	v_mov_b16_e64 v197.l, v219.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v75.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v75.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s12, v74, v74
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v201.l, v219.l
	v_mov_b16_e64 v198.l, v219.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v76.l, v0.h, 15
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.h, v75.l, 15
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v199.l, v219.l
	v_mov_b16_e64 v233.l, v219.l
	v_mov_b16_e64 v232.l, v219.l
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v77, -16, v76
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v229.l, v219.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_dual_cndmask_b32 v76, v76, v77 :: v_dual_and_b32 v77, 15, v75
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v76, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v75, -16, v77
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v75, v77, v75, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e64 v77.h, v220.l
	v_mov_b16_e64 v77.l, v219.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v75, v75
	v_mul_f32_e32 v76, v77, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v75, v77, v75
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v77.h, v219.l
	v_cndmask_b32_e64 v76, 0, v76, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v75, 0, v75, s0
	v_mov_b16_e32 v77.l, v76.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v76, v76
	v_cmp_o_f32_e64 s3, v75, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v77, 1, v77
	v_add3_u32 v77, v76, v77, 0x7fff
	v_mov_b16_e32 v76.l, v75.h
	v_mov_b16_e64 v76.h, v219.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v77.h, 0x7fff, v77.h, vcc_lo
	v_and_b32_e32 v76, 1, v76
	v_cndmask_b32_e64 v73, 0, v73, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v76, v75, v76, 0x7fff
	v_bfe_u32 v75, v74, 16, 1
	v_cmp_o_f32_e64 s14, v73, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v77.l, 0x7fff, v76.h, s3
	v_add3_u32 v75, v74, v75, 0x7fff
	v_bfe_u32 v74, v73, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v74, v73, v74, 0x7fff
	.loc	1 640 41                        ; attention_backward.py:640:41
	v_mul_f32_e32 v73, s72, v219
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v74.l, 0x7fff, v75.h, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v74.h, 0x7fff, v74.h, s14
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v65, v73, v65
	v_mul_f32_e32 v66, v73, v66
	v_mul_f32_e32 v67, v73, v67
	v_mul_f32_e32 v68, v73, v68
	v_mul_f32_e32 v69, v73, v69
	v_mul_f32_e32 v70, v73, v70
	v_mul_f32_e32 v71, v73, v71
	v_mul_f32_e32 v72, v73, v72
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v73, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v65, v65, v73, -v218
	scratch_load_b32 v73, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v79, 0, v65, s81
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v18, v79, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v18, s70, v18
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v65, v18, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v65, v18, v65, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v65.h, vcc_lo
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_bfe_u32 v65, v155, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v65, v155, v65, 0x7fff
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v66, v66, v73, -v218
	scratch_load_b32 v73, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v18, v66
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v67, v67, v73, -v218
	scratch_load_b32 v73, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v68, v68, v73, -v218
	scratch_load_b32 v73, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v69, v69, v73, -v218
	scratch_load_b32 v73, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v70, v70, v73, -v218
	scratch_load_b32 v73, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v71, v71, v73, -v218
	scratch_load_b32 v73, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v72, v72, v73, -v218
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v218, 0, v18, s80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v18, v218, v19
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v18, s70, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v19, v18, 16, 1
	v_cmp_o_f32_e64 s3, v18, v18
	v_add3_u32 v19, v18, v19, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v18, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v220, 0, v18, s79
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v18, v220, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v18, s70, v18
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v20, v18, 16, 1
	v_cmp_o_f32_e64 s12, v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v20, v18, v20, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v18, v68
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v221, 0, v18, s78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v18, v221, v21
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v18, s70, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v21, v18, 16, 1
	v_cmp_o_f32_e64 s14, v18, v18
	v_add3_u32 v21, v18, v21, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v18, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v80, 0, v18, s77
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v18, v80, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v18, s70, v18
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v22, v18, 16, 1
	v_cmp_o_f32_e64 s15, v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v22, v18, v22, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v18, v70
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v226, 0, v18, s76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v18, v226, v23
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v18, s70, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v23, v18, 16, 1
	v_cmp_o_f32_e64 s16, v18, v18
	v_add3_u32 v23, v18, v23, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v18, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v222, 0, v18, s59
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v18, v222, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v18, s70, v18
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v24, v18, 16, 1
	v_cmp_o_f32_e64 s17, v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v24, v18, v24, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v18, v72
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v223, 0, v18, s58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v18, v223, v25
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v18, s70, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v25, v18, 16, 1
	v_cmp_o_f32_e64 s18, v18, v18
	v_add3_u32 v25, v18, v25, 0x7fff
	v_cndmask_b16 v18.l, 0x7fff, v22.h, s15
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	scratch_load_b32 v22, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v225, 0, v22
	ds_store_b16_d16_hi v225, v0
	ds_store_b16 v225, v18 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v0.h, 0x7fff, v19.h, s3
	v_cndmask_b16 v18.l, 0x7fff, v23.h, s16
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v112, v0
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v0.h, 0x7fff, v20.h, s12
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v112, v18 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v18.l, 0x7fff, v24.h, s17
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s17, v223, v223
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v114, v0
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v0.h, 0x7fff, v21.h, s14
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v114, v18 offset:512
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v18, v48, 0, 8
	.loc	1 732 54 is_stmt 1              ; attention_backward.py:732:54
	v_mov_b16_e64 v48.l, v219.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v19.l, v18.l
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v20, 15, v19
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v18.l, v19.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v21, -16, v20
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v18.l
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v18, v47, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v18.h, v219.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v20, v20, v21, vcc_lo
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v21.l, v18.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v18.l, v21.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v22, 15, v21
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v21.h, v90.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v18.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v18.l, 4, v19.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v23, -16, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v18.l, v18.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v22, v22, v23, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v19.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v23, -16, v18
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v19, v18, v23, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v18.l, 4, v21.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v21.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v21.l, v219.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v18.l, v18.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v20, v20, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v19, v19, v21
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v23, -16, v18
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v21.h, v89.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v20, 0, v20, s0
	v_cndmask_b32_e64 v19, 0, v19, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v18, v18, v23, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v22, v22, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_cmp_o_f32_e64 s3, v19, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v18, v18
	v_mul_f32_e32 v18, v18, v21
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v21, v20, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v18, 0, v18, s1
	v_add3_u32 v21, v20, v21, 0x7fff
	v_bfe_u32 v20, v19, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s14, v18, v18
	v_add3_u32 v20, v19, v20, 0x7fff
	v_cndmask_b32_e64 v19, 0, v22, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v22, v19, 16, 1
	v_cmp_o_f32_e64 s12, v19, v19
	v_add3_u32 v22, v19, v22, 0x7fff
	v_bfe_u32 v19, v18, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v19, v18, v19, 0x7fff
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v18.l, 0x7fff, v25.h, s18
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v115, v0
	ds_store_b16 v115, v18 offset:512
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v20, off, off offset:456 ; 4-byte Folded Reload
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v18.l, 0x7fff, v21.h, vcc_lo
	v_cndmask_b16 v19.l, 0x7fff, v22.h, s12
	v_cndmask_b16 v19.h, 0x7fff, v19.h, s14
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v47, 0, v20
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v20, v44, 0, 8
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_load_b128 v[85:88], v47
	ds_load_b128 v[89:92], v116
	ds_load_b128 v[66:69], v118
	ds_load_b128 v[70:73], v17
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v21, 15, v20
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.h, v20.l, 15
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b32 v224, v77, v74 offset1:1
	ds_store_2addr_stride64_b32 v224, v18, v19 offset0:2 offset1:3
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v22, -16, v21
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v18, v41, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v21, v21, v22, vcc_lo
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v22, v43, 0, 8
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v19, 15, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v21, v21
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v23, 15, v22
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.h, v22.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v24, -16, v23
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v20.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v23, v23, v24, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v24.l, v0.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e64 v24.h, v219.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v20.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v22.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v25, -16, v24
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v20, v24, v25, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v24.l, v0.h, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v22.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.h, v18.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v25, -16, v24
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v22, v24, v25, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v24.h, v46.l
	v_mov_b16_e64 v24.l, v219.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v25.l, v219.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v22, v22
	v_mul_f32_e32 v21, v21, v24
	v_mul_f32_e32 v20, v20, v24
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v24.h, v45.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v20, 0, v20, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v23, v23, v24
	v_mul_f32_e32 v22, v22, v24
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v24, v21, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_cmp_o_f32_e64 s3, v20, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v24, v21, v24, 0x7fff
	v_bfe_u32 v21, v20, 16, 1
	v_add3_u32 v21, v20, v21, 0x7fff
	v_cndmask_b32_e64 v20, 0, v23, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v23, v20, 16, 1
	v_cmp_o_f32_e64 s12, v20, v20
	v_add3_u32 v23, v20, v23, 0x7fff
	v_cndmask_b32_e64 v20, 0, v22, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v21.l, 0x7fff, v23.h, s12
	v_bfe_u32 v22, v20, 16, 1
	v_cmp_o_f32_e64 s14, v20, v20
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v22, v20, v22, 0x7fff
	v_cndmask_b16 v20.l, 0x7fff, v24.h, vcc_lo
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s3
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v0, v0, 0, 8
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b16 v21.h, 0x7fff, v22.h, s14
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v22, -16, v19
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v0.h, v219.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v19, v19, v22, vcc_lo
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v22.l, v0.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.l, v22.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v23, 15, v22
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v22.h, v42.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v18.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v24, -16, v23
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v23, v23, v24, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v18.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v24, -16, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v18, v0, v24, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v22.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v22.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v22.l, v219.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v18, v18
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v19, v19, v22
	v_mul_f32_e32 v18, v18, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v24, -16, v0
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v22.h, v105.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v19, 0, v19, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_dual_cndmask_b32 v0, v0, v24 :: v_dual_mul_f32 v23, v23, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_cmp_o_f32_e64 s3, v18, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v0, v0
	v_mul_f32_e32 v0, v0, v22
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v22, v19, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v0, 0, v0, s1
	v_add3_u32 v22, v19, v22, 0x7fff
	v_bfe_u32 v19, v18, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s14, v0, v0
	v_add3_u32 v19, v18, v19, 0x7fff
	v_cndmask_b32_e64 v18, 0, v23, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v23, v18, 16, 1
	v_cmp_o_f32_e64 s12, v18, v18
	v_add3_u32 v23, v18, v23, 0x7fff
	v_bfe_u32 v18, v0, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v18, v0, v18, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v22.h, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v19.h, s3
	v_cndmask_b16 v18.l, 0x7fff, v23.h, s12
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s14
	ds_store_2addr_stride64_b32 v224, v20, v21 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v224, v0, v18 offset0:6 offset1:7
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v0, v104, 0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v18.l, v0.l
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v19, 15, v18
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.l, v18.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v20, -16, v19
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v0, v103, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v0.h, v219.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v19, v19, v20, vcc_lo
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v20.l, v0.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.l, v20.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v21, 15, v20
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v20.h, v102.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v18.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v22, -16, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v21, v21, v22, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v18.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v22, -16, v0
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v18, v0, v22, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v20.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v20.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v20.l, v219.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v19, v19, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v18, v18, v20
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v22, -16, v0
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v20.h, v101.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v18, 0, v18, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_dual_cndmask_b32 v0, v0, v22 :: v_dual_mul_f32 v21, v21, v20
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v18, v18
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v0, v0, v20
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v20, v19, 16, 1
	v_cndmask_b32_e64 v0, 0, v0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v20, v19, v20, 0x7fff
	v_bfe_u32 v19, v18, 16, 1
	v_cmp_o_f32_e64 s14, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v19, v18, v19, 0x7fff
	v_cndmask_b32_e64 v18, 0, v21, s0
	v_cndmask_b16 v19.l, 0x7fff, v20.h, vcc_lo
	v_cndmask_b16 v19.h, 0x7fff, v19.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v21, v18, 16, 1
	v_cmp_o_f32_e64 s12, v18, v18
	v_add3_u32 v21, v18, v21, 0x7fff
	v_bfe_u32 v18, v0, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v18, v0, v18, 0x7fff
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v0, v98, 0, 8
	v_mov_b16_e32 v18.l, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v0.l, v18.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v20, 15, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 42 is_stmt 1              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v0, v97, 0, 8
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v22, -16, v20
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v0.h, v219.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v21.l, v0.l
	.loc	1 650 33 is_stmt 1              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v20, v20, v22, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.l, v21.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v22, 15, v21
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v18.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v23, -16, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v22, v22, v23, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v18.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v23, -16, v0
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v23, v0, v23, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v21.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v21.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v24, -16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v0, v0, v24, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v24.h, v100.l
	v_mov_b16_e64 v24.l, v219.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v20, v20, v24
	v_mul_f32_e32 v23, v23, v24
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v24.h, v99.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v20, 0, v20, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v22, v22, v24
	v_mul_f32_e32 v0, v0, v24
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v24, v20, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v0, 0, v0, s1
	v_add3_u32 v24, v20, v24, 0x7fff
	v_cndmask_b32_e64 v20, 0, v23, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s16, v0, v0
	v_cndmask_b16 v18.l, 0x7fff, v24.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v23, v20, 16, 1
	v_cmp_o_f32_e64 s3, v20, v20
	v_add3_u32 v23, v20, v23, 0x7fff
	v_cndmask_b32_e64 v20, 0, v22, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v22, v20, 16, 1
	v_cmp_o_f32_e64 s15, v20, v20
	v_add3_u32 v22, v20, v22, 0x7fff
	v_bfe_u32 v20, v0, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v20, v0, v20, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v21.h, s12
	v_cndmask_b16 v0.h, 0x7fff, v18.h, s14
	v_cndmask_b16 v18.h, 0x7fff, v23.h, s3
	v_cndmask_b16 v20.l, 0x7fff, v22.h, s15
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s16
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s16, v222, v222
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_store_2addr_stride64_b32 v224, v19, v0 offset0:8 offset1:9
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v0, v96, 0, 8
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s15, v221, v221
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_store_2addr_stride64_b32 v224, v18, v20 offset0:10 offset1:11
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v19.l, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v21, 15, v19
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.l, v19.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v22, -16, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v0, v94, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v0.h, v219.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v21, v21, v22, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v22.l, v0.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.l, v22.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v23, 15, v22
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v22.h, v95.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v19.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v24, -16, v23
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v23, v23, v24, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v19.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v24, -16, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v19, v0, v24, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v22.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v22.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v22.l, v219.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v21, v21, v22
	v_mul_f32_e32 v19, v19, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v24, -16, v0
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v22.h, v93.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v21, 0, v21, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v19, 0, v19, s1
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_dual_cndmask_b32 v0, v0, v24 :: v_dual_mul_f32 v23, v23, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_cmp_o_f32_e64 s3, v19, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v0, v0
	v_mul_f32_e32 v0, v0, v22
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v22, v21, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v0, 0, v0, s1
	v_add3_u32 v22, v21, v22, 0x7fff
	v_bfe_u32 v21, v19, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s14, v0, v0
	v_add3_u32 v21, v19, v21, 0x7fff
	v_cndmask_b32_e64 v19, 0, v23, s0
	v_cndmask_b16 v21.l, 0x7fff, v22.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s3
	v_bfe_u32 v23, v19, 16, 1
	v_cmp_o_f32_e64 s12, v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v23, v19, v23, 0x7fff
	v_bfe_u32 v19, v0, 16, 1
	v_add3_u32 v19, v0, v19, 0x7fff
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v0, v40, 0, 8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v19.l, 0x7fff, v23.h, s12
	v_cndmask_b16 v19.h, 0x7fff, v19.h, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v18.l, v0.l
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v20, 15, v18
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.l, v18.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v22, -16, v20
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v0, v39, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v0.h, v219.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v20, v20, v22, vcc_lo
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v22.l, v0.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.l, v22.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v23, 15, v22
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v22.h, v38.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v18.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v24, -16, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v23, v23, v24, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v18.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v24, -16, v0
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v18, v0, v24, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v22.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v22.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v22.l, v219.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v20, v20, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v18, v18, v22
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v24, -16, v0
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v22.h, v37.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v20, 0, v20, s0
	v_cndmask_b32_e64 v18, 0, v18, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_dual_cndmask_b32 v0, v0, v24 :: v_dual_mul_f32 v23, v23, v22
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v24, v188, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s3, v18, v18
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v24, v188, v24, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v0, v0, v22
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v22, v20, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v0, 0, v0, s1
	v_add3_u32 v22, v20, v22, 0x7fff
	v_bfe_u32 v20, v18, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s14, v0, v0
	v_add3_u32 v20, v18, v20, 0x7fff
	v_cndmask_b32_e64 v18, 0, v23, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v23, v18, 16, 1
	v_cmp_o_f32_e64 s12, v18, v18
	v_add3_u32 v23, v18, v23, 0x7fff
	v_bfe_u32 v18, v0, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v18, v0, v18, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v22.h, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v20.h, s3
	v_cndmask_b16 v18.l, 0x7fff, v23.h, s12
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s14
	ds_store_2addr_stride64_b32 v224, v21, v19 offset0:12 offset1:13
	ds_store_2addr_stride64_b32 v224, v0, v18 offset0:14 offset1:15
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v39, v241 offset:512
	ds_load_u16_d16 v40, v241 offset:768
	ds_load_u16_d16 v41, v241 offset:1024
	ds_load_u16_d16 v44, v241 offset:1792
	ds_load_u16_d16 v42, v241 offset:1280
	ds_load_u16_d16 v97, v241 offset:1088
	ds_load_u16_d16 v96, v241 offset:832
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16_hi v97, v241 offset:1216
	ds_load_u16_d16 v38, v241 offset:256
	ds_load_u16_d16 v37, v241
	ds_load_u16_d16 v43, v241 offset:1536
	ds_load_u16_d16_hi v39, v241 offset:640
	ds_load_u16_d16_hi v40, v241 offset:896
	ds_load_u16_d16_hi v41, v241 offset:1152
	ds_load_u16_d16 v98, v241 offset:1344
	ds_load_u16_d16 v77, v241 offset:2816
	ds_load_u16_d16 v78, v241 offset:3072
	ds_load_u16_d16 v84, v241 offset:2624
	ds_load_u16_d16 v83, v241 offset:2368
	ds_load_u16_d16 v74, v241 offset:2048
	ds_load_u16_d16 v75, v241 offset:2304
	ds_load_u16_d16 v76, v241 offset:2560
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v0, v79, 16, 1
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v84, v241 offset:2752
	ds_load_u16_d16_hi v43, v241 offset:1664
	ds_load_u16_d16_hi v44, v241 offset:1920
	ds_load_u16_d16_hi v42, v241 offset:1408
	ds_load_u16_d16 v93, v241 offset:64
	ds_load_u16_d16_hi v38, v241 offset:384
	ds_load_u16_d16 v95, v241 offset:576
	ds_load_u16_d16 v94, v241 offset:320
	ds_load_u16_d16_hi v37, v241 offset:128
	ds_load_u16_d16 v99, v241 offset:1600
	ds_load_u16_d16 v82, v241 offset:2112
	ds_load_u16_d16 v100, v241 offset:1856
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v0, v79, v0, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v224.l, v219.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v93, v241 offset:192
	ds_load_u16_d16_hi v96, v241 offset:960
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v95, v241 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v94, v241 offset:448
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v219.h, 0x7fff, v0.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(7)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[37:44], v[85:92], v[57:64]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v80, v80
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v38.l, v219.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_load_u16_d16_hi v98, v241 offset:1472
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v99, v241 offset:1728
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v100, v241 offset:1984
	ds_load_u16_d16_hi v77, v241 offset:2944
	ds_load_u16_d16_hi v76, v241 offset:2688
	ds_load_u16_d16_hi v75, v241 offset:2432
	ds_load_u16_d16_hi v74, v241 offset:2176
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v0, v79, v219
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v218, v218
	v_bfe_u32 v19, v226, 16, 1
	v_bfe_u32 v22, v222, 16, 1
	v_bfe_u32 v21, v221, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v18, v0, 16, 1
	v_cmp_o_f32_e64 s12, v0, v0
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v19, v226, v19, 0x7fff
	v_bfe_u32 v23, v223, 16, 1
	v_cmp_o_f32_e64 s14, v220, v220
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v37, v0, v18, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v0, v80, 16, 1
	v_add3_u32 v22, v222, v22, 0x7fff
	v_add3_u32 v21, v221, v21, 0x7fff
	v_add3_u32 v23, v223, v23, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[93:100], v[85:92], v[49:56]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v0, v80, v0, 0x7fff
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s16
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s15
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s17
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v21.l, v219.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v38.h, 0x7fff, v0.h, vcc_lo
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v22.l, v219.l
	v_mov_b16_e64 v23.l, v219.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v43.l, v219.l
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v19.l, v219.l
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v18, v80, v38
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	ds_load_u16_d16 v89, v241 offset:3904
	ds_load_u16_d16 v85, v241 offset:2880
	ds_load_u16_d16 v79, v241 offset:3328
	ds_load_u16_d16 v86, v241 offset:3136
	ds_load_u16_d16 v80, v241 offset:3584
	ds_load_u16_d16 v81, v241 offset:3840
	ds_load_u16_d16 v88, v241 offset:3648
	ds_load_u16_d16 v87, v241 offset:3392
	ds_load_u16_d16_hi v83, v241 offset:2496
	ds_load_u16_d16_hi v82, v241 offset:2240
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v89, v241 offset:4032
	ds_load_u16_d16_hi v78, v241 offset:3200
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v85, v241 offset:3008
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v79, v241 offset:3456
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v86, v241 offset:3264
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v0, v18, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v80, v241 offset:3712
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v81, v241 offset:3968
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v88, v241 offset:3776
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v87, v241 offset:3520
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v0, v18, v0, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v18, v218, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_barrier
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.l, 0x7fff, v37.h, s12
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v41.l, v219.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.h, 0x7fff, v0.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v18, v218, v18, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v18.l, v219.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v186, v186
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s3
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v225, v38 offset:512
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v226, v226
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v20, v218, v18
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v112, v18
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v19.h, 0x7fff, v19.h, s3
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v218.l, v219.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[57:64], v[74:81], v[66:73], v[57:64]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v18, v20, 16, 1
	v_cmp_o_f32_e64 s3, v20, v20
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[49:56], v[82:89], v[66:73], v[49:56]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v18, v20, v18, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v20, v220, 16, 1
	v_add3_u32 v20, v220, v20, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v20.l, v219.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s14
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v225, v219
	ds_store_b16_d16_hi v112, v19 offset:512
	ds_store_b16_d16_hi v114, v20
	ds_store_b16_d16_hi v114, v22 offset:512
	ds_store_b16_d16_hi v115, v21
	ds_store_b16_d16_hi v115, v23 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[98:101], v47
	ds_load_b128 v[102:105], v116
	ds_load_b128 v[90:93], v118
	ds_load_b128 v[94:97], v17
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v225, v0
	ds_store_b16_d16_hi v225, v0 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.l, 0x7fff, v18.h, s3
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v18, v186, 16, 1
	v_cmp_o_f32_e64 s3, v188, v188
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v19, v226, v19
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v226.l, v219.l
	v_mov_b16_e64 v225.l, v219.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v18, v186, v18, 0x7fff
	v_cndmask_b16 v248.h, 0x7fff, v24.h, s3
	v_bfe_u32 v24, v172, 16, 1
	v_cmp_o_f32_e64 s3, v172, v172
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s12, v19, v19
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v247.h, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v158, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v158, v158
	v_add3_u32 v24, v172, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v188, v188, v248 :: v_dual_sub_f32 v245, v186, v247
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v18, v158, v18, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v24.l, v219.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v195.h, 0x7fff, v24.h, s3
	v_cndmask_b16 v249.h, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v160, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v160, v160
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v237, v158, v249
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v18, v160, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s16, v237, v237
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v250.h, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v162, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v162, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v243, v160, v250
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v18, v162, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v251.h, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v164, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v164, v164
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v242, v162, v251
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v18, v164, v18, 0x7fff
	v_cndmask_b16 v252.h, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v166, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v166, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v235, v164, v252
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v18, v166, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v253.h, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v168, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v168, v168
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v234, v166, v253
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v18, v168, v18, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v166, v172, v195
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v254.h, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v170, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v170, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v231, v168, v254
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v18, v170, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v194.h, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v174, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v174, v174
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v168, v170, v194
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v18, v174, v18, 0x7fff
	v_cndmask_b16 v196.h, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v176, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v176, v176
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v164, v174, v196
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v18, v176, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v197.h, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v178, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v178, v178
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v162, v176, v197
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v18, v178, v18, 0x7fff
	v_cndmask_b16 v198.h, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v180, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v180, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v160, v178, v198
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v18, v180, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v199.h, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v182, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v182, v182
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v158, v180, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v18, v182, v18, 0x7fff
	v_cndmask_b16 v200.h, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v184, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v184, v184
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v45, v182, v200
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v18, v184, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b16 v201.h, 0x7fff, v18.h, vcc_lo
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v18, v220, v20
	v_dual_sub_f32 v20, v221, v21 :: v_dual_sub_f32 v21, v222, v22
	v_sub_f32_e32 v22, v223, v23
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v40, v184, v201
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v23, v18, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_cmp_o_f32_e64 s3, v20, v20
	v_cmp_o_f32_e64 s14, v21, v21
	v_cmp_o_f32_e64 s15, v22, v22
	v_add3_u32 v23, v18, v23, 0x7fff
	v_bfe_u32 v18, v20, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v23.l, v219.l
	v_mov_b16_e64 v223.l, v219.l
	v_mov_b16_e64 v221.l, v219.l
	v_mov_b16_e64 v222.l, v219.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v18, v20, v18, 0x7fff
	v_bfe_u32 v20, v19, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v220.l, v219.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v20, v19, v20, 0x7fff
	v_bfe_u32 v19, v21, 16, 1
	v_cndmask_b16 v0.h, 0x7fff, v20.h, s12
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v19, v21, v19, 0x7fff
	v_bfe_u32 v21, v22, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v112, v0
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.l, 0x7fff, v23.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v112, v0 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.h, 0x7fff, v19.h, s14
	v_add3_u32 v21, v22, v21, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v154, v154
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v114, v0
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.l, 0x7fff, v18.h, s3
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v114, v0 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.h, 0x7fff, v21.h, s15
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v115, v0
	ds_store_b16_d16_hi v115, v0 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v0, v154, 16, 1
	v_bfe_u32 v18, v142, 16, 1
	v_bfe_u32 v19, v144, 16, 1
	v_bfe_u32 v20, v146, 16, 1
	v_bfe_u32 v21, v148, 16, 1
	v_add3_u32 v0, v154, v0, 0x7fff
	v_add3_u32 v18, v142, v18, 0x7fff
	v_cmp_o_f32_e64 s3, v142, v142
	v_add3_u32 v19, v144, v19, 0x7fff
	v_cmp_o_f32_e64 s12, v144, v144
	v_cndmask_b16 v229.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v156, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v156, v156
	v_add3_u32 v20, v146, v20, 0x7fff
	v_cmp_o_f32_e64 s14, v146, v146
	v_add3_u32 v21, v148, v21, 0x7fff
	v_add3_u32 v0, v156, v0, 0x7fff
	v_cmp_o_f32_e64 s15, v148, v148
	v_cndmask_b16 v232.h, 0x7fff, v18.h, s3
	v_cndmask_b16 v228.h, 0x7fff, v19.h, s12
	v_cndmask_b16 v226.h, 0x7fff, v20.h, s14
	v_cndmask_b16 v233.h, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v224.h, 0x7fff, v21.h, s15
	v_bfe_u32 v0, v150, 16, 1
	v_bfe_u32 v18, v152, 16, 1
	v_bfe_u32 v19, v140, 16, 1
	v_bfe_u32 v20, v138, 16, 1
	v_bfe_u32 v21, v136, 16, 1
	v_add3_u32 v0, v150, v0, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v150, v150
	v_add3_u32 v18, v152, v18, 0x7fff
	v_cmp_o_f32_e64 s3, v152, v152
	v_add3_u32 v19, v140, v19, 0x7fff
	v_cmp_o_f32_e64 s12, v140, v140
	v_add3_u32 v20, v138, v20, 0x7fff
	v_cmp_o_f32_e64 s14, v138, v138
	v_add3_u32 v21, v136, v21, 0x7fff
	v_cmp_o_f32_e64 s15, v136, v136
	v_cndmask_b16 v225.h, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v223.h, 0x7fff, v18.h, s3
	v_cndmask_b16 v222.h, 0x7fff, v19.h, s12
	v_cndmask_b16 v221.h, 0x7fff, v20.h, s14
	v_cndmask_b16 v218.h, 0x7fff, v21.h, s15
	v_bfe_u32 v0, v134, 16, 1
	v_bfe_u32 v18, v132, 16, 1
	v_bfe_u32 v19, v130, 16, 1
	v_bfe_u32 v20, v128, 16, 1
	v_bfe_u32 v21, v126, 16, 1
	v_add3_u32 v0, v134, v0, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v134, v134
	v_add3_u32 v18, v132, v18, 0x7fff
	v_cmp_o_f32_e64 s3, v132, v132
	v_add3_u32 v19, v130, v19, 0x7fff
	v_cmp_o_f32_e64 s12, v130, v130
	v_add3_u32 v20, v128, v20, 0x7fff
	v_cmp_o_f32_e64 s14, v128, v128
	v_add3_u32 v21, v126, v21, 0x7fff
	v_cmp_o_f32_e64 s15, v126, v126
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[209:212], v47
	ds_load_b128 v[213:216], v116
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v220.h, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v48.h, 0x7fff, v18.h, s3
	v_cndmask_b16 v43.h, 0x7fff, v19.h, s12
	v_cndmask_b16 v41.h, 0x7fff, v20.h, s14
	v_cndmask_b16 v38.h, 0x7fff, v21.h, s15
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v254.l, v223.h
	v_mov_b16_e64 v253.l, v225.h
	v_mov_b16_e64 v252.l, v224.h
	v_mov_b16_e64 v251.l, v226.h
	v_mov_b16_e64 v250.l, v228.h
	v_mov_b16_e64 v249.l, v232.h
	v_mov_b16_e64 v248.l, v233.h
	v_mov_b16_e64 v247.l, v229.h
	v_mov_b16_e64 v201.l, v38.h
	v_mov_b16_e64 v200.l, v41.h
	v_mov_b16_e64 v199.l, v43.h
	v_mov_b16_e64 v198.l, v48.h
	v_wmma_f32_16x16x16_bf16 v[9:16], v[247:254], v[98:105], v[9:16]
	v_mov_b16_e64 v197.l, v220.h
	v_mov_b16_e64 v196.l, v218.h
	v_mov_b16_e64 v195.l, v221.h
	v_mov_b16_e64 v194.l, v222.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v0, v187, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v187, v187
	v_bfe_u32 v18, v189, 16, 1
	v_cmp_o_f32_e64 s3, v189, v189
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[194:201], v[90:97], v[9:16]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v187, v0, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v21.l, v219.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v18, v189, v18, 0x7fff
	v_cmp_o_f32_e64 s12, v147, v147
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[247:254], v[209:216], v[9:16]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v247.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v159, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v159, v159
	v_cndmask_b16 v248.h, 0x7fff, v18.h, s3
	v_bfe_u32 v18, v173, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v250.l, v219.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v159, v0, 0x7fff
	v_cmp_o_f32_e64 s3, v173, v173
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v251.l, v219.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v19, v173, v18, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v253.l, v219.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v249.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v161, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v161, v161
	v_cndmask_b16 v19.h, 0x7fff, v19.h, s3
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v252.l, v219.l
	v_mov_b16_e64 v19.l, v219.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v161, v0, 0x7fff
	v_cmp_o_f32_e64 s3, v157, v157
	v_cmp_o_f32_e64 s15, v151, v151
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v254.l, v219.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v47, v173, v19
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v250.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v163, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v163, v163
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v20.l, v219.l
	v_mov_b16_e64 v22.l, v219.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v180, v161, v250
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v0, v163, v0, 0x7fff
	v_bfe_u32 v161, v157, 16, 1
	v_cmp_o_f32_e64 s14, v149, v149
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v249.l, v219.l
	v_mov_b16_e64 v18.l, v219.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v251.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v165, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v165, v165
	v_add3_u32 v161, v157, v161, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v247.l, v219.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v178, v163, v251
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v0, v165, v0, 0x7fff
	v_bfe_u32 v163, v147, 16, 1
	v_cndmask_b16 v173.h, 0x7fff, v161.h, s3
	v_bfe_u32 v161, v145, 16, 1
	v_cmp_o_f32_e64 s3, v145, v145
	v_cndmask_b16 v252.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v167, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v167, v167
	v_add3_u32 v163, v147, v163, 0x7fff
	v_add3_u32 v161, v145, v161, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v176, v165, v252
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v167, v0, 0x7fff
	v_bfe_u32 v165, v149, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v182, v159, v249
	v_sub_f32_e32 v186, v187, v247
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v187, v127, 16, 1
	v_cndmask_b16 v253.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v169, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v169, v169
	v_add3_u32 v165, v149, v165, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v248.l, v219.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v174, v167, v253
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v0, v169, v0, 0x7fff
	v_bfe_u32 v167, v151, 16, 1
	v_add3_u32 v187, v127, v187, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v184, v189, v248
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v248.l, v173.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v254.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v171, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v171, v171
	v_add3_u32 v167, v151, v167, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v173.l, v219.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v172, v169, v254
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v0, v171, v0, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v38, v126, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v18.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v175, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v175, v175
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v159, v171, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v175, v0, 0x7fff
	v_cndmask_b16 v20.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v177, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v177, v177
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v46, v175, v20
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v177, v0, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v175.l, v219.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v21.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v179, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v179, v179
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v44, v177, v21
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v179, v0, 0x7fff
	v_cndmask_b16 v177.h, 0x7fff, v167.h, s15
	v_bfe_u32 v167, v137, 16, 1
	v_cmp_o_f32_e64 s15, v135, v135
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v177.l, v219.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v22.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v181, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v181, v181
	v_add3_u32 v169, v137, v167, 0x7fff
	v_bfe_u32 v167, v135, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v42, v179, v22
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v181, v0, 0x7fff
	v_cndmask_b16 v179.h, 0x7fff, v161.h, s3
	v_cmp_o_f32_e64 s3, v141, v141
	v_bfe_u32 v161, v153, 16, 1
	v_add3_u32 v170, v135, v167, 0x7fff
	v_cndmask_b16 v23.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v183, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v183, v183
	v_add3_u32 v161, v153, v161, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v253.l, v177.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v39, v181, v23
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v183, v0, 0x7fff
	v_cndmask_b16 v181.h, 0x7fff, v163.h, s12
	v_bfe_u32 v163, v141, 16, 1
	v_cmp_o_f32_e64 s12, v139, v139
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v250.l, v179.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v24.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v185, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v185, v185
	v_add3_u32 v163, v141, v163, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v251.l, v181.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v37, v183, v24
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v185, v0, 0x7fff
	v_cndmask_b16 v183.h, 0x7fff, v165.h, s14
	v_cmp_o_f32_e64 s14, v137, v137
	v_cndmask_b16 v167.h, 0x7fff, v163.h, s3
	v_bfe_u32 v165, v139, 16, 1
	v_cndmask_b16 v25.h, 0x7fff, v0.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v155, v155
	v_cndmask_b16 v163.h, 0x7fff, v169.h, s14
	v_bfe_u32 v169, v133, 16, 1
	v_add3_u32 v165, v139, v165, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v185, v25
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v175.h, 0x7fff, v65.h, vcc_lo
	v_bfe_u32 v65, v143, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v143, v143
	v_add3_u32 v171, v133, v169, 0x7fff
	v_bfe_u32 v169, v131, 16, 1
	v_cndmask_b16 v165.h, 0x7fff, v165.h, s12
	v_add3_u32 v65, v143, v65, 0x7fff
	v_cmp_o_f32_e64 s3, v131, v131
	v_cmp_o_f32_e64 s12, v129, v129
	v_cmp_o_f32_e64 s14, v127, v127
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v252.l, v183.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v65.h, 0x7fff, v65.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v153, v153
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v247.l, v175.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v219.h, 0x7fff, v187.h, s14
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v20.l, v163.h
	v_mov_b16_e64 v249.l, v65.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v185.h, 0x7fff, v161.h, vcc_lo
	v_cndmask_b16 v161.h, 0x7fff, v170.h, s15
	v_add3_u32 v170, v131, v169, 0x7fff
	v_bfe_u32 v169, v129, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v133, v133
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v254.l, v185.h
	v_mov_b16_e64 v25.l, v219.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v170.h, 0x7fff, v170.h, s3
	v_add3_u32 v169, v129, v169, 0x7fff
	v_cndmask_b16 v171.h, 0x7fff, v171.h, vcc_lo
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[247:254], v[98:105], v[1:8]
	v_mov_b16_e64 v21.l, v161.h
	v_mov_b16_e64 v23.l, v170.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v169.h, 0x7fff, v169.h, s12
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v22.l, v171.h
	v_mov_b16_e64 v19.l, v165.h
	v_mov_b16_e64 v18.l, v167.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v188, v188
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v24.l, v169.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v245, v245
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v65.l, v219.l
	v_mov_b16_e64 v179.l, v219.l
	v_mov_b16_e64 v181.l, v219.l
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[18:25], v[90:97], v[1:8]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v183.l, v219.l
	v_mov_b16_e64 v185.l, v219.l
	v_mov_b16_e64 v167.l, v219.l
	v_mov_b16_e64 v165.l, v219.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[247:254], v[209:216], v[1:8]
	ds_load_b128 v[209:212], v118
	ds_load_b128 v[213:216], v17
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v171.l, v219.l
	v_mov_b16_e64 v163.l, v219.l
	v_mov_b16_e64 v169.l, v219.l
	v_mov_b16_e64 v170.l, v219.l
	v_mov_b16_e64 v161.l, v219.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[18:25], v[209:216], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v20, v156, v233
	v_sub_f32_e32 v22, v142, v232
	v_dual_sub_f32 v18, v154, v229 :: v_dual_sub_f32 v25, v148, v224
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[194:201], v[209:216], v[9:16]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v21, v20, 16, 1
	v_bfe_u32 v23, v22, 16, 1
	v_cmp_o_f32_e64 s12, v20, v20
	v_bfe_u32 v19, v18, 16, 1
	v_cmp_o_f32_e64 s15, v22, v22
	v_add3_u32 v21, v20, v21, 0x7fff
	v_bfe_u32 v20, v188, 16, 1
	v_add3_u32 v23, v22, v23, 0x7fff
	v_bfe_u32 v22, v237, 16, 1
	v_add3_u32 v19, v18, v19, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_add3_u32 v20, v188, v20, 0x7fff
	v_bfe_u32 v18, v245, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v23.h, s15
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v146, v226
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v22, v237, v22, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v21.h, s12
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v21, v144, v228
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v18, v245, v18, 0x7fff
	v_bfe_u32 v24, v23, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v19.h, vcc_lo
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s14
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s16
	v_bfe_u32 v22, v21, 16, 1
	v_bfe_u32 v142, v25, 16, 1
	v_add3_u32 v24, v23, v24, 0x7fff
	v_cmp_o_f32_e64 s12, v23, v23
	v_bfe_u32 v23, v242, 16, 1
	v_add3_u32 v22, v21, v22, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_bfe_u32 v21, v243, 16, 1
	v_add3_u32 v142, v25, v142, 0x7fff
	v_cmp_o_f32_e64 s15, v25, v25
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v25, v150, v225 :: v_dual_sub_f32 v144, v152, v223
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v23, v242, v23, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s3
	v_add3_u32 v21, v243, v21, 0x7fff
	v_cmp_o_f32_e64 s3, v243, v243
	v_cmp_o_f32_e64 s14, v242, v242
	v_cndmask_b16 v23.l, 0x7fff, v142.h, s15
	v_bfe_u32 v142, v25, 16, 1
	v_bfe_u32 v146, v144, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v22.h, vcc_lo
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s3
	v_cndmask_b16 v22.l, 0x7fff, v24.h, s12
	v_cndmask_b16 v22.h, 0x7fff, v23.h, s14
	v_bfe_u32 v24, v235, 16, 1
	v_add3_u32 v142, v25, v142, 0x7fff
	v_cmp_o_f32_e64 s3, v25, v25
	v_bfe_u32 v25, v234, 16, 1
	v_add3_u32 v146, v144, v146, 0x7fff
	v_cmp_o_f32_e64 s14, v144, v144
	v_bfe_u32 v144, v231, 16, 1
	v_add3_u32 v24, v235, v24, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v235, v235
	v_add3_u32 v25, v234, v25, 0x7fff
	v_cmp_o_f32_e64 s12, v234, v234
	v_add3_u32 v144, v231, v144, 0x7fff
	v_cmp_o_f32_e64 s15, v231, v231
	v_cndmask_b16 v23.h, 0x7fff, v24.h, vcc_lo
	v_cndmask_b16 v24.l, 0x7fff, v142.h, s3
	v_cndmask_b16 v24.h, 0x7fff, v25.h, s12
	v_cndmask_b16 v25.l, 0x7fff, v146.h, s14
	v_cndmask_b16 v25.h, 0x7fff, v144.h, s15
	v_cmp_o_f32_e64 s3, v186, v186
	v_cmp_o_f32_e64 s14, v184, v184
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[18:25], v[98:105], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v155, v175
	v_sub_f32_e32 v20, v143, v65
	v_sub_f32_e32 v19, v157, v173
	v_dual_sub_f32 v21, v145, v179 :: v_dual_sub_f32 v22, v147, v181
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v65, v18, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_bfe_u32 v142, v19, 16, 1
	v_cmp_o_f32_e64 s12, v19, v19
	v_bfe_u32 v143, v22, 16, 1
	v_add3_u32 v65, v18, v65, 0x7fff
	v_bfe_u32 v18, v186, 16, 1
	v_add3_u32 v142, v19, v142, 0x7fff
	v_bfe_u32 v19, v184, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v23, v149, v183 :: v_dual_sub_f32 v24, v151, v177
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v18, v186, v18, 0x7fff
	v_cndmask_b16 v18.l, 0x7fff, v65.h, vcc_lo
	v_bfe_u32 v65, v20, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_add3_u32 v19, v184, v19, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v142.h, s12
	v_bfe_u32 v142, v21, 16, 1
	v_add3_u32 v65, v20, v65, 0x7fff
	v_bfe_u32 v20, v182, 16, 1
	v_cmp_o_f32_e64 s12, v21, v21
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v25, v153, v185
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v142, v21, v142, 0x7fff
	v_bfe_u32 v21, v180, 16, 1
	v_add3_u32 v20, v182, v20, 0x7fff
	v_cndmask_b16 v20.l, 0x7fff, v65.h, vcc_lo
	v_bfe_u32 v65, v178, 16, 1
	v_add3_u32 v143, v22, v143, 0x7fff
	v_cmp_o_f32_e64 s15, v22, v22
	v_cmp_o_f32_e32 vcc_lo, v178, v178
	v_add3_u32 v21, v180, v21, 0x7fff
	v_add3_u32 v65, v178, v65, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s3
	v_cmp_o_f32_e64 s3, v182, v182
	v_cndmask_b16 v21.l, 0x7fff, v142.h, s12
	v_bfe_u32 v142, v23, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v19.h, s14
	v_cmp_o_f32_e64 s14, v180, v180
	v_cndmask_b16 v22.l, 0x7fff, v143.h, s15
	v_bfe_u32 v143, v24, 16, 1
	v_cndmask_b16 v22.h, 0x7fff, v65.h, vcc_lo
	v_bfe_u32 v65, v25, 16, 1
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s3
	v_add3_u32 v142, v23, v142, 0x7fff
	v_cmp_o_f32_e64 s3, v23, v23
	v_bfe_u32 v23, v176, 16, 1
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s14
	v_add3_u32 v143, v24, v143, 0x7fff
	v_cmp_o_f32_e64 s14, v24, v24
	v_bfe_u32 v24, v174, 16, 1
	v_add3_u32 v65, v25, v65, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_bfe_u32 v25, v172, 16, 1
	v_add3_u32 v23, v176, v23, 0x7fff
	v_cmp_o_f32_e64 s12, v176, v176
	v_add3_u32 v24, v174, v24, 0x7fff
	v_cmp_o_f32_e64 s15, v174, v174
	v_cndmask_b16 v23.l, 0x7fff, v142.h, s3
	v_add3_u32 v25, v172, v25, 0x7fff
	v_cmp_o_f32_e64 s3, v172, v172
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s12
	v_cndmask_b16 v24.l, 0x7fff, v143.h, s14
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s15
	v_cndmask_b16 v25.l, 0x7fff, v65.h, vcc_lo
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s3
	v_cmp_o_f32_e64 s3, v168, v168
	v_cmp_o_f32_e64 s14, v166, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[18:25], v[98:105], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v20, v138, v221
	v_sub_f32_e32 v18, v140, v222
	v_sub_f32_e32 v22, v136, v218
	v_sub_f32_e32 v24, v132, v48
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v21, v20, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_bfe_u32 v19, v18, 16, 1
	v_bfe_u32 v23, v22, 16, 1
	v_cmp_o_f32_e64 s12, v20, v20
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_add3_u32 v21, v20, v21, 0x7fff
	v_bfe_u32 v20, v166, 16, 1
	v_add3_u32 v19, v18, v19, 0x7fff
	v_bfe_u32 v18, v168, 16, 1
	v_add3_u32 v23, v22, v23, 0x7fff
	v_cmp_o_f32_e64 s15, v22, v22
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v22, v134, v220
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v20, v166, v20, 0x7fff
	v_add3_u32 v18, v168, v18, 0x7fff
	v_bfe_u32 v25, v24, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v23.h, s15
	v_bfe_u32 v23, v22, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v21.h, s12
	v_bfe_u32 v21, v164, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v19.h, vcc_lo
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s3
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s14
	v_add3_u32 v23, v22, v23, 0x7fff
	v_cmp_o_f32_e64 s3, v22, v22
	v_bfe_u32 v22, v162, 16, 1
	v_add3_u32 v25, v24, v25, 0x7fff
	v_cmp_o_f32_e64 s14, v24, v24
	v_bfe_u32 v24, v160, 16, 1
	v_add3_u32 v21, v164, v21, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v164, v164
	v_add3_u32 v22, v162, v22, 0x7fff
	v_cmp_o_f32_e64 s12, v162, v162
	v_add3_u32 v24, v160, v24, 0x7fff
	v_cmp_o_f32_e64 s15, v160, v160
	v_cndmask_b16 v21.l, 0x7fff, v23.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v130, v43
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v20.h, 0x7fff, v21.h, vcc_lo
	v_cndmask_b16 v21.h, 0x7fff, v22.h, s12
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s15
	v_cndmask_b16 v22.l, 0x7fff, v25.h, s14
	v_bfe_u32 v24, v23, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v25, v128, v41
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	v_bfe_u32 v43, v38, 16, 1
	v_cmp_o_f32_e64 s3, v158, v158
	v_add3_u32 v24, v23, v24, 0x7fff
	v_bfe_u32 v23, v158, 16, 1
	v_bfe_u32 v41, v25, 16, 1
	v_cmp_o_f32_e64 s12, v25, v25
	v_cmp_o_f32_e64 s14, v45, v45
	v_add3_u32 v43, v38, v43, 0x7fff
	v_add3_u32 v23, v158, v23, 0x7fff
	v_add3_u32 v41, v25, v41, 0x7fff
	v_bfe_u32 v25, v45, 16, 1
	v_cndmask_b16 v23.l, 0x7fff, v24.h, vcc_lo
	v_bfe_u32 v24, v40, 16, 1
	v_cmp_o_f32_e64 s15, v38, v38
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	v_add3_u32 v25, v45, v25, 0x7fff
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s3
	v_add3_u32 v38, v40, v24, 0x7fff
	v_cndmask_b16 v24.l, 0x7fff, v41.h, s12
	v_cndmask_b16 v25.l, 0x7fff, v43.h, s15
	v_cndmask_b16 v24.h, 0x7fff, v25.h, s14
	v_cmp_o_f32_e64 s3, v159, v159
	v_cndmask_b16 v25.h, 0x7fff, v38.h, vcc_lo
	v_cmp_o_f32_e64 s15, v44, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[18:25], v[90:97], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v18, v141, v167 :: v_dual_sub_f32 v19, v139, v165
	v_sub_f32_e32 v22, v133, v171
	v_sub_f32_e32 v20, v137, v163
	v_sub_f32_e32 v24, v129, v169
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v38, v18, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_bfe_u32 v40, v19, 16, 1
	v_cmp_o_f32_e64 s12, v19, v19
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v131, v170
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v38, v18, v38, 0x7fff
	v_bfe_u32 v18, v159, 16, 1
	v_add3_u32 v40, v19, v40, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v21, v135, v161
	v_sub_f32_e32 v25, v127, v219
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v18, v159, v18, 0x7fff
	v_cndmask_b16 v18.l, 0x7fff, v38.h, vcc_lo
	v_bfe_u32 v38, v47, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	v_cndmask_b16 v19.l, 0x7fff, v40.h, s12
	v_bfe_u32 v40, v20, 16, 1
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s3
	v_add3_u32 v38, v47, v38, 0x7fff
	v_cmp_o_f32_e64 s3, v20, v20
	v_cmp_o_f32_e64 s12, v46, v46
	v_add3_u32 v40, v20, v40, 0x7fff
	v_bfe_u32 v20, v46, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v38.h, vcc_lo
	v_bfe_u32 v38, v22, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_bfe_u32 v41, v21, 16, 1
	v_add3_u32 v20, v46, v20, 0x7fff
	v_cndmask_b16 v20.l, 0x7fff, v40.h, s3
	v_add3_u32 v38, v22, v38, 0x7fff
	v_bfe_u32 v22, v42, 16, 1
	v_bfe_u32 v40, v23, 16, 1
	v_cmp_o_f32_e64 s3, v42, v42
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s12
	v_cmp_o_f32_e64 s12, v23, v23
	v_add3_u32 v22, v42, v22, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v38.h, vcc_lo
	v_bfe_u32 v38, v24, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_add3_u32 v40, v23, v40, 0x7fff
	v_bfe_u32 v23, v39, 16, 1
	v_add3_u32 v41, v21, v41, 0x7fff
	v_add3_u32 v38, v24, v38, 0x7fff
	v_bfe_u32 v24, v37, 16, 1
	v_cmp_o_f32_e64 s14, v21, v21
	v_bfe_u32 v21, v44, 16, 1
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s3
	v_cmp_o_f32_e64 s3, v37, v37
	v_add3_u32 v24, v37, v24, 0x7fff
	v_bfe_u32 v37, v25, 16, 1
	v_add3_u32 v23, v39, v23, 0x7fff
	v_add3_u32 v21, v44, v21, 0x7fff
	v_cndmask_b16 v23.l, 0x7fff, v40.h, s12
	v_cmp_o_f32_e64 s12, v25, v25
	v_add3_u32 v37, v25, v37, 0x7fff
	v_bfe_u32 v25, v0, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v41.h, s14
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s15
	v_cmp_o_f32_e64 s14, v39, v39
	v_cmp_o_f32_e64 s15, v0, v0
	v_add3_u32 v25, v0, v25, 0x7fff
	v_cndmask_b16 v24.l, 0x7fff, v38.h, vcc_lo
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s3
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s14
	v_cndmask_b16 v25.l, 0x7fff, v37.h, s12
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[18:25], v[90:97], v[1:8]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v20, off, off
	scratch_load_b32 v21, off, off offset:4
	scratch_load_b32 v22, off, off offset:8
	scratch_load_b32 v23, off, off offset:12
	scratch_load_b32 v24, off, off offset:16
	scratch_load_b32 v25, off, off offset:20
	scratch_load_b32 v37, off, off offset:24
	scratch_load_b32 v38, off, off offset:28
	.loc	1 616 25 is_stmt 1              ; attention_backward.py:616:25
	s_add_i32 s46, s75, s74
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v43, s75, v35
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_mul_i32 s27, s46, s34
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_dual_mov_b32 v247, v246 :: v_dual_add_nc_u32 v44, s27, v106
	v_mov_b32_e32 v253, v246
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s26, s30, v43
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_clause 0x2                            ; 20-byte Folded Reload
	scratch_load_b32 v43, off, off offset:32
	scratch_load_b64 v[47:48], off, off offset:40
	scratch_load_b64 v[65:66], off, off offset:52
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v248, v246
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v39, s46, v27, 1
	v_add_lshl_u32 v40, s46, v29, 1
	v_add_lshl_u32 v41, s46, v30, 1
	.loc	1 624 25                        ; attention_backward.py:624:25
	v_add_nc_u32_e32 v81, s46, v36
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v42, s46, v31, 1
	v_add_lshl_u32 v45, s46, v32, 1
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_clause 0x2                            ; 20-byte Folded Reload
	scratch_load_b32 v48, off, off offset:48
	scratch_load_b64 v[67:68], off, off offset:60
	scratch_load_b64 v[70:71], off, off offset:68
	s_waitcnt vmcnt(1)
	v_lshl_add_u32 v68, s34, 4, v106
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v250, v246
	v_mov_b32_e32 v249, v246
	v_mov_b32_e32 v252, v246
	v_mov_b32_e32 v251, v246
	v_dual_mov_b32 v73, v246 :: v_dual_mov_b32 v74, v247
	v_mov_b32_e32 v75, v248
	v_mov_b32_e32 v77, v250
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v79, v252 :: v_dual_mov_b32 v78, v251
	v_mov_b32_e32 v76, v249
	v_mov_b32_e32 v80, v253
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s75, v20
	v_or_b32_e32 v18, s75, v21
	v_or_b32_e32 v19, s75, v22
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v20, s46, v20, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s30, v0
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v0, s46, v21, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s3, s30, v18
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v18, s75, v23
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s12, s30, v19
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v19, s75, v24
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v21, s46, v22, 1
	v_cndmask_b32_e64 v46, 0x80000000, v0, s3
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b32 v0, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s14, s30, v18
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v18, s75, v25
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s15, s30, v19
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v19, s75, v37
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_add_nc_u32_e32 v43, s27, v43
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s16, s30, v18
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v18, s75, v38
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_add_nc_u32_e32 v47, s27, v47
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s3
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s17, s30, v19
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v19, s75, v26
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s12
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s18, s30, v18
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v18, s75, v27
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_add_nc_u32_e32 v48, s27, v48
	v_add_nc_u32_e32 v65, s27, v65
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s19, s30, v19
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v19, s75, v29
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s20, s30, v18
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v18, s75, v30
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_add_nc_u32_e32 v67, s27, v67
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v22, s46, v23, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s21, s30, v19
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v19, s75, v31
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s22, s30, v18
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v18, s75, v32
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v23, s46, v24, 1
	v_add_lshl_u32 v24, s46, v25, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s23, s30, v19
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v69, 0x80000000, v41, s22
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v41, s27, v70
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v19, s75, v34
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s24, s30, v18
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v25, s46, v37, 1
	v_add_lshl_u32 v37, s46, v38, 1
	v_add_lshl_u32 v38, s46, v26, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s25, s30, v19
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v18, s46, v34, 1
	v_add_lshl_u32 v19, s46, v35, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s12
	v_cndmask_b32_e64 v37, 0x80000000, v37, s18
	v_cndmask_b32_e64 v38, 0x80000000, v38, s19
	v_cndmask_b32_e64 v42, 0x80000000, v42, s23
	v_cndmask_b32_e64 v45, 0x80000000, v45, s24
	v_cndmask_b32_e64 v18, 0x80000000, v18, s25
	v_cndmask_b32_e64 v22, 0x80000000, v22, s14
	v_cndmask_b32_e64 v23, 0x80000000, v23, s15
	v_cndmask_b32_e64 v24, 0x80000000, v24, s16
	v_cndmask_b32_e64 v25, 0x80000000, v25, s17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s26
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s14
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v66, 0x80000000, v48, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s16
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	s_clause 0x5
	buffer_load_u8 v91, v44, s[52:55], 0 offen
	buffer_load_u8 v92, v43, s[52:55], 0 offen
	buffer_load_u8 v48, v0, s[52:55], 0 offen
	buffer_load_u8 v47, v47, s[52:55], 0 offen
	buffer_load_u8 v44, v66, s[52:55], 0 offen
	buffer_load_u8 v43, v65, s[52:55], 0 offen
	v_add_nc_u32_e32 v0, s27, v68
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s17
	v_add_nc_u32_e32 v66, s27, v119
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v65, 0x80000000, v67, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s19
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v67, 0x80000000, v39, s20
	v_add_nc_u32_e32 v39, s27, v120
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s20
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v68, 0x80000000, v40, s21
	v_add_nc_u32_e32 v40, s27, v121
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s21
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s22
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s18
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_clause 0x3
	buffer_load_u8 v104, v0, s[52:55], 0 offen
	buffer_load_u8 v103, v66, s[52:55], 0 offen
	buffer_load_u8 v98, v39, s[52:55], 0 offen
	buffer_load_u8 v97, v40, s[52:55], 0 offen
	v_cndmask_b32_e32 v70, 0x80000000, v41, vcc_lo
	v_add_nc_u32_e32 v41, s27, v122
	v_add_nc_u32_e32 v0, s27, v123
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s23
	v_add_nc_u32_e32 v40, s27, v124
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v39, 0x80000000, v41, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s24
	v_add_nc_u32_e32 v41, s27, v125
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s25
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s26
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v66, 0x80000000, v41, vcc_lo
	s_clause 0x5
	buffer_load_u8 v96, v39, s[52:55], 0 offen
	buffer_load_u8 v94, v0, s[52:55], 0 offen
	buffer_load_u8 v41, v65, s[52:55], 0 offen
	buffer_load_u8 v0, v70, s[52:55], 0 offen
	buffer_load_u8 v40, v40, s[52:55], 0 offen
	buffer_load_u8 v39, v66, s[52:55], 0 offen
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v65, s75, v36
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v66, 1, v81
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_and_not1_b32 vcc_lo, exec_lo, s67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s12, s30, v65
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v66, 0x80000000, v66, s12
	s_clause 0x10
	buffer_load_u16 v105, v37, s[56:59], 0 offen
	buffer_load_u16 v102, v38, s[56:59], 0 offen
	buffer_load_u16 v101, v67, s[56:59], 0 offen
	buffer_load_u16 v100, v68, s[56:59], 0 offen
	buffer_load_u16 v99, v69, s[56:59], 0 offen
	buffer_load_u16 v95, v42, s[56:59], 0 offen
	buffer_load_u16 v93, v45, s[56:59], 0 offen
	buffer_load_u16 v38, v18, s[56:59], 0 offen
	buffer_load_u16 v37, v19, s[56:59], 0 offen
	buffer_load_u16 v220, v20, s[56:59], 0 offen
	buffer_load_u16 v221, v46, s[56:59], 0 offen
	buffer_load_u16 v90, v21, s[56:59], 0 offen
	buffer_load_u16 v89, v22, s[56:59], 0 offen
	buffer_load_u16 v46, v23, s[56:59], 0 offen
	buffer_load_u16 v45, v24, s[56:59], 0 offen
	buffer_load_u16 v42, v25, s[56:59], 0 offen
	buffer_load_u16 v226, v66, s[56:59], 0 offen
	.loc	1 615 36                        ; attention_backward.py:615:36
	scratch_load_b32 v18, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s81, s4, s12
	s_and_b32 s80, s5, s12
	s_and_b32 s79, s6, s12
	s_and_b32 s78, s7, s12
	s_and_b32 s77, s8, s12
	s_and_b32 s76, s9, s12
	s_and_b32 s59, s10, s12
	s_and_b32 s58, s11, s12
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt vmcnt(33)
	ds_store_b8 v202, v91
	s_waitcnt vmcnt(32)
	ds_store_b8 v202, v92 offset:64
	s_waitcnt vmcnt(27)
	ds_store_b8 v202, v104 offset:512
	s_waitcnt vmcnt(26)
	ds_store_b8 v202, v103 offset:576
	ds_store_b8 v203, v48
	ds_store_b8 v203, v47 offset:64
	s_waitcnt vmcnt(25)
	ds_store_b8 v203, v98 offset:512
	s_waitcnt vmcnt(24)
	ds_store_b8 v203, v97 offset:576
	ds_store_b8 v204, v44
	ds_store_b8 v204, v43 offset:64
	s_waitcnt vmcnt(23)
	ds_store_b8 v204, v96 offset:512
	s_waitcnt vmcnt(22)
	ds_store_b8 v204, v94 offset:576
	s_waitcnt vmcnt(21)
	ds_store_b8 v205, v41
	s_waitcnt vmcnt(20)
	ds_store_b8 v205, v0 offset:64
	s_waitcnt vmcnt(19)
	ds_store_b8 v205, v40 offset:512
	s_waitcnt vmcnt(18)
	ds_store_b8 v205, v39 offset:576
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 20-byte Folded Reload
	scratch_load_b32 v20, off, off offset:300
	scratch_load_b64 v[66:67], off, off offset:80
	scratch_load_b32 v22, off, off offset:304
	scratch_load_b32 v24, off, off offset:312
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v18, 0, v18
	ds_load_b64 v[18:19], v18
	s_waitcnt vmcnt(3)
	ds_load_b64 v[20:21], v20
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(2) lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[66:67], v[18:19], v[73:80] neg_lo:[1,1,0]
	scratch_load_b64 v[18:19], off, off offset:88 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt vmcnt(2)
	ds_load_b64 v[22:23], v22
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v66, s39, v65
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[18:19], v[20:21], v[73:80] neg_lo:[1,1,0]
	scratch_load_b64 v[18:19], off, off offset:96 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_load_b64 v[24:25], v24
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[18:19], v[22:23], v[73:80] neg_lo:[1,1,0]
	scratch_load_b64 v[18:19], off, off offset:104 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[18:19], v[24:25], v[73:80] neg_lo:[1,1,0]
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_or_b32_e32 v18, 2, v208
	v_cmp_le_i32_e32 vcc_lo, v208, v66
	s_and_not1_b32 s21, s81, exec_lo
	s_and_not1_b32 s22, s80, exec_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_le_i32_e64 s3, v18, v66
	v_or_b32_e32 v18, 4, v208
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s20, s81, vcc_lo
	s_and_b32 s20, s20, exec_lo
	s_and_b32 s3, s80, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s14, v18, v66
	v_or_b32_e32 v18, 6, v208
	s_and_b32 s3, s3, exec_lo
	s_or_b32 s81, s21, s20
	s_or_b32 s80, s22, s3
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s14, s79, s14
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s15, v18, v66
	v_or_b32_e32 v18, 8, v208
	s_and_not1_b32 s3, s79, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_not1_b32 s20, s78, exec_lo
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s15, s78, s15
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s16, v18, v66
	v_or_b32_e32 v18, 10, v208
	s_and_b32 s15, s15, exec_lo
	s_or_b32 s79, s3, s14
	s_or_b32 s78, s20, s15
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s16, s77, s16
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s17, v18, v66
	v_or_b32_e32 v18, 12, v208
	s_and_not1_b32 s3, s77, exec_lo
	s_and_b32 s14, s16, exec_lo
	s_and_not1_b32 s15, s76, exec_lo
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s17, s76, s17
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s18, v18, v66
	v_or_b32_e32 v18, 14, v208
	s_and_b32 s16, s17, exec_lo
	s_or_b32 s77, s3, s14
	s_or_b32 s76, s15, s16
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s18, s59, s18
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s19, v18, v66
	s_and_not1_b32 s3, s59, exec_lo
	s_and_b32 s14, s18, exec_lo
	s_and_not1_b32 s15, s58, exec_lo
	s_or_b32 s59, s3, s14
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s19, s58, s19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s16, s19, exec_lo
	s_or_b32 s58, s15, s16
.LBB0_10:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 677 17 is_stmt 1              ; attention_backward.py:677:17
	s_and_not1_b32 vcc_lo, exec_lo, s66
	s_cbranch_vccnz .LBB0_7
; %bb.11:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v18, s37, v66
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v19, s38, v66
	v_or_b32_e32 v20, 2, v208
	v_or_b32_e32 v21, 4, v208
	v_or_b32_e32 v22, 6, v208
	v_or_b32_e32 v23, 8, v208
	v_or_b32_e32 v24, 10, v208
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v208, v18
	v_cmp_ge_i32_e64 s3, v20, v18
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s20, v208, v19
	v_cmp_le_i32_e64 s21, v20, v19
	v_or_b32_e32 v25, 12, v208
	v_or_b32_e32 v65, 14, v208
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s14, v21, v18
	v_cmp_ge_i32_e64 s15, v22, v18
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s22, v21, v19
	v_cmp_le_i32_e64 s23, v22, v19
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s16, v23, v18
	v_cmp_ge_i32_e64 s17, v24, v18
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s24, v23, v19
	v_cmp_le_i32_e64 s25, v24, v19
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s20, vcc_lo, s20
	s_and_b32 s3, s3, s21
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s18, v25, v18
	v_cmp_ge_i32_e64 s19, v65, v18
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s26, v25, v19
	v_cmp_le_i32_e64 s27, v65, v19
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s20, s20, s81
	s_and_b32 s3, s3, s80
	s_and_b32 s14, s14, s22
	s_and_b32 s15, s15, s23
	s_and_b32 s14, s14, s79
	s_and_b32 s15, s15, s78
	s_and_b32 s16, s16, s24
	s_and_b32 s17, s17, s25
	s_and_not1_b32 s21, s81, exec_lo
	s_and_b32 s20, s20, exec_lo
	s_and_not1_b32 s22, s80, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s16, s16, s77
	s_and_b32 s17, s17, s76
	s_and_b32 s18, s18, s26
	s_and_b32 s19, s19, s27
	s_or_b32 s81, s21, s20
	s_or_b32 s80, s22, s3
	s_and_not1_b32 s3, s79, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_not1_b32 s20, s78, exec_lo
	s_and_b32 s15, s15, exec_lo
	s_and_b32 s18, s18, s59
	s_and_b32 s19, s19, s58
	s_or_b32 s79, s3, s14
	s_or_b32 s78, s20, s15
	s_and_not1_b32 s3, s77, exec_lo
	s_and_b32 s14, s16, exec_lo
	s_and_not1_b32 s15, s76, exec_lo
	s_and_b32 s16, s17, exec_lo
	s_or_b32 s77, s3, s14
	s_or_b32 s76, s15, s16
	s_and_not1_b32 s3, s59, exec_lo
	s_and_b32 s14, s18, exec_lo
	s_and_not1_b32 s15, s58, exec_lo
	s_and_b32 s16, s19, exec_lo
	s_or_b32 s59, s3, s14
	s_or_b32 s58, s15, s16
	s_branch .LBB0_7
.LBB0_12:                               ; %Flow358
	.loc	1 0 21                          ; attention_backward.py:0:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:464
	scratch_load_b32 v33, off, off offset:468
	v_readlane_b32 s44, v255, 0
	v_readlane_b32 s45, v255, 1
	v_readlane_b32 s46, v255, 2
	v_readlane_b32 s47, v255, 3
	s_branch .LBB0_14
.LBB0_13:
	s_waitcnt vmcnt(4)
	v_mov_b32_e32 v8, 0
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	s_waitcnt vmcnt(2)
	v_mov_b32_e32 v6, v8
	s_waitcnt vmcnt(1)
	v_mov_b32_e32 v5, v8
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v56, v8
	v_mov_b32_e32 v55, v8
	v_mov_b32_e32 v54, v8
	v_mov_b32_e32 v53, v8
	v_mov_b32_e32 v52, v8
	v_mov_b32_e32 v51, v8
	v_mov_b32_e32 v50, v8
	v_mov_b32_e32 v49, v8
	v_mov_b32_e32 v64, v8
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v62, v8
	v_mov_b32_e32 v61, v8
	v_mov_b32_e32 v60, v8
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v58, v8
	v_mov_b32_e32 v57, v8
.LBB0_14:                               ; %._crit_edge88
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	scratch_load_b32 v17, off, off offset:460 ; 4-byte Folded Reload
	.loc	1 753 13                        ; attention_backward.py:753:13
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v32, s41, v37
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s64, v37
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s37, s45, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v32, v32, s68
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s31, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_mov_b32 s36, s44
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v37, s35, v37
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, v17, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v31, 2, v17
	v_or_b32_e32 v30, 4, v17
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s16, s68, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v33, v32, v17, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v29, 6, v17
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s17, s68, v31
	v_cmp_gt_i32_e64 s18, s68, v30
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v34, v32, v31, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s16
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v35, v32, v30, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s17
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v28, 8, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v34, 0x80000000, v34, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s18
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v27, 10, v17
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s19, s68, v29
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v35, 0x80000000, v35, s16
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v26, 12, v17
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s20, s68, v28
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v57, v33, s[36:39], 0 offen
	v_add_lshl_u32 v33, v32, v29, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s21, s68, v27
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v58, v34, s[36:39], 0 offen
	buffer_store_b32 v59, v35, s[36:39], 0 offen
	v_add_lshl_u32 v34, v32, v28, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s19
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v25, 14, v17
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s22, s68, v26
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v35, v32, v27, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s20
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v24, 32, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v36, v32, v26, 2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s21
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v23, 34, v17
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s23, s68, v25
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v35, 0x80000000, v35, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s22
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v22, 36, v17
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s24, s68, v24
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v36, 0x80000000, v36, s17
	s_clause 0x1
	buffer_store_b32 v60, v33, s[36:39], 0 offen
	buffer_store_b32 v61, v34, s[36:39], 0 offen
	v_add_lshl_u32 v33, v32, v25, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s25, s68, v23
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v34, v32, v24, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s23
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v21, 38, v17
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s26, s68, v22
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v62, v35, s[36:39], 0 offen
	buffer_store_b32 v63, v36, s[36:39], 0 offen
	v_add_lshl_u32 v35, v32, v23, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s24
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v20, 40, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v36, v32, v22, 2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s25
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v19, 42, v17
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s27, s68, v21
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v35, 0x80000000, v35, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s26
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v0, 46, v17
	v_or_b32_e32 v18, 44, v17
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s28, s68, v20
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v36, 0x80000000, v36, s17
	s_clause 0x1
	buffer_store_b32 v64, v33, s[36:39], 0 offen
	buffer_store_b32 v49, v34, s[36:39], 0 offen
	v_add_lshl_u32 v33, v32, v21, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s29, s68, v19
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v34, v32, v20, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s27
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s0, s35, v0
	v_cmp_gt_i32_e64 s1, s35, v18
	v_cmp_gt_i32_e64 s2, s35, v19
	v_cmp_gt_i32_e64 s3, s35, v20
	v_cmp_gt_i32_e64 s4, s35, v21
	v_cmp_gt_i32_e64 s5, s35, v22
	v_cmp_gt_i32_e64 s6, s35, v23
	v_cmp_gt_i32_e64 s7, s35, v24
	v_cmp_gt_i32_e64 s8, s35, v25
	v_cmp_gt_i32_e64 s9, s35, v26
	v_cmp_gt_i32_e64 s10, s35, v27
	v_cmp_gt_i32_e64 s11, s35, v28
	v_cmp_gt_i32_e64 s12, s35, v29
	v_cmp_gt_i32_e64 s13, s35, v30
	v_cmp_gt_i32_e64 s14, s35, v31
	v_cmp_gt_i32_e64 s15, s35, v17
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s30, s68, v18
	v_cmp_gt_i32_e64 s16, s68, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v50, v35, s[36:39], 0 offen
	buffer_store_b32 v51, v36, s[36:39], 0 offen
	v_add_lshl_u32 v35, v32, v19, 2
	v_add_lshl_u32 v36, v32, v18, 2
	v_add_lshl_u32 v32, v32, v0, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v0, v37, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v33, 0x80000000, v33, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s28
	s_and_b32 s16, vcc_lo, s16
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v34, 0x80000000, v34, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s29
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s15, vcc_lo, s15
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v35, 0x80000000, v35, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s30
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s14, vcc_lo, s14
	s_and_b32 s13, vcc_lo, s13
	s_and_b32 s12, vcc_lo, s12
	s_and_b32 s11, vcc_lo, s11
	s_and_b32 s10, vcc_lo, s10
	s_and_b32 s9, vcc_lo, s9
	s_and_b32 s8, vcc_lo, s8
	s_and_b32 s7, vcc_lo, s7
	s_and_b32 s6, vcc_lo, s6
	s_and_b32 s5, vcc_lo, s5
	s_and_b32 s4, vcc_lo, s4
	s_and_b32 s3, vcc_lo, s3
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v0, v0, s33, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s2, vcc_lo, s2
	s_and_b32 s1, vcc_lo, s1
	s_and_b32 vcc_lo, vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_add_nc_u32 v17, v37, v17
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v31, v37, v31
	v_add_nc_u32_e32 v30, v37, v30
	v_add_nc_u32_e32 v29, v37, v29
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v17, v17, s33, 2
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v36, 0x80000000, v36, s17
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v31, v31, s33, 2
	v_add_lshl_u32 v30, v30, s33, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v28, v37, v28
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s15
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v27, v37, v27
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v31, 0x80000000, v31, s14
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v32, 0x80000000, v32, s16
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v26, v37, v26
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v30, 0x80000000, v30, s13
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x4
	buffer_store_b32 v52, v33, s[36:39], 0 offen
	buffer_store_b32 v53, v34, s[36:39], 0 offen
	buffer_store_b32 v54, v35, s[36:39], 0 offen
	buffer_store_b32 v55, v36, s[36:39], 0 offen
	buffer_store_b32 v56, v32, s[36:39], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s37, s47, 0xffff
	s_mov_b32 s36, s46
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v25, v37, v25
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v9, v17, s[36:39], 0 offen
	v_add_lshl_u32 v9, v29, s33, 2
	s_clause 0x1
	buffer_store_b32 v10, v31, s[36:39], 0 offen
	buffer_store_b32 v11, v30, s[36:39], 0 offen
	v_add_lshl_u32 v10, v28, s33, 2
	v_add_lshl_u32 v11, v27, s33, 2
	v_add_lshl_u32 v17, v26, s33, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s12
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v24, v37, v24
	v_add_nc_u32_e32 v23, v37, v23
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v10, 0x80000000, v10, s11
	v_cndmask_b32_e64 v11, 0x80000000, v11, s10
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v22, v37, v22
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s9
	s_clause 0x1
	buffer_store_b32 v12, v9, s[36:39], 0 offen
	buffer_store_b32 v13, v10, s[36:39], 0 offen
	v_add_lshl_u32 v9, v25, s33, 2
	s_clause 0x1
	buffer_store_b32 v14, v11, s[36:39], 0 offen
	buffer_store_b32 v15, v17, s[36:39], 0 offen
	v_add_lshl_u32 v10, v24, s33, 2
	v_add_lshl_u32 v11, v23, s33, 2
	v_add_lshl_u32 v12, v22, s33, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v21, v37, v21
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v9, 0x80000000, v9, s8
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v20, v37, v20
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v10, 0x80000000, v10, s7
	v_cndmask_b32_e64 v11, 0x80000000, v11, s6
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v19, v37, v19
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v12, 0x80000000, v12, s5
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v18, v37, v18
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_clause 0x1
	buffer_store_b32 v16, v9, s[36:39], 0 offen
	buffer_store_b32 v1, v10, s[36:39], 0 offen
	v_add_lshl_u32 v1, v21, s33, 2
	s_clause 0x1
	buffer_store_b32 v2, v11, s[36:39], 0 offen
	buffer_store_b32 v3, v12, s[36:39], 0 offen
	v_add_lshl_u32 v2, v20, s33, 2
	v_add_lshl_u32 v3, v19, s33, 2
	v_add_lshl_u32 v9, v18, s33, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v9, 0x80000000, v9, s1
	s_clause 0x4
	buffer_store_b32 v4, v1, s[36:39], 0 offen
	buffer_store_b32 v5, v2, s[36:39], 0 offen
	buffer_store_b32 v6, v3, s[36:39], 0 offen
	buffer_store_b32 v7, v9, s[36:39], 0 offen
	buffer_store_b32 v8, v0, s[36:39], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 476
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 476
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 26604
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 476
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 476
    .sgpr_count:     107
    .sgpr_spill_count: 4
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 118
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
