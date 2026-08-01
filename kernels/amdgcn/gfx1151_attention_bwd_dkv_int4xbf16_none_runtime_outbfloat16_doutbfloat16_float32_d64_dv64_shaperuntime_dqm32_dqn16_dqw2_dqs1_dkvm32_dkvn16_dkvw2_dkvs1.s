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
	v_and_b32_e32 v52, 15, v0
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
	v_mad_u64_u32 v[153:154], null, s34, v9, v[1:2]
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
	v_mad_u64_u32 v[5:6], null, s34, 6, v[153:154]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s18, s31
	v_cmp_gt_i32_e64 s10, s31, v7
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s19, s31
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[7:8], null, s34, 10, v[153:154]
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
	v_lshl_add_u32 v2, s34, 1, v153
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s23, s31
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v3, s34, 2, v153
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s33, s31
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v6, s34, 3, v153
	v_mov_b32_e32 v4, v5
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s51, -1, 0
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_add_i32 s55, s65, s64
	v_mad_u64_u32 v[8:9], null, s34, 12, v[153:154]
	s_mul_i32 s20, s55, s34
	s_clause 0x3                            ; 20-byte Folded Spill
	scratch_store_b32 off, v2, off offset:32
	scratch_store_b32 off, v3, off offset:36
	scratch_store_b64 off, v[4:5], off offset:40
	scratch_store_b32 off, v6, off offset:48
	v_add_nc_u32_e32 v9, s20, v153
	v_add_nc_u32_e32 v4, s20, v5
	v_add_nc_u32_e32 v5, s20, v6
	v_mov_b32_e32 v6, v7
	v_mad_u64_u32 v[10:11], null, s34, 14, v[153:154]
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
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_hi_u32 s12, s40, s11
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
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_ashr_i32 s11, s15, 31
	s_mov_b32 s14, 0
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
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_add_nc_u32 v186, 0, v0
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s53, s13
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_add_nc_u32 v187, 0, v13
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v13, s35, v15
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s52, s13
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v15, 1, v15
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_add_nc_u32 v188, 0, v14
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s50, s13
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v14, s35, v13
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_lshlrev_b32 v13, 1, v13
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s48, s13
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s47, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v21, 0x80000000, v13, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s46, s13
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v189, 0, v16
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v16, s35, v14
	v_add_nc_u32_e32 v17, s35, v16
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v13, 1, v16
	v_lshlrev_b32_e32 v14, 1, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v18, s35, v17
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v16, 1, v17
	v_cndmask_b32_e32 v22, 0x80000000, v14, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s45, s13
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt vmcnt(7)
	ds_store_b8 v186, v20
	s_waitcnt vmcnt(6)
	ds_store_b8 v186, v2 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v187, v3
	s_waitcnt vmcnt(4)
	ds_store_b8 v187, v4 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v188, v5
	s_waitcnt vmcnt(2)
	ds_store_b8 v188, v6 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v189, v7
	s_waitcnt vmcnt(0)
	ds_store_b8 v189, v8 offset:64
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v19, s35, v18
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v17, 0x80000000, v13, vcc_lo
	v_lshlrev_b32_e32 v13, 1, v18
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s43, s13
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(0)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v14, s35, v19
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v23, 0x80000000, v16 :: v_dual_lshlrev_b32 v16, 1, v19
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s42, s13
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v18, s35, v14
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v19, 0x80000000, v13 :: v_dual_lshlrev_b32 v14, 1, v14
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s41, s13
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshlrev_b32_e32 v3, 1, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v13, s35, v18
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v26, 0x80000000, v16, vcc_lo
	v_lshlrev_b32_e32 v16, 1, v18
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s19, s13
	s_mov_b32 s41, s55
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v18, s35, v13
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v27, 0x80000000, v14, vcc_lo
	v_lshlrev_b32_e32 v13, 1, v13
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s18, s13
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshlrev_b32_e32 v2, 5, v52
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
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_add_i32 s15, s15, s19
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v30, 0x80000000, v14, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s51, s13
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_mov_b32 s18, s22
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
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v27, v0, 4, 1
	scratch_store_b32 off, v3, off offset:76 ; 4-byte Folded Spill
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_and_b32_e32 v3, 24, v3
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_mov_b32 s19, s23
	.loc	1 587 20                        ; attention_backward.py:587:20
	s_and_b32 s69, s15, 0xffffffe0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v192, s64, v27
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_add_lshl_u32 v8, s41, v27, 1
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_or_b32_e32 v4, v2, v3
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_bfe_u32 s15, s36, 0x10008
	scratch_store_b32 off, v27, off offset:260 ; 4-byte Folded Spill
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v9, 4, v192
	v_or_b32_e32 v33, 8, v192
	v_or_b32_e32 v7, 2, v192
	v_or_b32_e32 v32, 6, v192
	v_or_b32_e32 v34, 10, v192
	v_or_b32_e32 v35, 12, v192
	v_or_b32_e32 v37, 14, v192
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s4, s31, v192
	v_cmp_gt_i32_e64 s6, s31, v9
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v9, 16, v8
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s8, s31, v33
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
	v_add_nc_u32_e32 v26, 20, v8
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s7, s31, v32
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v32, 0x80000000, v9, s8
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s9, s31, v34
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v9, 24, v8
	v_add_nc_u32_e32 v8, 28, v8
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s10, s31, v35
	v_cmp_gt_i32_e64 s11, s31, v37
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v5, 0x80000000, v5, s5
	v_cndmask_b32_e64 v6, 0x80000000, v6, s6
	v_cndmask_b32_e64 v7, 0x80000000, v7, s7
	v_cndmask_b32_e64 v33, 0x80000000, v26, s9
	v_cndmask_b32_e64 v34, 0x80000000, v9, s10
	v_cndmask_b32_e64 v35, 0x80000000, v8, s11
	.loc	1 588 9                         ; attention_backward.py:588:9
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
	s_clause 0x1
	s_load_b128 s[44:47], s[0:1], 0x50
	s_load_b32 s68, s[0:1], 0x74
	s_sub_i32 s15, s40, s15
	s_xor_b32 s16, s26, s27
	s_add_i32 s17, s12, 1
	s_sub_i32 s18, s15, s25
	s_cmp_ge_u32 s15, s25
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v34, 1, v36
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s12, s17, s12
	s_cselect_b32 s15, s18, s15
	s_add_i32 s17, s12, 1
	s_cmp_ge_u32 s15, s25
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_add_nc_u32_e32 v201, v186, v0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s12, s17, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s12, s12, s16
	s_sub_i32 s36, s12, s16
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[32:33], off offset:80
	scratch_store_b64 off, v[28:29], off offset:88
	ds_load_b64 v[28:29], v30
	v_lshlrev_b32_e32 v32, 1, v0
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_cmp_lt_i32 s36, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xor_b32_e32 v30, 0x1b0, v32
	v_add_nc_u32_e32 v204, 0, v30
	v_xor_b32_e32 v30, 0x3f0, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v208, 0, v30
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[28:29], off offset:96 ; 8-byte Folded Spill
	ds_load_b64 v[28:29], v31
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xor_b32_e32 v31, 0x240, v32
	v_add_nc_u32_e32 v205, 0, v31
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[28:29], off offset:104 ; 8-byte Folded Spill
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xor_b32_e32 v28, 0x90, v32
	v_xor_b32_e32 v29, 0x120, v32
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v202, 0, v28
	v_add_nc_u32_e32 v203, 0, v29
	v_xor_b32_e32 v28, 0x2d0, v32
	v_xor_b32_e32 v29, 0x360, v32
	s_waitcnt vmcnt(23)
	ds_store_b16 v201, v20
	s_waitcnt vmcnt(15)
	ds_store_b16 v201, v25 offset:1024
	ds_store_b16 v202, v18
	s_waitcnt vmcnt(14)
	ds_store_b16 v202, v24 offset:1024
	ds_store_b16 v203, v16
	s_waitcnt vmcnt(13)
	ds_store_b16 v203, v23 offset:1024
	ds_store_b16 v204, v14
	s_waitcnt vmcnt(12)
	ds_store_b16 v204, v22 offset:1024
	v_add_nc_u32_e32 v206, 0, v28
	v_add_nc_u32_e32 v207, 0, v29
	ds_store_b16 v205, v13
	s_waitcnt vmcnt(11)
	ds_store_b16 v205, v21 offset:1024
	ds_store_b16 v206, v12
	s_waitcnt vmcnt(10)
	ds_store_b16 v206, v19 offset:1024
	ds_store_b16 v207, v11
	s_waitcnt vmcnt(9)
	ds_store_b16 v207, v17 offset:1024
	ds_store_b16 v208, v10
	s_waitcnt vmcnt(8)
	ds_store_b16 v208, v15 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cbranch_scc1 .LBB0_13
; %bb.3:                                ; %.lr.ph150
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	s_xor_b32 s12, s3, s29
	v_writelane_b32 v255, s44, 0
	s_ashr_i32 s12, s12, 31
	s_load_b32 s70, s[0:1], 0x80
	s_xor_b32 s15, s24, s12
	s_clause 0x1
	s_load_b64 s[52:53], s[0:1], 0x0
	s_load_b64 s[56:57], s[0:1], 0x18
	v_writelane_b32 v255, s45, 1
	s_sub_i32 s12, s15, s12
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	v_lshlrev_b32_e32 v1, 1, v1
	v_mov_b16_e64 v219.l, 0
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v9.h, v8.l
	v_writelane_b32 v255, s46, 2
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v8, s35, v0
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v11, 1, v1
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e64 v219.h, v27.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v215.h, v6.l
	v_writelane_b32 v255, s47, 3
	s_clause 0x1
	s_load_b64 s[44:45], s[0:1], 0x48
	s_load_b128 s[48:51], s[0:1], 0x38
	s_mul_i32 s0, s12, s29
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v217.h, v5.l
	s_sub_i32 s3, s3, s0
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_sub_i32 s0, s64, s39
	v_mad_u64_u32 v[166:167], null, s34, 18, v[153:154]
	s_max_i32 s0, s0, 0
	v_mad_u64_u32 v[167:168], null, s34, 20, v[153:154]
	s_and_b32 s0, s0, 0x7fffffe0
	v_mad_u64_u32 v[168:169], null, s34, 22, v[153:154]
	s_max_u32 s0, s14, s0
	s_and_b32 s1, s67, exec_lo
	s_cselect_b32 s71, s0, s14
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s0, s68, v1
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e64 v1.l, v219.l
	v_mov_b16_e32 v1.h, v26.l
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s1, s68, v11
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e64 v11.l, v219.l
	v_mov_b16_e32 v11.h, v9.l
	v_mov_b16_e64 v9.l, v219.l
	scratch_store_b32 off, v1, off offset:112 ; 4-byte Folded Spill
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshlrev_b32_e32 v1, 4, v0
	v_mad_u64_u32 v[169:170], null, s34, 24, v[153:154]
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v11, off offset:116
	scratch_store_b32 off, v9, off offset:120
	v_and_b32_e32 v1, 0x70, v1
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v9.h, v7.l
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v7, s35, v8
	scratch_store_b32 off, v8, off offset:124 ; 4-byte Folded Spill
	v_mov_b32_e32 v226, v0
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshl_or_b32 v1, v52, 7, v1
	v_mad_u64_u32 v[170:171], null, s34, 26, v[153:154]
	scratch_store_b32 off, v7, off offset:128 ; 4-byte Folded Spill
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v6, s35, v7
	scratch_store_b32 off, v219, off offset:164 ; 4-byte Folded Spill
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v219.h, v4.l
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v4, 0x70, v1, 0
	v_xad_u32 v5, 0x60, v1, 0
	ds_load_b128 v[16:19], v4
	ds_load_b128 v[12:15], v5
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v11, s35, v6
	scratch_store_b32 off, v6, off offset:168 ; 4-byte Folded Spill
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v6, 0x50, v1, 0
	v_xad_u32 v7, v1, 64, 0
	v_xad_u32 v4, v1, 16, 0
	scratch_store_b32 off, v11, off offset:204 ; 4-byte Folded Spill
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v11, s35, v11
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[12:15], off offset:132
	scratch_store_b128 off, v[16:19], off offset:148
	v_add_nc_u32_e32 v5, s35, v11
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[16:19], v6
	ds_load_b128 v[12:15], v7
	v_dual_mov_b32 v65, 0 :: v_dual_lshlrev_b32 v6, 4, v36
	v_xad_u32 v8, v1, 48, 0
	v_dual_mov_b32 v236, v5 :: v_dual_add_nc_u32 v7, s35, v5
	v_add_nc_u32_e32 v5, 0, v1
	ds_load_b128 v[61:64], v4
	ds_load_b128 v[57:60], v5
	v_dual_mov_b32 v234, v7 :: v_dual_add_nc_u32 v7, s35, v7
	v_lshlrev_b32_e32 v4, 1, v52
	v_or3_b32 v5, v3, v6, v2
	s_waitcnt lgkmcnt(2)
	s_clause 0x2                            ; 36-byte Folded Spill
	scratch_store_b128 off, v[12:15], off offset:172
	scratch_store_b128 off, v[16:19], off offset:188
	scratch_store_b32 off, v11, off offset:208
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v2, s35, v7
	v_mov_b32_e32 v244, v7
	v_lshl_or_b32 v229, v36, 6, v1
	v_add3_u32 v230, 0, v36, v4
	v_xor_b32_e32 v3, 16, v5
	v_mov_b32_e32 v232, v2
	v_add_nc_u32_e32 v6, s35, v2
	v_xor_b32_e32 v2, 8, v5
	v_and_b32_e32 v10, 16, v0
	v_mov_b32_e32 v246, v5
	v_xor_b32_e32 v5, 24, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v247, v6 :: v_dual_add_nc_u32 v2, 0, v2
	scratch_store_b32 off, v9, off offset:212 ; 4-byte Folded Spill
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v9, v1, 32, 0
	ds_load_b128 v[15:18], v8
	ds_load_b128 v[11:14], v9
	v_lshlrev_b32_e32 v7, 2, v10
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[11:14], off offset:224
	scratch_store_b128 off, v[15:18], off offset:240
	v_or3_b32 v233, v4, v7, v36
	v_lshlrev_b32_e32 v1, 3, v0
	v_dual_mov_b32 v29, v65 :: v_dual_add_nc_u32 v6, s35, v6
	v_xor_b32_e32 v4, 0x60, v229
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v12, 0x1b0, v233
	v_add_nc_u32_e32 v237, 0, v5
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v0, s35, v6
	v_xor_b32_e32 v8, 32, v229
	v_dual_mov_b32 v32, v65 :: v_dual_add_nc_u32 v243, 0, v4
	v_dual_mov_b32 v20, v65 :: v_dual_add_nc_u32 v253, 0, v12
	v_dual_mov_b32 v12, v65 :: v_dual_and_b32 v1, 48, v1
	v_mov_b32_e32 v4, v65
	v_xor_b32_e32 v9, 48, v229
	v_mov_b32_e32 v5, v65
	v_xor_b32_e32 v10, 64, v229
	v_lshl_or_b32 v235, v52, 6, v1
	v_xor_b32_e32 v1, 0x70, v229
	v_xor_b32_e32 v7, 0x90, v233
	v_mov_b32_e32 v28, v65
	v_mad_u64_u32 v[171:172], null, s34, 28, v[153:154]
	v_xor_b32_e32 v13, 16, v235
	v_xor_b32_e32 v14, 32, v235
	v_mov_b32_e32 v31, v65
	v_mad_u64_u32 v[172:173], null, s34, 30, v[153:154]
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v19, v65 :: v_dual_add_nc_u32 v254, 0, v13
	v_mov_b32_e32 v13, v65
	v_mov_b32_e32 v225, v0
	v_add_nc_u32_e32 v11, s35, v0
	v_xor_b32_e32 v0, 0x50, v229
	v_mov_b32_e32 v21, v65
	v_mov_b32_e32 v22, v65
	.loc	1 613 26                        ; attention_backward.py:613:26
	s_mul_i32 s12, s12, s28
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v249, v11 :: v_dual_add_nc_u32 v242, 0, v0
	v_dual_mov_b32 v27, v65 :: v_dual_add_nc_u32 v0, 0, v1
	v_mov_b32_e32 v1, 0
	scratch_store_b32 off, v2, off offset:216 ; 4-byte Folded Spill
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v11, s35, v11
	v_add_nc_u32_e32 v2, 0, v3
	v_mov_b32_e32 v3, v65
	scratch_store_b32 off, v0, off offset:256 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	v_mov_b32_e32 v231, v11
	v_add_nc_u32_e32 v15, s35, v11
	v_xor_b32_e32 v11, 0x120, v233
	scratch_store_b32 off, v2, off offset:220 ; 4-byte Folded Spill
	v_mov_b32_e32 v24, v65
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s28, s36, s3
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e64 v215.l, v219.l
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v252, 0, v11
	v_dual_mov_b32 v11, v65 :: v_dual_mov_b32 v248, v6
	v_xor_b32_e32 v6, 16, v229
	v_mov_b16_e64 v217.l, v219.l
	s_add_i32 s28, s28, s12
	v_dual_mov_b32 v26, v65 :: v_dual_add_nc_u32 v239, 0, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v238, 0, v6
	v_mov_b32_e32 v6, v65
	v_mov_b32_e32 v228, v15
	v_add_nc_u32_e32 v16, s35, v15
	v_xor_b32_e32 v15, 48, v235
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v240, 0, v9
	v_dual_mov_b32 v30, v65 :: v_dual_add_nc_u32 v241, 0, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v182, 0, v15
	v_dual_mov_b32 v15, v65 :: v_dual_add_nc_u32 v2, s35, v16
	v_dual_mov_b32 v214, v16 :: v_dual_add_nc_u32 v251, 0, v7
	v_mov_b32_e32 v18, v65
	v_dual_mov_b32 v23, v65 :: v_dual_add_nc_u32 v190, 0, v14
	v_add_nc_u32_e32 v245, s35, v2
	v_mov_b32_e32 v227, v2
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, v65
	v_mov_b32_e32 v14, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v250, s35, v245
	v_mov_b32_e32 v16, v65
	v_mov_b32_e32 v2, v65
	v_mov_b32_e32 v7, v65
	v_mov_b32_e32 v8, v65
	v_add_nc_u32_e32 v194, s35, v250
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v184, v34, v52
	.loc	1 641 25                        ; attention_backward.py:641:25
	s_mul_f32 s72, s70, 0x3fb8aa3b
	s_cmp_lt_i32 s71, s69
	s_mov_b32 s29, 0
	v_add_nc_u32_e32 v191, s35, v194
	s_cselect_b32 s73, -1, 0
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	v_add_nc_u32_e32 v193, s35, v191
	s_and_b32 s57, s57, 0xffff
	s_and_b32 s61, s51, 0xffff
	s_mov_b32 s60, s50
	s_and_b32 s45, s45, 0xffff
	v_add_nc_u32_e32 v195, s35, v193
	s_and_b32 s49, s49, 0xffff
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v52, off offset:264
	scratch_store_b32 off, v34, off offset:268
	v_add_nc_u32_e32 v196, s35, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v197, s35, v196
	v_add_nc_u32_e32 v198, s35, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v199, s35, v198
	v_add_nc_u32_e32 v200, s35, v199
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v177, s35, v200
	v_add_nc_u32_e32 v174, s35, v177
	.loc	1 520 26                        ; attention_backward.py:520:26
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v175, 16, v0
	v_or_b32_e32 v176, 18, v0
	v_or_b32_e32 v178, 20, v0
	v_or_b32_e32 v179, 22, v0
	v_or_b32_e32 v180, 24, v0
	v_or_b32_e32 v181, 26, v0
	v_or_b32_e32 v173, 28, v0
	v_or_b32_e32 v183, 30, v0
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
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v42, off, off offset:124
	scratch_load_b32 v43, off, off offset:128
	scratch_load_b32 v44, off, off offset:168
	scratch_load_b32 v45, off, off offset:204
	scratch_load_b32 v46, off, off offset:208
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
	v_add_nc_u32_e32 v122, s35, v174
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s3, s30
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v105, 2, v105
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s14, s30
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v145, 0, v233
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s15, s30
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_cndmask_b32_e64 v105, 0x80000000, v105, s12
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s16, s30
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
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
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s20, s30
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s21, s30
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s22, s30
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s23, s30
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s24, s30
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	v_add_nc_u32_e32 v146, 0, v235
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
	v_add_lshl_u32 v41, s94, v226, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s96, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v47, s94, v236, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s97, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v48, s94, v234, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s98, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v119, s94, v200, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s22, -1, 0
	s_cmp_lt_i32 s99, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v120, s94, v177, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s21, -1, 0
	s_cmp_lt_i32 s100, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v121, s94, v174, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s101, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v122, s94, v122, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s102, s30
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s103, s30
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s104, s30
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 vcc_lo, s30
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 vcc_hi, s30
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s65, s30
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s40, s30
	s_cselect_b32 s46, -1, 0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s50
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s50, s54
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s75, s75, 32
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v42, s94, v42, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v43, s94, v43, 1
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s93
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v44, s94, v44, 1
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s92
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v45, s94, v45, 1
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s91
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v46, s94, v46, 1
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s90
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s89
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s88
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s87
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	s_clause 0x7
	buffer_load_u16 v106, v41, s[48:51], 0 offen
	buffer_load_u16 v72, v42, s[48:51], 0 offen
	buffer_load_u16 v71, v43, s[48:51], 0 offen
	buffer_load_u16 v70, v44, s[48:51], 0 offen
	buffer_load_u16 v69, v45, s[48:51], 0 offen
	buffer_load_u16 v68, v46, s[48:51], 0 offen
	buffer_load_u16 v67, v47, s[48:51], 0 offen
	buffer_load_u16 v66, v48, s[48:51], 0 offen
	v_add_lshl_u32 v41, s94, v244, 1
	v_add_lshl_u32 v42, s94, v232, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s86
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v43, s94, v247, 1
	v_add_lshl_u32 v44, s94, v248, 1
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s85
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v45, s94, v225, 1
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s84
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v46, s94, v249, 1
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s83
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v47, s94, v231, 1
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s82
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v48, s94, v228, 1
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s63
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s63, s55
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s62
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s62, s54
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s47
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s47, s55
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	s_clause 0x7
	buffer_load_u16 v114, v41, s[48:51], 0 offen
	buffer_load_u16 v113, v42, s[48:51], 0 offen
	buffer_load_u16 v112, v43, s[48:51], 0 offen
	buffer_load_u16 v111, v44, s[48:51], 0 offen
	buffer_load_u16 v110, v45, s[48:51], 0 offen
	buffer_load_u16 v109, v46, s[48:51], 0 offen
	buffer_load_u16 v108, v47, s[48:51], 0 offen
	buffer_load_u16 v107, v48, s[48:51], 0 offen
	v_add_lshl_u32 v41, s94, v214, 1
	v_add_lshl_u32 v42, s94, v227, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s27
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v43, s94, v245, 1
	v_add_lshl_u32 v44, s94, v250, 1
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s26
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v45, s94, v194, 1
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s25
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s24
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s23
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v115, 0x80000000, v45, vcc_lo
	v_add_lshl_u32 v45, s94, v191, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v116, 0x80000000, v45, vcc_lo
	v_add_lshl_u32 v45, s94, v193, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s21
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v117, 0x80000000, v45, vcc_lo
	v_add_lshl_u32 v45, s94, v195, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s20
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v118, 0x80000000, v45, vcc_lo
	s_clause 0x7
	buffer_load_u16 v48, v41, s[48:51], 0 offen
	buffer_load_u16 v47, v42, s[48:51], 0 offen
	buffer_load_u16 v46, v43, s[48:51], 0 offen
	buffer_load_u16 v45, v44, s[48:51], 0 offen
	buffer_load_u16 v44, v115, s[48:51], 0 offen
	buffer_load_u16 v43, v116, s[48:51], 0 offen
	buffer_load_u16 v42, v117, s[48:51], 0 offen
	buffer_load_u16 v41, v118, s[48:51], 0 offen
	v_add_lshl_u32 v115, s94, v196, 1
	v_add_lshl_u32 v116, s94, v197, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s19
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v117, s94, v198, 1
	v_add_lshl_u32 v118, s94, v199, 1
	v_cndmask_b32_e32 v115, 0x80000000, v115, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s18
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v116, 0x80000000, v116, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s17
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v117, 0x80000000, v117, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s16
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v118, 0x80000000, v118, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s14
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v119, 0x80000000, v119, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s15
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v120, 0x80000000, v120, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s3
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v121, 0x80000000, v121, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s46
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s46, s54
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v122, 0x80000000, v122, vcc_lo
	s_clause 0x7
	buffer_load_u16 v123, v115, s[48:51], 0 offen
	buffer_load_u16 v124, v116, s[48:51], 0 offen
	buffer_load_u16 v125, v117, s[48:51], 0 offen
	buffer_load_u16 v118, v118, s[48:51], 0 offen
	buffer_load_u16 v119, v119, s[48:51], 0 offen
	buffer_load_u16 v120, v120, s[48:51], 0 offen
	buffer_load_u16 v117, v121, s[48:51], 0 offen
	buffer_load_u16 v116, v122, s[48:51], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v126, v105, s[44:47], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v115, v105, s[60:63], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(33)
	ds_store_b16 v201, v106
	s_waitcnt vmcnt(32)
	ds_store_b16 v201, v72 offset:128
	s_waitcnt vmcnt(31)
	ds_store_b16 v201, v71 offset:256
	s_waitcnt vmcnt(30)
	ds_store_b16 v201, v70 offset:384
	s_waitcnt vmcnt(29)
	ds_store_b16 v201, v69 offset:512
	s_waitcnt vmcnt(28)
	ds_store_b16 v201, v68 offset:640
	s_waitcnt vmcnt(27)
	ds_store_b16 v201, v67 offset:768
	s_waitcnt vmcnt(26)
	ds_store_b16 v201, v66 offset:896
	s_waitcnt vmcnt(25)
	ds_store_b16 v201, v114 offset:1024
	s_waitcnt vmcnt(24)
	ds_store_b16 v201, v113 offset:1152
	s_waitcnt vmcnt(23)
	ds_store_b16 v201, v112 offset:1280
	s_waitcnt vmcnt(22)
	ds_store_b16 v201, v111 offset:1408
	s_waitcnt vmcnt(21)
	ds_store_b16 v201, v110 offset:1536
	s_waitcnt vmcnt(20)
	ds_store_b16 v201, v109 offset:1664
	s_waitcnt vmcnt(19)
	ds_store_b16 v201, v108 offset:1792
	s_waitcnt vmcnt(18)
	ds_store_b16 v201, v107 offset:1920
	s_waitcnt vmcnt(17)
	ds_store_b16 v201, v48 offset:2048
	s_waitcnt vmcnt(16)
	ds_store_b16 v201, v47 offset:2176
	s_waitcnt vmcnt(15)
	ds_store_b16 v201, v46 offset:2304
	s_waitcnt vmcnt(14)
	ds_store_b16 v201, v45 offset:2432
	s_waitcnt vmcnt(13)
	ds_store_b16 v201, v44 offset:2560
	s_waitcnt vmcnt(12)
	ds_store_b16 v201, v43 offset:2688
	s_waitcnt vmcnt(11)
	ds_store_b16 v201, v42 offset:2816
	s_waitcnt vmcnt(10)
	ds_store_b16 v201, v41 offset:2944
	s_waitcnt vmcnt(9)
	ds_store_b16 v201, v123 offset:3072
	s_waitcnt vmcnt(8)
	ds_store_b16 v201, v124 offset:3200
	s_waitcnt vmcnt(7)
	ds_store_b16 v201, v125 offset:3328
	s_waitcnt vmcnt(6)
	ds_store_b16 v201, v118 offset:3456
	s_waitcnt vmcnt(5)
	ds_store_b16 v201, v119 offset:3584
	s_waitcnt vmcnt(4)
	ds_store_b16 v201, v120 offset:3712
	s_waitcnt vmcnt(3)
	ds_store_b16 v201, v117 offset:3840
	s_waitcnt vmcnt(2)
	ds_store_b16 v201, v116 offset:3968
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16_hi v107, v230 offset:640
	ds_load_u16_d16_hi v108, v230 offset:896
	ds_load_u16_d16_hi v76, v230 offset:960
	ds_load_u16_d16_hi v75, v230 offset:704
	ds_load_u16_d16_hi v109, v230 offset:1152
	ds_load_u16_d16_hi v110, v230 offset:1408
	ds_load_u16_d16_hi v78, v230 offset:1472
	ds_load_u16_d16_hi v77, v230 offset:1216
	ds_load_u16_d16_hi v111, v230 offset:1664
	ds_load_u16_d16_hi v112, v230 offset:1920
	ds_load_u16_d16_hi v80, v230 offset:1984
	ds_load_u16_d16_hi v79, v230 offset:1728
	ds_load_u16_d16_hi v81, v230 offset:2176
	ds_load_u16_d16_hi v82, v230 offset:2432
	ds_load_u16_d16_hi v90, v230 offset:2496
	ds_load_u16_d16_hi v89, v230 offset:2240
	ds_load_u16_d16_hi v85, v230 offset:3200
	ds_load_u16_d16_hi v86, v230 offset:3456
	ds_load_u16_d16_hi v94, v230 offset:3520
	ds_load_u16_d16_hi v93, v230 offset:3264
	ds_load_u16_d16_hi v87, v230 offset:3712
	ds_load_u16_d16_hi v88, v230 offset:3968
	ds_load_u16_d16_hi v96, v230 offset:4032
	ds_load_u16_d16_hi v95, v230 offset:3776
	ds_load_u16_d16_hi v83, v230 offset:2688
	ds_load_u16_d16_hi v84, v230 offset:2944
	ds_load_u16_d16_hi v92, v230 offset:3008
	ds_load_u16_d16_hi v91, v230 offset:2752
	ds_load_u16_d16_hi v105, v230 offset:128
	ds_load_u16_d16_hi v106, v230 offset:384
	ds_load_u16_d16_hi v74, v230 offset:448
	ds_load_u16_d16_hi v73, v230 offset:192
	ds_load_u16_d16_hi v39, v230
	ds_load_u16_d16_hi v38, v230 offset:256
	ds_load_u16_d16_hi v221, v230 offset:320
	ds_load_u16_d16_hi v222, v230 offset:64
	ds_load_u16_d16_hi v37, v230 offset:512
	ds_load_u16_d16_hi v36, v230 offset:768
	ds_load_u16_d16_hi v218, v230 offset:832
	ds_load_u16_d16_hi v220, v230 offset:576
	ds_load_u16_d16_hi v35, v230 offset:1024
	ds_load_u16_d16_hi v34, v230 offset:1280
	ds_load_u16_d16_hi v213, v230 offset:1344
	ds_load_u16_d16_hi v216, v230 offset:1088
	ds_load_u16_d16_hi v33, v230 offset:1536
	ds_load_u16_d16_hi v223, v230 offset:1792
	ds_load_u16_d16_hi v212, v230 offset:1856
	ds_load_u16_d16_hi v209, v230 offset:1600
	ds_load_u16_d16_hi v211, v230 offset:2048
	ds_load_u16_d16_hi v0, v230 offset:2304
	ds_load_u16_d16_hi v159, v230 offset:2368
	ds_load_u16_d16_hi v160, v230 offset:2112
	ds_load_u16_d16_hi v157, v230 offset:2880
	ds_load_u16_d16_hi v165, v230 offset:2816
	ds_load_u16_d16_hi v210, v230 offset:2560
	ds_load_u16_d16_hi v158, v230 offset:2624
	ds_load_u16_d16_hi v155, v230 offset:3392
	ds_load_u16_d16_hi v163, v230 offset:3328
	ds_load_u16_d16_hi v164, v230 offset:3072
	ds_load_u16_d16_hi v156, v230 offset:3136
	ds_load_u16_d16_hi v154, v230 offset:3904
	ds_load_u16_d16_hi v161, v230 offset:3840
	ds_load_u16_d16_hi v162, v230 offset:3584
	ds_load_u16_d16_hi v185, v230 offset:3648
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v201, v106
	ds_store_b16 v201, v114 offset:1024
	ds_store_b16 v201, v48 offset:2048
	ds_store_b16 v201, v123 offset:3072
	ds_store_b16 v202, v72
	ds_store_b16 v202, v113 offset:1024
	ds_store_b16 v202, v47 offset:2048
	ds_store_b16 v202, v124 offset:3072
	ds_store_b16 v203, v71
	ds_store_b16 v203, v112 offset:1024
	ds_store_b16 v203, v46 offset:2048
	ds_store_b16 v203, v125 offset:3072
	ds_store_b16 v204, v70
	ds_store_b16 v204, v111 offset:1024
	ds_store_b16 v204, v45 offset:2048
	ds_store_b16 v204, v118 offset:3072
	ds_store_b16 v205, v69
	ds_store_b16 v205, v110 offset:1024
	ds_store_b16 v205, v44 offset:2048
	ds_store_b16 v205, v119 offset:3072
	ds_store_b16 v206, v68
	ds_store_b16 v206, v109 offset:1024
	ds_store_b16 v206, v43 offset:2048
	ds_store_b16 v206, v120 offset:3072
	ds_store_b16 v207, v67
	ds_store_b16 v207, v108 offset:1024
	ds_store_b16 v207, v42 offset:2048
	ds_store_b16 v207, v117 offset:3072
	ds_store_b16 v208, v66
	ds_store_b16 v208, v107 offset:1024
	ds_store_b16 v208, v41 offset:2048
	ds_store_b16 v208, v116 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[49:52], off, off offset:224
	scratch_load_b128 v[53:56], off, off offset:240
	v_dual_mov_b32 v68, v65 :: v_dual_add_nc_u32 v41, 0, v229
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[41:44], v41
	ds_load_b128 v[45:48], v238
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v72, v65
	v_mov_b32_e32 v66, v65
	v_mov_b32_e32 v67, v65
	v_mov_b32_e32 v69, v65
	v_mov_b32_e32 v70, v65
	v_mov_b32_e32 v71, v65
	v_mov_b32_e32 v123, v72
	v_dual_mov_b32 v119, v68 :: v_dual_mov_b32 v118, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v121, v70 :: v_dual_mov_b32 v120, v69
	v_dual_mov_b32 v122, v71 :: v_dual_mov_b32 v117, v66
	v_mov_b32_e32 v116, v65
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v66, v93, 0, 8
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v69, v99
	v_cvt_f32_i32_e32 v70, v100
	v_cvt_f32_i32_e32 v71, v101
	v_cvt_f32_i32_e32 v72, v102
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[116:123], v[57:64], v[41:48], v[116:123]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[41:44], v239
	ds_load_b128 v[45:48], v240
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v93.l, v66.l
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v67, v97
	v_cvt_f32_i32_e32 v97, v103
	v_cvt_f32_i32_e32 v68, v98
	v_cvt_f32_i32_e32 v98, v104
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v66, 15, v93
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v40.h, v93.l, 15
	.loc	1 607 13 is_stmt 1              ; attention_backward.py:607:13
	s_cmp_lt_i32 s75, s69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v99, -16, v66
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v40.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v40.h, 4, v93.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v99, v66, v99, vcc_lo
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e32 v66.l, 0
	.loc	1 649 36 is_stmt 0              ; attention_backward.py:649:36
	v_and_b16 v100.l, v40.h, 15
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v93.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v66.h, v95.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v99, v99
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e32 v100.h, v66.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v111.l, v66.l
	v_mov_b16_e32 v109.l, v66.l
	v_mov_b16_e32 v105.l, v66.l
	v_mov_b16_e32 v107.l, v66.l
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v101, -16, v100
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v95.l, v66.l
	v_mov_b16_e32 v106.l, v66.l
	v_mov_b16_e32 v108.l, v66.l
	v_mov_b16_e32 v110.l, v66.l
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v100, v100, v101, vcc_lo
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v101.h, v96.l
	v_mov_b16_e32 v101.l, v66.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v112.l, v66.l
	v_mov_b16_e32 v93.l, v66.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v100, v100
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v96.l, v66.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v99, v99, v101
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v221.l, v66.l
	v_mov_b16_e64 v222.l, v66.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v100, v100, v101
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v101, v92, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e32 v101.h, v66.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v99, 0, v99, s0
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v220.l, v66.l
	v_mov_b16_e64 v218.l, v66.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v92.l, v101.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v216.l, v66.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s12, v99, v99
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v210.l, v66.l
	v_mov_b16_e64 v211.l, v66.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v40.h, 4, v92.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v92.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v164.l, v66.l
	v_mov_b16_e64 v165.l, v66.l
	v_mov_b16_e64 v223.l, v66.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v101.l, v40.h, 15
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v40.h, v92.l, 15
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v163.l, v66.l
	v_mov_b16_e64 v155.l, v66.l
	v_mov_b16_e64 v161.l, v66.l
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v102, -16, v101
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v162.l, v66.l
	v_mov_b16_e64 v158.l, v66.l
	v_mov_b16_e64 v212.l, v66.l
	v_mov_b16_e64 v154.l, v66.l
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v101, v101, v102, vcc_lo
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v40.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v209.l, v66.l
	v_mov_b16_e64 v213.l, v66.l
	v_mov_b16_e64 v185.l, v66.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v101, v101
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v102, 15, v92
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v92.l, v66.l
	v_mov_b16_e64 v159.l, v66.l
	v_mov_b16_e64 v157.l, v66.l
	v_mov_b16_e64 v160.l, v66.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v103, -16, v102
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v156.l, v66.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v102, v102, v103, vcc_lo
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v103.h, v94.l
	v_mov_b16_e32 v103.l, v66.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v94.l, v66.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v102, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v101, v103, v101
	v_mul_f32_e32 v102, v103, v102
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v103.h, v66.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v101, 0, v101, s1
	v_mov_b16_e32 v103.l, v101.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v101, v101
	v_and_b32_e32 v103, 1, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v103, v101, v103, 0x7fff
	v_cndmask_b32_e64 v101, 0, v102, s0
	v_mov_b16_e32 v102.h, v66.l
	v_cndmask_b16 v113.h, 0x7fff, v103.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v102.l, v101.h
	v_cmp_o_f32_e64 s3, v101, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v102, 1, v102
	v_add3_u32 v102, v101, v102, 0x7fff
	v_bfe_u32 v101, v99, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v113.l, 0x7fff, v102.h, s3
	v_add3_u32 v101, v99, v101, 0x7fff
	v_cndmask_b32_e64 v99, 0, v100, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v114.l, 0x7fff, v101.h, s12
	v_bfe_u32 v100, v99, 16, 1
	v_cmp_o_f32_e64 s14, v99, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v100, v99, v100, 0x7fff
	.loc	1 640 41                        ; attention_backward.py:640:41
	v_mul_f32_e32 v99, s72, v66
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v114.h, 0x7fff, v100.h, s14
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v67, v99, v67
	v_mul_f32_e32 v69, v99, v69
	v_mul_f32_e32 v72, v99, v72
	v_mul_f32_e32 v71, v99, v71
	v_mul_f32_e32 v97, v99, v97
	v_mul_f32_e32 v98, v99, v98
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v97, v97, v217, -v115
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[116:123], v[49:56], v[41:48], v[116:123]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[49:52], off, off offset:172
	scratch_load_b128 v[53:56], off, off offset:188
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[41:44], v241
	ds_load_b128 v[45:48], v242
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[116:123], v[49:56], v[41:48], v[116:123]
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x2                            ; 36-byte Folded Reload
	scratch_load_b32 v45, off, off offset:256
	scratch_load_b128 v[49:52], off, off offset:132
	scratch_load_b128 v[53:56], off, off offset:148
	ds_load_b128 v[41:44], v243
	s_waitcnt vmcnt(2)
	ds_load_b128 v[45:48], v45
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[116:123], v[49:56], v[41:48], v[116:123]
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v49, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v45, v120, v126
	v_sub_f32_e32 v42, v117, v126
	v_sub_f32_e32 v47, v122, v126
	v_sub_f32_e32 v46, v121, v126
	v_sub_f32_e32 v41, v116, v126
	v_sub_f32_e32 v43, v118, v126
	v_sub_f32_e32 v44, v119, v126
	v_sub_f32_e32 v48, v123, v126
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v67, v67, v49, -v115
	scratch_load_b32 v49, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v118, 0, v67, s81
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_dual_mul_f32 v68, v99, v68 :: v_dual_mul_f32 v41, v118, v41
	v_mul_f32_e32 v70, v99, v70
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v99, v72, v215, -v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v41, s70, v41
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v67, v41, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v100, v41, v67, 0x7fff
	v_cndmask_b16 v40.h, 0x7fff, v100.h, vcc_lo
	.loc	1 703 34 is_stmt 1              ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v68, v68, v49, -v115
	scratch_load_b32 v49, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v72, 0, v41, s80
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v41, v72, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v41, s70, v41
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v42, v41, 16, 1
	v_cmp_o_f32_e64 s3, v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_add3_u32 v42, v41, v42, 0x7fff
	.loc	1 703 34 is_stmt 1              ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v69, v69, v49, -v115
	scratch_load_b32 v49, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v69
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v67, 0, v41, s79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v41, v67, v43
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v41, s70, v41
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v98, v98, v219, -v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v43, v41, 16, 1
	v_cmp_o_f32_e64 s12, v41, v41
	v_add3_u32 v43, v41, v43, 0x7fff
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v70, v70, v49, -v115
	scratch_load_b32 v49, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v68, 0, v41, s78
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v41, v68, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v41, s70, v41
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v44, v41, 16, 1
	v_cmp_o_f32_e64 s14, v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v44, v41, v44, 0x7fff
	.loc	1 703 34 is_stmt 1              ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v71, v71, v49, -v115
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v119, 0, v41, s77
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v41, v119, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v41, s70, v41
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v45, v41, 16, 1
	v_cmp_o_f32_e64 s15, v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v45, v41, v45, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v99
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v69, 0, v41, s76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v41, v69, v46
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v41, s70, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v46, v41, 16, 1
	v_cmp_o_f32_e64 s16, v41, v41
	v_add3_u32 v46, v41, v46, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v97
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v70, 0, v41, s59
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v41, v70, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v41, s70, v41
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v47, v41, 16, 1
	v_cmp_o_f32_e64 s17, v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v47, v41, v47, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v98
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v71, 0, v41, s58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v41, v71, v48
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v41, s70, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v48, v41, 16, 1
	v_cmp_o_f32_e64 s18, v41, v41
	v_add3_u32 v48, v41, v48, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v45.h, s15
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	ds_store_b16_d16_hi v145, v40
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v40.h, 0x7fff, v42.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v145, v41 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v41.l, 0x7fff, v46.h, s16
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v251, v40
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v40.h, 0x7fff, v43.h, s12
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v251, v41 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v41.l, 0x7fff, v47.h, s17
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v252, v40
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v40.h, 0x7fff, v44.h, s14
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s17, v71, v71
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v252, v41 offset:512
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v41, v89, 0, 8
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v89.l, v66.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v42.l, v41.l
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v43, 15, v42
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v41.l, v42.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v44, -16, v43
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v41.l
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v41, v88, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e32 v41.h, v66.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v88.l, v66.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v43, v43, v44, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v44.l, v41.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v41.l, v44.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v45, 15, v44
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v44.h, v91.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v91.l, v66.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v41.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v41.l, 4, v42.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v46, -16, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v41.l, v41.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v45, v45, v46, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v42.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v46, -16, v41
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v42, v41, v46, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v41.l, 4, v44.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v44.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v44.l, v66.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v41.l, v41.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v43, v43, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v42, v42, v44
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v46, -16, v41
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v44.h, v90.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v43, 0, v43, s0
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v90.l, v66.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v42, 0, v42, s1
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v41, v41, v46, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v45, v45, v44
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v42, v42
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v41, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v41, v41, v44
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v44, v43, 16, 1
	v_cndmask_b32_e64 v41, 0, v41, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v44, v43, v44, 0x7fff
	v_bfe_u32 v43, v42, 16, 1
	v_cmp_o_f32_e64 s14, v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v43, v42, v43, 0x7fff
	v_cndmask_b32_e64 v42, 0, v45, s0
	v_bfe_u32 v45, v42, 16, 1
	v_cmp_o_f32_e64 s12, v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v45, v42, v45, 0x7fff
	v_bfe_u32 v42, v41, 16, 1
	v_add3_u32 v42, v41, v42, 0x7fff
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v41.l, 0x7fff, v48.h, s18
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v253, v40
	ds_store_b16 v253, v41 offset:512
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v41.h, 0x7fff, v43.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[124:127], v146
	ds_load_b128 v[128:131], v254
	ds_load_b128 v[97:100], v190
	ds_load_b128 v[101:104], v182
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v43, off, off offset:76 ; 4-byte Folded Reload
	v_cndmask_b16 v41.l, 0x7fff, v44.h, vcc_lo
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v44, v85, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v42.l, 0x7fff, v45.h, s12
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s14
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v85.l, v66.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v45, 15, v44
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v40.h, v44.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v46, -16, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v40.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v45, v45, v46, vcc_lo
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v46, v84, 0, 8
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v84.l, v66.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v47, 15, v46
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v40.h, v46.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v48, -16, v47
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v40.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v40.h, 4, v44.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v47, v47, v48, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v48.l, v40.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e32 v48.h, v66.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v44.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v40.h, 4, v46.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v43, v201, v43
	ds_store_2addr_stride64_b32 v43, v113, v114 offset1:1
	ds_store_2addr_stride64_b32 v43, v41, v42 offset0:2 offset1:3
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v113, -16, v48
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v41, v83, 0, 8
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v83.l, v66.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v44, v48, v113, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v48.l, v40.h, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v46.l
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v42, 15, v41
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v40.h, v41.l, 15
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v113, -16, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v46, v48, v113, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v48.h, v87.l
	v_mov_b16_e32 v48.l, v66.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v87.l, v66.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v46, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v45, v48
	v_mul_f32_e32 v44, v44, v48
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v48.h, v86.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v86.l, v66.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v45, 0, v45, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v44, 0, v44, s1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v47, v47, v48
	v_mul_f32_e32 v46, v46, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v48, v45, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	v_cmp_o_f32_e64 s3, v44, v44
	v_add3_u32 v48, v45, v48, 0x7fff
	v_bfe_u32 v45, v44, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v45, v44, v45, 0x7fff
	v_cndmask_b32_e64 v44, 0, v47, s0
	v_bfe_u32 v47, v44, 16, 1
	v_cmp_o_f32_e64 s12, v44, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v47, v44, v47, 0x7fff
	v_cndmask_b32_e64 v44, 0, v46, s1
	v_cndmask_b16 v45.l, 0x7fff, v47.h, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v46, v44, 16, 1
	v_cmp_o_f32_e64 s14, v44, v44
	v_add3_u32 v46, v44, v46, 0x7fff
	v_cndmask_b16 v44.l, 0x7fff, v48.h, vcc_lo
	v_cndmask_b16 v44.h, 0x7fff, v45.h, s3
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v40.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v45.h, 0x7fff, v46.h, s14
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v46, -16, v42
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v42, v42, v46, vcc_lo
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v46, v81, 0, 8
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v81.l, v66.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v47, 15, v46
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v40.h, v46.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 1              ; attention_backward.py:732:35
	v_sub_f32_e32 v224, v81, v81
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v81.l, v211.h
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v48, -16, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v40.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v40.h, 4, v41.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v47, v47, v48, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v48.l, v40.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e32 v48.h, v66.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v41.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v40.h, 4, v46.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v113, -16, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v41, v48, v113, vcc_lo
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v48.l, v40.h, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v46.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v113, -16, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v46, v48, v113, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v48.h, v82.l
	v_mov_b16_e32 v48.l, v66.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v82.l, v66.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v46, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v42, v42, v48
	v_mul_f32_e32 v41, v41, v48
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v48.h, v80.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v80.l, v66.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v42, 0, v42, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v41, 0, v41, s1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v47, v47, v48
	v_mul_f32_e32 v46, v46, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v48, v42, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_cmp_o_f32_e64 s3, v41, v41
	v_add3_u32 v48, v42, v48, 0x7fff
	v_bfe_u32 v42, v41, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v42, v41, v42, 0x7fff
	v_cndmask_b32_e64 v41, 0, v47, s0
	v_bfe_u32 v47, v41, 16, 1
	v_cmp_o_f32_e64 s12, v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v47, v41, v47, 0x7fff
	v_cndmask_b32_e64 v41, 0, v46, s1
	v_cndmask_b16 v42.l, 0x7fff, v47.h, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v46, v41, 16, 1
	v_cmp_o_f32_e64 s14, v41, v41
	v_add3_u32 v46, v41, v46, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v48.h, vcc_lo
	v_cndmask_b16 v41.h, 0x7fff, v42.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cndmask_b16 v42.h, 0x7fff, v46.h, s14
	ds_store_2addr_stride64_b32 v43, v44, v45 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v43, v41, v42 offset0:6 offset1:7
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v41, v79, 0, 8
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v79.l, v66.l
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v42, 15, v41
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v40.h, v41.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 1              ; attention_backward.py:732:35
	v_sub_f32_e32 v50, v79, v79
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v79.l, v209.h
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v44, -16, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v40.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v42, v42, v44, vcc_lo
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v44, v76, 0, 8
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v76.l, v66.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v45, 15, v44
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v40.h, v44.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 1              ; attention_backward.py:732:35
	v_sub_f32_e32 v53, v76, v76
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v76.l, v218.h
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v46, -16, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v40.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v40.h, 4, v41.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v45, v45, v46, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v46.l, v40.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e32 v46.h, v66.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v41.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v40.h, 4, v44.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v47, -16, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v41, v46, v47, vcc_lo
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v46.l, v40.h, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v44.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v47, -16, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v44, v46, v47, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v46.h, v78.l
	v_mov_b16_e32 v46.l, v66.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v78.l, v66.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v42, v42, v46
	v_mul_f32_e32 v41, v41, v46
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v46.h, v77.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v77.l, v66.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v51, v78, v78
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v42, 0, v42, s0
	v_cndmask_b32_e64 v41, 0, v41, s1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v45, v45, v46
	v_mul_f32_e32 v44, v44, v46
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v78.l, v213.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v46, v42, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_cmp_o_f32_e64 s3, v41, v41
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v52, v77, v77
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v77.l, v216.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v46, v42, v46, 0x7fff
	v_bfe_u32 v42, v41, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v42, v41, v42, 0x7fff
	v_cndmask_b32_e64 v41, 0, v45, s0
	v_bfe_u32 v45, v41, 16, 1
	v_cmp_o_f32_e64 s12, v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v45, v41, v45, 0x7fff
	v_cndmask_b32_e64 v41, 0, v44, s1
	v_bfe_u32 v44, v41, 16, 1
	v_cmp_o_f32_e64 s14, v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_add3_u32 v44, v41, v44, 0x7fff
	v_cndmask_b16 v41.h, 0x7fff, v42.h, s3
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v42, v75, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v41.l, 0x7fff, v46.h, vcc_lo
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v75.l, v66.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v40.h, v42.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v46, 15, v42
	.loc	1 732 35 is_stmt 1              ; attention_backward.py:732:35
	v_sub_f32_e32 v54, v75, v75
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v75.l, v220.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v40.h
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v40, v40, 0, 8
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v47, -16, v46
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e32 v40.h, v66.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v44.l, v40.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 33 is_stmt 1              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v46, v46, v47, vcc_lo
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v40.l, v44.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v47, 15, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v40.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v40.l, 4, v42.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v48, -16, v47
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v40.l, v40.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v47, v47, v48, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v42.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v48, -16, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v42, v40, v48, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v40.l, 4, v44.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v44.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v40.l, v40.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v48, -16, v40
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v40, v40, v48, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v48.h, v74.l
	v_mov_b16_e32 v48.l, v66.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v74.l, v66.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v40, v40
	v_mul_f32_e32 v46, v46, v48
	v_mul_f32_e32 v42, v42, v48
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v48.h, v73.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v73.l, v66.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v55, v74, v74
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v46, 0, v46, s0
	v_cndmask_b32_e64 v42, 0, v42, s1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v47, v47, v48
	v_mul_f32_e32 v40, v40, v48
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v74.l, v221.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v48, v46, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	v_cmp_o_f32_e64 s3, v42, v42
	v_cndmask_b32_e64 v40, 0, v40, s1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v56, v73, v73
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v48, v46, v48, 0x7fff
	v_bfe_u32 v46, v42, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v73.l, v222.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s16, v40, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v44.l, 0x7fff, v48.h, vcc_lo
	v_add3_u32 v46, v42, v46, 0x7fff
	v_cndmask_b32_e64 v42, 0, v47, s0
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v48, v105, v105
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v105.l, v39.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v47, v42, 16, 1
	v_cmp_o_f32_e64 s15, v42, v42
	v_add3_u32 v47, v42, v47, 0x7fff
	v_bfe_u32 v42, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v42, v40, v42, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v45.h, s12
	v_cndmask_b16 v40.h, 0x7fff, v44.h, s14
	v_cndmask_b16 v44.h, 0x7fff, v46.h, s3
	v_cndmask_b16 v42.l, 0x7fff, v47.h, s15
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s16
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s15, v68, v68
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_store_2addr_stride64_b32 v43, v41, v40 offset0:8 offset1:9
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v40, v39, 0, 8
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s16, v70, v70
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_store_2addr_stride64_b32 v43, v44, v42 offset0:10 offset1:11
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v42, v35, 0, 8
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v41, 15, v40
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v39.l, v40.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v45, -16, v41
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v39.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v41, v41, v45, vcc_lo
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v45, v38, 0, 8
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v39.l, v45.l
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v45, 15, v39
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v38.l, v39.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v46, -16, v45
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v38.l
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v38.l, 4, v40.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v45, v45, v46, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v46.l, v38.l, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e32 v46.h, v66.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v40.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v38.l, 4, v39.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v47, -16, v46
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v40, v46, v47, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v46.l, v38.l, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v39.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v38.l, v66.l
	v_mov_b16_e32 v39.l, v66.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v47, -16, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v39, v39, v39
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v46, v46, v47, vcc_lo
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v47.h, v37.l
	v_mov_b16_e32 v47.l, v66.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v37.l, v66.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v46, v46
	v_mul_f32_e32 v41, v41, v47
	v_mul_f32_e32 v40, v40, v47
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v47.h, v36.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v36.l, v42.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b32_e64 v41, 0, v41, s0
	v_cndmask_b32_e64 v40, 0, v40, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v45, v45, v47
	v_mul_f32_e32 v46, v46, v47
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v42, 15, v36
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v47, v41, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	v_cmp_o_f32_e64 s3, v40, v40
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v35.l, v36.l, 15
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v44, -16, v42
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v47, v41, v47, 0x7fff
	v_bfe_u32 v41, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v41, v40, v41, 0x7fff
	v_cndmask_b32_e64 v40, 0, v45, s0
	v_bfe_u32 v45, v40, 16, 1
	v_cmp_o_f32_e64 s12, v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v45, v40, v45, 0x7fff
	v_cndmask_b32_e64 v40, 0, v46, s1
	v_cndmask_b16 v41.l, 0x7fff, v45.h, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v46, v40, 16, 1
	v_cmp_o_f32_e64 s14, v40, v40
	v_add3_u32 v46, v40, v46, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v47.h, vcc_lo
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v35.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v40.h, 0x7fff, v41.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v41.h, 0x7fff, v46.h, s14
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v42, v42, v44, vcc_lo
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v44, v34, 0, 8
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v35.l, v44.l
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v44, 15, v35
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v34.l, v35.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v45, -16, v44
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v34.l
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v34.l, 4, v36.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v44, v44, v45, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v45.l, v34.l, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e32 v45.h, v66.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v36.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v34.l, 4, v35.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v36.l, v66.l
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v46, -16, v45
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v45, v45, v46, vcc_lo
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v46.l, v34.l, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e32 v46.h, v66.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v35.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v34.l, v66.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v49, v80, v80
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v47, -16, v46
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v80.l, v212.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v35.l, v66.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v46, v46, v47, vcc_lo
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v47.h, v33.l
	v_mov_b16_e32 v47.l, v66.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v46, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v42, v42, v47
	v_mul_f32_e32 v45, v45, v47
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v47.h, v0.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v42, 0, v42, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v44, v44, v47
	v_mul_f32_e32 v46, v46, v47
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v47, v42, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v47, v42, v47, 0x7fff
	v_cndmask_b32_e64 v42, 0, v45, s1
	v_bfe_u32 v45, v42, 16, 1
	v_cmp_o_f32_e64 s3, v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v45, v42, v45, 0x7fff
	v_cndmask_b32_e64 v42, 0, v44, s0
	v_bfe_u32 v44, v42, 16, 1
	v_cmp_o_f32_e64 s12, v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v44, v42, v44, 0x7fff
	v_cndmask_b32_e64 v42, 0, v46, s1
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v46, v42, 16, 1
	v_cmp_o_f32_e64 s14, v42, v42
	v_add3_u32 v46, v42, v46, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v47.h, vcc_lo
	v_cndmask_b16 v42.h, 0x7fff, v45.h, s3
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v118, v118
	v_cmp_o_f32_e64 s3, v72, v72
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v44.h, 0x7fff, v46.h, s14
	ds_store_2addr_stride64_b32 v43, v40, v41 offset0:12 offset1:13
	ds_store_2addr_stride64_b32 v43, v42, v44 offset0:14 offset1:15
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v42, v230 offset:512
	ds_load_u16_d16 v43, v230 offset:768
	ds_load_u16_d16 v44, v230 offset:1024
	ds_load_u16_d16 v47, v230 offset:1792
	ds_load_u16_d16 v45, v230 offset:1280
	ds_load_u16_d16 v136, v230 offset:1088
	ds_load_u16_d16 v135, v230 offset:832
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16_hi v136, v230 offset:1216
	ds_load_u16_d16 v41, v230 offset:256
	ds_load_u16_d16 v40, v230
	ds_load_u16_d16 v46, v230 offset:1536
	ds_load_u16_d16_hi v42, v230 offset:640
	ds_load_u16_d16_hi v43, v230 offset:896
	ds_load_u16_d16_hi v44, v230 offset:1152
	ds_load_u16_d16 v137, v230 offset:1344
	ds_load_u16_d16 v116, v230 offset:2816
	ds_load_u16_d16 v117, v230 offset:3072
	ds_load_u16_d16 v123, v230 offset:2624
	ds_load_u16_d16 v122, v230 offset:2368
	ds_load_u16_d16 v113, v230 offset:2048
	ds_load_u16_d16 v114, v230 offset:2304
	ds_load_u16_d16 v115, v230 offset:2560
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v123, v230 offset:2752
	ds_load_u16_d16_hi v46, v230 offset:1664
	ds_load_u16_d16_hi v47, v230 offset:1920
	ds_load_u16_d16_hi v45, v230 offset:1408
	ds_load_u16_d16 v132, v230 offset:64
	ds_load_u16_d16_hi v41, v230 offset:384
	ds_load_u16_d16 v134, v230 offset:576
	ds_load_u16_d16 v133, v230 offset:320
	ds_load_u16_d16_hi v40, v230 offset:128
	ds_load_u16_d16 v138, v230 offset:1600
	ds_load_u16_d16 v121, v230 offset:2112
	ds_load_u16_d16 v139, v230 offset:1856
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v132, v230 offset:192
	ds_load_u16_d16_hi v135, v230 offset:960
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v134, v230 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v133, v230 offset:448
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(7)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[40:47], v[124:131], v[25:32]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v40, v118, 16, 1
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_load_u16_d16_hi v137, v230 offset:1472
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v138, v230 offset:1728
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v139, v230 offset:1984
	ds_load_u16_d16_hi v116, v230 offset:2944
	ds_load_u16_d16_hi v115, v230 offset:2688
	ds_load_u16_d16_hi v114, v230 offset:2432
	ds_load_u16_d16_hi v113, v230 offset:2176
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v42, v69, 16, 1
	v_cmp_o_f32_e64 s14, v67, v67
	v_add3_u32 v40, v118, v40, 0x7fff
	v_bfe_u32 v44, v68, 16, 1
	v_bfe_u32 v45, v70, 16, 1
	v_add3_u32 v42, v69, v42, 0x7fff
	v_bfe_u32 v46, v71, 16, 1
	v_cndmask_b16 v66.h, 0x7fff, v40.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v119, v119
	v_add3_u32 v44, v68, v44, 0x7fff
	v_add3_u32 v45, v70, v45, 0x7fff
	v_add3_u32 v46, v71, v46, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v40, v118, v66
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e32 v44.l, v66.l
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s15
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[132:139], v[124:131], v[17:24]
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v130.l, v66.l
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v41, v40, 16, 1
	v_cmp_o_f32_e64 s12, v40, v40
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_cndmask_b16 v45.h, 0x7fff, v45.h, s16
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v45.l, v66.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s17
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v129, v40, v41, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v40, v119, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v42.l, v66.l
	v_mov_b16_e32 v46.l, v66.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v47, v106, v106
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.l, 0x7fff, v129.h, s12
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v40, v119, v40, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v106.l, v38.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v130.h, 0x7fff, v40.h, vcc_lo
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v41, v119, v130
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_load_u16_d16 v128, v230 offset:3904
	ds_load_u16_d16 v124, v230 offset:2880
	ds_load_u16_d16 v118, v230 offset:3328
	ds_load_u16_d16 v125, v230 offset:3136
	ds_load_u16_d16 v119, v230 offset:3584
	ds_load_u16_d16 v120, v230 offset:3840
	ds_load_u16_d16 v127, v230 offset:3648
	ds_load_u16_d16 v126, v230 offset:3392
	ds_load_u16_d16_hi v122, v230 offset:2496
	ds_load_u16_d16_hi v121, v230 offset:2240
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v128, v230 offset:4032
	ds_load_u16_d16_hi v117, v230 offset:3200
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v124, v230 offset:3008
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v118, v230 offset:3456
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v125, v230 offset:3264
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v40, v41, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v119, v230 offset:3712
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v120, v230 offset:3968
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v127, v230 offset:3776
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v126, v230 offset:3520
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v40, v41, v40, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v41, v72, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v40.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v41, v72, v41, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v41.l, v66.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s3
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v145, v130 offset:512
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v69, v69
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v43, v72, v41
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v251, v41
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v72, v82, v82
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v82.l, v0.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v41, v43, 16, 1
	v_cmp_o_f32_e64 s3, v43, v43
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[113:120], v[97:104], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[121:128], v[97:104], v[17:24]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v41, v43, v41, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v43, v67, 16, 1
	v_add3_u32 v43, v67, v43, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v43.l, v66.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v43.h, 0x7fff, v43.h, s14
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v145, v66
	ds_store_b16_d16_hi v251, v42 offset:512
	ds_store_b16_d16_hi v252, v43
	ds_store_b16_d16_hi v252, v45 offset:512
	ds_store_b16_d16_hi v253, v44
	ds_store_b16_d16_hi v253, v46 offset:512
	s_waitcnt lgkmcnt(0)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v40, v67, v43
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_barrier
	ds_load_b128 v[137:140], v146
	ds_load_b128 v[141:144], v254
	ds_load_b128 v[129:132], v190
	ds_load_b128 v[133:136], v182
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v145, v0
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.l, 0x7fff, v41.h, s3
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v41, v68, v44
	v_sub_f32_e32 v43, v70, v45
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v45, v40, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v42, v69, v42
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	v_cmp_o_f32_e64 s3, v41, v41
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v44, v71, v46
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v45, v40, v45, 0x7fff
	v_bfe_u32 v40, v41, 16, 1
	v_cmp_o_f32_e64 s12, v42, v42
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	ds_store_b16 v145, v33 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s14, v43, v43
	v_cmp_o_f32_e64 s15, v44, v44
	v_add3_u32 v40, v41, v40, 0x7fff
	v_bfe_u32 v41, v42, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v46, v107, v107
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v107.l, v37.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v67, v87, v87
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v87.l, v162.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v41, v42, v41, 0x7fff
	v_bfe_u32 v42, v43, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v68, v86, v86
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v86.l, v163.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v69, v85, v85
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v41.h, s12
	v_add3_u32 v42, v43, v42, 0x7fff
	v_bfe_u32 v43, v44, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v251, v0
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.l, 0x7fff, v45.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v251, v33 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v42.h, s14
	v_add3_u32 v43, v44, v43, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v41, v112, v112
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v252, v0
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.l, 0x7fff, v40.h, s3
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v252, v33 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v43.h, s15
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v253, v0
	ds_store_b16 v253, v33 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[145:148], v146
	ds_load_b128 v[149:152], v254
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v112.l, v223.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v42, v111, v111
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v111.l, v33.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v43, v110, v110
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v110.l, v34.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v44, v109, v109
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v109.l, v35.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v45, v108, v108
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v108.l, v36.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v40, v88, v88
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v88.l, v161.h
	v_mov_b16_e64 v85.l, v164.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v70, v84, v84
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[105:112], v[137:144], v[9:16]
	v_mov_b16_e64 v84.l, v165.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v71, v83, v83
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v83.l, v210.h
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[137:144], v[1:8]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	v_cmp_o_f32_e64 s3, v39, v39
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v36, v36, v36
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[129:136], v[9:16]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s12, v47, v47
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v37, v37, v37
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v0.l, v66.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v38, v38
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[105:112], v[145:152], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v107, v94, v94
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v94.l, v155.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v108, v93, v93
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v93.l, v156.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v109, v92, v92
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v92.l, v157.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v110, v91, v91
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v91.l, v158.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v105, v96, v96
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v96.l, v154.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v106, v95, v95
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v95.l, v185.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v111, v90, v90
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v90.l, v159.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v112, v89, v89
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v89.l, v160.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v0, v0
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s15, v44, v44
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v35, v35, v35 :: v_dual_sub_f32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[89:96], v[129:136], v[1:8]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v33.l, v66.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[145:152], v[1:8]
	ds_load_b128 v[73:76], v190
	ds_load_b128 v[77:80], v182
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v33, v33, v33
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[73:80], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[89:96], v[73:80], v[1:8]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v73.l, v48.h
	v_mov_b16_e32 v73.h, v66.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v73, v48, v73, 0x7fff
	v_mov_b16_e32 v48.l, v39.h
	v_mov_b16_e32 v48.h, v66.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v73.h, 0x7fff, v73.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	v_and_b32_e32 v48, 1, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v48, v39, v48, 0x7fff
	v_mov_b16_e32 v39.l, v47.h
	v_mov_b16_e32 v39.h, v66.l
	v_cndmask_b16 v73.l, 0x7fff, v48.h, s3
	v_cmp_o_f32_e64 s3, v37, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v39, v47, v39, 0x7fff
	v_mov_b16_e32 v39.l, v37.h
	v_mov_b16_e32 v47.l, v38.h
	v_mov_b16_e32 v47.h, v66.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v74.h, 0x7fff, v39.h, s12
	v_mov_b16_e32 v39.h, v66.l
	v_cmp_o_f32_e64 s12, v45, v45
	v_and_b32_e32 v47, 1, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v47, v38, v47, 0x7fff
	v_mov_b16_e32 v38.l, v46.h
	v_mov_b16_e32 v38.h, v66.l
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v39, v37, v39, 0x7fff
	v_mov_b16_e32 v37.l, v45.h
	v_mov_b16_e32 v37.h, v66.l
	v_cndmask_b16 v74.l, 0x7fff, v47.h, s14
	v_cmp_o_f32_e64 s14, v36, v36
	v_and_b32_e32 v38, 1, v38
	v_cndmask_b16 v75.l, 0x7fff, v39.h, s3
	v_and_b32_e32 v37, 1, v37
	v_cmp_o_f32_e64 s3, v43, v43
	v_mov_b16_e32 v39.h, v66.l
	v_add3_u32 v38, v46, v38, 0x7fff
	v_mov_b16_e32 v38.l, v33.h
	v_add3_u32 v37, v45, v37, 0x7fff
	v_mov_b16_e32 v45.l, v36.h
	v_mov_b16_e32 v45.h, v66.l
	v_cndmask_b16 v75.h, 0x7fff, v38.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	v_cndmask_b16 v76.h, 0x7fff, v37.h, s12
	v_mov_b16_e32 v37.l, v34.h
	v_and_b32_e32 v45, 1, v45
	v_mov_b16_e32 v37.h, v66.l
	v_cmp_o_f32_e64 s12, v34, v34
	v_mov_b16_e32 v38.h, v66.l
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v45, v36, v45, 0x7fff
	v_mov_b16_e32 v36.l, v44.h
	v_mov_b16_e32 v36.h, v66.l
	v_and_b32_e32 v37, 1, v37
	v_and_b32_e32 v38, 1, v38
	v_cndmask_b16 v76.l, 0x7fff, v45.h, s14
	v_cmp_o_f32_e64 s14, v42, v42
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v37, v34, v37, 0x7fff
	v_mov_b16_e32 v34.l, v42.h
	v_mov_b16_e32 v34.h, v66.l
	v_add3_u32 v38, v33, v38, 0x7fff
	v_add3_u32 v36, v44, v36, 0x7fff
	v_mov_b16_e32 v36.l, v35.h
	v_cndmask_b16 v78.l, 0x7fff, v37.h, s12
	v_and_b32_e32 v34, 1, v34
	v_mov_b16_e32 v37.h, v66.l
	v_cndmask_b16 v77.h, 0x7fff, v36.h, s15
	v_mov_b16_e32 v36.h, v66.l
	v_cmp_o_f32_e64 s15, v33, v33
	v_add3_u32 v34, v42, v34, 0x7fff
	v_mov_b16_e32 v33.l, v41.h
	v_mov_b16_e32 v33.h, v66.l
	v_and_b32_e32 v36, 1, v36
	v_cndmask_b16 v79.l, 0x7fff, v38.h, s15
	v_cndmask_b16 v79.h, 0x7fff, v34.h, s14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v34, v222, v222 :: v_dual_and_b32 v33, 1, v33
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v36, v35, v36, 0x7fff
	v_mov_b16_e32 v35.l, v43.h
	v_mov_b16_e32 v35.h, v66.l
	v_cmp_o_f32_e64 s15, v54, v54
	v_add3_u32 v33, v41, v33, 0x7fff
	v_cndmask_b16 v77.l, 0x7fff, v36.h, vcc_lo
	v_mov_b16_e32 v36.h, v66.l
	v_and_b32_e32 v35, 1, v35
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	v_mov_b16_e32 v33.l, v56.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v38, v220, v220
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v35, v43, v35, 0x7fff
	v_cndmask_b16 v80.h, 0x7fff, v33.h, vcc_lo
	v_mov_b16_e32 v33.h, v66.l
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	v_mov_b16_e32 v39.l, v38.h
	v_cndmask_b16 v78.h, 0x7fff, v35.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v35, v223, v223
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v33, 1, v33
	v_cmp_o_f32_e64 s16, v38, v38
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v36.l, v35.h
	v_cmp_o_f32_e64 s3, v35, v35
	v_add3_u32 v33, v56, v33, 0x7fff
	v_mov_b16_e32 v33.l, v53.h
	v_add3_u32 v39, v38, v39, 0x7fff
	v_and_b32_e32 v36, 1, v36
	v_mov_b16_e32 v38.h, v66.l
	v_cndmask_b16 v41.h, 0x7fff, v33.h, vcc_lo
	v_mov_b16_e32 v33.h, v66.l
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	v_add3_u32 v36, v35, v36, 0x7fff
	v_mov_b16_e32 v35.l, v34.h
	v_mov_b16_e32 v35.h, v66.l
	v_and_b32_e32 v33, 1, v33
	v_cndmask_b16 v43.l, 0x7fff, v39.h, s16
	v_cndmask_b16 v80.l, 0x7fff, v36.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v36, v221, v221 :: v_dual_and_b32 v35, 1, v35
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v34, v34
	v_cmp_o_f32_e64 s12, v55, v55
	v_add3_u32 v33, v53, v33, 0x7fff
	v_mov_b16_e32 v37.l, v36.h
	v_cmp_o_f32_e64 s14, v36, v36
	v_add3_u32 v35, v34, v35, 0x7fff
	v_mov_b16_e32 v34.l, v55.h
	v_mov_b16_e32 v34.h, v66.l
	v_and_b32_e32 v37, 1, v37
	v_cndmask_b16 v44.h, 0x7fff, v33.h, vcc_lo
	v_cndmask_b16 v41.l, 0x7fff, v35.h, s3
	v_mov_b16_e32 v35.h, v66.l
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v37, v36, v37, 0x7fff
	v_mov_b16_e32 v36.l, v54.h
	v_mov_b16_e32 v36.h, v66.l
	v_mov_b16_e32 v39.h, v66.l
	v_add3_u32 v34, v55, v34, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v37.h, s14
	v_mov_b16_e32 v37.h, v66.l
	v_and_b32_e32 v36, 1, v36
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[73:80], v[137:144], v[9:16]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v42.h, 0x7fff, v34.h, s12
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v218, v218
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s12, v52, v52
	v_add3_u32 v36, v54, v36, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v35.l, v34.h
	v_cmp_o_f32_e64 s3, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v43.h, 0x7fff, v36.h, s15
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v36, v216, v216
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s15, v51, v51
	v_and_b32_e32 v35, 1, v35
	v_mov_b16_e32 v37.l, v36.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s14, v36, v36
	v_add3_u32 v35, v34, v35, 0x7fff
	v_mov_b16_e32 v34.l, v52.h
	v_mov_b16_e32 v34.h, v66.l
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v44.l, 0x7fff, v35.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v35, v209, v209 :: v_dual_and_b32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v37, v36, v37, 0x7fff
	v_mov_b16_e32 v36.l, v51.h
	v_mov_b16_e32 v36.h, v66.l
	v_cmp_o_f32_e64 s3, v50, v50
	v_add3_u32 v34, v52, v34, 0x7fff
	v_cndmask_b16 v45.l, 0x7fff, v37.h, s14
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v37, v212, v212
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v36, 1, v36
	v_cmp_o_f32_e64 s14, v49, v49
	v_cndmask_b16 v45.h, 0x7fff, v34.h, s12
	v_mov_b16_e32 v34.h, v66.l
	v_mov_b16_e32 v38.l, v37.h
	v_add3_u32 v36, v51, v36, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v33, v213, v213
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v36.l, v35.h
	v_cmp_o_f32_e64 s12, v35, v35
	v_and_b32_e32 v38, 1, v38
	v_cndmask_b16 v46.h, 0x7fff, v36.h, s15
	v_mov_b16_e32 v36.h, v66.l
	v_mov_b16_e32 v34.l, v33.h
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_add3_u32 v38, v37, v38, 0x7fff
	v_cmp_o_f32_e64 s15, v37, v37
	v_and_b32_e32 v36, 1, v36
	v_and_b32_e32 v34, 1, v34
	v_mov_b16_e32 v37.h, v66.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v48.l, 0x7fff, v38.h, s15
	v_add3_u32 v36, v35, v36, 0x7fff
	v_mov_b16_e32 v35.l, v49.h
	v_mov_b16_e32 v35.h, v66.l
	v_add3_u32 v34, v33, v34, 0x7fff
	v_mov_b16_e32 v33.l, v50.h
	v_mov_b16_e32 v33.h, v66.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v38, v165, v165 :: v_dual_and_b32 v35, 1, v35
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v46.l, 0x7fff, v34.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v34, v211, v211 :: v_dual_and_b32 v33, 1, v33
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v224, v224
	v_add3_u32 v35, v49, v35, 0x7fff
	v_mov_b16_e32 v39.l, v38.h
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v35.l, v34.h
	v_add3_u32 v33, v50, v33, 0x7fff
	v_mov_b16_e64 v33.l, v224.h
	v_cndmask_b16 v48.h, 0x7fff, v35.h, s14
	v_mov_b16_e32 v35.h, v66.l
	v_cndmask_b16 v47.l, 0x7fff, v36.h, s12
	v_cndmask_b16 v47.h, 0x7fff, v33.h, s3
	v_mov_b16_e32 v33.h, v66.l
	v_cmp_o_f32_e64 s3, v34, v34
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v36, v210, v210 :: v_dual_and_b32 v35, 1, v35
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v33, 1, v33
	v_cmp_o_f32_e64 s15, v38, v38
	v_add3_u32 v35, v34, v35, 0x7fff
	v_mov_b16_e32 v35.l, v0.h
	v_mov_b16_e32 v34.l, v72.h
	v_add3_u32 v33, v224, v33, 0x7fff
	v_mov_b16_e32 v34.h, v66.l
	v_cndmask_b16 v33.l, 0x7fff, v35.h, s3
	v_mov_b16_e32 v35.h, v66.l
	v_mov_b16_e32 v37.l, v36.h
	v_cndmask_b16 v33.h, 0x7fff, v33.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_and_b32_e32 v34, 1, v34
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v39, v38, v39, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v38, v164, v164
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s12, v72, v72
	v_add3_u32 v34, v72, v34, 0x7fff
	v_add3_u32 v35, v0, v35, 0x7fff
	v_mov_b16_e32 v0.l, v71.h
	v_mov_b16_e32 v0.h, v66.l
	v_and_b32_e32 v37, 1, v37
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[137:144], v[1:8]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v71, v71
	v_mov_b16_e32 v41.l, v38.h
	v_and_b32_e32 v0, 1, v0
	v_mov_b16_e32 v41.h, v66.l
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s12
	v_add3_u32 v37, v36, v37, 0x7fff
	v_cmp_o_f32_e64 s12, v36, v36
	v_add3_u32 v0, v71, v0, 0x7fff
	v_mov_b16_e32 v36.l, v70.h
	v_mov_b16_e32 v36.h, v66.l
	v_cndmask_b16 v34.l, 0x7fff, v35.h, vcc_lo
	v_mov_b16_e32 v0.l, v69.h
	v_cndmask_b16 v35.h, 0x7fff, v0.h, s3
	v_mov_b16_e32 v0.h, v66.l
	v_and_b32_e32 v41, 1, v41
	v_and_b32_e32 v36, 1, v36
	v_cmp_o_f32_e64 s3, v38, v38
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	v_and_b32_e32 v0, 1, v0
	v_add3_u32 v41, v38, v41, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v38, v163, v163
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v36, v70, v36, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v39.h, s15
	v_add3_u32 v0, v69, v0, 0x7fff
	v_mov_b16_e32 v39.h, v66.l
	v_mov_b16_e32 v39.l, v38.h
	v_cndmask_b16 v35.l, 0x7fff, v37.h, s12
	v_mov_b16_e32 v0.l, v68.h
	v_cndmask_b16 v37.h, 0x7fff, v0.h, vcc_lo
	v_mov_b16_e32 v0.h, v66.l
	v_and_b32_e32 v39, 1, v39
	v_cndmask_b16 v37.l, 0x7fff, v41.h, s3
	v_cmp_o_f32_e64 s3, v38, v38
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	v_and_b32_e32 v0, 1, v0
	v_add3_u32 v39, v38, v39, 0x7fff
	v_mov_b16_e32 v38.l, v67.h
	v_mov_b16_e32 v38.h, v66.l
	v_mov_b16_e32 v42.h, v66.l
	v_add3_u32 v0, v68, v0, 0x7fff
	v_cmp_o_f32_e64 s14, v70, v70
	v_mov_b16_e32 v43.h, v66.l
	v_and_b32_e32 v38, 1, v38
	v_cmp_o_f32_e64 s12, v67, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s14
	v_cmp_o_f32_e64 s14, v40, v40
	v_add3_u32 v41, v67, v38, 0x7fff
	v_cndmask_b16 v38.h, 0x7fff, v0.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v162, v162
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v39.h, 0x7fff, v41.h, s12
	v_cmp_o_f32_e64 s12, v111, v111
	v_mov_b16_e32 v42.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v41.h, v66.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v42, v0, v42, 0x7fff
	v_mov_b16_e32 v0.l, v40.h
	v_mov_b16_e32 v0.h, v66.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v39.l, 0x7fff, v42.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v112, v112
	v_and_b32_e32 v0, 1, v0
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v42, v154, v154
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v0, v40, v0, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v40, v161, v161
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v0.l, v112.h
	v_mov_b16_e32 v43.l, v40.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s15, v40, v40
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v43, v40, v43, 0x7fff
	v_cndmask_b16 v40.h, 0x7fff, v0.h, s14
	v_mov_b16_e32 v0.h, v66.l
	v_mov_b16_e32 v43.l, v42.h
	v_cndmask_b16 v40.l, 0x7fff, v43.h, s15
	v_cmp_o_f32_e64 s15, v110, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v0, 1, v0
	v_mov_b16_e32 v43.h, v66.l
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[129:136], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v33, v160, v160
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v34.h, v66.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v39, v156, v156
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v36.h, v66.l
	v_add3_u32 v0, v112, v0, 0x7fff
	v_mov_b16_e32 v34.l, v33.h
	v_cmp_o_f32_e64 s3, v33, v33
	v_mov_b16_e32 v38.h, v66.l
	v_mov_b16_e32 v40.l, v39.h
	v_mov_b16_e32 v40.h, v66.l
	v_and_b32_e32 v34, 1, v34
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v34, v33, v34, 0x7fff
	v_mov_b16_e32 v33.l, v111.h
	v_mov_b16_e32 v33.h, v66.l
	v_add3_u32 v43, v42, v43, 0x7fff
	v_add3_u32 v40, v39, v40, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v33, 1, v33
	v_add3_u32 v35, v111, v33, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v33, v159, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v36.l, v33.h
	v_cmp_o_f32_e64 s14, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v36, v33, v36, 0x7fff
	v_mov_b16_e32 v33.l, v110.h
	v_mov_b16_e32 v33.h, v66.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v34.l, 0x7fff, v36.h, s14
	v_mov_b16_e32 v36.h, v66.l
	v_and_b32_e32 v33, 1, v33
	v_cmp_o_f32_e64 s14, v108, v108
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v37, v110, v33, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v0.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v158, v158
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s3
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s12
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s15
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v37, v157, v157
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v36.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cmp_o_f32_e64 s3, v109, v109
	v_cmp_o_f32_e64 s15, v39, v39
	v_mov_b16_e32 v38.l, v37.h
	v_and_b32_e32 v36, 1, v36
	v_cmp_o_f32_e64 s12, v37, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v36, v0, v36, 0x7fff
	v_mov_b16_e32 v0.l, v109.h
	v_mov_b16_e32 v0.h, v66.l
	v_mov_b16_e32 v36.l, v107.h
	v_add3_u32 v38, v37, v38, 0x7fff
	v_mov_b16_e32 v37.l, v108.h
	v_mov_b16_e32 v37.h, v66.l
	v_and_b32_e32 v0, 1, v0
	v_cndmask_b16 v35.l, 0x7fff, v36.h, vcc_lo
	v_mov_b16_e32 v36.h, v66.l
	v_cmp_o_f32_e32 vcc_lo, v107, v107
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v0, v109, v0, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v37, v108, v37, 0x7fff
	v_cndmask_b16 v37.l, 0x7fff, v40.h, s15
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v40, v185, v185
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v39, v107, v36, 0x7fff
	v_cndmask_b16 v36.h, 0x7fff, v0.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v155, v155
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v36.l, 0x7fff, v38.h, s12
	v_mov_b16_e32 v41.l, v40.h
	v_cndmask_b16 v38.h, 0x7fff, v39.h, vcc_lo
	v_mov_b16_e32 v39.h, v66.l
	v_mov_b16_e32 v39.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_and_b32_e32 v41, 1, v41
	v_cmp_o_f32_e64 s12, v40, v40
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s14
	v_and_b32_e32 v39, 1, v39
	v_cmp_o_f32_e64 s3, v106, v106
	v_add3_u32 v41, v40, v41, 0x7fff
	v_mov_b16_e32 v40.l, v105.h
	v_mov_b16_e32 v40.h, v66.l
	v_add3_u32 v39, v0, v39, 0x7fff
	v_mov_b16_e32 v0.l, v106.h
	v_mov_b16_e32 v0.h, v66.l
	v_cmp_o_f32_e64 s14, v105, v105
	v_and_b32_e32 v40, 1, v40
	v_cmp_o_f32_e64 s15, v42, v42
	v_cndmask_b16 v38.l, 0x7fff, v39.h, vcc_lo
	v_and_b32_e32 v0, 1, v0
	v_cndmask_b16 v39.l, 0x7fff, v41.h, s12
	v_add3_u32 v40, v105, v40, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v43.h, s15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v0, v106, v0, 0x7fff
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v39.h, 0x7fff, v0.h, s3
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[129:136], v[1:8]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v48, off, off
	scratch_load_b32 v49, off, off offset:4
	scratch_load_b32 v50, off, off offset:8
	scratch_load_b32 v51, off, off offset:12
	scratch_load_b32 v52, off, off offset:16
	scratch_load_b32 v53, off, off offset:20
	scratch_load_b32 v54, off, off offset:24
	scratch_load_b32 v55, off, off offset:28
	.loc	1 616 25 is_stmt 1              ; attention_backward.py:616:25
	s_add_i32 s46, s75, s74
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v47, s75, v183
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_mul_i32 s27, s46, s34
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v40, s75, v175
	v_or_b32_e32 v41, s75, v176
	v_lshl_add_u32 v69, s34, 4, v153
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s26, s30, v47
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_add_nc_u32_e32 v47, s27, v153
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v42, s75, v178
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s19, s30, v40
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v43, s75, v179
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s20, s30, v41
	v_add_nc_u32_e32 v69, s27, v69
	v_add_nc_u32_e32 v74, s27, v166
	v_cmp_gt_i32_e64 s21, s30, v42
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v44, s75, v180
	v_add_nc_u32_e32 v75, s27, v167
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s22, s30, v43
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v45, s75, v181
	v_add_nc_u32_e32 v78, s27, v170
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v40, s46, v176, 1
	v_add_nc_u32_e32 v76, s27, v168
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v46, s75, v173
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s23, s30, v44
	v_cmp_gt_i32_e64 s24, s30, v45
	v_add_nc_u32_e32 v77, s27, v169
	v_add_nc_u32_e32 v80, s27, v171
	v_cmp_gt_i32_e64 s25, s30, v46
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v41, s46, v178, 1
	v_add_lshl_u32 v42, s46, v179, 1
	v_add_nc_u32_e32 v81, s27, v172
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v106, s75, v184
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v43, s46, v180, 1
	v_add_lshl_u32 v44, s46, v181, 1
	v_add_lshl_u32 v45, s46, v173, 1
	v_add_lshl_u32 v46, s46, v183, 1
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	v_cndmask_b32_e64 v43, 0x80000000, v43, s23
	v_cndmask_b32_e64 v44, 0x80000000, v44, s24
	v_cndmask_b32_e64 v45, 0x80000000, v45, s25
	v_cndmask_b32_e64 v46, 0x80000000, v46, s26
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(7)
	v_or_b32_e32 v0, s75, v48
	s_waitcnt vmcnt(6)
	v_or_b32_e32 v33, s75, v49
	s_waitcnt vmcnt(5)
	v_or_b32_e32 v34, s75, v50
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v48, s46, v48, 1
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(4)
	v_or_b32_e32 v35, s75, v51
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s30, v0
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v0, s46, v49, 1
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b32 v49, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s3, s30, v33
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v33, s46, v50, 1
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(4)
	v_or_b32_e32 v36, s75, v52
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s12, s30, v34
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v37, s75, v53
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s14, s30, v35
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v38, s75, v54
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s3
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v34, s46, v51, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s15, s30, v36
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v82, 0x80000000, v0, s3
	v_add_lshl_u32 v35, s46, v52, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s16, s30, v37
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v36, s46, v53, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s17, s30, v38
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v39, s75, v55
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v37, s46, v54, 1
	v_add_lshl_u32 v38, s46, v55, 1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s18, s30, v39
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v39, s46, v175, 1
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s27, v49
	scratch_load_b32 v49, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s27, v49
	scratch_load_b64 v[49:50], off, off offset:40 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v0, 0x80000000, v66, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s12
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v66, 0x80000000, v33, s12
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v33, 0x80000000, v67, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s14
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v67, 0x80000000, v34, s14
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s12, s30, v106
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s81, s4, s12
	s_and_b32 s80, s5, s12
	s_and_b32 s79, s6, s12
	s_and_b32 s78, s7, s12
	s_and_b32 s77, s8, s12
	s_and_b32 s76, s9, s12
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s27, v49
	scratch_load_b32 v49, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, s27, v49
	scratch_load_b64 v[49:50], off, off offset:52 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v34, 0x80000000, v68, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s15
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v68, 0x80000000, v35, s15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v35, 0x80000000, v70, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s16
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v70, 0x80000000, v36, s16
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s27, v49
	scratch_load_b64 v[49:50], off, off offset:60 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v36, 0x80000000, v71, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s17
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_clause 0x5
	buffer_load_u8 v92, v47, s[52:55], 0 offen
	buffer_load_u8 v93, v0, s[52:55], 0 offen
	buffer_load_u8 v89, v33, s[52:55], 0 offen
	buffer_load_u8 v88, v34, s[52:55], 0 offen
	buffer_load_u8 v85, v35, s[52:55], 0 offen
	buffer_load_u8 v84, v36, s[52:55], 0 offen
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v33, 0x80000000, v39, s19
	v_cndmask_b32_e64 v36, 0x80000000, v40, s20
	v_cndmask_b32_e64 v47, 0x80000000, v37, s17
	v_cndmask_b32_e64 v37, 0x80000000, v41, s21
	v_cndmask_b32_e64 v41, 0x80000000, v42, s22
	v_cndmask_b32_e64 v42, 0x80000000, v38, s18
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v72, s27, v49
	scratch_load_b64 v[49:50], off, off offset:68 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v0, 0x80000000, v72, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s19
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v34, 0x80000000, v69, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s20
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v35, 0x80000000, v74, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s21
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v39, 0x80000000, v75, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s22
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v73, s27, v49
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v40, 0x80000000, v76, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s18
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v69, 0x80000000, v73, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s23
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_clause 0x3
	buffer_load_u8 v79, v34, s[52:55], 0 offen
	buffer_load_u8 v76, v35, s[52:55], 0 offen
	buffer_load_u8 v75, v39, s[52:55], 0 offen
	buffer_load_u8 v40, v40, s[52:55], 0 offen
	v_cndmask_b32_e32 v34, 0x80000000, v77, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s24
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v35, 0x80000000, v78, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s25
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v71, 0x80000000, v80, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s26
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v72, 0x80000000, v81, vcc_lo
	s_clause 0x5
	buffer_load_u8 v39, v34, s[52:55], 0 offen
	buffer_load_u8 v38, v35, s[52:55], 0 offen
	buffer_load_u8 v83, v0, s[52:55], 0 offen
	buffer_load_u8 v81, v69, s[52:55], 0 offen
	buffer_load_u8 v35, v71, s[52:55], 0 offen
	buffer_load_u8 v34, v72, s[52:55], 0 offen
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v71, v65
	v_dual_mov_b32 v72, v65 :: v_dual_add_nc_u32 v105, s46, v184
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_and_not1_b32 vcc_lo, exec_lo, s67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v0, 1, v105
	v_cndmask_b32_e64 v69, 0x80000000, v0, s12
	s_clause 0x10
	buffer_load_u16 v80, v42, s[56:59], 0 offen
	buffer_load_u16 v78, v33, s[56:59], 0 offen
	buffer_load_u16 v77, v36, s[56:59], 0 offen
	buffer_load_u16 v74, v37, s[56:59], 0 offen
	buffer_load_u16 v73, v41, s[56:59], 0 offen
	buffer_load_u16 v37, v43, s[56:59], 0 offen
	buffer_load_u16 v36, v44, s[56:59], 0 offen
	buffer_load_u16 v33, v45, s[56:59], 0 offen
	buffer_load_u16 v0, v46, s[56:59], 0 offen
	buffer_load_u16 v95, v69, s[56:59], 0 offen
	buffer_load_u16 v94, v48, s[56:59], 0 offen
	buffer_load_u16 v96, v82, s[56:59], 0 offen
	buffer_load_u16 v91, v66, s[56:59], 0 offen
	buffer_load_u16 v90, v67, s[56:59], 0 offen
	buffer_load_u16 v87, v68, s[56:59], 0 offen
	buffer_load_u16 v86, v70, s[56:59], 0 offen
	buffer_load_u16 v82, v47, s[56:59], 0 offen
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_dual_mov_b32 v66, v65 :: v_dual_add_nc_u32 v41, 0, v246
	v_mov_b32_e32 v67, v65
	v_mov_b32_e32 v68, v65
	v_mov_b32_e32 v69, v65
	v_mov_b32_e32 v70, v65
	v_dual_mov_b32 v104, v72 :: v_dual_mov_b32 v103, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v100, v68 :: v_dual_mov_b32 v101, v69
	v_dual_mov_b32 v102, v70 :: v_dual_mov_b32 v99, v67
	v_dual_mov_b32 v98, v66 :: v_dual_mov_b32 v97, v65
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s59, s10, s12
	s_and_b32 s58, s11, s12
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_store_b8 v186, v92
	ds_store_b8 v186, v93 offset:64
	s_waitcnt vmcnt(26)
	ds_store_b8 v186, v79 offset:512
	s_waitcnt vmcnt(25)
	ds_store_b8 v186, v76 offset:576
	ds_store_b8 v187, v89
	ds_store_b8 v187, v88 offset:64
	s_waitcnt vmcnt(24)
	ds_store_b8 v187, v75 offset:512
	s_waitcnt vmcnt(23)
	ds_store_b8 v187, v40 offset:576
	ds_store_b8 v188, v85
	ds_store_b8 v188, v84 offset:64
	s_waitcnt vmcnt(22)
	ds_store_b8 v188, v39 offset:512
	s_waitcnt vmcnt(21)
	ds_store_b8 v188, v38 offset:576
	s_waitcnt vmcnt(20)
	ds_store_b8 v189, v83
	s_waitcnt vmcnt(19)
	ds_store_b8 v189, v81 offset:64
	s_waitcnt vmcnt(18)
	ds_store_b8 v189, v35 offset:512
	s_waitcnt vmcnt(17)
	ds_store_b8 v189, v34 offset:576
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v43, off, off offset:216
	scratch_load_b64 v[49:50], off, off offset:80
	ds_load_b64 v[41:42], v41
	ds_load_b64 v[47:48], v237
	scratch_load_b32 v45, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	ds_load_b64 v[43:44], v43
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(1) lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[97:104], v[49:50], v[41:42], v[97:104] neg_lo:[1,1,0]
	scratch_load_b64 v[41:42], off, off offset:88 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt vmcnt(1)
	ds_load_b64 v[45:46], v45
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[97:104], v[41:42], v[43:44], v[97:104] neg_lo:[1,1,0]
	scratch_load_b64 v[42:43], off, off offset:96 ; 8-byte Folded Reload
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v41, s39, v106
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[97:104], v[42:43], v[45:46], v[97:104] neg_lo:[1,1,0]
	scratch_load_b64 v[42:43], off, off offset:104 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[97:104], v[42:43], v[47:48], v[97:104] neg_lo:[1,1,0]
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_or_b32_e32 v42, 2, v192
	v_cmp_le_i32_e32 vcc_lo, v192, v41
	s_and_not1_b32 s21, s81, exec_lo
	s_and_not1_b32 s22, s80, exec_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_le_i32_e64 s3, v42, v41
	v_or_b32_e32 v42, 4, v192
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s20, s81, vcc_lo
	s_and_b32 s20, s20, exec_lo
	s_and_b32 s3, s80, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s14, v42, v41
	v_or_b32_e32 v42, 6, v192
	s_and_b32 s3, s3, exec_lo
	s_or_b32 s81, s21, s20
	s_or_b32 s80, s22, s3
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s14, s79, s14
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s15, v42, v41
	v_or_b32_e32 v42, 8, v192
	s_and_not1_b32 s3, s79, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_not1_b32 s20, s78, exec_lo
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s15, s78, s15
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s16, v42, v41
	v_or_b32_e32 v42, 10, v192
	s_and_b32 s15, s15, exec_lo
	s_or_b32 s79, s3, s14
	s_or_b32 s78, s20, s15
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s16, s77, s16
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s17, v42, v41
	v_or_b32_e32 v42, 12, v192
	s_and_not1_b32 s3, s77, exec_lo
	s_and_b32 s14, s16, exec_lo
	s_and_not1_b32 s15, s76, exec_lo
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s17, s76, s17
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s18, v42, v41
	v_or_b32_e32 v42, 14, v192
	s_and_b32 s16, s17, exec_lo
	s_or_b32 s77, s3, s14
	s_or_b32 s76, s15, s16
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s18, s59, s18
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s19, v42, v41
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
	v_subrev_nc_u32_e32 v42, s37, v41
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v41, s38, v41
	v_or_b32_e32 v43, 2, v192
	v_or_b32_e32 v44, 4, v192
	v_or_b32_e32 v45, 6, v192
	v_or_b32_e32 v46, 8, v192
	v_or_b32_e32 v47, 10, v192
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v192, v42
	v_cmp_ge_i32_e64 s3, v43, v42
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s20, v192, v41
	v_cmp_le_i32_e64 s21, v43, v41
	v_or_b32_e32 v48, 12, v192
	v_or_b32_e32 v49, 14, v192
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s14, v44, v42
	v_cmp_ge_i32_e64 s15, v45, v42
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s22, v44, v41
	v_cmp_le_i32_e64 s23, v45, v41
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s16, v46, v42
	v_cmp_ge_i32_e64 s17, v47, v42
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s24, v46, v41
	v_cmp_le_i32_e64 s25, v47, v41
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s20, vcc_lo, s20
	s_and_b32 s3, s3, s21
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s18, v48, v42
	v_cmp_ge_i32_e64 s19, v49, v42
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s26, v48, v41
	v_cmp_le_i32_e64 s27, v49, v41
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
.LBB0_12:                               ; %Flow290
	.loc	1 0 21                          ; attention_backward.py:0:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v52, off, off offset:264
	scratch_load_b32 v34, off, off offset:268
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
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
.LBB0_14:                               ; %._crit_edge151
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	scratch_load_b32 v33, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 753 13                        ; attention_backward.py:753:13
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v48, s41, v52
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s64, v52
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s37, s45, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v48, v48, s68
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s31, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_mov_b32 s36, s44
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v47, 2, v33
	v_or_b32_e32 v46, 4, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s16, s68, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v49, v48, v33, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v45, 6, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s17, s68, v47
	v_cmp_gt_i32_e64 s18, s68, v46
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v50, v48, v47, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s16
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v51, v48, v46, 2
	v_cndmask_b32_e64 v49, 0x80000000, v49, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s17
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v44, 8, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v50, 0x80000000, v50, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s18
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v43, 10, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s19, s68, v45
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v51, 0x80000000, v51, s16
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v42, 12, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s20, s68, v44
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v25, v49, s[36:39], 0 offen
	v_add_lshl_u32 v25, v48, v45, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s21, s68, v43
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v26, v50, s[36:39], 0 offen
	buffer_store_b32 v27, v51, s[36:39], 0 offen
	v_add_lshl_u32 v26, v48, v44, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s19
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v41, 14, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s22, s68, v42
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v27, v48, v43, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s20
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v40, 32, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v49, v48, v42, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s21
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v39, 34, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s23, s68, v41
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v27, 0x80000000, v27, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s22
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v38, 36, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s24, s68, v40
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v49, 0x80000000, v49, s17
	s_clause 0x1
	buffer_store_b32 v28, v25, s[36:39], 0 offen
	buffer_store_b32 v29, v26, s[36:39], 0 offen
	v_add_lshl_u32 v25, v48, v41, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s25, s68, v39
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v26, v48, v40, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s23
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s26, s68, v38
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v30, v27, s[36:39], 0 offen
	buffer_store_b32 v31, v49, s[36:39], 0 offen
	v_add_lshl_u32 v27, v48, v39, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s24
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v28, v48, v38, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s25
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v37, 38, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v27, 0x80000000, v27, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s26
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v36, 40, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v28, 0x80000000, v28, s17
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v35, 42, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s27, s68, v37
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v34, 44, v33
	v_or_b32_e32 v0, 46, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s28, s68, v36
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v32, v25, s[36:39], 0 offen
	buffer_store_b32 v17, v26, s[36:39], 0 offen
	v_add_lshl_u32 v17, v48, v37, 2
	s_clause 0x1
	buffer_store_b32 v18, v27, s[36:39], 0 offen
	buffer_store_b32 v19, v28, s[36:39], 0 offen
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v27, s35, v52
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s29, s68, v35
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v18, v48, v36, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s27
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s30, s68, v34
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	v_add_lshl_u32 v19, v48, v35, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s16, s68, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s28
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v25, v48, v34, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s29
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v26, v48, v0, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s0, s35, v0
	v_cmp_gt_i32_e64 s1, s35, v34
	v_cmp_gt_i32_e64 s2, s35, v35
	v_cmp_gt_i32_e64 s3, s35, v36
	v_cmp_gt_i32_e64 s4, s35, v37
	v_cmp_gt_i32_e64 s5, s35, v38
	v_cmp_gt_i32_e64 s6, s35, v39
	v_cmp_gt_i32_e64 s7, s35, v40
	v_cmp_gt_i32_e64 s8, s35, v41
	v_cmp_gt_i32_e64 s9, s35, v42
	v_cmp_gt_i32_e64 s10, s35, v43
	v_cmp_gt_i32_e64 s11, s35, v44
	v_cmp_gt_i32_e64 s12, s35, v45
	v_cmp_gt_i32_e64 s13, s35, v46
	v_cmp_gt_i32_e64 s14, s35, v47
	v_cmp_gt_i32_e64 s15, s35, v33
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v0, v27, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s30
	s_and_b32 s16, vcc_lo, s16
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v25, 0x80000000, v25, s17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s16
	s_clause 0x4
	buffer_store_b32 v20, v17, s[36:39], 0 offen
	buffer_store_b32 v21, v18, s[36:39], 0 offen
	buffer_store_b32 v22, v19, s[36:39], 0 offen
	buffer_store_b32 v23, v25, s[36:39], 0 offen
	buffer_store_b32 v24, v26, s[36:39], 0 offen
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s15, vcc_lo, s15
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
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_add_nc_u32 v17, v27, v33
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v18, v27, v47
	v_add_nc_u32_e32 v19, v27, v46
	v_add_nc_u32_e32 v20, v27, v45
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v17, v17, s33, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v21, v27, v44
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v18, v18, s33, 2
	v_add_lshl_u32 v19, v19, s33, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v22, v27, v43
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s15
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v23, v27, v42
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s14
	v_cndmask_b32_e64 v19, 0x80000000, v19, s13
	s_and_b32 s37, s47, 0xffff
	s_mov_b32 s36, s46
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v24, v27, v41
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v9, v17, s[36:39], 0 offen
	v_add_lshl_u32 v9, v20, s33, 2
	s_clause 0x1
	buffer_store_b32 v10, v18, s[36:39], 0 offen
	buffer_store_b32 v11, v19, s[36:39], 0 offen
	v_add_lshl_u32 v10, v21, s33, 2
	v_add_lshl_u32 v11, v22, s33, 2
	v_add_lshl_u32 v17, v23, s33, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s12
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v25, v27, v40
	v_add_nc_u32_e32 v26, v27, v39
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v10, 0x80000000, v10, s11
	v_cndmask_b32_e64 v11, 0x80000000, v11, s10
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v28, v27, v38
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s9
	s_clause 0x1
	buffer_store_b32 v12, v9, s[36:39], 0 offen
	buffer_store_b32 v13, v10, s[36:39], 0 offen
	v_add_lshl_u32 v9, v24, s33, 2
	s_clause 0x1
	buffer_store_b32 v14, v11, s[36:39], 0 offen
	buffer_store_b32 v15, v17, s[36:39], 0 offen
	v_add_lshl_u32 v10, v25, s33, 2
	v_add_lshl_u32 v11, v26, s33, 2
	v_add_lshl_u32 v12, v28, s33, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v29, v27, v37
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v9, 0x80000000, v9, s8
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v30, v27, v36
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v10, 0x80000000, v10, s7
	v_cndmask_b32_e64 v11, 0x80000000, v11, s6
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v31, v27, v35
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v12, 0x80000000, v12, s5
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v32, v27, v34
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_clause 0x1
	buffer_store_b32 v16, v9, s[36:39], 0 offen
	buffer_store_b32 v1, v10, s[36:39], 0 offen
	v_add_lshl_u32 v1, v29, s33, 2
	s_clause 0x1
	buffer_store_b32 v2, v11, s[36:39], 0 offen
	buffer_store_b32 v3, v12, s[36:39], 0 offen
	v_add_lshl_u32 v2, v30, s33, 2
	v_add_lshl_u32 v3, v31, s33, 2
	v_add_lshl_u32 v9, v32, s33, 2
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
		.amdhsa_private_segment_fixed_size 276
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
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 276
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20684
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 276
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
    .private_segment_fixed_size: 276
    .sgpr_count:     107
    .sgpr_spill_count: 4
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 68
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
