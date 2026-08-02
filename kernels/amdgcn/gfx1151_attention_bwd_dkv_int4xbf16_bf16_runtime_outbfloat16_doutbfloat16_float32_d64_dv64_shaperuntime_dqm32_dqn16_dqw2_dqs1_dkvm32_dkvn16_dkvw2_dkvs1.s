	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[36:39], s[0:1], 0x94
	s_load_b128 s[48:51], s[0:1], 0x64
	s_load_b64 s[76:77], s[0:1], 0x78
.Ltmp0:
	.loc	1 514 33 prologue_end           ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v233, 5, v0
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x8
	s_load_b64 s[12:13], s[0:1], 0x20
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xor_b32_e32 v17, 0x198, v0
	v_xor_b32_e32 v14, 0x88, v0
	v_xor_b32_e32 v15, 0x110, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v2, 2, v233
	v_or_b32_e32 v3, 4, v233
	v_or_b32_e32 v4, 6, v233
	v_or_b32_e32 v5, 8, v233
	v_or_b32_e32 v6, 10, v233
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v2, off
	scratch_store_b32 off, v3, off offset:4
	scratch_store_b32 off, v4, off offset:8
	scratch_store_b32 off, v5, off offset:12
	v_or_b32_e32 v7, 12, v233
	v_or_b32_e32 v8, 14, v233
	scratch_store_b32 off, v6, off offset:16 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s36
	s_bitcmp1_b32 s36, 8
	scratch_store_b32 off, v7, off offset:20 ; 4-byte Folded Spill
	s_cselect_b32 s80, -1, 0
	s_cmp_eq_u32 s4, 1
	v_and_b32_e32 v66, 15, v0
	s_cselect_b32 s81, -1, 0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_abs_i32 s20, s49
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_abs_i32 s5, s3
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cvt_f32_u32 s4, s20
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s10, s2, 4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v2, s10, v2
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v3, s10, v3
	v_or_b32_e32 v6, s10, v6
	v_or_b32_e32 v7, s10, v7
	v_or_b32_e32 v4, s10, v4
	v_or_b32_e32 v5, s10, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_readfirstlane_b32 s4, v1
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v1, s10, v233
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s51, v1
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_and_b32_e32 v1, 31, v0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cvt_u32_f32 s14, s4
	s_sub_i32 s4, 0, s20
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[154:155], null, s76, v233, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_i32 s4, s4, s14
	s_mul_hi_u32 s4, s14, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s14, s14, s4
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_mul_hi_u32 s4, s5, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s4, s20
	s_sub_i32 s2, s5, s6
	s_add_i32 s5, s4, 1
	s_sub_i32 s6, s2, s20
	s_cmp_ge_u32 s2, s20
	s_cselect_b32 s4, s5, s4
	s_cselect_b32 s2, s6, s2
	s_add_i32 s5, s4, 1
	s_cmp_ge_u32 s2, s20
	s_cselect_b32 s11, s5, s4
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_ashr_i32 s21, s48, 31
	s_ashr_i32 s23, s49, 31
	s_abs_i32 s28, s48
	.loc	1 514 23                        ; attention_backward.py:514:23
	s_or_b32 s2, s10, 1
	s_or_b32 s4, s10, 2
	s_or_b32 s5, s10, 3
	s_or_b32 s6, s10, 4
	s_or_b32 s7, s10, 5
	s_or_b32 s8, s10, 6
	s_or_b32 s9, s10, 7
	s_or_b32 s15, s10, 8
	s_or_b32 s22, s10, 9
	s_or_b32 s24, s10, 10
	s_or_b32 s25, s10, 11
	s_or_b32 s26, s10, 12
	s_or_b32 s27, s10, 13
	s_or_b32 s43, s10, 14
	s_or_b32 s45, s10, 15
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cmp_lt_i32 s10, s51
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s2, s51
	v_cmp_gt_i32_e64 s2, s51, v2
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s4, s51
	v_cmp_gt_i32_e64 s4, s51, v3
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s5, s51
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v3, s76, 1, v154
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s6, s51
	scratch_store_b32 off, v8, off offset:24 ; 4-byte Folded Spill
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s7, s51
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v8, s10, v8
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s41, -1, 0
	s_cmp_lt_i32 s8, s51
	v_cmp_gt_i32_e64 s7, s51, v6
	s_cselect_b32 s40, -1, 0
	s_cmp_lt_i32 s9, s51
	v_cmp_gt_i32_e64 s8, s51, v7
	s_cselect_b32 s35, -1, 0
	s_cmp_lt_i32 s15, s51
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[6:7], null, s76, 6, v[154:155]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s33, -1, 0
	s_cmp_lt_i32 s22, s51
	.loc	1 521 24                        ; attention_backward.py:521:24
	s_mul_i32 s22, s3, s51
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s31, -1, 0
	s_cmp_lt_i32 s24, s51
	v_cmp_gt_i32_e64 s9, s51, v8
	s_cselect_b32 s30, -1, 0
	s_cmp_lt_i32 s25, s51
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[8:9], null, s76, 10, v[154:155]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s29, -1, 0
	s_cmp_lt_i32 s26, s51
	v_cmp_gt_i32_e64 s5, s51, v4
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s27, s51
	v_cmp_gt_i32_e64 s6, s51, v5
	s_cselect_b32 s34, -1, 0
	s_cmp_lt_i32 s43, s51
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v4, s76, 2, v154
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s45, s51
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v7, s76, 3, v154
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s45, -1, 0
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_add_i32 s54, s22, s10
	v_mov_b32_e32 v5, v6
	s_mul_i32 s24, s54, s76
	v_mad_u64_u32 v[9:10], null, s76, 12, v[154:155]
	v_add_nc_u32_e32 v2, s24, v154
	v_mad_u64_u32 v[10:11], null, s76, 14, v[154:155]
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b32 off, v4, off offset:32
	scratch_store_b64 off, v[5:6], off offset:36
	scratch_store_b32 off, v7, off offset:44
	v_add_nc_u32_e32 v4, s24, v4
	v_add_nc_u32_e32 v5, s24, v6
	v_add_nc_u32_e32 v6, s24, v7
	v_mov_b32_e32 v7, v8
	scratch_store_b32 off, v3, off offset:28 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s24, v3
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_and_b32 s25, s17, 0xffff
	s_mov_b32 s27, 0x31027000
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[7:8], off offset:48 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v7, s24, v8
	v_mov_b32_e32 v8, v9
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_cmp_gt_i32_e64 s22, s76, v1
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_mul_i32 s53, s54, s77
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_and_b32 s13, s13, 0xffff
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[8:9], off offset:56 ; 8-byte Folded Spill
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, vcc_lo, s22
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_add_nc_u32_e32 v8, s24, v9
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s2, s22
	v_mov_b32_e32 v9, v10
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s4, s22
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s4, s77, v0
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s5, s22
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[9:10], off offset:64 ; 8-byte Folded Spill
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s6, s22
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_add_nc_u32_e32 v9, s24, v10
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s7, s22
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_mov_b32 s24, s16
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s8, s22
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v10, s53, v0
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s9, s22
	.loc	1 587 22                        ; attention_backward.py:587:22
	s_add_i32 s6, s50, 31
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x7
	buffer_load_u8 v2, v2, s[24:27], 0 offen
	buffer_load_u8 v3, v3, s[24:27], 0 offen
	buffer_load_u8 v4, v4, s[24:27], 0 offen
	buffer_load_u8 v5, v5, s[24:27], 0 offen
	buffer_load_u8 v6, v6, s[24:27], 0 offen
	buffer_load_u8 v7, v7, s[24:27], 0 offen
	buffer_load_u8 v8, v8, s[24:27], 0 offen
	buffer_load_u8 v9, v9, s[24:27], 0 offen
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v11, s77, v10
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v10, 1, v10
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s52, s4
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v209, 0, v17
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s25, s19, 0xffff
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v12, s77, v11
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_lshlrev_b32 v11, 1, v11
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s47, s4
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v206, 0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v13, s77, v12
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_lshlrev_b32 v12, 1, v12
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s46, s4
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v207, 0, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v16, s77, v13
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_lshlrev_b32 v13, 1, v13
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s44, s4
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v208, 0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v14, s77, v16
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s42, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_mov_b32 s24, s18
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_ashr_i32 s7, s6, 31
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v15, s77, v14
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_lshr_b32 s7, s7, 27
	s_mov_b32 s5, 0
	s_add_i32 s6, s6, s7
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_hi_u32 s2, s28, s14
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v17, s77, v15
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v15, 1, v15
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_mov_b32 s14, s26
	.loc	1 587 20                        ; attention_backward.py:587:20
	s_and_b32 s83, s6, 0xffffffe0
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt vmcnt(7)
	ds_store_b8 v206, v2
	s_waitcnt vmcnt(6)
	ds_store_b8 v206, v3 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v207, v4
	s_waitcnt vmcnt(4)
	ds_store_b8 v207, v5 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v208, v6
	s_waitcnt vmcnt(2)
	ds_store_b8 v208, v7 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v209, v8
	s_waitcnt vmcnt(0)
	ds_store_b8 v209, v9 offset:64
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v18, s77, v17
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v3, 12, v0
	v_lshlrev_b32_e32 v4, 5, v66
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v19, s77, v18
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v18, 1, v18
	v_lshlrev_b32_e32 v16, 1, v16
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshlrev_b32_e32 v5, 1, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v20, s77, v19
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v19, 1, v19
	v_lshlrev_b32_e32 v14, 1, v14
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s41, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s40, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v21, 0x80000000, v15, vcc_lo
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v15, s77, v20
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s35, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v22, s77, v15
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v15, 1, v15
	v_lshlrev_b32_e32 v17, 1, v17
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s33, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v23, 0x80000000, v18 :: v_dual_lshlrev_b32 v18, 1, v20
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v20, s77, v22
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s31, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s30, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v25, 0x80000000, v18, vcc_lo
	v_lshlrev_b32_e32 v18, 1, v22
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v22, s77, v20
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s29, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v26, 0x80000000, v15 :: v_dual_lshlrev_b32 v15, 1, v20
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s15, s4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_lshl_u32 v20, v22, s77, 1
	v_cndmask_b32_e32 v30, 0x80000000, v18, vcc_lo
	v_lshlrev_b32_e32 v18, 1, v22
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s34, s4
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_mov_b32 s15, s27
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v31, 0x80000000, v15, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s43, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v32, 0x80000000, v18, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s45, s4
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_bfe_u32 s6, s36, 0x10008
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v33, 0x80000000, v20, vcc_lo
	s_clause 0xf
	buffer_load_u16 v24, v10, s[24:27], 0 offen
	buffer_load_u16 v22, v11, s[24:27], 0 offen
	buffer_load_u16 v20, v12, s[24:27], 0 offen
	buffer_load_u16 v18, v13, s[24:27], 0 offen
	buffer_load_u16 v16, v16, s[24:27], 0 offen
	buffer_load_u16 v15, v14, s[24:27], 0 offen
	buffer_load_u16 v14, v21, s[24:27], 0 offen
	buffer_load_u16 v13, v17, s[24:27], 0 offen
	buffer_load_u16 v29, v23, s[24:27], 0 offen
	buffer_load_u16 v28, v19, s[24:27], 0 offen
	buffer_load_u16 v27, v25, s[24:27], 0 offen
	buffer_load_u16 v26, v26, s[24:27], 0 offen
	buffer_load_u16 v25, v30, s[24:27], 0 offen
	buffer_load_u16 v23, v31, s[24:27], 0 offen
	buffer_load_u16 v21, v32, s[24:27], 0 offen
	buffer_load_u16 v19, v33, s[24:27], 0 offen
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v32, v0, 4, 1
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_or_b32_e32 v10, v4, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v6, s10, v32
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_add_lshl_u32 v36, s54, v32, 1
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v30, 0, v10
	v_xad_u32 v31, v10, 8, 0
	scratch_store_b32 off, v32, off offset:540 ; 4-byte Folded Spill
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v7, 2, v6
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s51, v6
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v8, 4, v6
	v_or_b32_e32 v9, 6, v6
	v_or_b32_e32 v11, 8, v6
	v_or_b32_e32 v12, 10, v6
	v_or_b32_e32 v17, 12, v6
	v_or_b32_e32 v37, 14, v6
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xad_u32 v32, v10, 16, 0
	v_xad_u32 v33, v10, 24, 0
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v10, 4, v36
	v_cndmask_b32_e32 v6, 0x80000000, v36, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s51, v7
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v34, 8, v36
	v_add_nc_u32_e32 v35, 20, v36
	v_cndmask_b32_e32 v7, 0x80000000, v10, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s51, v8
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v10, 12, v36
	v_cndmask_b32_e32 v8, 0x80000000, v34, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s51, v9
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v2, 32, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_dual_cndmask_b32 v9, 0x80000000, v10 :: v_dual_add_nc_u32 v34, 16, v36
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s51, v11
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v10, 24, v36
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_add_nc_u32 v11, 28, v36
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s51, v12
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s51, v17
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e32 v36, 0x80000000, v10, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s51, v37
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e32 v37, 0x80000000, v11, vcc_lo
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s5, s10, s37
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_add_i32 s7, s38, s39
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s5, s5, s39
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_sub_i32 s7, s10, s7
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
	s_max_i32 s6, s7, 0
	.loc	1 600 17                        ; attention_backward.py:600:17
	s_and_b32 s7, s5, 0xffffffe0
	.loc	1 597 45                        ; attention_backward.py:597:45
	s_and_b32 s5, s6, 0x7fffffe0
	.loc	1 598 24                        ; attention_backward.py:598:24
	s_min_i32 s83, s83, s7
.LBB0_2:
	.loc	1 0 24 is_stmt 0                ; attention_backward.py:0:24
	s_clause 0x7
	buffer_load_u16 v17, v6, s[12:15], 0 offen
	buffer_load_u16 v12, v7, s[12:15], 0 offen
	buffer_load_u16 v11, v8, s[12:15], 0 offen
	buffer_load_u16 v10, v9, s[12:15], 0 offen
	buffer_load_u16 v9, v34, s[12:15], 0 offen
	buffer_load_u16 v8, v35, s[12:15], 0 offen
	buffer_load_u16 v7, v36, s[12:15], 0 offen
	buffer_load_u16 v6, v37, s[12:15], 0 offen
	ds_load_b64 v[34:35], v30
	ds_load_b64 v[30:31], v31
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x50
	s_load_b32 s82, s[0:1], 0x74
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_mul_i32 s6, s2, s20
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	s_xor_b32 s7, s21, s23
	s_sub_i32 s6, s28, s6
	s_add_i32 s8, s2, 1
	s_sub_i32 s9, s6, s20
	s_cmp_ge_u32 s6, s20
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v212, s10, v66
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s2, s8, s2
	s_cselect_b32 s6, s9, s6
	s_add_i32 s8, s2, 1
	s_cmp_ge_u32 s6, s20
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v67, 1, v2
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s2, s8, s2
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_add_nc_u32_e32 v214, v206, v0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_xor_b32 s2, s2, s7
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[34:35], off offset:72
	scratch_store_b64 off, v[30:31], off offset:80
	ds_load_b64 v[30:31], v32
	v_writelane_b32 v255, s12, 0
	.loc	1 717 21 is_stmt 1              ; attention_backward.py:717:21
	v_lshlrev_b32_e32 v34, 1, v0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_sub_i32 s84, s2, s7
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, s51, v212
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cmp_lt_i32 s84, 1
	v_writelane_b32 v255, s13, 1
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xor_b32_e32 v32, 0x1b0, v34
	v_writelane_b32 v255, s14, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v217, 0, v32
	v_xor_b32_e32 v32, 0x3f0, v34
	v_writelane_b32 v255, s15, 3
	v_add_nc_u32_e32 v221, 0, v32
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[30:31], off offset:88 ; 8-byte Folded Spill
	ds_load_b64 v[30:31], v33
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xor_b32_e32 v33, 0x240, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v218, 0, v33
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[30:31], off offset:96 ; 8-byte Folded Spill
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xor_b32_e32 v30, 0x90, v34
	v_xor_b32_e32 v31, 0x120, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v215, 0, v30
	v_add_nc_u32_e32 v216, 0, v31
	v_xor_b32_e32 v30, 0x2d0, v34
	v_xor_b32_e32 v31, 0x360, v34
	s_waitcnt vmcnt(23)
	ds_store_b16 v214, v24
	s_waitcnt vmcnt(15)
	ds_store_b16 v214, v29 offset:1024
	ds_store_b16 v215, v22
	s_waitcnt vmcnt(14)
	ds_store_b16 v215, v28 offset:1024
	ds_store_b16 v216, v20
	s_waitcnt vmcnt(13)
	ds_store_b16 v216, v27 offset:1024
	ds_store_b16 v217, v18
	s_waitcnt vmcnt(12)
	ds_store_b16 v217, v26 offset:1024
	v_add_nc_u32_e32 v219, 0, v30
	v_add_nc_u32_e32 v220, 0, v31
	ds_store_b16 v218, v16
	s_waitcnt vmcnt(11)
	ds_store_b16 v218, v25 offset:1024
	ds_store_b16 v219, v15
	s_waitcnt vmcnt(10)
	ds_store_b16 v219, v23 offset:1024
	ds_store_b16 v220, v14
	s_waitcnt vmcnt(9)
	ds_store_b16 v220, v21 offset:1024
	ds_store_b16 v221, v13
	s_waitcnt vmcnt(8)
	ds_store_b16 v221, v19 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cbranch_scc1 .LBB0_13
; %bb.3:                                ; %.lr.ph166
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	s_xor_b32 s6, s3, s49
	s_clause 0x1
	s_load_b32 s7, s[0:1], 0x90
	s_load_b128 s[56:59], s[0:1], 0x80
	s_ashr_i32 s6, s6, 31
	s_load_b256 s[40:47], s[0:1], 0x30
	s_xor_b32 s8, s11, s6
	s_clause 0x1
	s_load_b64 s[60:61], s[0:1], 0x0
	s_load_b64 s[64:65], s[0:1], 0x18
	s_sub_i32 s6, s8, s6
	v_writelane_b32 v255, s54, 4
	s_mul_i32 s0, s6, s49
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	v_lshlrev_b32_e32 v1, 1, v1
	s_sub_i32 s0, s3, s0
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_sub_i32 s1, s10, s39
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s0, s84, s0
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_max_i32 s1, s1, 0
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v14, 1, v1
	.loc	1 613 26                        ; attention_backward.py:613:26
	v_writelane_b32 v255, s0, 5
	v_mov_b16_e32 v15.l, 0
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_and_b32 s1, s1, 0x7fffffe0
	.loc	1 613 26                        ; attention_backward.py:613:26
	s_mul_i32 s0, s6, s48
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_max_u32 s1, s5, s1
	s_and_b32 s3, s81, exec_lo
	s_cselect_b32 s3, s1, s5
	.loc	1 641 25                        ; attention_backward.py:641:25
	v_writelane_b32 v255, s0, 6
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s0, s82, v1
	v_cmp_gt_i32_e64 s1, s82, v14
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v14.l, v15.l
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_and_b32_e32 v1, 7, v0
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v14.h, v12.l
	v_mov_b16_e32 v12.l, v15.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v12.h, v11.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v10.h, v9.l
	v_lshlrev_b32_e32 v33, 3, v66
	scratch_store_b32 off, v14, off offset:108 ; 4-byte Folded Spill
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshlrev_b32_e32 v11, 4, v1
	scratch_store_b32 off, v12, off offset:112 ; 4-byte Folded Spill
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v12.h, v10.l
	v_mov_b16_e32 v10.l, v15.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v8.h, v7.l
	v_mov_b32_e32 v156, v33
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshl_or_b32 v9, v66, 7, v11
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v12, off offset:116
	scratch_store_b32 off, v10, off offset:120
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v10.h, v8.l
	v_mov_b16_e32 v8.l, v15.l
	v_mov_b16_e32 v15.h, v17.l
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v8, off offset:128
	scratch_store_b32 off, v15, off offset:104
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v7, 0x70, v9, 0
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v15.h, v6.l
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v8, 0x60, v9, 0
	scratch_store_b32 off, v10, off offset:124 ; 4-byte Folded Spill
	v_xad_u32 v6, 0x50, v9, 0
	v_xad_u32 v10, v9, 64, 0
	scratch_store_b32 off, v15, off offset:132 ; 4-byte Folded Spill
	ds_load_b128 v[18:21], v7
	ds_load_b128 v[14:17], v8
	v_xad_u32 v7, v9, 48, 0
	v_xad_u32 v8, v9, 32, 0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[14:17], off offset:136
	scratch_store_b128 off, v[18:21], off offset:152
	ds_load_b128 v[18:21], v6
	ds_load_b128 v[14:17], v10
	v_xad_u32 v6, v9, 16, 0
	v_add_nc_u32_e32 v10, 0, v9
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[14:17], off offset:168
	scratch_store_b128 off, v[18:21], off offset:184
	ds_load_b128 v[18:21], v7
	ds_load_b128 v[14:17], v8
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v223, 4, v0
	v_dual_mov_b32 v242, 0 :: v_dual_lshlrev_b32 v7, 4, v2
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[14:17], off offset:200
	scratch_store_b128 off, v[18:21], off offset:216
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[18:21], v6
	ds_load_b128 v[14:17], v10
	.loc	1 683 27                        ; attention_backward.py:683:27
	s_mul_i32 s5, s6, s57
	v_or3_b32 v68, v5, v7, v4
	v_mul_lo_u32 v7, s59, v223
	v_mul_lo_u32 v8, s7, v212
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_writelane_b32 v255, s5, 7
	s_cmp_lt_i32 s3, s83
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	s_cselect_b32 s87, -1, 0
	s_lshl_b32 s5, s59, 3
	v_writelane_b32 v255, s3, 8
	s_lshl_b32 s3, s59, 2
	s_lshl_b32 s7, s59, 4
	v_add3_u32 v10, v7, s3, v8
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[14:17], off offset:232
	scratch_store_b128 off, v[18:21], off offset:248
	v_and_b32_e32 v13, 16, v0
	v_cndmask_b32_e64 v12, 0x90, 0, vcc_lo
	v_add3_u32 v14, v7, s7, v8
	scratch_store_b32 off, v10, off offset:264 ; 4-byte Folded Spill
	v_add3_u32 v10, v7, s5, v8
	s_mul_i32 s6, s59, 12
	s_mul_i32 s8, s59, 20
	v_lshrrev_b32_e32 v15, 2, v13
	v_xor_b32_e32 v12, v12, v33
	v_add3_u32 v18, v7, s8, v8
	scratch_store_b32 off, v10, off offset:268 ; 4-byte Folded Spill
	v_add3_u32 v10, v7, s6, v8
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[196:199], off, off offset:232
	scratch_load_b128 v[200:203], off, off offset:248
	v_lshrrev_b32_e32 v17, 4, v2
	v_or_b32_e32 v12, v12, v15
	s_mul_i32 s9, s59, 24
	scratch_store_b32 off, v10, off offset:272 ; 4-byte Folded Spill
	v_and_b32_e32 v10, 14, v0
	v_or3_b32 v25, v15, v17, v33
	scratch_store_b32 off, v18, off offset:280 ; 4-byte Folded Spill
	v_add3_u32 v18, v7, s9, v8
	scratch_store_b32 off, v14, off offset:276 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v14, 2, v0
	v_mul_u32_u24_e32 v10, 0x48, v10
	v_lshrrev_b32_e32 v16, 1, v13
	v_dual_mov_b32 v42, v242 :: v_dual_lshlrev_b32 v3, 5, v3
	v_dual_mov_b32 v45, v242 :: v_dual_and_b32 v22, 24, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_or_b32 v10, v14, 4, v10
	v_dual_mov_b32 v43, v242 :: v_dual_and_b32 v14, 52, v14
	v_mov_b32_e32 v47, v242
	v_bfe_i32 v29, v0, 3, 1
	v_or3_b32 v23, v10, v16, v17
	scratch_store_b32 off, v18, off offset:288 ; 4-byte Folded Spill
	v_and_b32_e32 v18, 2, v0
	v_cndmask_b32_e64 v30, 0x420, 0, vcc_lo
	v_xor_b32_e32 v4, 8, v68
	v_dual_mov_b32 v46, v242 :: v_dual_lshlrev_b32 v13, 2, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v3, v3, v14, v18
	v_lshlrev_b32_e32 v18, 3, v0
	v_xor_b32_e32 v5, 16, v68
	v_xor_b32_e32 v21, 64, v23
	v_mov_b32_e32 v44, v242
	v_or3_b32 v28, v3, v16, v233
	v_and_b32_e32 v3, 48, v18
	v_lshlrev_b32_e32 v16, 1, v22
	v_lshrrev_b32_e32 v22, 1, v22
	s_mul_i32 s10, s59, 28
	v_xor_b32_e32 v6, 24, v68
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v254, v8, v7
	v_xor_b32_e32 v16, v3, v16
	v_add3_u32 v7, v7, s10, v8
	v_xor_b32_e32 v14, 0x50, v23
	v_lshl_or_b32 v9, v2, 6, v9
	v_xor_b32_e32 v15, 0x60, v23
	v_lshl_or_b32 v32, v0, 6, v16
	v_lshl_or_b32 v16, v1, 7, v22
	v_and_or_b32 v22, 0x210, v29, v30
	v_lshl_or_b32 v1, v1, 6, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v7, off offset:292
	scratch_store_b32 off, v12, off offset:284
	v_or3_b32 v17, v16, v11, v17
	v_lshlrev_b32_e32 v11, 1, v66
	v_xor_b32_e32 v22, v22, v1
	v_xor_b32_e32 v7, 0x120, v12
	v_mov_b32_e32 v48, v242
	v_mov_b32_e32 v35, v242
	v_or3_b32 v13, v11, v13, v2
	v_add3_u32 v250, 0, v2, v11
	v_lshl_or_b32 v11, v66, 6, v3
	v_add_nc_u32_e32 v3, 0, v4
	scratch_store_b32 off, v25, off offset:300 ; 4-byte Folded Spill
	v_xor_b32_e32 v2, 16, v22
	v_add_nc_u32_e32 v4, 0, v21
	v_xor_b32_e32 v8, 0x240, v12
	scratch_store_b32 off, v3, off offset:312 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v28, off offset:304
	scratch_store_b32 off, v4, off offset:352
	v_add_nc_u32_e32 v4, 0, v14
	v_add_nc_u32_e32 v162, 0, v2
	scratch_store_b32 off, v3, off offset:316 ; 4-byte Folded Spill
	v_dual_mov_b32 v34, v242 :: v_dual_add_nc_u32 v3, 0, v6
	v_xor_b32_e32 v2, 16, v9
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v23, off offset:296
	scratch_store_b32 off, v32, off offset:308
	scratch_store_b32 off, v4, off offset:356
	v_dual_mov_b32 v37, v242 :: v_dual_add_nc_u32 v4, 0, v15
	scratch_store_b32 off, v3, off offset:320 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v7
	v_add_nc_u32_e32 v2, 0, v2
	v_xor_b32_e32 v10, 0x360, v12
	v_xor_b32_e32 v12, 16, v23
	v_mov_b32_e32 v36, v242
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:324
	scratch_store_b32 off, v2, off offset:392
	v_add_nc_u32_e32 v3, 0, v8
	v_xor_b32_e32 v2, 64, v9
	v_xor_b32_e32 v19, 32, v23
	v_mov_b32_e32 v38, v242
	v_xor_b32_e32 v20, 48, v23
	v_mov_b32_e32 v40, v242
	v_add_nc_u32_e32 v2, 0, v2
	scratch_store_b32 off, v3, off offset:328 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v10
	v_xor_b32_e32 v23, 0x70, v23
	v_mov_b32_e32 v58, v242
	v_xor_b32_e32 v24, 0x90, v25
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v4, off offset:360
	scratch_store_b32 off, v3, off offset:332
	scratch_store_b32 off, v9, off offset:460
	v_add_nc_u32_e32 v3, 0, v12
	v_dual_mov_b32 v39, v242 :: v_dual_add_nc_u32 v4, 0, v23
	v_xor_b32_e32 v18, 0x120, v25
	v_mov_b32_e32 v60, v242
	scratch_store_b32 off, v3, off offset:336 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v19
	v_xor_b32_e32 v25, 0x1b0, v25
	v_mov_b32_e32 v62, v242
	v_xor_b32_e32 v29, 16, v32
	v_mov_b32_e32 v57, 0
	scratch_store_b32 off, v3, off offset:340 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v20
	v_xor_b32_e32 v16, 32, v32
	v_xor_b32_e32 v1, 48, v32
	v_mov_b32_e32 v59, v242
	v_mov_b32_e32 v63, v242
	.loc	1 579 17                        ; attention_backward.py:579:17
	scratch_store_b32 off, v3, off offset:344 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s77, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:364
	scratch_store_b32 off, v3, off offset:348
	v_add_nc_u32_e32 v4, 0, v24
	v_add_nc_u32_e32 v3, s77, v3
	v_dual_mov_b32 v52, v242 :: v_dual_add_nc_u32 v1, 0, v1
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v1, off offset:388
	scratch_store_b32 off, v22, off offset:428
	scratch_store_b32 off, v4, off offset:368
	scratch_store_b32 off, v3, off offset:400
	v_add_nc_u32_e32 v4, 0, v18
	v_dual_mov_b32 v64, v242 :: v_dual_add_nc_u32 v3, s77, v3
	v_xor_b32_e32 v1, 48, v22
	v_mov_b32_e32 v49, 0
	scratch_store_b32 off, v4, off offset:372 ; 4-byte Folded Spill
	v_dual_mov_b32 v51, v242 :: v_dual_add_nc_u32 v4, 0, v25
	v_dual_mov_b32 v54, v242 :: v_dual_add_nc_u32 v165, 0, v1
	v_xor_b32_e32 v1, 32, v9
	scratch_store_b32 off, v4, off offset:376 ; 4-byte Folded Spill
	v_dual_mov_b32 v53, v242 :: v_dual_add_nc_u32 v4, 0, v29
	scratch_store_b32 off, v2, off offset:408 ; 4-byte Folded Spill
	v_dual_mov_b32 v56, v242 :: v_dual_add_nc_u32 v1, 0, v1
	scratch_store_b32 off, v4, off offset:380 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v16
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:384
	scratch_store_b32 off, v3, off offset:420
	v_add_nc_u32_e32 v4, s77, v3
	v_xor_b32_e32 v3, 32, v22
	v_xor_b32_e32 v2, 0x60, v9
	v_mov_b32_e32 v161, v68
	v_xor_b32_e32 v26, 16, v28
	scratch_store_b32 off, v4, off offset:440 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, s77, v4
	v_dual_mov_b32 v55, v242 :: v_dual_add_nc_u32 v164, 0, v3
	v_xor_b32_e32 v3, 48, v9
	v_add_nc_u32_e32 v2, 0, v2
	scratch_store_b32 off, v4, off offset:448 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, s77, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:396
	scratch_store_b32 off, v4, off offset:452
	v_add_nc_u32_e32 v4, s77, v4
	v_add_nc_u32_e32 v1, 0, v3
	v_xor_b32_e32 v3, 0x70, v9
	v_xor_b32_e32 v27, 32, v28
	v_xor_b32_e32 v28, 48, v28
	scratch_store_b32 off, v4, off offset:456 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, s77, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:416
	scratch_store_b32 off, v4, off offset:464
	v_add_nc_u32_e32 v2, 0, v3
	scratch_store_b32 off, v1, off offset:404 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x50, v9
	v_add_nc_u32_e32 v4, s77, v4
	v_xor_b32_e32 v3, 16, v11
	scratch_store_b32 off, v2, off offset:424 ; 4-byte Folded Spill
	v_xor_b32_e32 v2, 0x120, v13
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v4, off offset:472 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, s77, v4
	v_dual_mov_b32 v61, v242 :: v_dual_add_nc_u32 v158, 0, v28
	v_add_nc_u32_e32 v9, 0, v2
	v_xor_b32_e32 v2, 32, v11
	v_dual_mov_b32 v28, v17 :: v_dual_add_nc_u32 v157, 0, v27
	v_mov_b32_e32 v50, v242
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v14, 16, v233
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v2, 0, v2
	scratch_store_b32 off, v1, off offset:412 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x90, v13
	v_or_b32_e32 v251, 18, v233
	v_or_b32_e32 v239, 22, v233
	v_or_b32_e32 v252, 24, v233
	v_or_b32_e32 v23, 26, v233
	v_add_nc_u32_e32 v234, 0, v1
	v_xor_b32_e32 v1, 0x1b0, v13
	v_or_b32_e32 v25, 28, v233
	v_or_b32_e32 v235, v67, v66
	.loc	1 641 25                        ; attention_backward.py:641:25
	s_mul_f32 s86, s56, 0x3fb8aa3b
	s_mov_b32 s49, 0
	v_add_nc_u32_e32 v10, 0, v1
	v_add_nc_u32_e32 v1, 0, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:432
	scratch_store_b32 off, v11, off offset:536
	v_xor_b32_e32 v1, 48, v11
	v_xor_b32_e32 v3, 32, v17
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v11, 20, v233
	s_and_b32 s61, s61, 0xffff
	s_mov_b32 s63, 0x31027000
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:436
	scratch_store_b32 off, v4, off offset:476
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v4, s77, v4
	v_xor_b32_e32 v2, 16, v17
	scratch_store_b32 off, v1, off offset:444 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 48, v17
	v_dual_mov_b32 v31, v4 :: v_dual_add_nc_u32 v18, 0, v3
	v_add_nc_u32_e32 v4, s77, v4
	v_add_nc_u32_e32 v16, 0, v2
	v_xor_b32_e32 v2, 64, v17
	v_add_nc_u32_e32 v19, 0, v1
	v_xor_b32_e32 v1, 0x50, v17
	v_mov_b32_e32 v238, v4
	v_add_nc_u32_e32 v4, s77, v4
	v_xor_b32_e32 v3, 0x60, v17
	v_add_nc_u32_e32 v21, 0, v2
	v_xor_b32_e32 v2, 0x70, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v155, v4 :: v_dual_add_nc_u32 v22, 0, v1
	v_add_nc_u32_e32 v4, s77, v4
	v_add_nc_u32_e32 v24, 0, v3
	v_add_nc_u32_e32 v237, 0, v2
	s_mov_b32 s62, 0x7ffffffe
	s_and_b32 s65, s65, 0xffff
	v_dual_mov_b32 v17, v4 :: v_dual_add_nc_u32 v4, s77, v4
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s69, s47, 0xffff
	s_mov_b32 s68, s46
	v_dual_mov_b32 v213, v4 :: v_dual_add_nc_u32 v4, s77, v4
	s_and_b32 s73, s43, 0xffff
	s_mov_b32 s72, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v236, v4
	v_add_nc_u32_e32 v4, s77, v4
	v_dual_mov_b32 v211, v4 :: v_dual_add_nc_u32 v4, s77, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v222, v4
	v_xor_b32_e32 v1, 0x90, v33
	v_xor_b32_e32 v2, 0x120, v33
	v_xor_b32_e32 v3, 0x1b0, v33
	v_add_nc_u32_e32 v240, 0, v1
	v_xor_b32_e32 v1, 0x240, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v241, 0, v2
	v_xor_b32_e32 v2, 0x2d0, v33
	v_add_nc_u32_e32 v27, 0, v1
	v_xor_b32_e32 v1, 0x360, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v29, 0, v2
	v_add_nc_u32_e32 v30, 0, v1
	v_add_nc_u32_e32 v1, s77, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v232, v1 :: v_dual_add_nc_u32 v1, s77, v1
	v_dual_mov_b32 v210, v1 :: v_dual_add_nc_u32 v1, s77, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v194, v1 :: v_dual_add_nc_u32 v1, s77, v1
	v_mov_b32_e32 v159, v1
	v_add_nc_u32_e32 v1, s77, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v12, v1 :: v_dual_add_nc_u32 v1, s77, v1
	v_add_nc_u32_e32 v205, 0, v26
	v_add_nc_u32_e32 v26, 0, v3
	v_xor_b32_e32 v3, 0x3f0, v33
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v160, v1
	v_add_nc_u32_e32 v1, s77, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v32, 0, v3
	v_mad_u64_u32 v[2:3], null, s76, 18, v[154:155]
	scratch_store_b32 off, v13, off offset:468 ; 4-byte Folded Spill
	v_mov_b32_e32 v253, v1
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b64 off, v[2:3], off offset:480 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s76, 20, v[154:155]
	v_mov_b32_e32 v13, v1
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b64 off, v[2:3], off offset:488 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s76, 22, v[154:155]
	v_mov_b32_e32 v163, v1
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b64 off, v[2:3], off offset:496 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s76, 24, v[154:155]
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v1, s77, v1
	scratch_store_b64 off, v[2:3], off offset:504 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s76, 26, v[154:155]
	v_dual_mov_b32 v204, v1 :: v_dual_add_nc_u32 v195, s77, v1
	scratch_store_b64 off, v[2:3], off offset:512 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s76, 28, v[154:155]
	scratch_store_b64 off, v[2:3], off offset:520 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s76, 30, v[154:155]
	.loc	1 520 26                        ; attention_backward.py:520:26
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[2:3], off offset:528
	scratch_store_b32 off, v66, off offset:548
	scratch_store_b32 off, v67, off offset:544
	s_branch .LBB0_5
.LBB0_4:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_add_i32 s49, s49, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s49, s84
	s_cbranch_scc0 .LBB0_12
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s87
	s_cbranch_vccnz .LBB0_4
; %bb.6:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 606 26                        ; attention_backward.py:606:26
	v_readlane_b32 s3, v255, 5
	.loc	1 613 26                        ; attention_backward.py:613:26
	v_readlane_b32 s5, v255, 6
	v_readlane_b32 s90, v255, 8
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_add_i32 s3, s49, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 613 26                        ; attention_backward.py:613:26
	s_add_i32 s88, s3, s5
	.loc	1 684 27                        ; attention_backward.py:684:27
	s_mul_i32 s89, s3, s58
	.loc	1 682 25                        ; attention_backward.py:682:25
	v_readlane_b32 s3, v255, 7
	.loc	1 613 25                        ; attention_backward.py:613:25
	s_mul_i32 s88, s88, s50
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_add_i32 s89, s89, s3
	s_branch .LBB0_8
.LBB0_7:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v1, v97, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e32 v108.l, 0
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v108.h, v91.l
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v8, v72
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s3, s90, 1
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v97.l, v1.l
	v_bfe_i32 v1, v96, 0, 8
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s6, s90, 2
	s_or_b32 s7, s90, 3
	s_or_b32 s8, s90, 4
	s_or_b32 s9, s90, 5
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v15.l, v1.l
	v_bfe_i32 v1, v95, 0, 8
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s10, s90, 6
	s_or_b32 s11, s90, 7
	s_or_b32 s12, s90, 8
	s_or_b32 s13, s90, 9
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v65.l, v1.l
	v_bfe_i32 v1, v94, 0, 8
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s14, s90, 10
	s_or_b32 s15, s90, 11
	s_or_b32 s16, s90, 12
	s_or_b32 s17, s90, 13
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v94.l, v1.l
	v_bfe_i32 v1, v93, 0, 8
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s18, s90, 14
	s_or_b32 s42, s90, 15
	s_or_b32 s43, s90, 16
	s_or_b32 s46, s90, 17
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v93.l, v1.l
	v_bfe_i32 v1, v92, 0, 8
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s47, s90, 18
	s_or_b32 s52, s90, 19
	s_or_b32 s53, s90, 20
	s_or_b32 s54, s90, 21
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v92.l, v1.l
	v_bfe_i32 v1, v107, 0, 8
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s55, s90, 22
	s_or_b32 s70, s90, 23
	s_or_b32 s71, s90, 24
	s_or_b32 s79, s90, 25
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v95.l, v1.l
	v_bfe_i32 v1, v106, 0, 8
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s85, s90, 26
	s_or_b32 vcc_lo, s90, 27
	s_or_b32 s48, s90, 28
	s_or_b32 s57, s90, 29
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v96.l, v1.l
	v_bfe_i32 v1, v101, 0, 8
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s51, s90, 30
	s_or_b32 s78, s90, 31
	.loc	1 609 29 is_stmt 1              ; attention_backward.py:609:29
	s_cmp_lt_i32 s90, s50
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v2, v66
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v101.l, v1.l
	v_bfe_i32 v1, v100, 0, 8
	.loc	1 609 29 is_stmt 1              ; attention_backward.py:609:29
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s3, s50
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v4, v68
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s20, -1, 0
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v100.l, v1.l
	v_bfe_i32 v1, v99, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s6, s50
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v6, v70
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s21, -1, 0
	s_cmp_lt_i32 s7, s50
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v99.l, v1.l
	v_bfe_i32 v1, v98, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s8, s50
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v3, v67
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s24, -1, 0
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v98.l, v1.l
	v_bfe_i32 v1, v104, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s9, s50
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v5, v69
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s10, s50
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v104.l, v1.l
	v_bfe_i32 v1, v102, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s26, -1, 0
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v106, 15, v65
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s11, s50
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v7, v71
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v102.l, v1.l
	v_bfe_i32 v1, v105, 0, 8
	.loc	1 609 29 is_stmt 1              ; attention_backward.py:609:29
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s12, s50
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v109, 15, v93
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s66, -1, 0
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v105.l, v1.l
	v_bfe_i32 v1, v103, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s13, s50
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v107, 15, v94
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s14, s50
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v103.l, v1.l
	.loc	1 640 41 is_stmt 1              ; attention_backward.py:640:41
	v_mul_f32_e32 v1, s86, v108
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s15, s50
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v110, 15, v92
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s91, -1, 0
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_dual_mul_f32 v72, v1, v8 :: v_dual_and_b32 v111, 15, v95
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v8.h, 4, v15.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s16, s50
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v66, v1, v2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s17, s50
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v121.l, v8.h, 15
	v_lshrrev_b16 v8.h, 4, v65.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s18, s50
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v68, v1, v4
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s94, -1, 0
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v122.l, v8.h, 15
	v_lshrrev_b16 v8.h, 4, v94.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s42, s50
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v70, v1, v6
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s43, s50
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v123.l, v8.h, 15
	v_lshrrev_b16 v8.h, 4, v93.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s96, -1, 0
	s_cmp_lt_i32 s46, s50
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v2.h, v93.l, 15
	v_and_b16 v4.l, v96.l, 15
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v124.l, v8.h, 15
	v_lshrrev_b16 v8.h, 4, v92.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v4.h, v101.l, 15
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s97, -1, 0
	s_cmp_lt_i32 s47, s50
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v67, v1, v3
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v125.l, v8.h, 15
	v_lshrrev_b16 v8.h, 4, v95.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s98, -1, 0
	s_cmp_lt_i32 s52, s50
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_dual_mul_f32 v69, v1, v5 :: v_dual_and_b32 v112, 15, v96
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v126.l, v8.h, 15
	v_lshrrev_b16 v8.h, 4, v96.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v2.l, v94.l, 15
	v_and_b16 v3.l, v92.l, 15
	v_and_b16 v3.h, v95.l, 15
	v_and_b16 v5.l, v100.l, 15
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v127.l, v8.h, 15
	v_lshrrev_b16 v8.h, 4, v101.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v5.h, v99.l, 15
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s7, 7, v2.h
	v_cmp_lt_u16_e64 s10, 7, v4.l
	v_cmp_lt_u16_e64 s11, 7, v4.h
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v128.l, v8.h, 15
	v_lshrrev_b16 v8.h, 4, v100.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v4, -16, v109
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s99, -1, 0
	s_cmp_lt_i32 s53, s50
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v73, v73
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v129.l, v8.h, 15
	v_lshrrev_b16 v8.h, 4, v99.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s100, -1, 0
	s_cmp_lt_i32 s54, s50
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e32 v123.h, v108.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s101, -1, 0
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v130.l, v8.h, 15
	v_lshrrev_b16 v8.h, 4, v98.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s55, s50
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s6, 7, v2.l
	v_cmp_lt_u16_e64 s8, 7, v3.l
	v_cmp_lt_u16_e64 s9, 7, v3.h
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v131.l, v8.h, 15
	v_lshrrev_b16 v8.h, 4, v104.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s12, 7, v5.l
	v_cmp_lt_u16_e64 s13, 7, v5.h
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v3, -16, v107
	v_or_b32_e32 v5, -16, v110
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v4, v109, v4, s7
	.loc	1 609 29 is_stmt 1              ; attention_backward.py:609:29
	s_cselect_b32 s102, -1, 0
	s_cmp_lt_i32 s70, s50
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v88.h, v87.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s103, -1, 0
	s_cmp_lt_i32 s71, s50
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v87.l, v108.l
	v_mov_b16_e32 v87.h, v86.l
	v_mov_b16_e32 v76.h, v75.l
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_dual_mul_f32 v71, v1, v7 :: v_dual_and_b32 v114, 15, v100
	v_dual_mul_f32 v73, v1, v73 :: v_dual_and_b32 v116, 15, v98
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v1.l, v15.l, 15
	v_and_b16 v1.h, v65.l, 15
	v_and_b16 v6.h, v104.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v75, 15, v15
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v132.l, v8.h, 15
	v_lshrrev_b16 v8.h, 4, v102.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v3, v107, v3, s6
	v_cndmask_b32_e64 v5, v110, v5, s8
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s6, 0, v94.l
	v_cmp_gt_i16_e64 s8, 0, v92.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v92, -16, v123
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v117, 15, v104
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s104, -1, 0
	s_cmp_lt_i32 s79, s50
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v133.l, v8.h, 15
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 vcc_hi, -1, 0
	s_cmp_lt_i32 s85, s50
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v8.h, 4, v105.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 vcc_lo, s50
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v1.l
	v_cmp_lt_u16_e64 s3, 7, v1.h
	v_cmp_lt_u16_e64 s15, 7, v6.h
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v1, -16, v75
	.loc	1 651 34 is_stmt 1              ; attention_backward.py:651:34
	v_cndmask_b32_e64 v92, v123, v92, s6
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v4, v4, v87
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v139, -16, v117
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v89.h, v88.l
	v_mov_b16_e32 v88.l, v108.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v6.l, v98.l, 15
	v_and_b16 v7.l, v102.l, 15
	v_and_b16 v7.h, v105.l, 15
	v_and_b16 v8.l, v103.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_dual_cndmask_b32 v1, v75, v1 :: v_dual_and_b32 v118, 15, v102
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v134.l, v8.h, 15
	v_lshrrev_b16 v8.h, 4, v103.l
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e32 v125.h, v108.l
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v2, -16, v106
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e64 v109, v117, v139, s15
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v92, v92
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v113, 15, v101
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v91.h, v90.l
	v_mov_b16_e32 v90.l, v108.l
	v_mov_b16_e32 v90.h, v89.l
	v_mov_b16_e32 v80.h, v79.l
	v_mov_b16_e32 v79.l, v108.l
	v_mov_b16_e32 v79.h, v78.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v135.l, v8.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e32 v121.h, v108.l
	v_mov_b16_e32 v122.h, v108.l
	v_mov_b16_e32 v127.h, v108.l
	v_mov_b16_e64 v128.h, v108.l
	.loc	1 650 42 is_stmt 1              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s14, 7, v6.l
	v_cmp_lt_u16_e64 s16, 7, v7.l
	v_cmp_lt_u16_e64 s17, 7, v7.h
	v_cmp_lt_u16_e64 s18, 7, v8.l
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v6, -16, v111
	v_or_b32_e32 v7, -16, v112
	v_or_b32_e32 v138, -16, v116
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v2, v106, v2, s3
	.loc	1 651 60 is_stmt 1              ; attention_backward.py:651:60
	v_or_b32_e32 v94, -16, v125
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v1, v1
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v120, 15, v103
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v109, v109
	v_mul_f32_e32 v3, v3, v88
	v_mul_f32_e32 v88, v92, v88
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v8, -16, v113
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v89.l, v108.l
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v133.h, v108.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v140, -16, v118
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e64 v6, v111, v6, s9
	v_cndmask_b32_e64 v7, v112, v7, s10
	v_cndmask_b32_e64 v8, v113, v8, s11
	v_cndmask_b32_e64 v107, v116, v138, s14
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v15.l
	v_cmp_gt_i16_e64 s3, 0, v65.l
	v_cmp_gt_i16_e64 s10, 0, v96.l
	v_cmp_gt_i16_e64 s11, 0, v101.l
	v_cmp_gt_i16_e64 s14, 0, v98.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v15, -16, v121
	v_or_b32_e32 v65, -16, v122
	v_or_b32_e32 v96, -16, v127
	v_or_b32_e32 v98, -16, v128
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v94, v125, v94, s8
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v115, 15, v99
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v1, v1, v90
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v142, -16, v120
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v86.l, v108.l
	v_mov_b16_e32 v86.h, v85.l
	v_mov_b16_e32 v85.l, v108.l
	v_mov_b16_e32 v85.h, v84.l
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e32 v124.h, v108.l
	v_mov_b16_e64 v129.h, v108.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v136, -16, v114
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e64 v110, v118, v140, s16
	v_cndmask_b32_e64 v112, v120, v142, s18
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s16, 0, v102.l
	v_cmp_gt_i16_e64 s18, 0, v103.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v103, -16, v133
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v65, v122, v65, s3
	v_cndmask_b32_e64 v96, v127, v96, s10
	v_cndmask_b32_e64 v98, v128, v98, s11
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v94, v94
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v119, 15, v105
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_dual_cndmask_b32 v15, v121, v15 :: v_dual_mul_f32 v2, v2, v89
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v137, -16, v115
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v84.l, v108.l
	v_mov_b16_e32 v84.h, v83.l
	v_mov_b16_e32 v83.l, v108.l
	v_mov_b16_e32 v83.h, v82.l
	v_mov_b16_e32 v81.h, v80.l
	v_mov_b16_e32 v80.l, v108.l
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v135.h, v108.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v75, v114, v136, s12
	v_cndmask_b32_e64 v106, v115, v137, s13
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v93.l
	v_cmp_gt_i16_e64 s12, 0, v100.l
	v_cmp_gt_i16_e64 s13, 0, v99.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v93, -16, v124
	v_or_b32_e32 v99, -16, v129
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v103, v133, v103, s16
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v107, v107
	v_mul_f32_e32 v5, v5, v86
	v_mul_f32_e32 v86, v94, v86
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v141, -16, v119
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v6, v6, v85
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v78.l, v108.l
	v_mov_b16_e32 v78.h, v77.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v111, v119, v141, s17
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s17, 0, v105.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v105, -16, v135
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v93, v124, v93, s7
	v_cndmask_b32_e64 v99, v129, v99, s12
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v103, v103
	v_mul_f32_e32 v15, v15, v90
	v_dual_mul_f32 v65, v65, v89 :: v_dual_mul_f32 v8, v8, v83
	v_mul_f32_e32 v83, v98, v83
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e32 v98.h, v108.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v7, v7, v84
	v_mul_f32_e32 v84, v96, v84
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v96, 0, v1, s0
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v1.l, 4, v97.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v82.l, v108.l
	v_mov_b16_e32 v82.h, v81.l
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v105, v135, v105, s18
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v99, v99
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v98.l, v1.l, 15
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v1.l, v97.l, 15
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v77.h, v76.l
	v_mov_b16_e32 v76.l, v108.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v105, v105
	v_mul_f32_e32 v87, v93, v87
	v_mul_f32_e32 v75, v75, v82
	v_dual_mul_f32 v82, v99, v82 :: v_dual_and_b32 v99, 15, v97
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v97.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s3, 7, v1.l
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v1, -16, v98
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v91.l, v108.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v97, -16, v99
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v15, 0, v15, s1
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v1, v98, v1, vcc_lo
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v65, 0, v65, s1
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v97, v99, v97, s3
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v92, v109, v79
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v1, v1
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v88, 0, v88, s1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v97, v97
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v87, 0, v87, s1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v1, v91, v1
	v_mul_f32_e32 v90, v107, v80
	v_mul_f32_e32 v97, v91, v97
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e32 v126.h, v108.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v131.h, v108.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v91, 0, v97, s0
	v_mov_b16_e32 v97.h, v108.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s9, 0, v95.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v98.l, v1.h
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_mov_b16_e32 v97.l, v91.h
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v95, -16, v126
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v86, 0, v86, s1
	v_and_b32_e32 v98, 1, v98
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v101, -16, v131
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v97, 1, v97
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v95, v126, v95, s9
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_add3_u32 v98, v1, v98, 0x7fff
	v_bfe_u32 v1, v96, 16, 1
	v_add3_u32 v97, v91, v97, 0x7fff
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v101, v131, v101, s14
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v95, v95
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v181.h, 0x7fff, v98.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v91, v91
	v_add3_u32 v1, v96, v1, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v101, v101
	v_mul_f32_e32 v85, v95, v85
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b16 v181.l, 0x7fff, v97.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v96, v96
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v80, v101, v80
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v85, 0, v85, s1
	v_cndmask_b32_e64 v84, 0, v84, s1
	v_cndmask_b32_e64 v8, 0, v8, s0
	v_cndmask_b16 v182.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v15, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v112, v112
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v130.h, v108.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v1, v15, v1, 0x7fff
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v81.l, v108.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v93, v110, v78
	v_mul_f32_e32 v78, v103, v78
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v83, 0, v83, s1
	v_cndmask_b16 v182.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v2, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v95, v112, v76
	v_mul_f32_e32 v76, v105, v76
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v75, 0, v75, s0
	v_add3_u32 v1, v2, v1, 0x7fff
	.loc	1 691 36                        ; attention_backward.py:691:36
	scratch_load_b32 v2, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v100, -16, v130
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v106, v106
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v82, 0, v82, s1
	v_cndmask_b16 v179.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v65, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v132.h, v108.l
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v100, v130, v100, s13
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v89, v106, v81
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v1, v65, v1, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s15, 0, v104.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v102, -16, v132
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v100, v100
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v89, 0, v89, s0
	v_cndmask_b16 v179.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v3, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v102, v132, v102, s15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v81, v100, v81
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v77.l, v108.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v1, v3, v1, 0x7fff
	.loc	1 691 36                        ; attention_backward.py:691:36
	scratch_load_b32 v3, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v111, v111
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v81, 0, v81, s1
	v_cndmask_b16 v180.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v88, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v88, v88
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_dual_mul_f32 v79, v102, v79 :: v_dual_mul_f32 v94, v111, v77
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v90, 0, v90, s0
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v1, v88, v1, 0x7fff
	v_cndmask_b32_e64 v80, 0, v80, s1
	v_cndmask_b32_e64 v92, 0, v92, s0
	v_cndmask_b32_e64 v79, 0, v79, s1
	v_cndmask_b32_e64 v93, 0, v93, s0
	v_cndmask_b16 v180.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v4, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v134.h, v108.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v78, 0, v78, s1
	v_cndmask_b32_e64 v94, 0, v94, s0
	v_add3_u32 v1, v4, v1, 0x7fff
	.loc	1 691 36                        ; attention_backward.py:691:36
	scratch_load_b32 v4, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v104, -16, v134
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v95, 0, v95, s0
	v_cndmask_b32_e64 v76, 0, v76, s1
	v_cndmask_b16 v177.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v87, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v87, v87
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v104, v134, v104, s17
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s48, s50
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v1, v87, v1, 0x7fff
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s53, -1, 0
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v104, v104
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s57, s50
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_mul_i32 s3, s90, s59
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v177.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v5, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v77, v104, v77
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s51, s50
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v1, v5, v1, 0x7fff
	.loc	1 691 36                        ; attention_backward.py:691:36
	scratch_load_b32 v5, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v77, 0, v77, s1
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s78, s50
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v178.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v86, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v86, v86
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s85, -1, 0
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_add_i32 s3, s89, s3
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_mov_b32 s42, s62
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v1, v86, v1, 0x7fff
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_mov_b32 s43, s63
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v243, v242
	v_mov_b32_e32 v245, v242
	v_mov_b32_e32 v247, v242
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v178.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v6, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v249, v242
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s46, s62
	s_mov_b32 s47, s63
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v1, v6, v1, 0x7fff
	.loc	1 691 36                        ; attention_backward.py:691:36
	scratch_load_b32 v6, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s70, s62
	s_mov_b32 s71, s63
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s18, s4, s97
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v175.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v85, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v85, v85
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s17, s4, s98
	s_and_b32 s16, s4, s99
	s_and_b32 s15, s4, s100
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v1, v85, v1, 0x7fff
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s14, s4, s101
	s_and_b32 s13, s4, s102
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s90, s90, 32
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v175.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v7, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	.loc	1 697 25                        ; attention_backward.py:697:25
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v1, v7, v1, 0x7fff
	.loc	1 691 36                        ; attention_backward.py:691:36
	scratch_load_b32 v7, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 697 25                        ; attention_backward.py:697:25
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v176.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v84, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v84, v84
	.loc	1 697 25                        ; attention_backward.py:697:25
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v244, v242
	v_mov_b32_e32 v246, v242
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v1, v84, v1, 0x7fff
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v248, v242
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v176.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v8, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v8, v1, 0x7fff
	.loc	1 691 36                        ; attention_backward.py:691:36
	scratch_load_b32 v8, off, off offset:292 ; 4-byte Folded Reload
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
	v_bfe_u32 v1, v92, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v92, v92
	v_add3_u32 v1, v92, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v109.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v79, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	v_add3_u32 v1, v79, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v109.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v93, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v93, v93
	v_add3_u32 v1, v93, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v110.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v78, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v78, v78
	v_add3_u32 v1, v78, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v110.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v94, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v94, v94
	v_add3_u32 v1, v94, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v106.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v77, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v77, v77
	v_add3_u32 v1, v77, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v106.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v95, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v95, v95
	v_add3_u32 v1, v95, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v107.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v76, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v76, v76
	v_add3_u32 v1, v76, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v107.h, 0x7fff, v1.h, vcc_lo
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_add_lshl_u32 v1, s3, v254, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s35
	buffer_load_u16 v1, v1, s[40:43], 0 offen
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v2, s3, v2, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s33
	buffer_load_u16 v2, v2, s[40:43], 0 offen
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v3, s3, v3, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s30
	buffer_load_u16 v3, v3, s[40:43], 0 offen
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v4, s3, v4, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v4, 0x80000000, v4, s28
	buffer_load_u16 v4, v4, s[40:43], 0 offen
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v5, s3, v5, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s36
	buffer_load_u16 v5, v5, s[40:43], 0 offen
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v6, s3, v6, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v6, 0x80000000, v6, s34
	buffer_load_u16 v6, v6, s[40:43], 0 offen
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v7, s3, v7, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s31
	buffer_load_u16 v7, v7, s[40:43], 0 offen
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v8, s3, v8, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v8, 0x80000000, v8, s29
	buffer_load_u16 v8, v8, s[40:43], 0 offen
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s42, s74, s77
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s74, s62
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_waitcnt vmcnt(7)
	v_cndmask_b16 v1.l, 0xff80, v1.l, s35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v108.h, v1.l
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v108
	.loc	1 697 25 is_stmt 0              ; attention_backward.py:697:25
	s_and_b32 s11, s35, s3
	.loc	1 712 26 is_stmt 1              ; attention_backward.py:712:26
	s_and_b32 s35, s4, s20
	s_and_b32 s20, s4, s95
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_waitcnt vmcnt(3)
	v_cndmask_b16 v1.h, 0xff80, v5.l, s36
	.loc	1 696 35                        ; attention_backward.py:696:35
	scratch_load_b32 v5, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, 0, v5
	ds_store_b32 v5, v1
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_mov_b16_e32 v1.l, v108.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v1
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_cndmask_b16 v1.l, 0xff80, v2.l, s33
	.loc	1 696 35                        ; attention_backward.py:696:35
	scratch_load_b32 v2, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_cndmask_b16 v1.h, 0xff80, v6.l, s34
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_and_b32 s12, s36, vcc_lo
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_mov_b16_e32 v108.h, v1.l
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s36, s4, s19
	s_and_b32 s19, s4, s96
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v108
	.loc	1 697 25 is_stmt 0              ; attention_backward.py:697:25
	s_and_b32 s8, s33, s3
	.loc	1 712 26 is_stmt 1              ; attention_backward.py:712:26
	s_and_b32 s33, s4, s23
	s_and_b32 s23, s4, s92
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	ds_store_b32 v2, v1
	scratch_load_b32 v2, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_mov_b16_e32 v1.l, v108.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v1
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_cndmask_b16 v1.h, 0xff80, v7.l, s31
	v_cndmask_b16 v1.l, 0xff80, v3.l, s30
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_and_b32 s10, s34, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s34, s4, s21
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_mov_b16_e32 v108.h, v1.l
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s21, s4, s94
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v108
	.loc	1 697 25 is_stmt 0              ; attention_backward.py:697:25
	s_and_b32 s6, s30, s3
	.loc	1 712 26 is_stmt 1              ; attention_backward.py:712:26
	s_and_b32 s30, s4, s25
	s_and_b32 s25, s4, s75
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s75, s63
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	ds_store_b32 v2, v1
	scratch_load_b32 v2, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_mov_b16_e32 v1.l, v108.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v1
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_cndmask_b16 v1.h, 0xff80, v8.l, s29
	v_cndmask_b16 v1.l, 0xff80, v4.l, s28
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_and_b32 s7, s31, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s31, s4, s24
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_mov_b16_e32 v108.h, v1.l
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s24, s4, s91
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v108
	.loc	1 697 25 is_stmt 0              ; attention_backward.py:697:25
	s_and_b32 s3, s28, s3
	.loc	1 712 26 is_stmt 1              ; attention_backward.py:712:26
	s_and_b32 s28, s4, s27
	s_and_b32 s27, s4, s66
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	ds_store_b32 v2, v1
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_mov_b16_e32 v1.l, v108.l
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:336
	scratch_load_b32 v3, off, off offset:340
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v1
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v1, off, off offset:296
	scratch_load_b32 v4, off, off offset:344
	scratch_load_b32 v5, off, off offset:352
	scratch_load_b32 v6, off, off offset:356
	scratch_load_b32 v7, off, off offset:360
	scratch_load_b32 v8, off, off offset:364
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_and_b32 s9, s29, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s29, s4, s26
	s_and_b32 s26, s4, s67
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v1, 0, v1
	.loc	1 691 36                        ; attention_backward.py:691:36
	ds_load_u16 v1, v1
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 696 35                        ; attention_backward.py:696:35
	v_mul_f32_e32 v15, 0x3fb8aa3b, v1
	.loc	1 696 25 is_stmt 0              ; attention_backward.py:696:25
	scratch_load_b32 v1, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 691 36 is_stmt 1              ; attention_backward.py:691:36
	ds_load_u16 v2, v2
	.loc	1 696 25                        ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v15, v66, v1
	scratch_load_b32 v1, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 691 36                        ; attention_backward.py:691:36
	ds_load_u16 v3, v3
	s_waitcnt lgkmcnt(1)
	v_lshlrev_b32_e32 v2, 16, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 696 35                        ; attention_backward.py:696:35
	v_mul_f32_e32 v65, 0x3fb8aa3b, v2
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v2, 0, 1, s11
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 696 35                        ; attention_backward.py:696:35
	v_mul_f32_e32 v75, 0x3fb8aa3b, v3
	.loc	1 696 25 is_stmt 0              ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v65, v67, v1
	scratch_load_b32 v1, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 691 36 is_stmt 1              ; attention_backward.py:691:36
	ds_load_u16 v4, v4
	.loc	1 696 25                        ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v75, v68, v1
	scratch_load_b32 v1, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 691 36                        ; attention_backward.py:691:36
	ds_load_u16 v5, v5
	s_waitcnt lgkmcnt(1)
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v76, 0x3fb8aa3b, v4 :: v_dual_lshlrev_b32 v5, 16, v5
	v_mul_f32_e32 v5, 0x3fb8aa3b, v5
	.loc	1 696 25 is_stmt 0              ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v76, v69, v1
	scratch_load_b32 v1, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 691 36 is_stmt 1              ; attention_backward.py:691:36
	ds_load_u16 v6, v6
	.loc	1 696 25                        ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v5, v70, v1
	scratch_load_b32 v1, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 691 36                        ; attention_backward.py:691:36
	ds_load_u16 v7, v7
	s_waitcnt lgkmcnt(1)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v6, 0x3fb8aa3b, v6 :: v_dual_lshlrev_b32 v7, 16, v7
	.loc	1 696 25 is_stmt 0              ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v6, v71, v1
	scratch_load_b32 v1, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 696 35                        ; attention_backward.py:696:35
	v_mul_f32_e32 v7, 0x3fb8aa3b, v7
	.loc	1 691 36 is_stmt 1              ; attention_backward.py:691:36
	ds_load_u16 v8, v8
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v8, 0x3fb8aa3b, v8 :: v_dual_fmac_f32 v7, v72, v1
	.loc	1 696 25 is_stmt 0              ; attention_backward.py:696:25
	scratch_load_b32 v1, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 697 25 is_stmt 1              ; attention_backward.py:697:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 696 25                        ; attention_backward.py:696:25
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v8, v73, v1
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v1, 0, 1, s12
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s12, s4, s103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_lshlrev_b16 v1.l, 8, v1.l
	v_or_b16 v1.l, v2.l, v1.l
	scratch_load_b32 v2, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, 0, v2
	ds_store_b16 v2, v1
	v_cndmask_b32_e64 v1, 0, 1, s10
	v_cndmask_b32_e64 v2, 0, 1, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v1.l, 8, v1.l
	v_or_b16 v1.l, v2.l, v1.l
	scratch_load_b32 v2, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v2, v1
	v_cndmask_b32_e64 v1, 0, 1, s7
	v_cndmask_b32_e64 v2, 0, 1, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v1.l, 8, v1.l
	v_or_b16 v1.l, v2.l, v1.l
	scratch_load_b32 v2, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v2, v1
	v_cndmask_b32_e64 v1, 0, 1, s9
	v_cndmask_b32_e64 v2, 0, 1, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v1.l, 8, v1.l
	v_or_b16 v1.l, v2.l, v1.l
	scratch_load_b32 v2, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, 0, v1
	ds_load_u8_d16 v1, v2
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v1, v2 offset:64
	ds_load_u8_d16 v2, v205
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v2, v205 offset:64
	ds_load_u8_d16 v3, v157
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v3, v157 offset:64
	ds_load_u8_d16 v4, v158
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v4, v158 offset:64
	v_and_b16 v1.l, 1, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v1.l
	v_and_b16 v1.l, 1, v2.l
	v_cmp_eq_u16_e64 s3, 1, v1.l
	v_and_b16 v1.l, 1, v3.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s6, 1, v1.l
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
	s_and_b32 s5, s4, s55
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v2, v1, s[44:47], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v73, v1, s[68:71], 0 offen
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(1)
	v_sub_f32_e32 v3, v65, v2
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v65, v242 :: v_dual_mov_b32 v72, v249
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v1, v15, v2
	v_sub_f32_e32 v4, v75, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v3, v3
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v15, v76, v2
	v_sub_f32_e32 v5, v5, v2
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v1, v1
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v6, v6, v2
	v_sub_f32_e32 v7, v7, v2
	v_sub_f32_e32 v2, v8, v2
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v5, v5
	v_exp_f32_e32 v8, v15
	v_exp_f32_e32 v6, v6
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v184, 0, v3, s3
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s3, s4, s93
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v2, v2
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v183, 0, v1, vcc_lo
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v1, s42, v0, 1
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v7, v7
	v_exp_f32_e32 v4, v4
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v187, 0, v5, s8
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s8, s4, s52
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v1, 0x80000000, v1, s36
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v188, 0, v6, s9
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s9, s4, s79
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v190, 0, v2, s11
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s11, s4, s104
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v113, v1, s[72:75], 0 offen
	scratch_load_b32 v1, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v189, 0, v7, s10
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s10, s4, vcc_hi
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v186, 0, v8, s7
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s7, s4, s53
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v185, 0, v4, s6
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s6, s4, s54
	s_and_b32 vcc_lo, s4, s85
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v66, v243 :: v_dual_mov_b32 v67, v244
	v_dual_mov_b32 v68, v245 :: v_dual_mov_b32 v69, v246
	v_dual_mov_b32 v70, v247 :: v_dual_mov_b32 v71, v248
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_i32 s90, s83
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s42, v1, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s35
	buffer_load_u16 v137, v1, s[72:75], 0 offen
	scratch_load_b32 v1, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v113.h, v137.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s42, v1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s34
	buffer_load_u16 v114, v1, s[72:75], 0 offen
	scratch_load_b32 v1, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s42, v1, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s33
	buffer_load_u16 v138, v1, s[72:75], 0 offen
	scratch_load_b32 v1, off, off offset:440 ; 4-byte Folded Reload
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v114.h, v138.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s42, v1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s31
	buffer_load_u16 v115, v1, s[72:75], 0 offen
	scratch_load_b32 v1, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s42, v1, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s30
	buffer_load_u16 v139, v1, s[72:75], 0 offen
	scratch_load_b32 v1, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v115.h, v139.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s42, v1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s29
	buffer_load_u16 v116, v1, s[72:75], 0 offen
	scratch_load_b32 v1, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s42, v1, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s28
	buffer_load_u16 v140, v1, s[72:75], 0 offen
	scratch_load_b32 v1, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v116.h, v140.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s42, v1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s27
	buffer_load_u16 v117, v1, s[72:75], 0 offen
	scratch_load_b32 v1, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s42, v1, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s26
	buffer_load_u16 v141, v1, s[72:75], 0 offen
	scratch_load_b32 v1, off, off offset:476 ; 4-byte Folded Reload
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v117.h, v141.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s42, v1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s25
	buffer_load_u16 v118, v1, s[72:75], 0 offen
	v_add_lshl_u32 v1, s42, v31, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s24
	buffer_load_u16 v142, v1, s[72:75], 0 offen
	v_add_lshl_u32 v1, s42, v238, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s23
	buffer_load_u16 v119, v1, s[72:75], 0 offen
	v_add_lshl_u32 v1, s42, v155, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	buffer_load_u16 v143, v1, s[72:75], 0 offen
	v_add_lshl_u32 v1, s42, v17, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s21
	buffer_load_u16 v120, v1, s[72:75], 0 offen
	v_add_lshl_u32 v1, s42, v213, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s20
	buffer_load_u16 v144, v1, s[72:75], 0 offen
	v_add_lshl_u32 v1, s42, v236, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s19
	buffer_load_u16 v121, v1, s[72:75], 0 offen
	v_add_lshl_u32 v1, s42, v211, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s18
	buffer_load_u16 v145, v1, s[72:75], 0 offen
	v_add_lshl_u32 v1, s42, v222, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s17
	buffer_load_u16 v122, v1, s[72:75], 0 offen
	v_add_lshl_u32 v1, s42, v232, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s16
	buffer_load_u16 v146, v1, s[72:75], 0 offen
	v_add_lshl_u32 v1, s42, v210, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s15
	buffer_load_u16 v123, v1, s[72:75], 0 offen
	v_add_lshl_u32 v1, s42, v194, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s14
	buffer_load_u16 v147, v1, s[72:75], 0 offen
	v_add_lshl_u32 v1, s42, v159, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s13
	buffer_load_u16 v124, v1, s[72:75], 0 offen
	v_add_lshl_u32 v1, s42, v12, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s12
	buffer_load_u16 v148, v1, s[72:75], 0 offen
	v_add_lshl_u32 v1, s42, v160, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s11
	buffer_load_u16 v125, v1, s[72:75], 0 offen
	v_add_lshl_u32 v1, s42, v253, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s10
	buffer_load_u16 v149, v1, s[72:75], 0 offen
	v_add_lshl_u32 v1, s42, v13, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s9
	buffer_load_u16 v126, v1, s[72:75], 0 offen
	v_add_lshl_u32 v1, s42, v163, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s8
	buffer_load_u16 v150, v1, s[72:75], 0 offen
	v_add_lshl_u32 v1, s42, v20, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s7
	buffer_load_u16 v127, v1, s[72:75], 0 offen
	v_add_lshl_u32 v1, s42, v204, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s6
	buffer_load_u16 v151, v1, s[72:75], 0 offen
	v_add_lshl_u32 v1, s42, v195, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s5
	buffer_load_u16 v128, v1, s[72:75], 0 offen
	v_add_nc_u32_e32 v1, s77, v195
	v_add_lshl_u32 v1, s42, v1, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v152, v1, s[72:75], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:308 ; 4-byte Folded Reload
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
	scratch_load_b32 v1, off, off offset:428 ; 4-byte Folded Reload
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
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v214, v113
	ds_store_b16 v214, v117 offset:1024
	ds_store_b16 v214, v121 offset:2048
	ds_store_b16 v214, v125 offset:3072
	ds_store_b16 v215, v137
	ds_store_b16 v215, v141 offset:1024
	ds_store_b16 v215, v145 offset:2048
	ds_store_b16 v215, v149 offset:3072
	ds_store_b16 v216, v114
	ds_store_b16 v216, v118 offset:1024
	ds_store_b16 v216, v122 offset:2048
	ds_store_b16 v216, v126 offset:3072
	ds_store_b16 v217, v138
	ds_store_b16 v217, v142 offset:1024
	ds_store_b16 v217, v146 offset:2048
	ds_store_b16 v217, v150 offset:3072
	ds_store_b16 v218, v115
	ds_store_b16 v218, v119 offset:1024
	ds_store_b16 v218, v123 offset:2048
	ds_store_b16 v218, v127 offset:3072
	ds_store_b16 v219, v139
	ds_store_b16 v219, v143 offset:1024
	ds_store_b16 v219, v147 offset:2048
	ds_store_b16 v219, v151 offset:3072
	ds_store_b16 v220, v116
	ds_store_b16 v220, v120 offset:1024
	ds_store_b16 v220, v124 offset:2048
	ds_store_b16 v220, v128 offset:3072
	ds_store_b16 v221, v140
	ds_store_b16 v221, v144 offset:1024
	ds_store_b16 v221, v148 offset:2048
	ds_store_b16 v221, v152 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v1, off, off offset:460
	scratch_load_b32 v5, off, off offset:404
	scratch_load_b32 v15, off, off offset:408
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v1, 0, v1
	s_waitcnt vmcnt(1)
	ds_load_b128 v[5:8], v5
	s_waitcnt vmcnt(0)
	ds_load_b128 v[224:227], v15
	scratch_load_b32 v15, off, off offset:412 ; 4-byte Folded Reload
	ds_load_b128 v[74:77], v1
	scratch_load_b32 v1, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[228:231], v15
	scratch_load_b32 v15, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[78:81], v1
	scratch_load_b32 v1, off, off offset:396 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[196:203], v[74:81], v[65:72]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[74:77], off, off offset:200
	scratch_load_b128 v[78:81], off, off offset:216
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(3)
	ds_load_b128 v[166:169], v15
	scratch_load_b32 v15, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	ds_load_b128 v[1:4], v1
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[74:81], v[1:8], v[65:72]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:168
	scratch_load_b128 v[5:8], off, off offset:184
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	ds_load_b128 v[170:173], v15
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[1:8], v[224:231], v[65:72]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:136
	scratch_load_b128 v[5:8], off, off offset:152
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[1:8], v[166:173], v[65:72]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v2, v66, v73
	v_sub_f32_e32 v1, v65, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v3, v67, v73
	v_sub_f32_e32 v4, v68, v73
	v_sub_f32_e32 v5, v69, v73
	v_sub_f32_e32 v6, v70, v73
	v_sub_f32_e32 v7, v71, v73
	v_sub_f32_e32 v8, v72, v73
	.loc	1 720 30 is_stmt 0              ; attention_backward.py:720:30
	v_dual_mul_f32 v2, v184, v2 :: v_dual_mul_f32 v3, v185, v3
	v_dual_mul_f32 v4, v186, v4 :: v_dual_mul_f32 v5, v187, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v6, v188, v6 :: v_dual_mul_f32 v7, v189, v7
	v_mul_f32_e32 v8, v190, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 721 38 is_stmt 1              ; attention_backward.py:721:38
	v_dual_mul_f32 v2, s56, v2 :: v_dual_mul_f32 v1, v183, v1
	v_dual_mul_f32 v3, s56, v3 :: v_dual_mul_f32 v4, s56, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v5, s56, v5 :: v_dual_mul_f32 v6, s56, v6
	v_dual_mul_f32 v7, s56, v7 :: v_dual_mul_f32 v8, s56, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v1, s56, v1
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v15, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v15, v1, v15, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v15.h, vcc_lo
	v_bfe_u32 v15, v2, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v15, v2, v15, 0x7fff
	v_bfe_u32 v2, v3, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v15.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v2, v3, v2, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v3, v4, v3, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_bfe_u32 v4, v6, 16, 1
	v_cndmask_b16 v2.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v5, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v4, v6, v4, 0x7fff
	v_add3_u32 v3, v5, v3, 0x7fff
	v_bfe_u32 v5, v8, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v3.l, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_add3_u32 v5, v8, v5, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v7, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v4, v7, v4, 0x7fff
	v_cndmask_b16 v4.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	v_cndmask_b16 v4.h, 0x7fff, v5.h, vcc_lo
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	scratch_load_b32 v5, off, off offset:468 ; 4-byte Folded Reload
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v183, v183
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, 0, v5
	ds_store_b16 v5, v1
	ds_store_b16 v5, v3 offset:512
	ds_store_b16_d16_hi v234, v1
	ds_store_b16_d16_hi v234, v3 offset:512
	ds_store_b16 v9, v2
	ds_store_b16 v9, v4 offset:512
	ds_store_b16_d16_hi v10, v2
	ds_store_b16_d16_hi v10, v4 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:536 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, 0, v1
	ds_load_b128 v[66:69], v1
	scratch_load_b32 v1, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[70:73], v1
	scratch_load_b32 v1, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[74:77], v1
	scratch_load_b32 v1, off, off offset:444 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[78:81], v1
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_lshlrev_b32_e32 v1, 1, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v191, v214, v1
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
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[57:64], v[1:8], v[66:73], v[57:64]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v1, v183, 16, 1
	v_bfe_u32 v2, v185, 16, 1
	v_bfe_u32 v3, v186, 16, 1
	v_bfe_u32 v4, v187, 16, 1
	v_bfe_u32 v5, v188, 16, 1
	v_bfe_u32 v6, v189, 16, 1
	v_bfe_u32 v7, v190, 16, 1
	v_add3_u32 v1, v183, v1, 0x7fff
	v_add3_u32 v2, v185, v2, 0x7fff
	v_add3_u32 v3, v186, v3, 0x7fff
	v_add3_u32 v4, v187, v4, 0x7fff
	v_add3_u32 v5, v188, v5, 0x7fff
	v_add3_u32 v6, v189, v6, 0x7fff
	v_add3_u32 v7, v190, v7, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v2.l, v108.l
	v_mov_b16_e32 v3.l, v108.l
	v_mov_b16_e32 v4.l, v108.l
	v_mov_b16_e32 v5.l, v108.l
	v_mov_b16_e32 v6.l, v108.l
	v_mov_b16_e32 v7.l, v108.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v108.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v184, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v184, v184
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v167, v250 offset:2432
	ds_load_u16_d16 v168, v250 offset:2560
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v168, v250 offset:2688
	ds_load_u16_d16 v169, v250 offset:2816
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v1, v184, v1, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v1.l, v108.l
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v8, v183, v108
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v169, v250 offset:2944
	ds_load_u16_d16 v170, v250 offset:3072
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v1.h, 0x7fff, v1.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v185, v185
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v170, v250 offset:3200
	ds_load_u16_d16 v171, v250 offset:3328
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v2.h, 0x7fff, v2.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v186, v186
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v15, v184, v1
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v171, v250 offset:3456
	ds_load_u16_d16 v172, v250 offset:3584
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v3.h, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v187, v187
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v172, v250 offset:3712
	ds_load_u16_d16 v173, v250 offset:3840
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v4.h, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v188, v188
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v173, v250 offset:3968
	ds_load_u16_d16 v174, v250 offset:64
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v5.h, 0x7fff, v5.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v189, v189
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v174, v250 offset:192
	ds_load_u16_d16 v175, v250 offset:320
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v6.h, 0x7fff, v6.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v190, v190
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[57:64], v[166:173], v[74:81], v[57:64]
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v175, v250 offset:448
	ds_load_u16_d16 v176, v250 offset:576
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v7.h, 0x7fff, v7.h, vcc_lo
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	.loc	1 656 37                        ; attention_backward.py:656:37
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
	ds_load_u16_d16 v224, v250 offset:2112
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v224, v250 offset:2240
	ds_load_u16_d16 v225, v250 offset:2368
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[49:56], v[174:181], v[66:73], v[49:56]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add_nc_u32_e32 v73, 0, v28
	v_add_nc_u32_e32 v68, 0, v156
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v225, v250 offset:2496
	ds_load_u16_d16 v226, v250 offset:2624
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v226, v250 offset:2752
	ds_load_u16_d16 v227, v250 offset:2880
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v227, v250 offset:3008
	ds_load_u16_d16 v228, v250 offset:3136
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v228, v250 offset:3264
	ds_load_u16_d16 v229, v250 offset:3392
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v229, v250 offset:3520
	ds_load_u16_d16 v230, v250 offset:3648
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v230, v250 offset:3776
	ds_load_u16_d16 v231, v250 offset:3904
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v231, v250 offset:4032
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16_d16_hi v73, v108
	ds_store_b16_d16_hi v16, v1
	ds_store_b16_d16_hi v18, v2
	ds_store_b16_d16_hi v19, v3
	ds_store_b16_d16_hi v21, v4
	ds_store_b16_d16_hi v22, v5
	ds_store_b16_d16_hi v24, v6
	ds_store_b16_d16_hi v237, v7
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v1, v8, 16, 1
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_dual_sub_f32 v2, v185, v2 :: v_dual_sub_f32 v3, v186, v3
	v_dual_sub_f32 v4, v187, v4 :: v_dual_sub_f32 v5, v188, v5
	v_dual_sub_f32 v6, v189, v6 :: v_dual_sub_f32 v7, v190, v7
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[180:181], v68
	ds_load_b64 v[69:70], v240
	ds_load_b64 v[178:179], v241
	ds_load_b64 v[174:175], v26
	ds_load_b64 v[176:177], v27
	ds_load_b64 v[71:72], v29
	ds_load_b64 v[66:67], v30
	ds_load_b64 v[106:107], v32
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v108.h, v90.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v1, v8, v1, 0x7fff
	v_bfe_u32 v8, v15, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[49:56], v[224:231], v[74:81], v[49:56]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_add3_u32 v8, v15, v8, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v114.h, v69.l
	v_mov_b16_e32 v118.h, v70.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v1.h, 0x7fff, v8.h, vcc_lo
	v_bfe_u32 v8, v2, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v115.h, v174.l
	v_mov_b16_e32 v116.h, v71.l
	v_mov_b16_e32 v117.h, v106.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v8, v2, v8, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v119.h, v175.l
	v_mov_b16_e32 v120.h, v72.l
	v_mov_b16_e32 v121.h, v107.l
	v_mov_b16_e64 v69.l, v180.h
	v_mov_b16_e64 v174.l, v178.h
	v_mov_b16_e64 v71.l, v176.h
	v_mov_b16_e32 v106.l, v66.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v2.l, 0x7fff, v8.h, vcc_lo
	v_bfe_u32 v8, v3, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v175.l, v179.h
	v_mov_b16_e32 v107.l, v67.h
	v_mov_b16_e64 v70.l, v181.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v8, v3, v8, 0x7fff
	v_bfe_u32 v3, v4, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v72.l, v177.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v2.h, 0x7fff, v8.h, vcc_lo
	v_add3_u32 v3, v4, v3, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_bfe_u32 v4, v5, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v3.l, 0x7fff, v3.h, vcc_lo
	v_add3_u32 v4, v5, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_bfe_u32 v5, v7, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v3.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v6, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_add3_u32 v5, v7, v5, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cndmask_b16 v4.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v4.h, 0x7fff, v5.h, vcc_lo
	ds_store_b16 v73, v1
	ds_store_b16_d16_hi v16, v1
	ds_store_b16 v18, v2
	ds_store_b16_d16_hi v19, v2
	ds_store_b16 v21, v3
	ds_store_b16_d16_hi v22, v3
	ds_store_b16 v24, v4
	ds_store_b16_d16_hi v237, v4
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
	ds_load_b64 v[109:110], v240
	ds_load_b64 v[186:187], v241
	ds_load_b64 v[182:183], v26
	ds_load_b64 v[188:189], v27
	ds_load_b64 v[111:112], v29
	ds_load_b64 v[192:193], v30
	ds_load_b64 v[190:191], v32
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v3.l, v1.h
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_and_b32_e32 v4, 1, v4
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v3, 1, v3
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_store_b16 v214, v113
	ds_store_b16 v214, v137 offset:128
	ds_store_b16 v214, v114 offset:256
	ds_store_b16 v214, v138 offset:384
	ds_store_b16 v214, v115 offset:512
	ds_store_b16 v214, v139 offset:640
	ds_store_b16 v214, v116 offset:768
	ds_store_b16 v214, v140 offset:896
	ds_store_b16 v214, v117 offset:1024
	ds_store_b16 v214, v141 offset:1152
	ds_store_b16 v214, v118 offset:1280
	ds_store_b16 v214, v142 offset:1408
	ds_store_b16 v214, v119 offset:1536
	ds_store_b16 v214, v143 offset:1664
	ds_store_b16 v214, v120 offset:1792
	ds_store_b16 v214, v144 offset:1920
	ds_store_b16 v214, v121 offset:2048
	ds_store_b16 v214, v145 offset:2176
	ds_store_b16 v214, v122 offset:2304
	ds_store_b16 v214, v146 offset:2432
	ds_store_b16 v214, v123 offset:2560
	ds_store_b16 v214, v147 offset:2688
	ds_store_b16 v214, v124 offset:2816
	ds_store_b16 v214, v148 offset:2944
	ds_store_b16 v214, v125 offset:3072
	ds_store_b16 v214, v149 offset:3200
	ds_store_b16 v214, v126 offset:3328
	ds_store_b16 v214, v150 offset:3456
	ds_store_b16 v214, v127 offset:3584
	ds_store_b16 v214, v151 offset:3712
	ds_store_b16 v214, v128 offset:3840
	ds_store_b16 v214, v152 offset:3968
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v4, v2, v4, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v91
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
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v4, 1, v4
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_dual_mov_b32 v68, v71 :: v_dual_mov_b32 v69, v106
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
	v_mov_b32_e32 v71, v175
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v100.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v73, v107
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v5.l, v185.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v102
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v4, 1, v4
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e32 v5.h, v110.l
	v_mov_b16_e64 v6.l, v187.l
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
	v_mov_b16_e64 v6.h, v183.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v101.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v7.l, v189.l
	v_mov_b16_e32 v7.h, v112.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v103
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v4, 1, v4
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v8.l, v193.l
	v_mov_b16_e64 v8.h, v191.l
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
	v_mov_b16_e64 v183.l, v187.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v102.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v4.l, v2.h
	v_mov_b16_e32 v4.h, v108.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v191.l, v193.h
	v_mov_b16_e64 v110.l, v185.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v1, 0xffff0000, v104
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v4, 1, v4
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v112.l, v189.h
	v_mov_b32_e32 v113, v191
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v103.h, 0x7fff, v3.h, vcc_lo
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
	scratch_load_b32 v15, off, off offset:24
	scratch_load_b32 v75, off, off offset:28
	scratch_load_b32 v76, off, off offset:32
	scratch_load_b64 v[77:78], off, off offset:36
	scratch_load_b64 v[79:80], off, off offset:48
	scratch_load_b32 v78, off, off offset:44
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v233
	v_dual_mov_b32 v65, v14 :: v_dual_mov_b32 v66, v251
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_add_i32 s74, s90, s88
	v_mov_b32_e32 v67, v11
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s3, s50, v1
	v_dual_mov_b32 v68, v239 :: v_dual_mov_b32 v69, v252
	v_dual_mov_b32 v70, v23 :: v_dual_mov_b32 v71, v25
	v_or_b32_e32 v72, 30, v233
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_mul_i32 s20, s74, s76
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v2, s74, v233, 1
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v244, v242
	v_mov_b32_e32 v243, v242
	v_mov_b32_e32 v246, v242
	v_mov_b32_e32 v248, v242
	v_mov_b32_e32 v245, v242
	v_mov_b32_e32 v247, v242
	v_mov_b32_e32 v249, v242
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(11)
	v_or_b32_e32 v1, s90, v3
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v3, s74, v3, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s6, s50, v1
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
	v_cmp_gt_i32_e64 s7, s50, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v5
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v78, s20, v78
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v4, s74, v4, 1
	v_add_lshl_u32 v5, s74, v5, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s6
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s8, s50, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v6
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v6, s74, v6, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v5, 0x80000000, v5, s8
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s9, s50, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v7
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v7, s74, v7, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v6, 0x80000000, v6, s9
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s10, s50, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v8
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v8, s74, v8, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v7, 0x80000000, v7, s10
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s11, s50, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v15
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v15, s74, v15, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s50, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v65
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v65, s74, v65, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s12, s50, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v66
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v66, s74, v66, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v65, 0x80000000, v65, s12
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s13, s50, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v66, 0x80000000, v66, s13
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s14, s50, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v68
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v68, s74, v68, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s15, s50, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v69
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v69, s74, v69, 1
	v_cndmask_b32_e64 v68, 0x80000000, v68, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s16, s50, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v70
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v70, s74, v70, 1
	v_cndmask_b32_e64 v69, 0x80000000, v69, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s17, s50, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v71
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v71, s74, v71, 1
	v_cndmask_b32_e64 v70, 0x80000000, v70, s17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s18, s50, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v72
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v72, s74, v72, 1
	v_cndmask_b32_e64 v71, 0x80000000, v71, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s19, s50, v1
	v_mov_b32_e32 v1, v235
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v72, 0x80000000, v72, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 624 25                        ; attention_backward.py:624:25
	v_add_nc_u32_e32 v74, s74, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v1
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v67, s74, v67, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s5, s50, v1
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v1, 0x80000000, v2, s3
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_add_nc_u32_e32 v2, s20, v154
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s22, s3
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v67, 0x80000000, v67, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s22, s6
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v75, 0x80000000, v75, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s22, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v76, 0x80000000, v76, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s22, s8
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v77, 0x80000000, v77, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s22, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v78, 0x80000000, v78, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s22, s10
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v79, 0x80000000, v79, s3
	s_clause 0x5
	buffer_load_u8 v97, v2, s[60:63], 0 offen
	buffer_load_u8 v96, v75, s[60:63], 0 offen
	buffer_load_u8 v95, v76, s[60:63], 0 offen
	buffer_load_u8 v94, v77, s[60:63], 0 offen
	buffer_load_u8 v93, v78, s[60:63], 0 offen
	buffer_load_u8 v92, v79, s[60:63], 0 offen
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[75:76], off, off offset:56
	scratch_load_b64 v[76:77], off, off offset:480
	scratch_load_b64 v[77:78], off, off offset:488
	scratch_load_b64 v[78:79], off, off offset:496
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v2, 0x80000000, v8, s11
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s22, s11
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b64 v[79:80], off, off offset:64 ; 8-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v8, s20, v75
	v_lshl_add_u32 v75, s76, 4, v154
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v76, s20, v76
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v77, s20, v77
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v78, s20, v78
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	v_add_nc_u32_e32 v75, s20, v75
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s22, s12
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v75, 0x80000000, v75, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s22, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v76, 0x80000000, v76, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s22, s14
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v77, 0x80000000, v77, s3
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s3, s22, s15
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v78, 0x80000000, v78, s3
	s_clause 0x3
	buffer_load_u8 v101, v75, s[60:63], 0 offen
	buffer_load_u8 v100, v76, s[60:63], 0 offen
	buffer_load_u8 v99, v77, s[60:63], 0 offen
	buffer_load_u8 v98, v78, s[60:63], 0 offen
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[75:76], off, off offset:504
	scratch_load_b64 v[76:77], off, off offset:512
	scratch_load_b64 v[80:81], off, off offset:528
	scratch_load_b64 v[77:78], off, off offset:520
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v79, s20, v79
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v75, s20, v75
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v76, s20, v76
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v78, s20, v80
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s22, vcc_lo
	v_add_nc_u32_e32 v77, s20, v77
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s22, s16
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s22, s17
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_dual_cndmask_b32 v76, 0x80000000, v76 :: v_dual_lshlrev_b32 v73, 1, v74
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s22, s18
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s22, s19
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	s_clause 0x5
	buffer_load_u8 v104, v75, s[60:63], 0 offen
	buffer_load_u8 v102, v76, s[60:63], 0 offen
	buffer_load_u8 v107, v8, s[60:63], 0 offen
	buffer_load_u8 v106, v79, s[60:63], 0 offen
	buffer_load_u8 v105, v77, s[60:63], 0 offen
	buffer_load_u8 v103, v78, s[60:63], 0 offen
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v8, 0x80000000, v73, s5
	s_clause 0x10
	buffer_load_u16 v83, v15, s[64:67], 0 offen
	buffer_load_u16 v82, v65, s[64:67], 0 offen
	buffer_load_u16 v81, v66, s[64:67], 0 offen
	buffer_load_u16 v80, v67, s[64:67], 0 offen
	buffer_load_u16 v79, v68, s[64:67], 0 offen
	buffer_load_u16 v78, v69, s[64:67], 0 offen
	buffer_load_u16 v77, v70, s[64:67], 0 offen
	buffer_load_u16 v76, v71, s[64:67], 0 offen
	buffer_load_u16 v75, v72, s[64:67], 0 offen
	buffer_load_u16 v90, v1, s[64:67], 0 offen
	buffer_load_u16 v89, v3, s[64:67], 0 offen
	buffer_load_u16 v88, v4, s[64:67], 0 offen
	buffer_load_u16 v87, v5, s[64:67], 0 offen
	buffer_load_u16 v86, v6, s[64:67], 0 offen
	buffer_load_u16 v85, v7, s[64:67], 0 offen
	buffer_load_u16 v84, v2, s[64:67], 0 offen
	buffer_load_u16 v91, v8, s[64:67], 0 offen
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_dual_mov_b32 v66, v242 :: v_dual_add_nc_u32 v1, 0, v161
	v_dual_mov_b32 v67, v243 :: v_dual_mov_b32 v68, v244
	v_dual_mov_b32 v69, v245 :: v_dual_mov_b32 v70, v246
	v_dual_mov_b32 v71, v247 :: v_dual_mov_b32 v72, v248
	v_mov_b32_e32 v73, v249
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_store_b8 v206, v97
	ds_store_b8 v206, v96 offset:64
	ds_store_b8 v206, v101 offset:512
	ds_store_b8 v206, v100 offset:576
	ds_store_b8 v207, v95
	ds_store_b8 v207, v94 offset:64
	ds_store_b8 v207, v99 offset:512
	ds_store_b8 v207, v98 offset:576
	ds_store_b8 v208, v93
	ds_store_b8 v208, v92 offset:64
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
	scratch_load_b32 v3, off, off offset:312
	scratch_load_b64 v[108:109], off, off offset:72
	ds_load_b64 v[1:2], v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:316
	scratch_load_b32 v7, off, off offset:320
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
	v_or_b32_e32 v3, 20, v223
	v_or_b32_e32 v4, 4, v223
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v3, s90, v3
	v_or_b32_e32 v4, s90, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s6, s50, v3
	v_cmp_gt_i32_e64 s7, s50, v4
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v111, s39, v4
	v_add_nc_u32_e32 v115, s39, v3
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s34, s2, s6
	s_and_b32 s33, s2, s7
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[66:73], v[1:2], v[5:6], v[66:73] neg_lo:[1,1,0]
	scratch_load_b64 v[1:2], off, off offset:96 ; 8-byte Folded Reload
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v5, 24, v223
	v_or_b32_e32 v6, 8, v223
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v5, s90, v5
	v_or_b32_e32 v6, s90, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s8, s50, v5
	v_cmp_gt_i32_e64 s9, s50, v6
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v112, s39, v6
	v_add_nc_u32_e32 v109, s39, v5
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s31, s2, s8
	s_and_b32 s30, s2, s9
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[66:73], v[1:2], v[7:8], v[66:73] neg_lo:[1,1,0]
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v1, 16, v223
	v_or_b32_e32 v7, 28, v223
	v_or_b32_e32 v8, 12, v223
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v2, s90, v223
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v1, s90, v1
	v_or_b32_e32 v7, s90, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v8, s90, v8
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s3, s50, v2
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v108, s39, v2
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s50, v1
	v_cmp_gt_i32_e64 s10, s50, v7
	v_cmp_gt_i32_e64 s11, s50, v8
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v113, s39, v8
	v_add_nc_u32_e32 v114, s39, v1
	v_add_nc_u32_e32 v110, s39, v7
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s35, s2, s3
	s_and_b32 s28, s2, s11
	s_and_b32 s36, s2, vcc_lo
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_and_not1_b32 vcc_lo, exec_lo, s81
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s29, s2, s10
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e32 vcc_lo, v212, v108
	v_cmp_le_i32_e64 s3, v212, v111
	v_cmp_le_i32_e64 s6, v212, v112
	v_cmp_le_i32_e64 s7, v212, v113
	v_cmp_le_i32_e64 s8, v212, v114
	v_cmp_le_i32_e64 s9, v212, v115
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s12, s35, vcc_lo
	s_and_b32 s3, s33, s3
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s10, v212, v109
	v_cmp_le_i32_e64 s11, v212, v110
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s6, s30, s6
	s_and_b32 s7, s28, s7
	s_and_not1_b32 s13, s35, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s14, s33, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s8, s36, s8
	s_and_b32 s9, s34, s9
	s_or_b32 s35, s13, s12
	s_or_b32 s33, s14, s3
	s_and_not1_b32 s3, s30, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_and_not1_b32 s12, s28, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_and_b32 s10, s31, s10
	s_and_b32 s11, s29, s11
	s_or_b32 s30, s3, s6
	s_or_b32 s28, s12, s7
	s_and_not1_b32 s3, s36, exec_lo
	s_and_b32 s6, s8, exec_lo
	s_and_not1_b32 s7, s34, exec_lo
	s_and_b32 s8, s9, exec_lo
	s_or_b32 s36, s3, s6
	s_or_b32 s34, s7, s8
	s_and_not1_b32 s3, s31, exec_lo
	s_and_b32 s6, s10, exec_lo
	s_and_not1_b32 s7, s29, exec_lo
	s_and_b32 s8, s11, exec_lo
	s_or_b32 s31, s3, s6
	s_or_b32 s29, s7, s8
.LBB0_10:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 677 17 is_stmt 1              ; attention_backward.py:677:17
	s_and_not1_b32 vcc_lo, exec_lo, s80
	s_cbranch_vccnz .LBB0_7
; %bb.11:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v1, s37, v108
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v15, s38, v108
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v3, s37, v112
	v_subrev_nc_u32_e32 v5, s37, v114
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v108, s38, v112
	v_add_nc_u32_e32 v112, s38, v114
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v2, s37, v111
	v_subrev_nc_u32_e32 v4, s37, v113
	v_subrev_nc_u32_e32 v6, s37, v115
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v65, s38, v111
	v_add_nc_u32_e32 v111, s38, v113
	v_add_nc_u32_e32 v113, s38, v115
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v212, v1
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s3, v212, v15
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s6, v212, v5
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s7, v212, v112
	v_cmp_le_i32_e64 s8, v212, v113
	v_cmp_le_i32_e64 s9, v212, v65
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s10, vcc_lo, s3
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v212, v6
	v_cmp_ge_i32_e64 s3, v212, v2
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s6, s6, s7
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v7, s37, v109
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s11, s6, s36
	s_and_b32 s6, vcc_lo, s8
	s_and_b32 s7, s3, s9
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v212, v3
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s3, v212, v108
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v8, s37, v110
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v1, s38, v109
	v_add_nc_u32_e32 v15, s38, v110
	.loc	1 679 30 is_stmt 0              ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s8, v212, v111
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s14, vcc_lo, s3
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s3, v212, v4
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s12, s7, s33
	s_and_b32 s13, s6, s34
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s6, v212, v7
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s7, v212, v1
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v212, v8
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s9, v212, v15
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s10, s10, s35
	s_and_b32 s3, s3, s8
	s_and_b32 s6, s6, s7
	s_and_b32 s7, s14, s30
	s_and_b32 s8, vcc_lo, s9
	s_and_b32 s3, s3, s28
	s_and_not1_b32 s9, s35, exec_lo
	s_and_b32 s10, s10, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_or_b32 s35, s9, s10
	s_and_not1_b32 s9, s30, exec_lo
	s_and_not1_b32 s10, s28, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s6, s6, s31
	s_and_b32 s8, s8, s29
	s_or_b32 s30, s9, s7
	s_or_b32 s28, s10, s3
	s_and_not1_b32 s3, s36, exec_lo
	s_and_b32 s7, s11, exec_lo
	s_and_not1_b32 s14, s33, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s9, s34, exec_lo
	s_and_b32 s10, s13, exec_lo
	s_or_b32 s36, s3, s7
	s_and_not1_b32 s3, s31, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_and_not1_b32 s7, s29, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_or_b32 s33, s14, s12
	s_or_b32 s34, s9, s10
	s_or_b32 s31, s3, s6
	s_or_b32 s29, s7, s8
	s_branch .LBB0_7
.LBB0_12:                               ; %Flow350
	.loc	1 0 21                          ; attention_backward.py:0:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v66, off, off offset:548
	scratch_load_b32 v67, off, off offset:544
	v_readlane_b32 s54, v255, 4
	s_mul_i32 s53, s54, s77
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
.LBB0_14:                               ; %._crit_edge167
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	scratch_load_b32 v0, off, off offset:540 ; 4-byte Folded Reload
	.loc	1 753 13                        ; attention_backward.py:753:13
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v16, s54, v66
	v_readlane_b32 s40, v255, 0
	v_readlane_b32 s41, v255, 1
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	v_mul_lo_u32 v16, v16, s82
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_mov_b32 s36, s40
	s_and_b32 s37, s41, 0xffff
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v21, s77, v66
	v_readlane_b32 s42, v255, 2
	v_readlane_b32 s43, v255, 3
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, v0, v67
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
	v_add_lshl_u32 v1, v1, s53, 2
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
	v_add_lshl_u32 v0, v0, s53, 2
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
	s_and_b32 s37, s43, 0xffff
	s_mov_b32 s36, s42
	v_add_lshl_u32 v15, v15, s53, 2
	buffer_store_b32 v41, v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, v13, s53, 2
	v_add_lshl_u32 v14, v14, s53, 2
	v_add_lshl_u32 v12, v12, s53, 2
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
	v_add_lshl_u32 v11, v11, s53, 2
	s_clause 0x1
	buffer_store_b32 v44, v0, s[36:39], 0 offen
	buffer_store_b32 v45, v12, s[36:39], 0 offen
	v_add_lshl_u32 v0, v9, s53, 2
	v_add_lshl_u32 v10, v10, s53, 2
	v_add_lshl_u32 v8, v8, s53, 2
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
	v_add_lshl_u32 v7, v7, s53, 2
	s_clause 0x1
	buffer_store_b32 v48, v0, s[36:39], 0 offen
	buffer_store_b32 v33, v8, s[36:39], 0 offen
	v_add_lshl_u32 v0, v5, s53, 2
	v_add_lshl_u32 v6, v6, s53, 2
	v_add_lshl_u32 v4, v4, s53, 2
	v_add_lshl_u32 v3, v3, s53, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s6, s2, s6
	s_and_b32 s4, s2, s4
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v2, v2, s53, 2
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
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 556
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 556
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 24512
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 556
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 556
    .sgpr_count:     107
    .sgpr_spill_count: 9
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_bf16_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 138
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
