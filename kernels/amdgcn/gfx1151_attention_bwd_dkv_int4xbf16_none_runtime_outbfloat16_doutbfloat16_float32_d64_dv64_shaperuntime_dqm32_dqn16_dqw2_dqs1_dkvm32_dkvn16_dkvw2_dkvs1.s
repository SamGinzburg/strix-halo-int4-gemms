	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	v_xor_b32_e32 v16, 0x198, v0
	v_xor_b32_e32 v13, 0x88, v0
	v_xor_b32_e32 v14, 0x110, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v2, 4, v9
	v_or_b32_e32 v3, 6, v9
	v_or_b32_e32 v4, 8, v9
	v_or_b32_e32 v5, 10, v9
	v_or_b32_e32 v6, 12, v9
	v_or_b32_e32 v7, 14, v9
	v_bfe_u32 v49, v0, 4, 1
	v_and_b32_e32 v52, 15, v0
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshlrev_b32_e32 v37, 1, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v36, 32, v0
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
	.loc	1 514 33 is_stmt 0              ; attention_backward.py:514:33
	v_or_b32_e32 v193, s64, v49
	.loc	1 517 21 is_stmt 1              ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s31, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_readfirstlane_b32 s4, v1
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v1, 2, v9
	.loc	1 514 23 is_stmt 0              ; attention_backward.py:514:23
	v_or_b32_e32 v32, 8, v193
	v_or_b32_e32 v33, 10, v193
	v_or_b32_e32 v34, 12, v193
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_mul_f32 s4, s4, 0x4f7ffffe
	scratch_store_b32 off, v1, off offset:4 ; 4-byte Folded Spill
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v1, s64, v1
	v_or_b32_e32 v35, 14, v193
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
	v_mad_u64_u32 v[154:155], null, s34, v9, v[1:2]
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
	v_mad_u64_u32 v[5:6], null, s34, 6, v[154:155]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s18, s31
	v_cmp_gt_i32_e64 s10, s31, v7
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s19, s31
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[7:8], null, s34, 10, v[154:155]
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
	v_lshl_add_u32 v2, s34, 1, v154
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s23, s31
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v3, s34, 2, v154
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s33, s31
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v6, s34, 3, v154
	v_mov_b32_e32 v4, v5
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s51, -1, 0
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_add_i32 s65, s65, s64
	v_mad_u64_u32 v[8:9], null, s34, 12, v[154:155]
	s_mul_i32 s20, s65, s34
	s_clause 0x3                            ; 20-byte Folded Spill
	scratch_store_b32 off, v2, off offset:32
	scratch_store_b32 off, v3, off offset:36
	scratch_store_b64 off, v[4:5], off offset:40
	scratch_store_b32 off, v6, off offset:48
	v_add_nc_u32_e32 v9, s20, v154
	v_add_nc_u32_e32 v4, s20, v5
	v_add_nc_u32_e32 v5, s20, v6
	v_mov_b32_e32 v6, v7
	v_mad_u64_u32 v[10:11], null, s34, 14, v[154:155]
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
	s_mul_i32 s33, s65, s35
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
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s4, s31, v193
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s7, s2
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_hi_u32 s12, s40, s11
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s8, s2
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s8, s31, v32
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s9, s2
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s9, s31, v33
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, s10, s2
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s10, s31, v34
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
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v9, 1, v9
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v190, 0, v16
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_ashr_i32 s11, s15, 31
	s_mov_b32 s14, 0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v11, s35, v10
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_lshlrev_b32 v10, 1, v10
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s53, s13
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v187, 0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v12, s35, v11
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_lshlrev_b32 v11, 1, v11
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s52, s13
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v188, 0, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v15, s35, v12
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_lshlrev_b32 v12, 1, v12
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s50, s13
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v189, 0, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v13, s35, v15
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_lshlrev_b32 v15, 1, v15
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s48, s13
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt vmcnt(7)
	ds_store_b8 v187, v20
	s_waitcnt vmcnt(6)
	ds_store_b8 v187, v2 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v188, v3
	s_waitcnt vmcnt(4)
	ds_store_b8 v188, v4 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v189, v5
	s_waitcnt vmcnt(2)
	ds_store_b8 v189, v6 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v190, v7
	s_waitcnt vmcnt(0)
	ds_store_b8 v190, v8 offset:64
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v14, s35, v13
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v13, 1, v13
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s47, s13
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(0)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v16, s35, v14
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v21, 0x80000000, v13, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s46, s13
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_barrier
	v_lshlrev_b32_e32 v2, 5, v52
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v17, s35, v16
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v13, 1, v16
	v_lshlrev_b32_e32 v14, 1, v14
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_and_b32_e32 v3, 24, v37
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_add_lshl_u32 v8, s65, v49, 1
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v18, s35, v17
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v16, 1, v17
	v_cndmask_b32_e32 v22, 0x80000000, v14, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s45, s13
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v7, 2, v193
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v19, s35, v18
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v17, 0x80000000, v13, vcc_lo
	v_lshlrev_b32_e32 v13, 1, v18
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s43, s13
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_or_b32_e32 v4, v2, v3
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v14, s35, v19
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v23, 0x80000000, v16 :: v_dual_lshlrev_b32 v16, 1, v19
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s42, s13
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v5, 4, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v18, s35, v14
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v19, 0x80000000, v13 :: v_dual_lshlrev_b32 v14, 1, v14
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s41, s13
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v6, 8, v8
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v13, s35, v18
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v26, 0x80000000, v16, vcc_lo
	v_lshlrev_b32_e32 v16, 1, v18
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s19, s13
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s5, s31, v7
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v18, s35, v13
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v27, 0x80000000, v14, vcc_lo
	v_lshlrev_b32_e32 v13, 1, v13
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s18, s13
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v7, 12, v8
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v28, 0x80000000, v16, vcc_lo
	v_add_lshl_u32 v16, v18, s35, 1
	v_lshlrev_b32_e32 v14, 1, v18
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s44, s13
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_lshr_b32 s19, s11, 27
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v29, 0x80000000, v13, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s49, s13
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s11, s31, v35
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v30, 0x80000000, v14, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s51, s13
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v5, 0x80000000, v5, s5
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v31, 0x80000000, v16, vcc_lo
	s_clause 0xf
	buffer_load_u16 v20, v9, s[20:23], 0 offen
	buffer_load_u16 v18, v10, s[20:23], 0 offen
	buffer_load_u16 v16, v11, s[20:23], 0 offen
	buffer_load_u16 v14, v12, s[20:23], 0 offen
	buffer_load_u16 v13, v15, s[20:23], 0 offen
	buffer_load_u16 v12, v21, s[20:23], 0 offen
	buffer_load_u16 v11, v22, s[20:23], 0 offen
	buffer_load_u16 v10, v17, s[20:23], 0 offen
	buffer_load_u16 v25, v23, s[20:23], 0 offen
	buffer_load_u16 v24, v19, s[20:23], 0 offen
	buffer_load_u16 v23, v26, s[20:23], 0 offen
	buffer_load_u16 v22, v27, s[20:23], 0 offen
	buffer_load_u16 v21, v28, s[20:23], 0 offen
	buffer_load_u16 v19, v29, s[20:23], 0 offen
	buffer_load_u16 v17, v30, s[20:23], 0 offen
	buffer_load_u16 v15, v31, s[20:23], 0 offen
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v9, 4, v193
	v_or_b32_e32 v27, 6, v193
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v28, 0, v4
	v_xad_u32 v29, v4, 8, 0
	v_xad_u32 v30, v4, 16, 0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s6, s31, v9
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v9, 16, v8
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xad_u32 v31, v4, 24, 0
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v4, 0x80000000, v8, s4
	v_add_nc_u32_e32 v26, 20, v8
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s7, s31, v27
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v32, 0x80000000, v9, s8
	v_add_nc_u32_e32 v9, 24, v8
	v_add_nc_u32_e32 v8, 28, v8
	v_cndmask_b32_e64 v6, 0x80000000, v6, s6
	v_cndmask_b32_e64 v7, 0x80000000, v7, s7
	v_cndmask_b32_e64 v33, 0x80000000, v26, s9
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
	s_add_i32 s14, s64, s37
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_add_i32 s20, s38, s39
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s14, s14, s39
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_sub_i32 s20, s64, s20
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s14, s14, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 592 17                        ; attention_backward.py:592:17
	s_min_i32 s14, s30, s14
	.loc	1 590 24                        ; attention_backward.py:590:24
	s_max_i32 s14, s14, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 600 19                        ; attention_backward.py:600:19
	s_add_i32 s14, s14, 31
	.loc	1 600 18 is_stmt 0              ; attention_backward.py:600:18
	s_ashr_i32 s15, s14, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s15, s15, 27
	s_add_i32 s14, s14, s15
	.loc	1 589 24 is_stmt 1              ; attention_backward.py:589:24
	s_max_i32 s15, s20, 0
	.loc	1 600 17                        ; attention_backward.py:600:17
	s_and_b32 s20, s14, 0xffffffe0
	.loc	1 597 45                        ; attention_backward.py:597:45
	s_and_b32 s14, s15, 0x7fffffe0
	.loc	1 598 24                        ; attention_backward.py:598:24
	s_min_i32 s69, s69, s20
.LBB0_2:
	.loc	1 0 24 is_stmt 0                ; attention_backward.py:0:24
	s_clause 0x7
	buffer_load_u16 v27, v4, s[16:19], 0 offen
	buffer_load_u16 v26, v5, s[16:19], 0 offen
	buffer_load_u16 v9, v6, s[16:19], 0 offen
	buffer_load_u16 v8, v7, s[16:19], 0 offen
	buffer_load_u16 v7, v32, s[16:19], 0 offen
	buffer_load_u16 v6, v33, s[16:19], 0 offen
	buffer_load_u16 v5, v34, s[16:19], 0 offen
	buffer_load_u16 v4, v35, s[16:19], 0 offen
	ds_load_b64 v[32:33], v28
	ds_load_b64 v[28:29], v29
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_mul_i32 s15, s12, s25
	s_xor_b32 s16, s26, s27
	s_sub_i32 s15, s40, s15
	s_clause 0x1
	s_load_b128 s[40:43], s[0:1], 0x50
	s_load_b32 s68, s[0:1], 0x74
	s_add_i32 s17, s12, 1
	s_sub_i32 s18, s15, s25
	s_cmp_ge_u32 s15, s25
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_add_nc_u32_e32 v202, v187, v0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s12, s17, s12
	s_cselect_b32 s15, s18, s15
	s_add_i32 s17, s12, 1
	s_cmp_ge_u32 s15, s25
	s_cselect_b32 s12, s17, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s12, s12, s16
	s_sub_i32 s36, s12, s16
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[32:33], off offset:76
	scratch_store_b64 off, v[28:29], off offset:84
	ds_load_b64 v[28:29], v30
	.loc	1 717 21 is_stmt 1              ; attention_backward.py:717:21
	v_xor_b32_e32 v30, 0x1b0, v37
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v32, 1, v36
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cmp_lt_i32 s36, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_add_nc_u32_e32 v205, 0, v30
	v_xor_b32_e32 v30, 0x3f0, v37
	v_add_nc_u32_e32 v209, 0, v30
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[28:29], off offset:92 ; 8-byte Folded Spill
	ds_load_b64 v[28:29], v31
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xor_b32_e32 v31, 0x240, v37
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v206, 0, v31
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[28:29], off offset:100 ; 8-byte Folded Spill
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xor_b32_e32 v28, 0x90, v37
	v_xor_b32_e32 v29, 0x120, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v203, 0, v28
	v_add_nc_u32_e32 v204, 0, v29
	v_xor_b32_e32 v28, 0x2d0, v37
	v_xor_b32_e32 v29, 0x360, v37
	s_waitcnt vmcnt(23)
	ds_store_b16 v202, v20
	s_waitcnt vmcnt(15)
	ds_store_b16 v202, v25 offset:1024
	ds_store_b16 v203, v18
	s_waitcnt vmcnt(14)
	ds_store_b16 v203, v24 offset:1024
	ds_store_b16 v204, v16
	s_waitcnt vmcnt(13)
	ds_store_b16 v204, v23 offset:1024
	ds_store_b16 v205, v14
	s_waitcnt vmcnt(12)
	ds_store_b16 v205, v22 offset:1024
	v_add_nc_u32_e32 v207, 0, v28
	v_add_nc_u32_e32 v208, 0, v29
	ds_store_b16 v206, v13
	s_waitcnt vmcnt(11)
	ds_store_b16 v206, v21 offset:1024
	ds_store_b16 v207, v12
	s_waitcnt vmcnt(10)
	ds_store_b16 v207, v19 offset:1024
	ds_store_b16 v208, v11
	s_waitcnt vmcnt(9)
	ds_store_b16 v208, v17 offset:1024
	ds_store_b16 v209, v10
	s_waitcnt vmcnt(8)
	ds_store_b16 v209, v15 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cbranch_scc1 .LBB0_13
; %bb.3:                                ; %.lr.ph150
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	s_xor_b32 s12, s3, s29
	s_load_b32 s70, s[0:1], 0x80
	s_ashr_i32 s12, s12, 31
	s_clause 0x1
	s_load_b64 s[44:45], s[0:1], 0x48
	s_load_b128 s[48:51], s[0:1], 0x38
	s_xor_b32 s15, s24, s12
	s_clause 0x1
	s_load_b64 s[52:53], s[0:1], 0x0
	s_load_b64 s[56:57], s[0:1], 0x18
	s_sub_i32 s12, s15, s12
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	v_lshlrev_b32_e32 v1, 1, v1
	s_mul_i32 s0, s12, s29
	v_mov_b16_e32 v12.l, 0
	s_sub_i32 s3, s3, s0
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_sub_i32 s0, s64, s39
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v11, 1, v1
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_max_i32 s0, s0, 0
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v9.h, v8.l
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_and_b32 s0, s0, 0x7fffffe0
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v7.h, v6.l
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_max_u32 s0, s14, s0
	s_and_b32 s1, s67, exec_lo
	s_cselect_b32 s71, s0, s14
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s0, s68, v1
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v1.l, v12.l
	v_mov_b16_e32 v1.h, v26.l
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s1, s68, v11
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v11.l, v12.l
	v_mov_b16_e32 v11.h, v9.l
	v_mov_b16_e32 v9.l, v12.l
	scratch_store_b32 off, v1, off offset:112 ; 4-byte Folded Spill
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_and_b32_e32 v1, 7, v0
	v_mov_b32_e32 v223, v37
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v11, off offset:116
	scratch_store_b32 off, v49, off offset:324
	scratch_store_b32 off, v9, off offset:120
	v_lshlrev_b32_e32 v8, 4, v1
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v9.h, v7.l
	v_mov_b16_e32 v7.l, v12.l
	v_mov_b16_e32 v12.h, v27.l
	v_dual_mov_b32 v221, v0 :: v_dual_and_b32 v10, 16, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v9, off offset:124
	scratch_store_b32 off, v7, off offset:128
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshl_or_b32 v6, v52, 7, v8
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v7.h, v5.l
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v7, off offset:132
	scratch_store_b32 off, v12, off offset:108
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v12.h, v4.l
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v4, 0x70, v6, 0
	v_xad_u32 v5, 0x60, v6, 0
	v_xad_u32 v7, 0x50, v6, 0
	v_xad_u32 v8, v6, 64, 0
	scratch_store_b32 off, v12, off offset:136 ; 4-byte Folded Spill
	ds_load_b128 v[16:19], v4
	ds_load_b128 v[12:15], v5
	v_xad_u32 v9, v6, 48, 0
	v_xad_u32 v11, v6, 32, 0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v5, s35, v0
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v4, v6, 16, 0
	v_cmp_eq_u32_e32 vcc_lo, 0, v36
	v_lshl_or_b32 v230, v36, 6, v6
	v_lshlrev_b32_e32 v10, 2, v10
	.loc	1 613 26                        ; attention_backward.py:613:26
	s_mul_i32 s12, s12, s28
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[12:15], off offset:140
	scratch_store_b128 off, v[16:19], off offset:156
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[16:19], v7
	ds_load_b128 v[12:15], v8
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v8, s35, v5
	scratch_store_b32 off, v5, off offset:268 ; 4-byte Folded Spill
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_add_nc_u32_e32 v5, 0, v6
	v_lshlrev_b32_e32 v7, 4, v36
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s28, s36, s3
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v161, v32, v52
	s_add_i32 s28, s28, s12
	v_mov_b16_e64 v162.l, 0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[12:15], off offset:172
	scratch_store_b128 off, v[16:19], off offset:188
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[15:18], v9
	ds_load_b128 v[11:14], v11
	.loc	1 641 25                        ; attention_backward.py:641:25
	s_mul_f32 s72, s70, 0x3fb8aa3b
	s_cmp_lt_i32 s71, s69
	s_mov_b32 s29, 0
	s_cselect_b32 s73, -1, 0
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	s_and_b32 s57, s57, 0xffff
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[11:14], off offset:204
	scratch_store_b128 off, v[15:18], off offset:220
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[15:18], v4
	ds_load_b128 v[11:14], v5
	v_bfe_i32 v5, v0, 3, 1
	s_and_b32 s61, s51, 0xffff
	s_mov_b32 s60, s50
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s49, s49, 0xffff
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v52, off offset:320
	scratch_store_b32 off, v32, off offset:328
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[11:14], off offset:236
	scratch_store_b128 off, v[15:18], off offset:252
	v_or3_b32 v11, v3, v7, v2
	v_lshlrev_b32_e32 v2, 3, v0
	v_xor_b32_e32 v13, 16, v230
	v_xor_b32_e32 v14, 32, v230
	v_xor_b32_e32 v15, 48, v230
	v_xor_b32_e32 v3, 8, v11
	v_xor_b32_e32 v9, 16, v11
	v_mov_b32_e32 v236, v11
	v_xor_b32_e32 v16, 64, v230
	v_xor_b32_e32 v17, 0x60, v230
	v_add_nc_u32_e32 v3, 0, v3
	scratch_store_b32 off, v8, off offset:272 ; 4-byte Folded Spill
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v8, s35, v8
	v_add_nc_u32_e32 v191, 0, v17
	scratch_store_b32 off, v3, off offset:280 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v9
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v4, s35, v8
	scratch_store_b32 off, v8, off offset:276 ; 4-byte Folded Spill
	v_dual_mov_b32 v9, 0 :: v_dual_lshlrev_b32 v8, 6, v0
	v_mov_b32_e32 v41, 0
	v_dual_mov_b32 v222, v4 :: v_dual_add_nc_u32 v7, s35, v4
	v_mov_b32_e32 v43, v57
	v_mov_b32_e32 v44, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v45, v57 :: v_dual_add_nc_u32 v12, s35, v7
	v_mov_b32_e32 v47, v57
	v_mov_b32_e32 v35, v57
	v_mov_b32_e32 v33, 0
	v_dual_mov_b32 v39, v57 :: v_dual_add_nc_u32 v0, s35, v12
	v_mov_b32_e32 v232, v12
	v_mov_b32_e32 v42, v57
	v_mov_b32_e32 v46, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v48, v57 :: v_dual_mov_b32 v225, v0
	v_add_nc_u32_e32 v0, s35, v0
	v_dual_mov_b32 v34, v57 :: v_dual_mov_b32 v237, v0
	v_add_nc_u32_e32 v0, s35, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v228, v0
	v_add_nc_u32_e32 v0, s35, v0
	v_dual_mov_b32 v251, v0 :: v_dual_add_nc_u32 v0, s35, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v252, v0
	v_add_nc_u32_e32 v0, s35, v0
	v_and_b32_e32 v4, 48, v2
	v_mov_b32_e32 v226, v7
	v_cndmask_b32_e64 v7, 0x420, 0, vcc_lo
	v_xor_b32_e32 v2, v2, v37
	v_dual_mov_b32 v253, v0 :: v_dual_add_nc_u32 v0, s35, v0
	v_lshl_or_b32 v1, v1, 6, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_and_or_b32 v5, 0x210, v5, v7
	v_lshl_or_b32 v235, v52, 6, v4
	v_xor_b32_e32 v4, 0x70, v230
	v_mov_b32_e32 v224, v0
	v_dual_mov_b32 v37, v57 :: v_dual_add_nc_u32 v0, s35, v0
	v_xor_b32_e32 v21, 16, v235
	v_xor_b32_e32 v22, 32, v235
	v_xor_b32_e32 v23, 48, v235
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v255, v0
	v_and_or_b32 v7, v2, 48, v8
	v_xor_b32_e32 v2, 24, v11
	v_xor_b32_e32 v11, v5, v1
	v_add_nc_u32_e32 v0, s35, v0
	v_lshlrev_b32_e32 v12, 1, v52
	v_xor_b32_e32 v1, 16, v7
	v_xor_b32_e32 v5, 32, v7
	v_mov_b32_e32 v234, v7
	v_xor_b32_e32 v7, 48, v7
	v_add_nc_u32_e32 v2, 0, v2
	v_add_nc_u32_e32 v1, 0, v1
	v_mov_b32_e32 v229, v0
	v_add_nc_u32_e32 v231, s35, v0
	v_add_nc_u32_e32 v0, 0, v5
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v3, off offset:284
	scratch_store_b32 off, v2, off offset:288
	scratch_store_b32 off, v1, off offset:292
	v_add_nc_u32_e32 v249, s35, v231
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v7
	v_add3_u32 v238, 0, v36, v12
	v_mov_b32_e32 v1, 0
	v_or3_b32 v233, v12, v10, v36
	v_xor_b32_e32 v8, 16, v11
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v13
	v_xor_b32_e32 v6, 32, v11
	v_mov_b32_e32 v227, v11
	v_xor_b32_e32 v11, 48, v11
	v_xor_b32_e32 v10, 0x50, v230
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v14
	v_xor_b32_e32 v18, 0x90, v233
	v_xor_b32_e32 v19, 0x120, v233
	v_xor_b32_e32 v20, 0x1b0, v233
	v_dual_mov_b32 v14, v57 :: v_dual_add_nc_u32 v247, 0, v8
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v15
	v_add_nc_u32_e32 v248, 0, v6
	v_add_nc_u32_e32 v250, 0, v11
	v_add_nc_u32_e32 v198, 0, v10
	v_add_nc_u32_e32 v183, 0, v4
	v_mov_b32_e32 v4, v57
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v16
	v_mov_b32_e32 v16, v57
	v_add_nc_u32_e32 v254, s35, v249
	v_add_nc_u32_e32 v194, 0, v18
	v_dual_mov_b32 v6, v57 :: v_dual_add_nc_u32 v195, 0, v19
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	v_add_nc_u32_e32 v192, s35, v254
	v_add_nc_u32_e32 v196, 0, v20
	v_dual_mov_b32 v8, v57 :: v_dual_add_nc_u32 v197, 0, v21
	v_add_nc_u32_e32 v200, 0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v199, s35, v192
	v_dual_mov_b32 v10, v57 :: v_dual_add_nc_u32 v201, 0, v23
	v_mov_b32_e32 v11, v57
	v_mov_b32_e32 v12, v57
	v_dual_mov_b32 v13, v57 :: v_dual_add_nc_u32 v176, s35, v199
	v_mov_b32_e32 v15, v57
	v_mov_b32_e32 v2, v57
	v_mov_b32_e32 v3, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v177, s35, v176
	v_mov_b32_e32 v5, v57
	v_dual_mov_b32 v7, v57 :: v_dual_add_nc_u32 v178, s35, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v179, s35, v178
	v_add_nc_u32_e32 v180, s35, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v181, s35, v180
	v_add_nc_u32_e32 v182, s35, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v36, v57 :: v_dual_add_nc_u32 v175, s35, v182
	v_dual_mov_b32 v38, v57 :: v_dual_add_nc_u32 v155, s35, v175
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v40, v57 :: v_dual_add_nc_u32 v159, s35, v155
	v_mad_u64_u32 v[167:168], null, s34, 18, v[154:155]
	v_mad_u64_u32 v[168:169], null, s34, 20, v[154:155]
	v_mad_u64_u32 v[169:170], null, s34, 22, v[154:155]
	v_mad_u64_u32 v[170:171], null, s34, 24, v[154:155]
	v_mad_u64_u32 v[171:172], null, s34, 26, v[154:155]
	v_mad_u64_u32 v[172:173], null, s34, 28, v[154:155]
	v_mad_u64_u32 v[173:174], null, s34, 30, v[154:155]
	.loc	1 520 26                        ; attention_backward.py:520:26
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v184, 16, v0
	v_or_b32_e32 v185, 18, v0
	v_or_b32_e32 v186, 20, v0
	v_or_b32_e32 v156, 22, v0
	v_or_b32_e32 v157, 24, v0
	v_or_b32_e32 v158, 26, v0
	v_or_b32_e32 v160, 28, v0
	v_or_b32_e32 v174, 30, v0
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
	scratch_load_b32 v17, off, off offset:272 ; 4-byte Folded Reload
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
	s_or_b32 s47, s75, 11
	s_or_b32 s62, s75, 12
	s_or_b32 s63, s75, 13
	s_or_b32 s82, s75, 14
	s_or_b32 s83, s75, 15
	s_or_b32 s84, s75, 16
	s_or_b32 s85, s75, 17
	s_or_b32 s93, s75, 18
	s_or_b32 s94, s75, 19
	s_or_b32 s95, s75, 20
	s_or_b32 s96, s75, 21
	s_or_b32 s97, s75, 22
	s_or_b32 s98, s75, 23
	s_or_b32 s99, s75, 24
	s_or_b32 s100, s75, 25
	s_or_b32 s101, s75, 26
	s_or_b32 s102, s75, 27
	s_or_b32 s103, s75, 28
	s_or_b32 s104, s75, 29
	s_or_b32 vcc_lo, s75, 30
	s_or_b32 vcc_hi, s75, 31
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s75, s30
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v64, v57
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s3, s30
	v_add_nc_u32_e32 v62, s35, v159
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s14, s30
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v49, v49, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s15, s30
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v55.h, v55.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s16, s30
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v55.l, v162.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s17, s30
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v54.h, v54.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s18, s30
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v54.l, v162.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s19, s30
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v56, v56, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s20, s30
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v53.h, v53.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s21, s30
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v53.l, v162.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s22, s30
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v162.h, v85.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s47, s30
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v52.h, v52.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s22, -1, 0
	s_cmp_lt_i32 s62, s30
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v52.l, v162.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s63, s30
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v51, v51, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s21, -1, 0
	s_cmp_lt_i32 s82, s30
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v50, v50, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s83, s30
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v27, v27, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s84, s30
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v28.h, v28.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s85, s30
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v28.l, v162.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s93, s30
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s93, s46, s35
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s94, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v0, s93, v221, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s95, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v22, s93, v229, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s96, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v59, s93, v180, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s97, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v61, s93, v155, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s98, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v20, s93, v228, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s99, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v58, s93, v249, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s100, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v60, s93, v182, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s101, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v62, s93, v62, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s102, s30
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v26, v26, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s103, s30
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v29.h, v29.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s104, s30
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v29.l, v162.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 vcc_lo, s30
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v30, v30, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 vcc_hi, s30
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v21, v21, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s46, -1, 0
	.loc	1 712 26 is_stmt 1              ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s51
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s51, s55
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s75, s75, 32
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	.loc	1 715 36 is_stmt 1              ; attention_backward.py:715:36
	v_mov_b32_e32 v63, v57
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v17, s93, v17, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s50
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s50, s54
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x1
	buffer_load_u16 v106, v0, s[48:51], 0 offen
	buffer_load_u16 v107, v17, s[48:51], 0 offen
	v_add_lshl_u32 v0, s93, v222, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s92
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v17, s93, v251, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s91
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v108, v0, s[48:51], 0 offen
	v_add_lshl_u32 v0, s93, v232, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s90
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v109, v0, s[48:51], 0 offen
	v_add_lshl_u32 v0, s93, v237, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s89
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x1
	buffer_load_u16 v110, v0, s[48:51], 0 offen
	buffer_load_u16 v111, v17, s[48:51], 0 offen
	v_add_lshl_u32 v0, s93, v253, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s88
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v17, s93, v254, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s87
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v112, v0, s[48:51], 0 offen
	v_add_lshl_u32 v0, s93, v255, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s86
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v113, v0, s[48:51], 0 offen
	v_add_lshl_u32 v0, s93, v231, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s85
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x1
	buffer_load_u16 v114, v0, s[48:51], 0 offen
	buffer_load_u16 v115, v17, s[48:51], 0 offen
	v_add_lshl_u32 v0, s93, v199, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s84
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v17, s93, v181, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s83
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v116, v0, s[48:51], 0 offen
	v_add_lshl_u32 v0, s93, v177, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s82
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v117, v0, s[48:51], 0 offen
	v_add_lshl_u32 v0, s93, v179, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s63
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s63, s55
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x1
	buffer_load_u16 v118, v0, s[48:51], 0 offen
	buffer_load_u16 v119, v17, s[48:51], 0 offen
	v_add_lshl_u32 v0, s93, v175, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s62
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v17, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s62, s54
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s47
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s47, s55
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v120, v0, s[48:51], 0 offen
	v_add_lshl_u32 v0, s93, v159, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s27
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v121, v0, s[48:51], 0 offen
	scratch_load_b32 v0, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v17, s93, v17, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s93, v0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s26
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v18, 0x80000000, v17, vcc_lo
	v_add_lshl_u32 v17, s93, v226, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s25
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v19, 0x80000000, v17, vcc_lo
	v_add_lshl_u32 v17, s93, v225, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s23
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v25, 0x80000000, v20, vcc_lo
	v_add_lshl_u32 v20, s93, v252, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s22
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v23, 0x80000000, v20, vcc_lo
	v_add_lshl_u32 v20, s93, v224, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s21
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s20
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v31, 0x80000000, v22, vcc_lo
	s_clause 0x7
	buffer_load_u16 v17, v17, s[48:51], 0 offen
	buffer_load_u16 v19, v19, s[48:51], 0 offen
	buffer_load_u16 v22, v18, s[48:51], 0 offen
	buffer_load_u16 v24, v0, s[48:51], 0 offen
	buffer_load_u16 v18, v31, s[48:51], 0 offen
	buffer_load_u16 v20, v20, s[48:51], 0 offen
	buffer_load_u16 v23, v23, s[48:51], 0 offen
	buffer_load_u16 v25, v25, s[48:51], 0 offen
	v_add_lshl_u32 v0, s93, v192, 1
	v_add_lshl_u32 v31, s93, v176, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s18
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v32, 0x80000000, v31, vcc_lo
	v_add_lshl_u32 v31, s93, v178, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s17
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s3
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s14
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s15
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v60, 0x80000000, v60, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s16
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v61, 0x80000000, v61, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s46
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s46, s54
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	s_clause 0x7
	buffer_load_u16 v31, v31, s[48:51], 0 offen
	buffer_load_u16 v32, v32, s[48:51], 0 offen
	buffer_load_u16 v211, v0, s[48:51], 0 offen
	buffer_load_u16 v0, v58, s[48:51], 0 offen
	buffer_load_u16 v163, v62, s[48:51], 0 offen
	buffer_load_u16 v164, v61, s[48:51], 0 offen
	buffer_load_u16 v165, v60, s[48:51], 0 offen
	buffer_load_u16 v166, v59, s[48:51], 0 offen
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v59, v57 :: v_dual_lshlrev_b32 v58, 2, v86
	v_mov_b32_e32 v60, v57
	v_mov_b32_e32 v61, v57
	v_mov_b32_e32 v62, v57
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_cndmask_b32_e64 v58, 0x80000000, v58, s12
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v86, v58, s[44:47], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v87, v58, s[60:63], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v58, 0, v234
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 648 34                        ; attention_backward.py:648:34
	s_waitcnt vmcnt(6)
	v_and_b16 v0.h, v56.l, 15
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v32.h, v162.l
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_i32 s75, s69
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.h, v49.l, 15
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v109.h, v17.l
	v_mov_b16_e32 v108.h, v19.l
	v_mov_b16_e32 v107.h, v22.l
	v_mov_b16_e32 v106.h, v24.l
	v_mov_b16_e32 v113.h, v18.l
	v_mov_b16_e32 v112.h, v20.l
	v_mov_b16_e32 v111.h, v23.l
	v_mov_b16_e32 v110.h, v25.l
	ds_store_b128 v58, v[106:109]
	scratch_load_b32 v58, off, off offset:292 ; 4-byte Folded Reload
	v_mov_b16_e32 v117.h, v31.l
	v_mov_b16_e32 v116.h, v32.l
	v_mov_b16_e64 v115.h, v211.l
	v_mov_b16_e32 v114.h, v0.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v121.h, v163.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v120.h, v164.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v119.h, v165.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v118.h, v166.l
	s_waitcnt vmcnt(0)
	ds_store_b128 v58, v[110:113]
	scratch_load_b32 v58, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v58, v[114:117]
	scratch_load_b32 v58, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v58, v[118:121]
	v_add_nc_u32_e32 v58, 0, v227
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[150:153], v58
	ds_load_b128 v[142:145], v58 offset:2048
	ds_load_b128 v[146:149], v247
	ds_load_b128 v[138:141], v247 offset:2048
	ds_load_b128 v[134:137], v248
	ds_load_b128 v[126:129], v248 offset:2048
	ds_load_b128 v[130:133], v250
	ds_load_b128 v[122:125], v250 offset:2048
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_nc_u32_e32 v58, 0, v230
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v202, v106
	ds_store_b16 v202, v110 offset:1024
	ds_store_b16 v202, v114 offset:2048
	ds_store_b16 v202, v118 offset:3072
	ds_store_b16 v203, v24
	ds_store_b16 v203, v25 offset:1024
	ds_store_b16 v203, v0 offset:2048
	ds_store_b16 v203, v166 offset:3072
	ds_store_b16 v204, v107
	ds_store_b16 v204, v111 offset:1024
	ds_store_b16 v204, v115 offset:2048
	ds_store_b16 v204, v119 offset:3072
	ds_store_b16 v205, v22
	ds_store_b16 v205, v23 offset:1024
	ds_store_b16 v205, v211 offset:2048
	ds_store_b16 v205, v165 offset:3072
	ds_store_b16 v206, v108
	ds_store_b16 v206, v112 offset:1024
	ds_store_b16 v206, v116 offset:2048
	ds_store_b16 v206, v120 offset:3072
	ds_store_b16 v207, v19
	ds_store_b16 v207, v20 offset:1024
	ds_store_b16 v207, v32 offset:2048
	ds_store_b16 v207, v164 offset:3072
	ds_store_b16 v208, v109
	ds_store_b16 v208, v113 offset:1024
	ds_store_b16 v208, v117 offset:2048
	ds_store_b16 v208, v121 offset:3072
	ds_store_b16 v209, v17
	ds_store_b16 v209, v18 offset:1024
	ds_store_b16 v209, v31 offset:2048
	ds_store_b16 v209, v163 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[212:215], v58
	s_clause 0x2                            ; 36-byte Folded Reload
	scratch_load_b32 v58, off, off offset:304
	scratch_load_b128 v[239:242], off, off offset:236
	scratch_load_b128 v[243:246], off, off offset:252
	s_waitcnt vmcnt(2)
	ds_load_b128 v[216:219], v58
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v58, v57
	v_dual_mov_b32 v72, v64 :: v_dual_mov_b32 v67, v59
	v_dual_mov_b32 v71, v63 :: v_dual_mov_b32 v70, v62
	v_mov_b32_e32 v65, v57
	v_dual_mov_b32 v69, v61 :: v_dual_mov_b32 v68, v60
	v_mov_b32_e32 v66, v58
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v58, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[239:246], v[212:219], v[65:72]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[239:242], off, off offset:204
	scratch_load_b128 v[243:246], off, off offset:220
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	ds_load_b128 v[212:215], v58
	scratch_load_b32 v58, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[216:219], v58
	scratch_load_b32 v58, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[239:246], v[212:219], v[65:72]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[239:242], off, off offset:172
	scratch_load_b128 v[243:246], off, off offset:188
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	ds_load_b128 v[212:215], v58
	ds_load_b128 v[216:219], v198
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[239:246], v[212:219], v[65:72]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[239:242], off, off offset:140
	scratch_load_b128 v[243:246], off, off offset:156
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[212:215], v191
	ds_load_b128 v[216:219], v183
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[239:246], v[212:219], v[65:72]
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v217, 0, v233
	v_add_nc_u32_e32 v219, 0, v235
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v59, v66, v86
	v_sub_f32_e32 v60, v67, v86
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v67, v74
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_dual_sub_f32 v61, v68, v86 :: v_dual_and_b32 v74, 15, v56
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v68, v75
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v62, v69, v86
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v69, v76
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v75, -16, v74
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v63, v70, v86
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v70, v77
	v_cvt_f32_i32_e32 v66, v73
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v58, v65, v86
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_dual_cndmask_b32 v74, v74, v75 :: v_dual_and_b32 v75, 15, v49
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v56.l
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v65, v72, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v74, v74
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v76, -16, v75
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v72, v79
	v_cvt_f32_i32_e32 v73, v80
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_dual_mul_f32 v74, v74, v55 :: v_dual_cndmask_b32 v75, v75, v76
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v76.l, v0.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e64 v76.h, v162.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v56.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v49.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v77, -16, v76
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v56, v76, v77, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v76.l, v0.h, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v49.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v56, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v77, -16, v76
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v55, v56, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v49, v76, v77, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v56, v75
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v55, 0, v55, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v49, v49
	v_mul_f32_e32 v56, v54, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s12, v55, v55
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v49, v54, v49
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v54, 0, v74, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v56, 0, v56, s0
	v_cndmask_b32_e64 v49, 0, v49, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_bfe_u32 v74, v54, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	v_cmp_o_f32_e64 s3, v56, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s14, v49, v49
	v_add3_u32 v54, v54, v74, 0x7fff
	v_mov_b16_e64 v74.h, v162.l
	v_mov_b16_e32 v74.l, v56.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v54.l, 0x7fff, v54.h, vcc_lo
	v_and_b32_e32 v74, 1, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v56, v56, v74, 0x7fff
	v_bfe_u32 v74, v55, 16, 1
	v_add3_u32 v55, v55, v74, 0x7fff
	v_mov_b16_e64 v74.h, v162.l
	v_mov_b16_e32 v74.l, v49.h
	v_cndmask_b16 v55.l, 0x7fff, v56.h, s3
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v56, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v54.h, 0x7fff, v55.h, s12
	v_and_b32_e32 v74, 1, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v49, v49, v74, 0x7fff
	.loc	1 640 41                        ; attention_backward.py:640:41
	v_mul_f32_e32 v74, s72, v162
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v55.h, 0x7fff, v49.h, s14
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v49, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v66, v74, v66
	v_mul_f32_e32 v67, v74, v67
	v_mul_f32_e32 v68, v74, v68
	v_mul_f32_e32 v69, v74, v69
	v_mul_f32_e32 v70, v74, v70
	v_mul_f32_e32 v72, v74, v72
	v_mul_f32_e32 v73, v74, v73
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(1)
	v_fma_f32 v56, v67, v56, -v87
	scratch_load_b32 v67, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v49, v66, v49, -v87
	scratch_load_b32 v66, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v220, 0, v49, s81
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v49, v220, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v49, s70, v49
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v58, v49, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v58, v49, v58, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v49, v56
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v0.h, 0x7fff, v58.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v218, 0, v49, s80
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v49, v218, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v49, s70, v49
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v56, v49, 16, 1
	v_cmp_o_f32_e64 s3, v49, v49
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v56, v49, v56, 0x7fff
	.loc	1 703 34 is_stmt 1              ; attention_backward.py:703:34
	s_waitcnt vmcnt(1)
	v_fma_f32 v67, v69, v67, -v87
	scratch_load_b32 v69, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v66, v68, v66, -v87
	scratch_load_b32 v68, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v49, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v212, 0, v49, s79
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v64, v71, v86
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v71, v78
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v49, v212, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v71, v74, v71
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v49, s70, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v59, v49, 16, 1
	v_cmp_o_f32_e64 s12, v49, v49
	v_add3_u32 v59, v49, v59, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v49, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v213, 0, v49, s78
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v49, v213, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v49, s70, v49
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v60, v49, 16, 1
	v_cmp_o_f32_e64 s14, v49, v49
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v60, v49, v60, 0x7fff
	.loc	1 703 34 is_stmt 1              ; attention_backward.py:703:34
	s_waitcnt vmcnt(1)
	v_fma_f32 v69, v71, v69, -v87
	scratch_load_b32 v71, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v68, v70, v68, -v87
	scratch_load_b32 v70, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v49, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v49, 0, v49, s77
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v61, v49, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v61, s70, v61
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v62, v61, 16, 1
	v_cmp_o_f32_e64 s15, v61, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v61, v61, v62, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v62, v69
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v17.h, 0x7fff, v61.h, s15
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v217, v0
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v0.h, 0x7fff, v56.h, s3
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v56, 15, v51
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v217, v17 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v214, 0, v62, s76
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v58, -16, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v62, v214, v63
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v62, s70, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v63, v62, 16, 1
	v_cmp_o_f32_e64 s16, v62, v62
	v_add3_u32 v63, v62, v63, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v17.h, 0x7fff, v63.h, s16
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	ds_store_b16_d16_hi v194, v0
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v0.h, 0x7fff, v59.h, s12
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v194, v17 offset:512
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(1)
	v_fma_f32 v71, v73, v71, -v87
	s_waitcnt vmcnt(0)
	v_fma_f32 v70, v72, v70, -v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v62, v70
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v215, 0, v62, s59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v62, v215, v64
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v62, s70, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v64, v62, 16, 1
	v_cmp_o_f32_e64 s17, v62, v62
	v_add3_u32 v64, v62, v64, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v62, v71
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v17.h, 0x7fff, v64.h, s17
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v195, v0
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v0.h, 0x7fff, v60.h, s14
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v195, v17 offset:512
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v17.h, v51.l, 15
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v216, 0, v62, s58
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v17.h
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v17.h, v50.l, 15
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v62, v216, v65
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v56, v56, v58, vcc_lo
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v58, 15, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v17.h
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v17.h, 4, v51.l
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v62, s70, v62
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v56, v56
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v59, -16, v58
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v65, v62, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v56, v56, v53
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v58, v58, v59, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v59.l, v17.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e64 v59.h, v162.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v51.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v17.h, 4, v50.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v65, v62, v65, 0x7fff
	v_cmp_o_f32_e64 s18, v62, v62
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v60, -16, v59
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v51, v59, v60, vcc_lo
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v59.l, v17.h, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v50.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v17.h, 0x7fff, v65.h, s18
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v196, v0
	ds_store_b16_d16_hi v196, v17 offset:512
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v60, -16, v59
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v51, v51
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[85:88], v219
	ds_load_b128 v[89:92], v197
	ds_load_b128 v[66:69], v200
	ds_load_b128 v[70:73], v201
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v50, v59, v60, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v51, v51, v53
	v_cvt_f32_i32_e32 v53, v58
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v50, v50
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v51, 0, v51, s1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v53, v53, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v50, v50, v52
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v52, 0, v56, s0
	v_cmp_o_f32_e64 s3, v51, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v50, 0, v50, s1
	v_bfe_u32 v56, v52, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s14, v50, v50
	v_add3_u32 v56, v52, v56, 0x7fff
	v_bfe_u32 v52, v51, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v52, v51, v52, 0x7fff
	v_cndmask_b32_e64 v51, 0, v53, s0
	v_cndmask_b16 v52.l, 0x7fff, v56.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s3
	v_bfe_u32 v53, v51, 16, 1
	v_cmp_o_f32_e64 s12, v51, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v53, v51, v53, 0x7fff
	v_bfe_u32 v51, v50, 16, 1
	v_add3_u32 v51, v50, v51, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v51.l, 0x7fff, v53.h, s12
	v_add_nc_u32_e32 v50, v202, v223
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v53, v104, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s14
	ds_store_2addr_stride64_b32 v50, v55, v54 offset1:1
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v54, 15, v53
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.h, v53.l, 15
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	ds_store_2addr_stride64_b32 v50, v52, v51 offset0:2 offset1:3
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v51, v102, 0, 8
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v55, -16, v54
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v52, 15, v51
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v54, v54, v55, vcc_lo
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v55, v103, 0, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v54, v54
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v56, 15, v55
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.h, v55.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v58, -16, v56
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v53.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v56, v56, v58, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v58.l, v0.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e64 v58.h, v162.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v53.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v55.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v56, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v59, -16, v58
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v53, v58, v59, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v58.l, v0.h, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v55.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.h, v51.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v53, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v59, -16, v58
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v55, v58, v59, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e64 v58.h, v210.l
	v_mov_b16_e64 v58.l, v162.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v55, v55
	v_mul_f32_e32 v54, v54, v58
	v_mul_f32_e32 v53, v53, v58
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v58.h, v105.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v54, 0, v54, s0
	v_cndmask_b32_e64 v53, 0, v53, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v56, v56, v58
	v_mul_f32_e32 v55, v55, v58
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v58, v54, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	v_cmp_o_f32_e64 s3, v53, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v58, v54, v58, 0x7fff
	v_bfe_u32 v54, v53, 16, 1
	v_add3_u32 v54, v53, v54, 0x7fff
	v_cndmask_b32_e64 v53, 0, v56, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v56, v53, 16, 1
	v_cmp_o_f32_e64 s12, v53, v53
	v_add3_u32 v56, v53, v56, 0x7fff
	v_cndmask_b32_e64 v53, 0, v55, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v54.l, 0x7fff, v56.h, s12
	v_bfe_u32 v55, v53, 16, 1
	v_cmp_o_f32_e64 s14, v53, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v55, v53, v55, 0x7fff
	v_cndmask_b16 v53.l, 0x7fff, v58.h, vcc_lo
	v_cndmask_b16 v53.h, 0x7fff, v54.h, s3
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v54.h, 0x7fff, v55.h, s14
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v55, -16, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v52, v52, v55, vcc_lo
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v55, v100, 0, 8
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v56, 15, v55
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.h, v55.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v58, -16, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v51.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v56, v56, v58, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v58.l, v0.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e64 v58.h, v162.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v51.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v55.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v56, v56
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v59, -16, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v51, v58, v59, vcc_lo
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v58.l, v0.h, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v55.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v51, v51
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v59, -16, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v55, v58, v59, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v58.h, v101.l
	v_mov_b16_e64 v58.l, v162.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v55, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v52, v52, v58
	v_mul_f32_e32 v51, v51, v58
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v58.h, v99.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v52, 0, v52, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v51, 0, v51, s1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v56, v56, v58
	v_mul_f32_e32 v55, v55, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v58, v52, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	v_cmp_o_f32_e64 s3, v51, v51
	v_add3_u32 v58, v52, v58, 0x7fff
	v_bfe_u32 v52, v51, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v52, v51, v52, 0x7fff
	v_cndmask_b32_e64 v51, 0, v56, s0
	v_bfe_u32 v56, v51, 16, 1
	v_cmp_o_f32_e64 s12, v51, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v56, v51, v56, 0x7fff
	v_cndmask_b32_e64 v51, 0, v55, s1
	v_cndmask_b16 v52.l, 0x7fff, v56.h, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v55, v51, 16, 1
	v_cmp_o_f32_e64 s14, v51, v51
	v_add3_u32 v55, v51, v55, 0x7fff
	v_cndmask_b16 v51.l, 0x7fff, v58.h, vcc_lo
	v_cndmask_b16 v51.h, 0x7fff, v52.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b16 v52.h, 0x7fff, v55.h, s14
	ds_store_2addr_stride64_b32 v50, v53, v54 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v50, v51, v52 offset0:6 offset1:7
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v51, v98, 0, 8
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v52, 15, v51
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.h, v51.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v53, -16, v52
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v52, v52, v53, vcc_lo
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v53, v95, 0, 8
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v54, 15, v53
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.h, v53.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v55, -16, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v51.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v54, v54, v55, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v55.l, v0.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e64 v55.h, v162.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v51.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v53.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v54, v54
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v56, -16, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v51, v55, v56, vcc_lo
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v55.l, v0.h, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v53.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.h, v30.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v51, v51
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v56, -16, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v53, v55, v56, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v55.h, v97.l
	v_mov_b16_e64 v55.l, v162.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v53, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v52, v52, v55
	v_mul_f32_e32 v51, v51, v55
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v55.h, v96.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v52, 0, v52, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v51, 0, v51, s1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v54, v54, v55
	v_mul_f32_e32 v53, v53, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v55, v52, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	v_cmp_o_f32_e64 s3, v51, v51
	v_add3_u32 v55, v52, v55, 0x7fff
	v_bfe_u32 v52, v51, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v52, v51, v52, 0x7fff
	v_cndmask_b32_e64 v51, 0, v54, s0
	v_bfe_u32 v54, v51, 16, 1
	v_cmp_o_f32_e64 s12, v51, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v54, v51, v54, 0x7fff
	v_cndmask_b32_e64 v51, 0, v53, s1
	v_bfe_u32 v53, v51, 16, 1
	v_cmp_o_f32_e64 s14, v51, v51
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v53, v51, v53, 0x7fff
	v_cndmask_b16 v51.h, 0x7fff, v52.h, s3
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v52, 15, v30
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v51.l, 0x7fff, v55.h, vcc_lo
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.h, v27.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v55, -16, v52
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v52, v52, v55, vcc_lo
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v55, 15, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v30.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v56, -16, v55
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_dual_mul_f32 v52, v52, v29 :: v_dual_cndmask_b32 v55, v55, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v56.l, v0.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e64 v56.h, v162.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v30.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v27.l
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v58, -16, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v30, v56, v58, vcc_lo
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v56.l, v0.h, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v27.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.h, v26.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v58, -16, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v29, v30, v29
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v27, v56, v58, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v30, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v27, v27
	v_mul_f32_e32 v30, v30, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v27, v27, v28
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v28, 0, v52, s0
	v_cndmask_b32_e64 v27, 0, v27, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_bfe_u32 v52, v28, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_cmp_o_f32_e64 s16, v27, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v52, v28, v52, 0x7fff
	v_cndmask_b32_e64 v28, 0, v29, s1
	v_bfe_u32 v29, v28, 16, 1
	v_cmp_o_f32_e64 s3, v28, v28
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v29, v28, v29, 0x7fff
	v_cndmask_b32_e64 v28, 0, v30, s0
	v_cndmask_b16 v29.l, 0x7fff, v52.h, vcc_lo
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.h, v21.l, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s3
	v_bfe_u32 v30, v28, 16, 1
	v_cmp_o_f32_e64 s15, v28, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v30, v28, v30, 0x7fff
	v_bfe_u32 v28, v27, 16, 1
	v_add3_u32 v28, v27, v28, 0x7fff
	v_cndmask_b16 v27.l, 0x7fff, v54.h, s12
	v_cndmask_b16 v27.h, 0x7fff, v53.h, s14
	v_cndmask_b16 v28.l, 0x7fff, v30.h, s15
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s15, v216, v216
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s16
	ds_store_2addr_stride64_b32 v50, v51, v27 offset0:8 offset1:9
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v27, 15, v26
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_store_2addr_stride64_b32 v50, v29, v28 offset0:10 offset1:11
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v30, -16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_dual_cndmask_b32 v27, v27, v30 :: v_dual_and_b32 v30, 15, v21
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v26.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v51, -16, v30
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v30, v30, v51, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v51.l, v0.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e64 v51.h, v162.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v26.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v21.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v52, -16, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v26, v51, v52, vcc_lo
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v51.l, v0.h, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v21.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v26, v26
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v52, -16, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v21, v51, v52, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v51.h, v94.l
	v_mov_b16_e64 v51.l, v162.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v27, v27, v51
	v_mul_f32_e32 v26, v26, v51
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v51.h, v93.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v27, 0, v27, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v26, 0, v26, s1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v30, v30, v51
	v_mul_f32_e32 v21, v21, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v51, v27, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_cmp_o_f32_e64 s3, v26, v26
	v_cndmask_b32_e64 v21, 0, v21, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v51, v27, v51, 0x7fff
	v_bfe_u32 v27, v26, 16, 1
	v_cmp_o_f32_e64 s14, v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v27, v26, v27, 0x7fff
	v_cndmask_b32_e64 v26, 0, v30, s0
	v_bfe_u32 v30, v26, 16, 1
	v_cmp_o_f32_e64 s12, v26, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v30, v26, v30, 0x7fff
	v_bfe_u32 v26, v21, 16, 1
	v_add3_u32 v26, v21, v26, 0x7fff
	v_cndmask_b16 v21.h, 0x7fff, v27.h, s3
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v27, v84, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v21.l, 0x7fff, v51.h, vcc_lo
	v_cndmask_b16 v26.l, 0x7fff, v30.h, s12
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v28, 15, v27
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.h, v27.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v29, -16, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v28, v28, v29, vcc_lo
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v29, v83, 0, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v28, v28
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v30, 15, v29
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.h, v29.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v51, -16, v30
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v27.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v30, v30, v51, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v51.l, v0.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e64 v51.h, v162.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v27.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v29.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v52, -16, v51
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v27, v51, v52, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v51.l, v0.h, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v29.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v52, -16, v51
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v29, v51, v52, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v51.h, v82.l
	v_mov_b16_e64 v51.l, v162.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v29, v29
	v_mul_f32_e32 v28, v28, v51
	v_mul_f32_e32 v27, v27, v51
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v51.h, v81.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v28, 0, v28, s0
	v_cndmask_b32_e64 v27, 0, v27, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v30, v30, v51
	v_mul_f32_e32 v29, v29, v51
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v51, v28, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_cmp_o_f32_e64 s3, v27, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v51, v28, v51, 0x7fff
	v_bfe_u32 v28, v27, 16, 1
	v_add3_u32 v28, v27, v28, 0x7fff
	v_cndmask_b32_e64 v27, 0, v30, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v30, v27, 16, 1
	v_cmp_o_f32_e64 s12, v27, v27
	v_add3_u32 v30, v27, v30, 0x7fff
	v_cndmask_b32_e64 v27, 0, v29, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v28.l, 0x7fff, v30.h, s12
	v_bfe_u32 v29, v27, 16, 1
	v_cmp_o_f32_e64 s14, v27, v27
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v30, v216, 16, 1
	v_cmp_o_f32_e64 s12, v214, v214
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v29, v27, v29, 0x7fff
	v_cndmask_b16 v27.l, 0x7fff, v51.h, vcc_lo
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s3
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v220, v220
	v_cmp_o_f32_e64 s3, v212, v212
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s14
	ds_store_2addr_stride64_b32 v50, v21, v26 offset0:12 offset1:13
	ds_store_2addr_stride64_b32 v50, v27, v28 offset0:14 offset1:15
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v60, v238 offset:512
	ds_load_u16_d16 v61, v238 offset:768
	ds_load_u16_d16 v62, v238 offset:1024
	ds_load_u16_d16 v65, v238 offset:1792
	ds_load_u16_d16 v63, v238 offset:1280
	ds_load_u16_d16 v97, v238 offset:1088
	ds_load_u16_d16 v96, v238 offset:832
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16_hi v97, v238 offset:1216
	ds_load_u16_d16 v59, v238 offset:256
	ds_load_u16_d16 v58, v238
	ds_load_u16_d16 v64, v238 offset:1536
	ds_load_u16_d16_hi v60, v238 offset:640
	ds_load_u16_d16_hi v61, v238 offset:896
	ds_load_u16_d16_hi v62, v238 offset:1152
	ds_load_u16_d16 v98, v238 offset:1344
	ds_load_u16_d16 v77, v238 offset:2816
	ds_load_u16_d16 v78, v238 offset:3072
	ds_load_u16_d16 v84, v238 offset:2624
	ds_load_u16_d16 v83, v238 offset:2368
	ds_load_u16_d16 v74, v238 offset:2048
	ds_load_u16_d16 v75, v238 offset:2304
	ds_load_u16_d16 v76, v238 offset:2560
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v84, v238 offset:2752
	ds_load_u16_d16_hi v64, v238 offset:1664
	ds_load_u16_d16_hi v65, v238 offset:1920
	ds_load_u16_d16_hi v63, v238 offset:1408
	ds_load_u16_d16 v93, v238 offset:64
	ds_load_u16_d16_hi v59, v238 offset:384
	ds_load_u16_d16 v95, v238 offset:576
	ds_load_u16_d16 v94, v238 offset:320
	ds_load_u16_d16_hi v58, v238 offset:128
	ds_load_u16_d16 v99, v238 offset:1600
	ds_load_u16_d16 v82, v238 offset:2112
	ds_load_u16_d16 v100, v238 offset:1856
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v93, v238 offset:192
	ds_load_u16_d16_hi v96, v238 offset:960
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v95, v238 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v94, v238 offset:448
	ds_load_u16_d16_hi v98, v238 offset:1472
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v99, v238 offset:1728
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v100, v238 offset:1984
	ds_load_u16_d16_hi v77, v238 offset:2944
	ds_load_u16_d16_hi v76, v238 offset:2688
	ds_load_u16_d16_hi v75, v238 offset:2432
	ds_load_u16_d16_hi v74, v238 offset:2176
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[41:48], v[58:65], v[85:92], v[41:48]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v21, v220, 16, 1
	v_bfe_u32 v26, v212, 16, 1
	v_bfe_u32 v27, v49, 16, 1
	v_bfe_u32 v28, v214, 16, 1
	v_bfe_u32 v29, v215, 16, 1
	v_add3_u32 v21, v220, v21, 0x7fff
	v_add3_u32 v26, v212, v26, 0x7fff
	v_add3_u32 v27, v49, v27, 0x7fff
	v_add3_u32 v28, v214, v28, 0x7fff
	v_add3_u32 v29, v215, v29, 0x7fff
	v_cndmask_b16 v162.h, 0x7fff, v21.h, vcc_lo
	v_bfe_u32 v21, v218, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v218, v218
	v_cndmask_b16 v0.h, 0x7fff, v26.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[93:100], v[85:92], v[33:40]
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_load_u16_d16 v89, v238 offset:3904
	ds_load_u16_d16 v85, v238 offset:2880
	ds_load_u16_d16 v79, v238 offset:3328
	ds_load_u16_d16 v86, v238 offset:3136
	ds_load_u16_d16_hi v83, v238 offset:2496
	ds_load_u16_d16_hi v82, v238 offset:2240
	ds_load_u16_d16 v88, v238 offset:3648
	ds_load_u16_d16 v80, v238 offset:3584
	ds_load_u16_d16 v81, v238 offset:3840
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v89, v238 offset:4032
	ds_load_u16_d16_hi v78, v238 offset:3200
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v85, v238 offset:3008
	ds_load_u16_d16 v87, v238 offset:3392
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v79, v238 offset:3456
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v86, v238 offset:3264
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v21, v218, v21, 0x7fff
	v_bfe_u32 v26, v213, 16, 1
	v_cmp_o_f32_e64 s3, v49, v49
	v_cmp_o_f32_e64 s14, v215, v215
	v_add3_u32 v30, v216, v30, 0x7fff
	v_cndmask_b16 v21.h, 0x7fff, v21.h, vcc_lo
	v_add3_u32 v26, v213, v26, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v213, v213
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v26.l, v162.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v20.h, 0x7fff, v28.h, s12
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v80, v238 offset:3712
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v81, v238 offset:3968
	ds_load_u16_d16_hi v88, v238 offset:3776
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v87, v238 offset:3520
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v19.h, 0x7fff, v26.h, vcc_lo
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s3
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v27, v220, v162
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v18.h, 0x7fff, v29.h, s14
	v_cndmask_b16 v17.h, 0x7fff, v30.h, s15
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16_d16_hi v217, v162
	ds_store_b16_d16_hi v217, v26 offset:512
	ds_store_b16_d16_hi v194, v21
	ds_store_b16_d16_hi v194, v20 offset:512
	ds_store_b16_d16_hi v195, v0
	ds_store_b16_d16_hi v195, v18 offset:512
	ds_store_b16_d16_hi v196, v19
	ds_store_b16_d16_hi v196, v17 offset:512
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v26, v49, v26
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v28, v27, 16, 1
	v_cmp_o_f32_e64 s3, v27, v27
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v21.l, v162.l
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v28, v27, v28, 0x7fff
	v_bfe_u32 v27, v26, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_load_b128 v[98:101], v219
	ds_load_b128 v[102:105], v197
	ds_load_b128 v[90:93], v200
	ds_load_b128 v[94:97], v201
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v202, v106
	ds_store_b16 v202, v107 offset:256
	ds_store_b16 v202, v108 offset:512
	ds_store_b16 v202, v109 offset:768
	ds_store_b16 v202, v110 offset:1024
	ds_store_b16 v202, v111 offset:1280
	ds_store_b16 v202, v112 offset:1536
	ds_store_b16 v202, v113 offset:1792
	ds_store_b16 v202, v114 offset:2048
	ds_store_b16 v202, v115 offset:2304
	ds_store_b16 v202, v116 offset:2560
	ds_store_b16 v202, v117 offset:2816
	ds_store_b16 v202, v118 offset:3072
	ds_store_b16 v202, v119 offset:3328
	ds_store_b16 v202, v120 offset:3584
	ds_store_b16 v202, v121 offset:3840
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v29, v26, v27, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_store_b16 v202, v24 offset:128
	ds_store_b16 v202, v22 offset:384
	ds_store_b16 v202, v19 offset:640
	ds_store_b16 v202, v17 offset:896
	ds_store_b16 v202, v25 offset:1152
	ds_store_b16 v202, v23 offset:1408
	ds_store_b16 v202, v20 offset:1664
	ds_store_b16 v202, v18 offset:1920
	ds_store_b16 v202, v0 offset:2176
	ds_store_b16 v202, v211 offset:2432
	ds_store_b16 v202, v32 offset:2688
	ds_store_b16 v202, v31 offset:2944
	ds_store_b16 v202, v166 offset:3200
	ds_store_b16 v202, v165 offset:3456
	ds_store_b16 v202, v164 offset:3712
	ds_store_b16 v202, v163 offset:3968
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v26, v238 offset:1344
	ds_load_u16_d16 v25, v238 offset:1088
	ds_load_u16_d16 v49, v238
	ds_load_u16_d16 v50, v238 offset:256
	ds_load_u16_d16 v51, v238 offset:512
	ds_load_u16_d16 v52, v238 offset:768
	ds_load_u16_d16 v53, v238 offset:1024
	ds_load_u16_d16 v54, v238 offset:1280
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v21, v218, v21
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cndmask_b16 v0.l, 0x7fff, v28.h, s3
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v19.l, v162.l
	v_mov_b16_e64 v20.l, v162.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v17.l, 0x7fff, v29.h, vcc_lo
	v_bfe_u32 v22, v21, 16, 1
	v_cmp_o_f32_e64 s12, v21, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v19, v213, v19 :: v_dual_sub_f32 v20, v214, v20
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v18.l, v162.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v30, v21, v22, 0x7fff
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v26, v238 offset:1472
	ds_load_u16_d16 v21, v238 offset:64
	ds_load_u16_d16 v55, v238 offset:1536
	ds_load_u16_d16 v56, v238 offset:1792
	ds_load_u16_d16 v111, v238 offset:3328
	ds_load_u16_d16 v106, v238 offset:2048
	ds_load_u16_d16 v107, v238 offset:2304
	ds_load_u16_d16 v108, v238 offset:2560
	ds_load_u16_d16 v109, v238 offset:2816
	ds_load_u16_d16 v110, v238 offset:3072
	ds_load_u16_d16 v27, v238 offset:1600
	ds_load_u16_d16 v117, v238 offset:2880
	ds_load_u16_d16 v118, v238 offset:3136
	ds_load_u16_d16 v116, v238 offset:2624
	ds_load_u16_d16 v112, v238 offset:3584
	ds_load_u16_d16 v113, v238 offset:3840
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v50, v238 offset:384
	ds_load_u16_d16 v23, v238 offset:576
	ds_load_u16_d16 v24, v238 offset:832
	ds_load_u16_d16_hi v49, v238 offset:128
	ds_load_u16_d16 v22, v238 offset:320
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v21, v238 offset:192
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v56, v238 offset:1920
	ds_load_u16_d16 v114, v238 offset:2112
	ds_load_u16_d16 v115, v238 offset:2368
	ds_load_u16_d16_hi v55, v238 offset:1664
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v27, v238 offset:1728
	ds_load_u16_d16 v28, v238 offset:1856
	ds_load_u16_d16_hi v111, v238 offset:3456
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v118, v238 offset:3264
	ds_load_u16_d16 v120, v238 offset:3648
	ds_load_u16_d16 v121, v238 offset:3904
	ds_load_u16_d16 v119, v238 offset:3392
	ds_load_u16_d16_hi v51, v238 offset:640
	ds_load_u16_d16_hi v52, v238 offset:896
	ds_load_u16_d16_hi v53, v238 offset:1152
	ds_load_u16_d16_hi v54, v238 offset:1408
	ds_load_u16_d16_hi v25, v238 offset:1216
	ds_load_u16_d16_hi v110, v238 offset:3200
	ds_load_u16_d16_hi v117, v238 offset:3008
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v24, v238 offset:960
	ds_load_u16_d16_hi v23, v238 offset:704
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v22, v238 offset:448
	ds_load_u16_d16_hi v106, v238 offset:2176
	ds_load_u16_d16_hi v107, v238 offset:2432
	ds_load_u16_d16_hi v108, v238 offset:2688
	ds_load_u16_d16_hi v109, v238 offset:2944
	ds_load_u16_d16_hi v116, v238 offset:2752
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v115, v238 offset:2496
	ds_load_u16_d16_hi v114, v238 offset:2240
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v28, v238 offset:1984
	ds_load_u16_d16_hi v112, v238 offset:3712
	ds_load_u16_d16_hi v113, v238 offset:3968
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v121, v238 offset:4032
	ds_load_u16_d16_hi v120, v238 offset:3776
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v119, v238 offset:3520
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v217, v0
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v0.l, v162.l
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cndmask_b16 v29.l, 0x7fff, v30.h, s12
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v18, v215, v18
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v19, v19
	v_cmp_o_f32_e64 s12, v20, v20
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v0, v212, v0
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[49:56], v[98:105], v[9:16]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s14, v18, v18
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v29.h, v148.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[41:48], v[74:81], v[66:73], v[41:48]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v30, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[21:28], v[98:105], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[106:113], v[90:97], v[9:16]
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[33:40], v[82:89], v[66:73], v[33:40]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v30, v0, v30, 0x7fff
	v_bfe_u32 v0, v19, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[114:121], v[90:97], v[1:8]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v31, v19, v0, 0x7fff
	v_bfe_u32 v0, v20, 16, 1
	v_bfe_u32 v19, v18, 16, 1
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v31.l, v162.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v0, v20, v0, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v19, v18, v19, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s12
	v_cndmask_b16 v0.h, 0x7fff, v30.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v194, v29
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v29.l, v162.l
	v_and_b32_e32 v30, 0xffff0000, v149
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v194, v0 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.l, 0x7fff, v19.h, s14
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v195, v0
	ds_store_b16 v217, v17 offset:512
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v17.l, v162.l
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cndmask_b16 v0.h, 0x7fff, v31.h, s3
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	ds_store_b16 v195, v0 offset:512
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v31.h, v149.l
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v17, v216, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v18, v17, 16, 1
	v_cmp_o_f32_e64 s15, v17, v17
	v_add3_u32 v18, v17, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v0.l, 0x7fff, v18.h, s15
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	ds_store_b16_d16_hi v196, v0
	ds_store_b16 v196, v0 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[58:61], v219
	ds_load_b128 v[62:65], v197
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v32.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_and_b32_e32 v32, 1, v32
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[21:28], v[58:65], v[1:8]
	ds_load_b128 v[17:20], v200
	ds_load_b128 v[21:24], v201
	v_wmma_f32_16x16x16_bf16 v[9:16], v[49:56], v[58:65], v[9:16]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v32, v0, v32, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v25.h, v146.l
	v_mov_b16_e64 v25.l, v162.l
	v_and_b32_e32 v26, 0xffff0000, v147
	v_mov_b16_e64 v27.h, v147.l
	v_mov_b16_e64 v27.l, v162.l
	v_and_b32_e32 v28, 0xffff0000, v148
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[106:113], v[17:24], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[114:121], v[17:24], v[1:8]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v17.h, v150.l
	v_mov_b16_e64 v17.l, v162.l
	v_and_b32_e32 v18, 0xffff0000, v151
	v_mov_b16_e64 v19.h, v151.l
	v_mov_b16_e64 v19.l, v162.l
	v_and_b32_e32 v20, 0xffff0000, v152
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v17, v17
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e64 v17.h, v162.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v21.h, v152.l
	v_mov_b16_e64 v21.l, v162.l
	v_and_b32_e32 v22, 0xffff0000, v153
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v17.l, v0.h
	v_cmp_o_f32_e64 s3, v0, v0
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v23.h, v153.l
	v_mov_b16_e64 v23.l, v162.l
	v_and_b32_e32 v24, 0xffff0000, v146
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v49, v0, v17, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v18, v18
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v17.h, v162.l
	v_mov_b16_e32 v17.l, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s12, v0, v0
	v_and_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v18, v0, v17, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v19, v19
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v17.h, v162.l
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v17.l, v0.h
	v_cmp_o_f32_e64 s14, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v19, v0, v17, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v20, v20
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v17.h, v162.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s14
	v_mov_b16_e32 v17.l, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s15, v0, v0
	v_and_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v20, v0, v17, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v21, v21
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v17.h, 0x7fff, v32.h, vcc_lo
	v_mov_b16_e64 v21.h, v162.l
	v_cndmask_b16 v17.l, 0x7fff, v49.h, s3
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s15
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e64 v20.h, v162.l
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e64 v32.h, v162.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v20, v0, v20, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v19.l, 0x7fff, v20.h, vcc_lo
	v_mov_b16_e32 v21.l, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v0, v0
	v_mov_b16_e64 v20.h, v162.l
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v21, v0, v21, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v23, v23
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v20.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v22, v0, v20, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v24, v24
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v20.h, v162.l
	v_mov_b16_e32 v20.l, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s12, v0, v0
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v23, v0, v20, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v25, v25
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v20.h, v162.l
	v_mov_b16_e32 v20.l, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s14, v0, v0
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v24, v0, v20, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v26, v26
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v20.h, v162.l
	v_mov_b16_e64 v26.h, v162.l
	v_cndmask_b16 v21.l, 0x7fff, v24.h, s14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v20.l, v0.h
	v_cmp_o_f32_e64 s15, v0, v0
	v_mov_b16_e64 v24.h, v162.l
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v25, v0, v20, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v27, v27
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s3
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s12
	v_mov_b16_e64 v23.h, v162.l
	v_cndmask_b16 v20.l, 0x7fff, v22.h, vcc_lo
	v_mov_b16_e32 v23.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v22.h, 0x7fff, v25.h, s15
	v_mov_b16_e64 v25.h, v162.l
	v_mov_b16_e64 v27.h, v162.l
	v_and_b32_e32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v23, v0, v23, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v28, v28
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v28, 0xffff0000, v140
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v22.l, 0x7fff, v23.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v24.l, v0.h
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v24, 1, v24
	v_add3_u32 v24, v0, v24, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v29, v29
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v29.h, v140.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v23.h, 0x7fff, v24.h, s3
	v_mov_b16_e32 v25.l, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s12, v0, v0
	v_and_b32_e32 v25, 1, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v25, v0, v25, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v30, v30
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v25.l, v162.l
	v_and_b32_e32 v30, 0xffff0000, v141
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v23.l, 0x7fff, v25.h, s12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v26.l, v0.h
	v_cmp_o_f32_e64 s14, v0, v0
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v25.h, v138.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v26, 1, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v26, v0, v26, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v31, v31
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v31.h, v141.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v27.l, v0.h
	v_cmp_o_f32_e64 s15, v0, v0
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v26, 0xffff0000, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v27, 1, v27
	v_add3_u32 v27, v0, v27, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v142
	v_mov_b16_e64 v27.l, v162.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v24.l, 0x7fff, v27.h, s15
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v27.h, v139.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[17:24], v[98:105], v[9:16]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v32.l, v0.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v17.h, v142.l
	v_mov_b16_e64 v17.l, v162.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v18, 0xffff0000, v143
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v32, 1, v32
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v19.h, v143.l
	v_mov_b16_e64 v19.l, v162.l
	v_and_b32_e32 v20, 0xffff0000, v144
	v_mov_b16_e64 v21.h, v144.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v32, v0, v32, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v17, v17
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v17.h, v162.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v21.l, v162.l
	v_and_b32_e32 v22, 0xffff0000, v145
	v_mov_b16_e64 v23.h, v145.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v17.l, v0.h
	v_cmp_o_f32_e64 s3, v0, v0
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v23.l, v162.l
	v_and_b32_e32 v24, 0xffff0000, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v49, v0, v17, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v18, v18
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v17.h, v162.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v17.l, v0.h
	v_cmp_o_f32_e64 s12, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v18, v0, v17, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v19, v19
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v17.h, v162.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s12
	v_mov_b16_e32 v17.l, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s14, v0, v0
	v_and_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v19, v0, v17, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v20, v20
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v17.h, v162.l
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v17.l, v0.h
	v_cmp_o_f32_e64 s15, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v20, v0, v17, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v21, v21
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v17.h, 0x7fff, v32.h, vcc_lo
	v_mov_b16_e64 v21.h, v162.l
	v_cndmask_b16 v17.l, 0x7fff, v49.h, s3
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s15
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e64 v20.h, v162.l
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e64 v32.h, v162.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v20, v0, v20, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v19.l, 0x7fff, v20.h, vcc_lo
	v_mov_b16_e32 v21.l, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v0, v0
	v_mov_b16_e64 v20.h, v162.l
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v21, v0, v21, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v23, v23
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v20.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v22, v0, v20, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v24, v24
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v20.h, v162.l
	v_mov_b16_e32 v20.l, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s12, v0, v0
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v23, v0, v20, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v25, v25
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v20.h, v162.l
	v_mov_b16_e32 v20.l, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s14, v0, v0
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v24, v0, v20, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v26, v26
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v20.h, v162.l
	v_mov_b16_e64 v26.h, v162.l
	v_cndmask_b16 v21.l, 0x7fff, v24.h, s14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v20.l, v0.h
	v_cmp_o_f32_e64 s15, v0, v0
	v_mov_b16_e64 v24.h, v162.l
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v25, v0, v20, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v27, v27
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s3
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s12
	v_mov_b16_e64 v23.h, v162.l
	v_cndmask_b16 v20.l, 0x7fff, v22.h, vcc_lo
	v_mov_b16_e32 v23.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v22.h, 0x7fff, v25.h, s15
	v_mov_b16_e64 v25.h, v162.l
	v_mov_b16_e64 v27.h, v162.l
	v_and_b32_e32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v23, v0, v23, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v28, v28
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v28, 0xffff0000, v132
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v22.l, 0x7fff, v23.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v24.l, v0.h
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v24, 1, v24
	v_add3_u32 v24, v0, v24, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v29, v29
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v29.h, v132.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v23.h, 0x7fff, v24.h, s3
	v_mov_b16_e32 v25.l, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s12, v0, v0
	v_and_b32_e32 v25, 1, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v25, v0, v25, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v30, v30
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v25.l, v162.l
	v_and_b32_e32 v30, 0xffff0000, v133
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v23.l, 0x7fff, v25.h, s12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v26.l, v0.h
	v_cmp_o_f32_e64 s14, v0, v0
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v25.h, v130.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v26, 1, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v26, v0, v26, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v31, v31
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v31.h, v133.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v27.l, v0.h
	v_cmp_o_f32_e64 s15, v0, v0
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v26, 0xffff0000, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v27, 1, v27
	v_add3_u32 v27, v0, v27, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v134
	v_mov_b16_e64 v27.l, v162.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v24.l, 0x7fff, v27.h, s15
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v27.h, v131.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[17:24], v[98:105], v[1:8]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v32.l, v0.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v17.h, v134.l
	v_mov_b16_e64 v17.l, v162.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v18, 0xffff0000, v135
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v32, 1, v32
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v19.h, v135.l
	v_mov_b16_e64 v19.l, v162.l
	v_and_b32_e32 v20, 0xffff0000, v136
	v_mov_b16_e64 v21.h, v136.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v32, v0, v32, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v17, v17
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v17.h, v162.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v21.l, v162.l
	v_and_b32_e32 v22, 0xffff0000, v137
	v_mov_b16_e64 v23.h, v137.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v17.l, v0.h
	v_cmp_o_f32_e64 s3, v0, v0
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v23.l, v162.l
	v_and_b32_e32 v24, 0xffff0000, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v49, v0, v17, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v18, v18
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v17.h, v162.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v17.l, v0.h
	v_cmp_o_f32_e64 s12, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v18, v0, v17, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v19, v19
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v17.h, v162.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s12
	v_mov_b16_e32 v17.l, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s14, v0, v0
	v_and_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v19, v0, v17, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v20, v20
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v17.h, v162.l
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v17.l, v0.h
	v_cmp_o_f32_e64 s15, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v20, v0, v17, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v21, v21
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v17.h, 0x7fff, v32.h, vcc_lo
	v_mov_b16_e64 v21.h, v162.l
	v_cndmask_b16 v17.l, 0x7fff, v49.h, s3
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s15
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e64 v20.h, v162.l
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e64 v32.h, v162.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v20, v0, v20, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v19.l, 0x7fff, v20.h, vcc_lo
	v_mov_b16_e32 v21.l, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v0, v0
	v_mov_b16_e64 v20.h, v162.l
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v21, v0, v21, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v23, v23
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v20.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v22, v0, v20, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v24, v24
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v20.h, v162.l
	v_mov_b16_e32 v20.l, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s12, v0, v0
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v23, v0, v20, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v25, v25
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v20.h, v162.l
	v_mov_b16_e32 v20.l, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s14, v0, v0
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v24, v0, v20, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v26, v26
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v20.h, v162.l
	v_mov_b16_e64 v26.h, v162.l
	v_cndmask_b16 v21.l, 0x7fff, v24.h, s14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v20.l, v0.h
	v_cmp_o_f32_e64 s15, v0, v0
	v_mov_b16_e64 v24.h, v162.l
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v25, v0, v20, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v27, v27
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s3
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s12
	v_mov_b16_e64 v23.h, v162.l
	v_cndmask_b16 v20.l, 0x7fff, v22.h, vcc_lo
	v_mov_b16_e32 v23.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v22.h, 0x7fff, v25.h, s15
	v_mov_b16_e64 v25.h, v162.l
	v_mov_b16_e64 v27.h, v162.l
	v_and_b32_e32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v23, v0, v23, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v28, v28
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v28, 0xffff0000, v124
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v22.l, 0x7fff, v23.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v24.l, v0.h
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v24, 1, v24
	v_add3_u32 v24, v0, v24, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v29, v29
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v29.h, v124.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v23.h, 0x7fff, v24.h, s3
	v_mov_b16_e32 v25.l, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s12, v0, v0
	v_and_b32_e32 v25, 1, v25
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v25, v0, v25, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v30, v30
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v25.l, v162.l
	v_mov_b16_e32 v30.h, v125.l
	v_mov_b16_e64 v30.l, v162.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v23.l, 0x7fff, v25.h, s12
	v_mov_b16_e32 v26.l, v0.h
	v_cmp_o_f32_e64 s14, v0, v0
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v25.h, v122.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v26, 1, v26
	v_add3_u32 v26, v0, v26, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v0, v31, v31 :: v_dual_and_b32 v31, 0xffff0000, v125
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s14
	v_mov_b16_e32 v27.l, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s15, v0, v0
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v26, 0xffff0000, v123
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v27, 1, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v27, v0, v27, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v0, 0xffff0000, v126
	v_mov_b16_e64 v27.l, v162.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v24.l, 0x7fff, v27.h, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v27.h, v123.l
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[17:24], v[90:97], v[9:16]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v32.l, v0.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v17.h, v126.l
	v_mov_b16_e64 v17.l, v162.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v18, 0xffff0000, v127
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v32, 1, v32
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v19.h, v127.l
	v_mov_b16_e64 v19.l, v162.l
	v_and_b32_e32 v20, 0xffff0000, v128
	v_mov_b16_e64 v21.h, v128.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v32, v0, v32, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v17, v17
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v17.h, v162.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v21.l, v162.l
	v_and_b32_e32 v22, 0xffff0000, v129
	v_mov_b16_e64 v23.h, v129.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v17.l, v0.h
	v_cmp_o_f32_e64 s3, v0, v0
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v23.l, v162.l
	v_and_b32_e32 v24, 0xffff0000, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v49, v0, v17, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v18, v18
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v17.h, v162.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v17.l, v0.h
	v_cmp_o_f32_e64 s12, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v18, v0, v17, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v19, v19
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v17.h, v162.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s12
	v_mov_b16_e32 v17.l, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s14, v0, v0
	v_and_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v19, v0, v17, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v20, v20
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v17.h, v162.l
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v17.l, v0.h
	v_cmp_o_f32_e64 s15, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v20, v0, v17, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v21, v21
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v17.h, 0x7fff, v32.h, vcc_lo
	v_mov_b16_e64 v21.h, v162.l
	v_cndmask_b16 v17.l, 0x7fff, v49.h, s3
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s15
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e64 v20.h, v162.l
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v20, v0, v20, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v19.l, 0x7fff, v20.h, vcc_lo
	v_mov_b16_e32 v21.l, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v0, v0
	v_mov_b16_e64 v20.h, v162.l
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v21, v0, v21, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v23, v23
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v20.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v22, v0, v20, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v24, v24
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v20.h, v162.l
	v_mov_b16_e32 v20.l, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s12, v0, v0
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v23, v0, v20, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v25, v25
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v20.h, v162.l
	v_mov_b16_e32 v20.l, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s14, v0, v0
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v24, v0, v20, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v26, v26
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v20.h, v162.l
	v_mov_b16_e64 v26.h, v162.l
	v_cndmask_b16 v21.l, 0x7fff, v24.h, s14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v20.l, v0.h
	v_cmp_o_f32_e64 s15, v0, v0
	v_mov_b16_e64 v24.h, v162.l
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v25, v0, v20, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v27, v27
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s3
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s12
	v_mov_b16_e64 v23.h, v162.l
	v_cndmask_b16 v20.l, 0x7fff, v22.h, vcc_lo
	v_mov_b16_e32 v23.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v22.h, 0x7fff, v25.h, s15
	v_mov_b16_e64 v25.h, v162.l
	v_mov_b16_e64 v27.h, v162.l
	v_and_b32_e32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v23, v0, v23, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v28, v28
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v22.l, 0x7fff, v23.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v24.l, v0.h
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v24, 1, v24
	v_add3_u32 v24, v0, v24, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v23.h, 0x7fff, v24.h, s3
	v_mov_b16_e32 v25.l, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s12, v0, v0
	v_and_b32_e32 v25, 1, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v25, v0, v25, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v31, v31
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v23.l, 0x7fff, v25.h, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v26.l, v0.h
	v_cmp_o_f32_e64 s14, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v26, 1, v26
	v_add3_u32 v26, v0, v26, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v30, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s14
	v_mov_b16_e32 v27.l, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s15, v0, v0
	v_and_b32_e32 v27, 1, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v27, v0, v27, 0x7fff
	v_cndmask_b16 v24.l, 0x7fff, v27.h, s15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[17:24], v[90:97], v[1:8]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v32, off, off
	scratch_load_b32 v49, off, off offset:4
	scratch_load_b32 v50, off, off offset:8
	scratch_load_b32 v51, off, off offset:12
	scratch_load_b32 v52, off, off offset:16
	scratch_load_b32 v53, off, off offset:20
	scratch_load_b32 v54, off, off offset:24
	scratch_load_b32 v55, off, off offset:28
	.loc	1 608 29 is_stmt 1              ; attention_backward.py:608:29
	v_or_b32_e32 v30, s75, v160
	v_or_b32_e32 v31, s75, v174
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_add_i32 s46, s75, s74
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v27, s75, v156
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_mul_i32 s27, s46, s34
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s25, s30, v30
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b32 v30, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s26, s30, v31
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b32 v31, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s22, s30, v27
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_add_nc_u32_e32 v27, s27, v154
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v24, s75, v184
	v_or_b32_e32 v25, s75, v185
	v_or_b32_e32 v26, s75, v186
	v_add_nc_u32_e32 v60, s27, v167
	v_or_b32_e32 v28, s75, v157
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s19, s30, v24
	v_cmp_gt_i32_e64 s20, s30, v25
	v_cmp_gt_i32_e64 s21, s30, v26
	v_add_nc_u32_e32 v61, s27, v168
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v29, s75, v158
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v26, s46, v156, 1
	v_add_nc_u32_e32 v62, s27, v169
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s23, s30, v28
	v_add_nc_u32_e32 v63, s27, v170
	v_cmp_gt_i32_e64 s24, s30, v29
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v28, s46, v158, 1
	v_add_nc_u32_e32 v64, s27, v171
	v_add_lshl_u32 v29, s46, v160, 1
	v_add_lshl_u32 v24, s46, v185, 1
	v_add_lshl_u32 v25, s46, v186, 1
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b64 v[58:59], off, off offset:68 ; 8-byte Folded Reload
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v24, 0x80000000, v24, s20
	v_cndmask_b32_e64 v25, 0x80000000, v25, s21
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(10)
	v_or_b32_e32 v0, s75, v32
	s_waitcnt vmcnt(9)
	v_or_b32_e32 v17, s75, v49
	s_waitcnt vmcnt(8)
	v_or_b32_e32 v18, s75, v50
	s_waitcnt vmcnt(7)
	v_or_b32_e32 v19, s75, v51
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v32, s46, v32, 1
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(5)
	v_or_b32_e32 v21, s75, v53
	s_waitcnt vmcnt(4)
	v_or_b32_e32 v22, s75, v54
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s30, v0
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v0, s46, v49, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s3, s30, v17
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v17, s46, v50, 1
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b64 v[49:50], off, off offset:40 ; 8-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s12, s30, v18
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v18, s46, v51, 1
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b32 v51, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(5)
	v_or_b32_e32 v23, s75, v55
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s16, s30, v21
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v21, s46, v54, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s17, s30, v22
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v22, s46, v55, 1
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[54:55], off, off offset:52
	scratch_load_b64 v[55:56], off, off offset:60
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v20, s75, v52
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v30, s27, v30
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s14, s30, v19
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v31, s27, v31
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s3
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s15, s30, v20
	s_waitcnt vmcnt(3)
	v_lshl_add_u32 v50, s34, 4, v154
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s12
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s18, s30, v23
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s14
	v_add_nc_u32_e32 v59, s27, v50
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v23, s46, v184, 1
	v_add_lshl_u32 v19, s46, v52, 1
	v_add_lshl_u32 v20, s46, v53, 1
	v_add_lshl_u32 v52, s46, v157, 1
	v_add_lshl_u32 v53, s46, v174, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s12
	v_cndmask_b32_e64 v22, 0x80000000, v22, s18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	v_cndmask_b32_e64 v52, 0x80000000, v52, s23
	v_cndmask_b32_e64 v53, 0x80000000, v53, s26
	v_cndmask_b32_e64 v18, 0x80000000, v18, s14
	v_cndmask_b32_e64 v19, 0x80000000, v19, s15
	v_cndmask_b32_e64 v20, 0x80000000, v20, s16
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_add_nc_u32_e32 v58, s27, v58
	v_add_nc_u32_e32 v49, s27, v49
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v51, s27, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v50, 0x80000000, v49, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v67, 0x80000000, v51, vcc_lo
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v54, s27, v54
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v55, s27, v55
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s16
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v54, 0x80000000, v54, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s17
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_clause 0x5
	buffer_load_u8 v49, v27, s[52:55], 0 offen
	buffer_load_u8 v56, v30, s[52:55], 0 offen
	buffer_load_u8 v51, v31, s[52:55], 0 offen
	buffer_load_u8 v50, v50, s[52:55], 0 offen
	buffer_load_u8 v104, v67, s[52:55], 0 offen
	buffer_load_u8 v103, v54, s[52:55], 0 offen
	v_cndmask_b32_e32 v54, 0x80000000, v55, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s19
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v31, 0x80000000, v21, s17
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v21, 0x80000000, v59, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s20
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v55, 0x80000000, v26, s22
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v27, 0x80000000, v60, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s21
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v59, 0x80000000, v28, s24
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v30, 0x80000000, v61, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s22
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v60, 0x80000000, v29, s25
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v26, 0x80000000, v62, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s18
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_clause 0x3
	buffer_load_u8 v98, v21, s[52:55], 0 offen
	buffer_load_u8 v95, v27, s[52:55], 0 offen
	buffer_load_u8 v30, v30, s[52:55], 0 offen
	buffer_load_u8 v27, v26, s[52:55], 0 offen
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s23
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_dual_mov_b32 v62, v57 :: v_dual_cndmask_b32 v21, 0x80000000, v63
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s24
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_dual_mov_b32 v63, v57 :: v_dual_cndmask_b32 v28, 0x80000000, v64
	v_dual_mov_b32 v64, v57 :: v_dual_add_nc_u32 v65, s27, v172
	v_add_nc_u32_e32 v66, s27, v173
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s25
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v29, 0x80000000, v65, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s26
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v65, s75, v161
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v61, 0x80000000, v66, vcc_lo
	s_clause 0x5
	buffer_load_u8 v26, v21, s[52:55], 0 offen
	buffer_load_u8 v21, v28, s[52:55], 0 offen
	buffer_load_u8 v102, v54, s[52:55], 0 offen
	buffer_load_u8 v100, v58, s[52:55], 0 offen
	buffer_load_u8 v84, v29, s[52:55], 0 offen
	buffer_load_u8 v83, v61, s[52:55], 0 offen
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v58, v57
	v_dual_mov_b32 v61, v57 :: v_dual_add_nc_u32 v86, s46, v161
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s12, s30, v65
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_and_not1_b32 vcc_lo, exec_lo, s67
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v28, 1, v86
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s81, s4, s12
	s_and_b32 s80, s5, s12
	s_and_b32 s79, s6, s12
	s_and_b32 s78, s7, s12
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v54, 0x80000000, v28, s12
	s_clause 0x10
	buffer_load_u16 v99, v22, s[56:59], 0 offen
	buffer_load_u16 v97, v23, s[56:59], 0 offen
	buffer_load_u16 v96, v24, s[56:59], 0 offen
	buffer_load_u16 v29, v25, s[56:59], 0 offen
	buffer_load_u16 v28, v55, s[56:59], 0 offen
	buffer_load_u16 v94, v52, s[56:59], 0 offen
	buffer_load_u16 v93, v59, s[56:59], 0 offen
	buffer_load_u16 v82, v60, s[56:59], 0 offen
	buffer_load_u16 v81, v53, s[56:59], 0 offen
	buffer_load_u16 v85, v54, s[56:59], 0 offen
	buffer_load_u16 v54, v32, s[56:59], 0 offen
	buffer_load_u16 v55, v0, s[56:59], 0 offen
	buffer_load_u16 v53, v17, s[56:59], 0 offen
	buffer_load_u16 v52, v18, s[56:59], 0 offen
	buffer_load_u16 v210, v19, s[56:59], 0 offen
	buffer_load_u16 v105, v20, s[56:59], 0 offen
	buffer_load_u16 v101, v31, s[56:59], 0 offen
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v59, v57
	v_mov_b32_e32 v60, v57
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_add_nc_u32_e32 v0, 0, v236
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v80, v64
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v73, v57
	v_dual_mov_b32 v79, v63 :: v_dual_mov_b32 v78, v62
	v_dual_mov_b32 v77, v61 :: v_dual_mov_b32 v76, v60
	v_dual_mov_b32 v75, v59 :: v_dual_mov_b32 v74, v58
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s77, s8, s12
	s_and_b32 s76, s9, s12
	s_and_b32 s59, s10, s12
	s_and_b32 s58, s11, s12
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt vmcnt(32)
	ds_store_b8 v187, v49
	s_waitcnt vmcnt(31)
	ds_store_b8 v187, v56 offset:64
	s_waitcnt vmcnt(26)
	ds_store_b8 v187, v98 offset:512
	s_waitcnt vmcnt(25)
	ds_store_b8 v187, v95 offset:576
	ds_store_b8 v188, v51
	ds_store_b8 v188, v50 offset:64
	s_waitcnt vmcnt(24)
	ds_store_b8 v188, v30 offset:512
	s_waitcnt vmcnt(23)
	ds_store_b8 v188, v27 offset:576
	ds_store_b8 v189, v104
	ds_store_b8 v189, v103 offset:64
	s_waitcnt vmcnt(22)
	ds_store_b8 v189, v26 offset:512
	s_waitcnt vmcnt(21)
	ds_store_b8 v189, v21 offset:576
	s_waitcnt vmcnt(20)
	ds_store_b8 v190, v102
	s_waitcnt vmcnt(19)
	ds_store_b8 v190, v100 offset:64
	s_waitcnt vmcnt(18)
	ds_store_b8 v190, v84 offset:512
	s_waitcnt vmcnt(17)
	ds_store_b8 v190, v83 offset:576
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[17:18], v0
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:280
	scratch_load_b64 v[31:32], off, off offset:76
	s_waitcnt vmcnt(1)
	ds_load_b64 v[19:20], v0
	scratch_load_b32 v0, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[31:32], v[17:18], v[73:80] neg_lo:[1,1,0]
	scratch_load_b64 v[17:18], off, off offset:84 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt vmcnt(1)
	ds_load_b64 v[22:23], v0
	scratch_load_b32 v0, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[17:18], v[19:20], v[73:80] neg_lo:[1,1,0]
	scratch_load_b64 v[17:18], off, off offset:92 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt vmcnt(1)
	ds_load_b64 v[24:25], v0
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v0, s39, v65
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[17:18], v[22:23], v[73:80] neg_lo:[1,1,0]
	scratch_load_b64 v[17:18], off, off offset:100 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[17:18], v[24:25], v[73:80] neg_lo:[1,1,0]
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_or_b32_e32 v17, 2, v193
	v_cmp_le_i32_e32 vcc_lo, v193, v0
	s_and_not1_b32 s21, s81, exec_lo
	s_and_not1_b32 s22, s80, exec_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_le_i32_e64 s3, v17, v0
	v_or_b32_e32 v17, 4, v193
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s20, s81, vcc_lo
	s_and_b32 s20, s20, exec_lo
	s_and_b32 s3, s80, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s14, v17, v0
	v_or_b32_e32 v17, 6, v193
	s_and_b32 s3, s3, exec_lo
	s_or_b32 s81, s21, s20
	s_or_b32 s80, s22, s3
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s14, s79, s14
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s15, v17, v0
	v_or_b32_e32 v17, 8, v193
	s_and_not1_b32 s3, s79, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_not1_b32 s20, s78, exec_lo
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s15, s78, s15
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s16, v17, v0
	v_or_b32_e32 v17, 10, v193
	s_and_b32 s15, s15, exec_lo
	s_or_b32 s79, s3, s14
	s_or_b32 s78, s20, s15
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s16, s77, s16
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s17, v17, v0
	v_or_b32_e32 v17, 12, v193
	s_and_not1_b32 s3, s77, exec_lo
	s_and_b32 s14, s16, exec_lo
	s_and_not1_b32 s15, s76, exec_lo
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s17, s76, s17
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s18, v17, v0
	v_or_b32_e32 v17, 14, v193
	s_and_b32 s16, s17, exec_lo
	s_or_b32 s77, s3, s14
	s_or_b32 s76, s15, s16
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s18, s59, s18
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s19, v17, v0
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
	v_subrev_nc_u32_e32 v17, s37, v0
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v0, s38, v0
	v_or_b32_e32 v18, 2, v193
	v_or_b32_e32 v19, 4, v193
	v_or_b32_e32 v20, 6, v193
	v_or_b32_e32 v22, 8, v193
	v_or_b32_e32 v23, 10, v193
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v193, v17
	v_cmp_ge_i32_e64 s3, v18, v17
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s20, v193, v0
	v_cmp_le_i32_e64 s21, v18, v0
	v_or_b32_e32 v24, 12, v193
	v_or_b32_e32 v25, 14, v193
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s14, v19, v17
	v_cmp_ge_i32_e64 s15, v20, v17
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s22, v19, v0
	v_cmp_le_i32_e64 s23, v20, v0
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s16, v22, v17
	v_cmp_ge_i32_e64 s17, v23, v17
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s24, v22, v0
	v_cmp_le_i32_e64 s25, v23, v0
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s20, vcc_lo, s20
	s_and_b32 s3, s3, s21
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s18, v24, v17
	v_cmp_ge_i32_e64 s19, v25, v17
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s26, v24, v0
	v_cmp_le_i32_e64 s27, v25, v0
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
.LBB0_12:                               ; %Flow306
	.loc	1 0 21                          ; attention_backward.py:0:21
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v52, off, off offset:320
	scratch_load_b32 v49, off, off offset:324
	scratch_load_b32 v32, off, off offset:328
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
	v_mov_b32_e32 v40, v8
	v_mov_b32_e32 v39, v8
	v_mov_b32_e32 v38, v8
	v_mov_b32_e32 v37, v8
	v_mov_b32_e32 v36, v8
	v_mov_b32_e32 v35, v8
	v_mov_b32_e32 v34, v8
	v_mov_b32_e32 v33, v8
	v_mov_b32_e32 v48, v8
	v_mov_b32_e32 v47, v8
	v_mov_b32_e32 v46, v8
	v_mov_b32_e32 v45, v8
	v_mov_b32_e32 v44, v8
	v_mov_b32_e32 v43, v8
	v_mov_b32_e32 v42, v8
	v_mov_b32_e32 v41, v8
.LBB0_14:                               ; %._crit_edge151
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, v49, v32
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v32, s65, v52
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s64, v52
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s37, s41, 0xffff
	s_mov_b32 s39, 0x31027000
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v31, 2, v17
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v32, v32, s68
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v30, 4, v17
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s31, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s16, s68, v17
	v_cmp_gt_i32_e64 s17, s68, v31
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v29, 6, v17
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s18, s68, v30
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v28, 8, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v49, v32, v17, 2
	v_add_lshl_u32 v50, v32, v31, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s16
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v51, v32, v30, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s19, s68, v29
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v49, 0x80000000, v49, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s17
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v50, 0x80000000, v50, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s18
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_mov_b32 s36, s40
	v_cndmask_b32_e64 v51, 0x80000000, v51, s16
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v27, 10, v17
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s20, s68, v28
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v41, v49, s[36:39], 0 offen
	v_add_lshl_u32 v41, v32, v29, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v26, 12, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v42, v50, s[36:39], 0 offen
	buffer_store_b32 v43, v51, s[36:39], 0 offen
	v_add_lshl_u32 v42, v32, v28, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s19
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v25, 14, v17
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s21, s68, v27
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v41, 0x80000000, v41, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s20
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v24, 32, v17
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s22, s68, v26
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v43, v32, v27, 2
	v_cndmask_b32_e64 v42, 0x80000000, v42, s17
	v_add_lshl_u32 v49, v32, v26, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s23, s68, v25
	.loc	1 755 18 is_stmt 0              ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s21
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	v_or_b32_e32 v23, 34, v17
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s24, s68, v24
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v43, 0x80000000, v43, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s22
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v44, v41, s[36:39], 0 offen
	buffer_store_b32 v45, v42, s[36:39], 0 offen
	v_add_lshl_u32 v41, v32, v25, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v22, 36, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v49, 0x80000000, v49, s17
	v_add_lshl_u32 v42, v32, v24, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s23
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s25, s68, v23
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	v_cndmask_b32_e64 v41, 0x80000000, v41, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s24
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s26, s68, v22
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v46, v43, s[36:39], 0 offen
	buffer_store_b32 v47, v49, s[36:39], 0 offen
	v_add_lshl_u32 v43, v32, v23, 2
	v_cndmask_b32_e64 v42, 0x80000000, v42, s17
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v21, 38, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v44, v32, v22, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s25
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v20, 40, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v43, 0x80000000, v43, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s26
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v48, v41, s[36:39], 0 offen
	buffer_store_b32 v33, v42, s[36:39], 0 offen
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v42, s35, v52
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v19, 42, v17
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s27, s68, v21
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v44, 0x80000000, v44, s17
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v0, 46, v17
	v_or_b32_e32 v18, 44, v17
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s28, s68, v20
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v33, v32, v21, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s29, s68, v19
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v34, v43, s[36:39], 0 offen
	buffer_store_b32 v35, v44, s[36:39], 0 offen
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
	v_add_lshl_u32 v35, v32, v19, 2
	v_add_lshl_u32 v41, v32, v18, 2
	v_add_lshl_u32 v32, v32, v0, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v0, v42, v0
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
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_add_nc_u32 v17, v42, v17
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v31, v42, v31
	v_add_nc_u32_e32 v30, v42, v30
	v_add_nc_u32_e32 v29, v42, v29
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v17, v17, s33, 2
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v41, 0x80000000, v41, s17
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v31, v31, s33, 2
	v_add_lshl_u32 v30, v30, s33, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v28, v42, v28
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s15
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v27, v42, v27
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v31, 0x80000000, v31, s14
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v32, 0x80000000, v32, s16
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v26, v42, v26
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v30, 0x80000000, v30, s13
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x4
	buffer_store_b32 v36, v33, s[36:39], 0 offen
	buffer_store_b32 v37, v34, s[36:39], 0 offen
	buffer_store_b32 v38, v35, s[36:39], 0 offen
	buffer_store_b32 v39, v41, s[36:39], 0 offen
	buffer_store_b32 v40, v32, s[36:39], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s37, s43, 0xffff
	s_mov_b32 s36, s42
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v25, v42, v25
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
	v_add_nc_u32_e32 v24, v42, v24
	v_add_nc_u32_e32 v23, v42, v23
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v10, 0x80000000, v10, s11
	v_cndmask_b32_e64 v11, 0x80000000, v11, s10
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v22, v42, v22
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
	v_add_nc_u32_e32 v21, v42, v21
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v9, 0x80000000, v9, s8
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v20, v42, v20
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v10, 0x80000000, v10, s7
	v_cndmask_b32_e64 v11, 0x80000000, v11, s6
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v19, v42, v19
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v12, 0x80000000, v12, s5
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v18, v42, v18
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
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 336
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 336
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21880
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 336
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 336
    .sgpr_count:     107
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 83
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
