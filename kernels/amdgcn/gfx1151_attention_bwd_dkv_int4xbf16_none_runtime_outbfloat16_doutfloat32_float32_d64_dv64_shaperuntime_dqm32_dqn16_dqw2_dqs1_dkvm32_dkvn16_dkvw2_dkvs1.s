	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[48:51], s[0:1], 0x94
	s_load_b128 s[44:47], s[0:1], 0x64
	s_load_b64 s[76:77], s[0:1], 0x78
.Ltmp0:
	.loc	1 514 33 prologue_end           ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v9, 5, v0
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x8
	s_load_b64 s[16:17], s[0:1], 0x20
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xor_b32_e32 v13, 0x88, v0
	v_xor_b32_e32 v16, 0x198, v0
	v_xor_b32_e32 v14, 0x110, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v2, 4, v9
	v_or_b32_e32 v3, 6, v9
	v_or_b32_e32 v4, 8, v9
	v_or_b32_e32 v5, 10, v9
	v_or_b32_e32 v6, 12, v9
	v_or_b32_e32 v7, 14, v9
	v_and_b32_e32 v39, 15, v0
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshlrev_b32_e32 v37, 1, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v44, 32, v0
	s_clause 0x6                            ; 28-byte Folded Spill
	scratch_store_b32 off, v2, off offset:56
	scratch_store_b32 off, v3, off offset:60
	scratch_store_b32 off, v4, off offset:64
	scratch_store_b32 off, v5, off offset:68
	scratch_store_b32 off, v6, off offset:72
	scratch_store_b32 off, v7, off offset:76
	scratch_store_b32 off, v9, off offset:48
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s48
	s_bitcmp1_b32 s48, 8
	.loc	1 521 24                        ; attention_backward.py:521:24
	s_mul_i32 s80, s3, s47
	s_cselect_b32 s81, -1, 0
	s_cmp_eq_u32 s4, 1
	s_cselect_b32 s82, -1, 0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_abs_i32 s25, s45
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_abs_i32 s5, s3
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cvt_f32_u32 s4, s25
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s79, s2, 4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v2, s79, v2
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v5, s79, v5
	v_or_b32_e32 v6, s79, v6
	v_or_b32_e32 v8, s79, v9
	v_or_b32_e32 v7, s79, v7
	v_or_b32_e32 v3, s79, v3
	v_or_b32_e32 v4, s79, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s47, v8
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_readfirstlane_b32 s4, v1
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v1, 2, v9
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_f32 s4, s4, 0x4f7ffffe
	scratch_store_b32 off, v1, off offset:52 ; 4-byte Folded Spill
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v1, s79, v1
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
	s_ashr_i32 s26, s44, 31
	s_ashr_i32 s27, s45, 31
	s_abs_i32 s28, s44
	.loc	1 514 23                        ; attention_backward.py:514:23
	s_or_b32 s2, s79, 1
	s_or_b32 s4, s79, 2
	s_or_b32 s5, s79, 3
	s_or_b32 s6, s79, 4
	s_or_b32 s7, s79, 5
	s_or_b32 s8, s79, 6
	s_or_b32 s9, s79, 7
	s_or_b32 s10, s79, 8
	s_or_b32 s18, s79, 9
	s_or_b32 s19, s79, 10
	s_or_b32 s20, s79, 11
	s_or_b32 s21, s79, 12
	s_or_b32 s22, s79, 13
	s_or_b32 s23, s79, 14
	s_or_b32 s40, s79, 15
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cmp_lt_i32 s79, s47
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s2, s47
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s4, s47
	v_cmp_gt_i32_e64 s4, s47, v1
	s_cselect_b32 s41, -1, 0
	s_cmp_lt_i32 s5, s47
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_and_b32_e32 v1, 31, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s39, -1, 0
	s_cmp_lt_i32 s6, s47
	v_cmp_gt_i32_e64 s5, s47, v2
	s_cselect_b32 s37, -1, 0
	s_cmp_lt_i32 s7, s47
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[177:178], null, s76, v9, v[1:2]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s36, -1, 0
	s_cmp_lt_i32 s8, s47
	v_cmp_gt_i32_e64 s8, s47, v5
	s_cselect_b32 s35, -1, 0
	s_cmp_lt_i32 s9, s47
	v_cmp_gt_i32_e64 s9, s47, v6
	s_cselect_b32 s34, -1, 0
	s_cmp_lt_i32 s10, s47
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[5:6], null, s76, 6, v[177:178]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s31, -1, 0
	s_cmp_lt_i32 s18, s47
	v_cmp_gt_i32_e64 s10, s47, v7
	s_cselect_b32 s30, -1, 0
	s_cmp_lt_i32 s19, s47
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[7:8], null, s76, 10, v[177:178]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s29, -1, 0
	s_cmp_lt_i32 s20, s47
	v_cmp_gt_i32_e64 s6, s47, v3
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s21, s47
	v_cmp_gt_i32_e64 s7, s47, v4
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s22, s47
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v2, s76, 1, v177
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s33, -1, 0
	s_cmp_lt_i32 s23, s47
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v3, s76, 2, v177
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s38, -1, 0
	s_cmp_lt_i32 s40, s47
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v6, s76, 3, v177
	v_mov_b32_e32 v4, v5
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s40, -1, 0
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_add_i32 s53, s80, s79
	v_mad_u64_u32 v[8:9], null, s76, 12, v[177:178]
	s_mul_i32 s20, s53, s76
	s_clause 0x3                            ; 20-byte Folded Spill
	scratch_store_b32 off, v2, off offset:80
	scratch_store_b32 off, v3, off offset:84
	scratch_store_b64 off, v[4:5], off offset:88
	scratch_store_b32 off, v6, off offset:96
	v_add_nc_u32_e32 v9, s20, v177
	v_add_nc_u32_e32 v4, s20, v5
	v_add_nc_u32_e32 v5, s20, v6
	v_mov_b32_e32 v6, v7
	v_mad_u64_u32 v[10:11], null, s76, 14, v[177:178]
	v_add_nc_u32_e32 v2, s20, v2
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_cmp_gt_i32_e64 s2, s76, v1
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[6:7], off offset:100 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v6, s20, v7
	v_mov_b32_e32 v7, v8
	v_add_nc_u32_e32 v3, s20, v3
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s23, 0x31027000
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[7:8], off offset:108 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v7, s20, v8
	v_mov_b32_e32 v8, v10
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_mul_i32 s78, s53, s77
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s13, s77, v0
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_and_b32 s17, s17, 0xffff
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[8:9], off offset:116 ; 8-byte Folded Spill
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
	buffer_load_u8 v21, v9, s[20:23], 0 offen
	buffer_load_u8 v2, v2, s[20:23], 0 offen
	buffer_load_u8 v3, v3, s[20:23], 0 offen
	buffer_load_u8 v4, v4, s[20:23], 0 offen
	buffer_load_u8 v5, v5, s[20:23], 0 offen
	buffer_load_u8 v6, v6, s[20:23], 0 offen
	buffer_load_u8 v7, v7, s[20:23], 0 offen
	buffer_load_u8 v8, v8, s[20:23], 0 offen
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v9, s78, v0
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s43, s13
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s21, s15, 0xffff
	s_mov_b32 s20, s14
	.loc	1 587 22                        ; attention_backward.py:587:22
	s_add_i32 s15, s46, 31
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v10, s77, v9
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_hi_u32 s14, s28, s11
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_ashr_i32 s11, s15, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v11, s77, v10
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v10, 1, v10
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v12, s77, v11
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v15, s77, v12
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v12, 1, v12
	v_lshlrev_b32_e32 v9, 1, v9
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_add_nc_u32 v178, 0, v0
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s42, s13
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_add_nc_u32 v19, 0, v16
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s41, s13
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_add_nc_u32 v254, 0, v13
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v13, s77, v15
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s39, s13
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_lshlrev_b32 v15, 1, v15
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s37, s13
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v38, 0, v14
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v14, s77, v13
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v13, 1, v13
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s36, s13
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt vmcnt(7)
	ds_store_b8 v178, v21
	s_waitcnt vmcnt(6)
	ds_store_b8 v178, v2 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v254, v3
	s_waitcnt vmcnt(4)
	ds_store_b8 v254, v4 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v38, v5
	s_waitcnt vmcnt(2)
	ds_store_b8 v38, v6 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v19, v7
	s_waitcnt vmcnt(0)
	ds_store_b8 v19, v8 offset:64
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v16, s77, v14
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v14, 1, v14
	v_cndmask_b32_e32 v22, 0x80000000, v13, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s35, s13
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(0)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v17, s77, v16
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v14, 0x80000000, v14 :: v_dual_lshlrev_b32 v13, 1, v16
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s34, s13
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v18, s77, v17
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v23, 0x80000000, v13, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s31, s13
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshlrev_b32_e32 v2, 5, v39
	v_and_b32_e32 v3, 24, v37
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v20, s77, v18
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v13, 1, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_or_b32_e32 v4, v2, v3
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v16, s77, v20
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v18, s77, v16
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v16, 1, v16
	v_lshlrev_b32_e32 v17, 1, v17
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s30, s13
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v24, 0x80000000, v13, vcc_lo
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v13, s77, v18
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s29, s13
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v18, 1, v18
	v_cndmask_b32_e32 v26, 0x80000000, v20, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s19, s13
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v20, s77, v13
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s18, s13
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_lshr_b32 s19, s11, 27
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v28, 0x80000000, v18, vcc_lo
	v_lshlrev_b32_e32 v18, 1, v20
	v_lshlrev_b32_e32 v13, 1, v13
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s33, s13
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_lshl_u32 v20, v20, s77, 1
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_add_i32 s15, s15, s19
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_mov_b32 s18, s22
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v29, 0x80000000, v13, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s38, s13
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_mov_b32 s19, s23
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v30, 0x80000000, v18, vcc_lo
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, s40, s13
	.loc	1 587 20                        ; attention_backward.py:587:20
	s_and_b32 s83, s15, 0xffffffe0
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v31, 0x80000000, v20, vcc_lo
	s_clause 0xf
	buffer_load_u16 v21, v9, s[20:23], 0 offen
	buffer_load_u16 v20, v10, s[20:23], 0 offen
	buffer_load_u16 v36, v11, s[20:23], 0 offen
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
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v26, v0, 4, 1
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v28, 0, v4
	v_xad_u32 v29, v4, 8, 0
	v_xad_u32 v30, v4, 16, 0
	v_xad_u32 v31, v4, 24, 0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v174, s79, v26
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_add_lshl_u32 v8, s53, v26, 1
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_bfe_u32 s15, s48, 0x10008
	scratch_store_b32 off, v26, off offset:756 ; 4-byte Folded Spill
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v9, 4, v174
	v_or_b32_e32 v33, 8, v174
	v_or_b32_e32 v7, 2, v174
	v_or_b32_e32 v32, 6, v174
	v_or_b32_e32 v34, 10, v174
	v_or_b32_e32 v35, 12, v174
	v_or_b32_e32 v40, 14, v174
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s4, s47, v174
	v_cmp_gt_i32_e64 s6, s47, v9
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v9, 16, v8
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s8, s47, v33
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v5, 4, v8
	v_cndmask_b32_e64 v4, 0x80000000, v8, s4
	v_add_nc_u32_e32 v6, 8, v8
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s5, s47, v7
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v7, 12, v8
	v_add_nc_u32_e32 v24, 20, v8
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s7, s47, v32
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v32, 0x80000000, v9, s8
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s9, s47, v34
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v9, 24, v8
	v_add_nc_u32_e32 v8, 28, v8
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s10, s47, v35
	v_cmp_gt_i32_e64 s11, s47, v40
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v5, 0x80000000, v5, s5
	v_cndmask_b32_e64 v6, 0x80000000, v6, s6
	v_cndmask_b32_e64 v7, 0x80000000, v7, s7
	v_cndmask_b32_e64 v33, 0x80000000, v24, s9
	v_cndmask_b32_e64 v34, 0x80000000, v9, s10
	v_cndmask_b32_e64 v35, 0x80000000, v8, s11
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s12, s79, s49
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_add_i32 s20, s50, s51
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s12, s12, s51
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_sub_i32 s20, s79, s20
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s12, s12, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 592 17                        ; attention_backward.py:592:17
	s_min_i32 s12, s46, s12
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
	s_min_i32 s83, s83, s20
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
	s_load_b128 s[40:43], s[0:1], 0x50
	s_load_b32 s48, s[0:1], 0x74
	s_sub_i32 s15, s28, s15
	s_xor_b32 s16, s26, s27
	s_add_i32 s17, s14, 1
	s_sub_i32 s18, s15, s25
	s_cmp_ge_u32 s15, s25
	s_cselect_b32 s14, s17, s14
	s_cselect_b32 s15, s18, s15
	s_add_i32 s17, s14, 1
	s_cmp_ge_u32 s15, s25
	s_cselect_b32 s14, s17, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s14, s14, s16
	s_sub_i32 s84, s14, s16
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[32:33], off offset:124
	scratch_store_b64 off, v[28:29], off offset:132
	ds_load_b64 v[28:29], v30
	.loc	1 717 21 is_stmt 1              ; attention_backward.py:717:21
	v_add_nc_u32_e32 v32, v178, v0
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v33, 1, v44
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v30, 0x1b0, v37, 0
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cmp_lt_i32 s84, 1
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[28:29], off offset:140 ; 8-byte Folded Spill
	ds_load_b64 v[28:29], v31
	.loc	1 717 21 is_stmt 1              ; attention_backward.py:717:21
	v_xad_u32 v31, 0x240, v37, 0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[28:29], off offset:148 ; 8-byte Folded Spill
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v28, 0x90, v37, 0
	v_xad_u32 v29, 0x120, v37, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b16 v32, v27 offset:1024
	ds_store_b16 v28, v20
	s_waitcnt vmcnt(14)
	ds_store_b16 v28, v25 offset:1024
	ds_store_b16 v29, v36
	s_waitcnt vmcnt(13)
	ds_store_b16 v29, v23 offset:1024
	ds_store_b16 v30, v18
	s_waitcnt vmcnt(12)
	ds_store_b16 v30, v22 offset:1024
	v_xad_u32 v18, 0x2d0, v37, 0
	v_xad_u32 v20, 0x360, v37, 0
	ds_store_b16 v32, v21
	scratch_store_b32 off, v32, off offset:156 ; 4-byte Folded Spill
	v_xad_u32 v21, 0x3f0, v37, 0
	ds_store_b16 v31, v13
	s_waitcnt vmcnt(11)
	ds_store_b16 v31, v17 offset:1024
	ds_store_b16 v18, v12
	s_waitcnt vmcnt(10)
	ds_store_b16 v18, v16 offset:1024
	ds_store_b16 v20, v11
	s_waitcnt vmcnt(9)
	ds_store_b16 v20, v15 offset:1024
	ds_store_b16 v21, v10
	s_waitcnt vmcnt(8)
	ds_store_b16 v21, v14 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cbranch_scc1 .LBB0_13
; %bb.3:                                ; %.lr.ph87
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	s_xor_b32 s14, s3, s45
	s_load_b32 s85, s[0:1], 0x80
	s_ashr_i32 s14, s14, 31
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x48
	s_load_b128 s[60:63], s[0:1], 0x38
	s_xor_b32 s15, s24, s14
	s_clause 0x1
	s_load_b64 s[64:65], s[0:1], 0x0
	s_load_b64 s[68:69], s[0:1], 0x18
	s_sub_i32 s14, s15, s14
	v_dual_mov_b32 v50, v33 :: v_dual_lshlrev_b32 v1, 1, v1
	s_mul_i32 s0, s14, s45
	v_dual_mov_b32 v49, v39 :: v_dual_and_b32 v10, 16, v0
	s_sub_i32 s3, s3, s0
	.loc	1 602 9 is_stmt 1               ; attention_backward.py:602:9
	s_sub_i32 s0, s79, s51
	v_mov_b16_e32 v12.l, 0
	s_max_i32 s0, s0, 0
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v11, 1, v1
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_and_b32 s0, s0, 0x7fffffe0
	v_dual_mov_b32 v181, 0 :: v_dual_lshlrev_b32 v40, 1, v49
	v_lshlrev_b32_e32 v41, 3, v0
	s_max_u32 s0, s12, s0
	s_and_b32 s1, s82, exec_lo
	s_cselect_b32 s86, s0, s12
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s0, s48, v1
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v1.l, v12.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v1.h, v24.l
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s1, s48, v11
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v11.l, v12.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v11.h, v9.l
	v_mov_b16_e32 v9.l, v12.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v9.h, v8.l
	v_dual_mov_b32 v48, v181 :: v_dual_and_b32 v41, 48, v41
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v1, off offset:172
	scratch_store_b32 off, v11, off offset:176
	scratch_store_b32 off, v37, off offset:164
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_and_b32_e32 v1, 7, v0
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v7.h, v6.l
	v_lshl_or_b32 v41, v49, 6, v41
	scratch_store_b32 off, v9, off offset:180 ; 4-byte Folded Spill
	v_mov_b16_e32 v9.h, v7.l
	v_mov_b16_e32 v7.l, v12.l
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshlrev_b32_e32 v8, 4, v1
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v12.h, v26.l
	v_cmp_eq_u32_e32 vcc_lo, 0, v44
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v9, off offset:184
	scratch_store_b32 off, v7, off offset:188
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v7.h, v5.l
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshl_or_b32 v6, v39, 7, v8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v7, off offset:192
	scratch_store_b32 off, v12, off offset:168
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v12.h, v4.l
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v11, v6, 48, 0
	v_xad_u32 v4, 0x70, v6, 0
	v_xad_u32 v5, 0x60, v6, 0
	ds_load_b128 v[24:27], v4
	ds_load_b128 v[20:23], v5
	scratch_store_b32 off, v12, off offset:196 ; 4-byte Folded Spill
	v_xad_u32 v12, v6, 32, 0
	ds_load_b128 v[15:18], v11
	ds_load_b128 v[11:14], v12
	v_xad_u32 v4, v6, 16, 0
	v_add_nc_u32_e32 v5, 0, v6
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[11:14], off offset:264
	scratch_store_b128 off, v[15:18], off offset:280
	ds_load_b128 v[15:18], v4
	ds_load_b128 v[11:14], v5
	v_xad_u32 v7, 0x50, v6, 0
	v_xad_u32 v9, v6, 64, 0
	v_lshlrev_b32_e32 v6, 4, v44
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[20:23], off offset:200
	scratch_store_b128 off, v[24:27], off offset:216
	ds_load_b128 v[24:27], v7
	ds_load_b128 v[20:23], v9
	v_bfe_i32 v4, v0, 3, 1
	v_or3_b32 v7, v3, v6, v2
	v_and_b32_e32 v2, 0x70, v37
	v_cndmask_b32_e64 v5, 0x820, 0, vcc_lo
	s_waitcnt lgkmcnt(2)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[11:14], off offset:296
	scratch_store_b128 off, v[15:18], off offset:312
	v_xor_b32_e32 v2, v8, v2
	v_xor_b32_e32 v3, 8, v7
	v_mul_u32_u24_e32 v1, 0x90, v1
	v_and_or_b32 v4, 0x410, v4, v5
	v_xor_b32_e32 v6, 16, v7
	v_lshl_or_b32 v13, v0, 7, v2
	v_xor_b32_e32 v2, 24, v7
	v_add_nc_u32_e32 v3, 0, v3
	v_xor_b32_e32 v45, v4, v1
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[20:23], off offset:232
	scratch_store_b128 off, v[24:27], off offset:248
	v_xor_b32_e32 v1, 64, v13
	v_xor_b32_e32 v5, 16, v13
	v_add_nc_u32_e32 v2, 0, v2
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v7, off offset:328
	scratch_store_b32 off, v13, off offset:332
	scratch_store_b32 off, v3, off offset:344
	scratch_store_b32 off, v45, off offset:336
	v_xor_b32_e32 v11, 0x50, v13
	v_xor_b32_e32 v26, 0x1070, v45
	v_add_nc_u32_e32 v3, 0, v6
	v_add_nc_u32_e32 v1, 0, v1
	v_xor_b32_e32 v8, 32, v13
	scratch_store_b32 off, v2, off offset:352 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 0, v5
	v_xor_b32_e32 v12, 0x60, v13
	v_lshlrev_b32_e32 v24, 2, v0
	v_xor_b32_e32 v27, 0x1010, v45
	v_lshlrev_b32_e32 v10, 2, v10
	scratch_store_b32 off, v3, off offset:348 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v26
	scratch_store_b32 off, v1, off offset:372 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v11
	v_xor_b32_e32 v9, 48, v13
	scratch_store_b32 off, v2, off offset:356 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 0, v8
	v_xor_b32_e32 v13, 0x70, v13
	v_or3_b32 v47, v40, v10, v44
	v_xor_b32_e32 v10, 0xff0, v24
	scratch_store_b32 off, v3, off offset:444 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v27
	scratch_store_b32 off, v1, off offset:376 ; 4-byte Folded Spill
	v_dual_mov_b32 v58, v181 :: v_dual_add_nc_u32 v1, 0, v12
	scratch_store_b32 off, v2, off offset:360 ; 4-byte Folded Spill
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v2, 0, v9
	v_xor_b32_e32 v14, 16, v45
	scratch_store_b32 off, v3, off offset:448 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v10
	scratch_store_b32 off, v1, off offset:380 ; 4-byte Folded Spill
	v_dual_mov_b32 v60, v181 :: v_dual_add_nc_u32 v1, 0, v13
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:364
	scratch_store_b32 off, v0, off offset:160
	v_dual_mov_b32 v59, v181 :: v_dual_add_nc_u32 v0, s77, v0
	v_xor_b32_e32 v15, 32, v45
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:384
	scratch_store_b32 off, v0, off offset:368
	v_dual_mov_b32 v62, v181 :: v_dual_add_nc_u32 v1, 0, v14
	v_xor_b32_e32 v16, 48, v45
	v_xor_b32_e32 v17, 64, v45
	v_mov_b32_e32 v64, v181
	scratch_store_b32 off, v1, off offset:392 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v15
	v_xor_b32_e32 v18, 0x50, v45
	v_mov_b32_e32 v138, 0
	v_dual_mov_b32 v61, v181 :: v_dual_add_nc_u32 v0, s77, v0
	scratch_store_b32 off, v1, off offset:396 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v16
	v_xor_b32_e32 v20, 0x60, v45
	v_mov_b32_e32 v140, v181
	v_xor_b32_e32 v21, 0x70, v45
	v_mov_b32_e32 v142, v181
	scratch_store_b32 off, v1, off offset:400 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v17
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:404
	scratch_store_b32 off, v0, off offset:388
	v_add_nc_u32_e32 v1, 0, v18
	v_xor_b32_e32 v22, 0x1040, v45
	v_mov_b32_e32 v144, v181
	v_xor_b32_e32 v23, 0x1050, v45
	v_dual_mov_b32 v63, v181 :: v_dual_add_nc_u32 v0, s77, v0
	scratch_store_b32 off, v1, off offset:412 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v20
	v_xor_b32_e32 v25, 0x1060, v45
	v_mov_b32_e32 v139, v181
	v_xor_b32_e32 v2, 0x1030, v45
	v_xor_b32_e32 v28, 0x110, v24
	scratch_store_b32 off, v1, off offset:416 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v21
	v_xor_b32_e32 v29, 0x220, v24
	v_mov_b32_e32 v141, v181
	v_xor_b32_e32 v30, 0x330, v24
	v_xor_b32_e32 v31, 0x440, v24
	scratch_store_b32 off, v1, off offset:420 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v22
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:424
	scratch_store_b32 off, v0, off offset:408
	v_add_nc_u32_e32 v1, 0, v23
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v0, s77, v0
	v_xor_b32_e32 v32, 0x550, v24
	v_xor_b32_e32 v33, 0x660, v24
	v_mov_b32_e32 v143, v181
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:432
	scratch_store_b32 off, v0, off offset:428
	v_add_nc_u32_e32 v1, 0, v25
	v_add_nc_u32_e32 v0, s77, v0
	v_xor_b32_e32 v34, 0x770, v24
	v_xor_b32_e32 v35, 0x880, v24
	v_xor_b32_e32 v36, 0x990, v24
	scratch_store_b32 off, v1, off offset:436 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1020, v45
	v_mov_b32_e32 v145, v181
	v_lshl_add_u32 v4, v44, 1, 0
	v_xor_b32_e32 v37, 0xaa0, v24
	v_mul_u32_u24_e32 v7, 0x110, v49
	v_add_nc_u32_e32 v1, 0, v1
	v_xor_b32_e32 v42, 0xcc0, v24
	v_lshl_add_u32 v4, v39, 2, v4
	v_xor_b32_e32 v39, 0xbb0, v24
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:536
	scratch_store_b32 off, v1, off offset:452
	v_add_nc_u32_e32 v1, 0, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:456
	scratch_store_b32 off, v0, off offset:440
	v_add_nc_u32_e32 v1, 0, v28
	v_add_nc_u32_e32 v0, s77, v0
	v_lshl_or_b32 v46, v44, 7, v7
	v_xor_b32_e32 v43, 0xdd0, v24
	v_add3_u32 v7, 0, v44, v40
	scratch_store_b32 off, v1, off offset:464 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v29
	v_xor_b32_e32 v40, 0xee0, v24
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	.loc	1 613 26                        ; attention_backward.py:613:26
	s_mul_i32 s14, s14, s44
	v_writelane_b32 v255, s40, 0
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s44, s84, s3
	scratch_store_b32 off, v1, off offset:468 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v30
	s_add_i32 s44, s44, s14
	v_writelane_b32 v255, s41, 1
	v_mov_b32_e32 v44, v181
	v_mov_b32_e32 v45, v181
	scratch_store_b32 off, v1, off offset:472 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v31
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:476
	scratch_store_b32 off, v0, off offset:460
	v_add_nc_u32_e32 v1, 0, v32
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v0, s77, v0
	v_writelane_b32 v255, s42, 2
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, v181
	scratch_store_b32 off, v1, off offset:484 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v33
	v_writelane_b32 v255, s43, 3
	v_mov_b32_e32 v27, v181
	v_mov_b32_e32 v28, v181
	v_mov_b32_e32 v29, v181
	scratch_store_b32 off, v1, off offset:488 ; 4-byte Folded Spill
	v_dual_mov_b32 v30, v181 :: v_dual_add_nc_u32 v1, 0, v34
	v_mov_b32_e32 v31, v181
	v_mov_b32_e32 v32, v181
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v22, v50, v49
	scratch_store_b32 off, v1, off offset:492 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v35
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:496
	scratch_store_b32 off, v0, off offset:480
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v0, s77, v0
	v_add_nc_u32_e32 v1, 0, v36
	.loc	1 641 25                        ; attention_backward.py:641:25
	s_mul_f32 s87, s85, 0x3fb8aa3b
	s_cmp_lt_i32 s86, s83
	s_mov_b32 s45, 0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v2, s77, v0
	scratch_store_b32 off, v1, off offset:504 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v37
	s_cselect_b32 s88, -1, 0
	s_and_b32 s65, s65, 0xffff
	scratch_store_b32 off, v2, off offset:520 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s77, v2
	s_mov_b32 s67, 0x31027000
	s_mov_b32 s66, 0x7ffffffe
	s_and_b32 s69, s69, 0xffff
	s_and_b32 s73, s63, 0xffff
	v_add_nc_u32_e32 v3, s77, v2
	scratch_store_b32 off, v1, off offset:508 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v39
	s_mov_b32 s72, s62
	s_and_b32 s57, s57, 0xffff
	s_and_b32 s61, s61, 0xffff
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v49, off offset:760
	scratch_store_b32 off, v50, off offset:764
	scratch_store_b32 off, v1, off offset:512
	v_add_nc_u32_e32 v1, 0, v42
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:516
	scratch_store_b32 off, v0, off offset:500
	v_xor_b32_e32 v1, 16, v46
	v_add_nc_u32_e32 v0, 0, v43
	v_mov_b32_e32 v42, v181
	v_mov_b32_e32 v43, v181
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v0, off offset:524 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v40
	scratch_store_b32 off, v1, off offset:540 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 48, v46
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v0, off offset:528 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v46
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:544
	scratch_store_b32 off, v2, off offset:532
	v_xor_b32_e32 v0, 64, v46
	v_xor_b32_e32 v2, 0x50, v46
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v3, off offset:548 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s77, v3
	scratch_store_b32 off, v0, off offset:560 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	scratch_store_b32 off, v1, off offset:552 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x60, v46
	v_xor_b32_e32 v2, 0x90, v46
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:568
	scratch_store_b32 off, v3, off offset:556
	v_add_nc_u32_e32 v3, s77, v3
	scratch_store_b32 off, v0, off offset:564 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x70, v46
	v_xor_b32_e32 v1, 0x80, v46
	scratch_store_b32 off, v3, off offset:572 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s77, v3
	v_add_nc_u32_e32 v0, 0, v0
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v0, off offset:576 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xa0, v46
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:592
	scratch_store_b32 off, v3, off offset:580
	v_add_nc_u32_e32 v3, s77, v3
	scratch_store_b32 off, v1, off offset:584 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v2
	v_xor_b32_e32 v0, 0xc0, v46
	v_xor_b32_e32 v2, 0xd0, v46
	scratch_store_b32 off, v3, off offset:596 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s77, v3
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v1, off offset:588 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xb0, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:600 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xe0, v46
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:616
	scratch_store_b32 off, v3, off offset:604
	v_add_nc_u32_e32 v3, s77, v3
	scratch_store_b32 off, v0, off offset:608 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:612
	scratch_store_b32 off, v46, off offset:340
	v_xor_b32_e32 v0, 0xf0, v46
	v_xor_b32_e32 v1, 0x90, v47
	scratch_store_b32 off, v3, off offset:628 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s77, v3
	v_xor_b32_e32 v2, 0x120, v47
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:620
	scratch_store_b32 off, v47, off offset:624
	v_xor_b32_e32 v0, 0x1b0, v47
	v_add_nc_u32_e32 v11, 0, v1
	v_xor_b32_e32 v1, 16, v41
	scratch_store_b32 off, v3, off offset:632 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s77, v3
	v_add_nc_u32_e32 v39, 0, v0
	v_xor_b32_e32 v0, 32, v41
	v_add_nc_u32_e32 v6, 0, v1
	scratch_store_b32 off, v41, off offset:636 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s77, v3
	scratch_store_b32 off, v3, off offset:640 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v0
	v_add_nc_u32_e32 v12, 0, v2
	v_xor_b32_e32 v2, 48, v41
	v_add_nc_u32_e32 v0, s77, v1
	scratch_store_b32 off, v1, off offset:644 ; 4-byte Folded Spill
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v46, v181
	v_add_nc_u32_e32 v179, 0, v2
	scratch_store_b32 off, v0, off offset:648 ; 4-byte Folded Spill
	v_dual_mov_b32 v47, v181 :: v_dual_add_nc_u32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:652 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:656 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:660 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:664 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:668 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:672 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s77, v0
	scratch_load_b32 v0, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 520 26                        ; attention_backward.py:520:26
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v2, 16, v0
	v_or_b32_e32 v33, 26, v0
	v_or_b32_e32 v24, 28, v0
	v_or_b32_e32 v35, 30, v0
	scratch_store_b32 off, v2, off offset:676 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 18, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:680
	scratch_store_b32 off, v1, off offset:684
	v_or_b32_e32 v2, 20, v0
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v2, off offset:744 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 22, v0
	v_dual_mov_b32 v23, v1 :: v_dual_add_nc_u32 v40, s77, v1
	scratch_store_b32 off, v2, off offset:748 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 24, v0
	scratch_store_b32 off, v2, off offset:752 ; 4-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s76, 18, v[177:178]
	scratch_store_b64 off, v[1:2], off offset:688 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s76, 20, v[177:178]
	scratch_store_b64 off, v[1:2], off offset:696 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s76, 22, v[177:178]
	scratch_store_b64 off, v[1:2], off offset:704 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s76, 24, v[177:178]
	scratch_store_b64 off, v[1:2], off offset:712 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s76, 26, v[177:178]
	scratch_store_b64 off, v[1:2], off offset:720 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s76, 28, v[177:178]
	scratch_store_b64 off, v[1:2], off offset:728 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s76, 30, v[177:178]
	scratch_store_b64 off, v[1:2], off offset:736 ; 8-byte Folded Spill
	s_branch .LBB0_5
.LBB0_4:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_add_i32 s45, s45, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s45, s84
	s_cbranch_scc0 .LBB0_12
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s88
	s_cbranch_vccnz .LBB0_4
; %bb.6:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 613 26                        ; attention_backward.py:613:26
	s_add_i32 s89, s44, s45
	s_mov_b32 s90, s86
	.loc	1 613 25 is_stmt 0              ; attention_backward.py:613:25
	s_mul_i32 s89, s89, s46
	s_branch .LBB0_8
.LBB0_7:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:160
	scratch_load_b32 v16, off, off offset:368
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s3, s90, 1
	s_or_b32 s14, s90, 2
	s_or_b32 s15, s90, 3
	s_or_b32 s16, s90, 4
	s_or_b32 s17, s90, 5
	s_or_b32 s18, s90, 6
	s_or_b32 s19, s90, 7
	s_or_b32 s20, s90, 8
	s_or_b32 s21, s90, 9
	s_or_b32 s22, s90, 10
	s_or_b32 s23, s90, 11
	s_or_b32 s24, s90, 12
	s_or_b32 s25, s90, 13
	s_or_b32 s26, s90, 14
	s_or_b32 s27, s90, 15
	s_or_b32 s93, s90, 16
	s_or_b32 s94, s90, 17
	s_or_b32 s95, s90, 18
	s_or_b32 s96, s90, 19
	s_or_b32 s97, s90, 20
	s_or_b32 s98, s90, 21
	s_or_b32 s99, s90, 22
	s_or_b32 s100, s90, 23
	s_or_b32 s101, s90, 24
	s_or_b32 s102, s90, 25
	s_or_b32 s103, s90, 26
	s_or_b32 s104, s90, 27
	s_or_b32 vcc_lo, s90, 28
	s_or_b32 vcc_hi, s90, 29
	s_or_b32 s80, s90, 30
	s_or_b32 s52, s90, 31
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s90, s46
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s37, s37, s77
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s3, s46
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v17.h, v17.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s14, s46
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v8.h, v8.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s15, s46
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v34, 0x800, v4
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s16, s46
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v70, 0x1000, v4
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s17, s46
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v72, 0x1800, v4
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s18, s46
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v14, v14, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s19, s46
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v5, v5, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s20, s46
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v10.h, v10.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s21, s46
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v9, v9, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s22, s46
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v36.h, v36.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s23, s46
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v20, v20, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s24, s46
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s41, -1, 0
	s_cmp_lt_i32 s25, s46
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s40, -1, 0
	s_cmp_lt_i32 s26, s46
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s39, -1, 0
	s_cmp_lt_i32 s27, s46
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s38, -1, 0
	s_cmp_lt_i32 s93, s46
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s94, s46
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s95, s46
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s96, s46
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s97, s46
	.loc	1 699 25 is_stmt 1              ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v2, 2, v2
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s98, s46
	s_cselect_b32 s22, -1, 0
	s_cmp_lt_i32 s99, s46
	s_cselect_b32 s21, -1, 0
	s_cmp_lt_i32 s100, s46
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s101, s46
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s102, s46
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s103, s46
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s104, s46
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 vcc_lo, s46
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 vcc_hi, s46
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s80, s46
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s52, s46
	s_cselect_b32 s93, -1, 0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s63
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s63, s67
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s90, s90, 32
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v15, s37, v15, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v16, s37, v16, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s62
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s62, s66
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_clause 0x1
	buffer_load_b32 v66, v15, s[60:63], 0 offen
	buffer_load_b32 v67, v16, s[60:63], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:388
	scratch_load_b32 v16, off, off offset:440
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s92
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v15, s37, v15, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v16, s37, v16, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s91
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v68, v15, s[60:63], 0 offen
	scratch_load_b32 v15, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v15, s37, v15, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s75
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s75, s67
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v69, v15, s[60:63], 0 offen
	scratch_load_b32 v15, off, off offset:428 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v15, s37, v15, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s74
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s74, s66
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_clause 0x1
	buffer_load_b32 v49, v15, s[60:63], 0 offen
	buffer_load_b32 v50, v16, s[60:63], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:460
	scratch_load_b32 v16, off, off offset:520
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s71
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v15, s37, v15, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v16, s37, v16, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s70
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v51, v15, s[60:63], 0 offen
	scratch_load_b32 v15, off, off offset:480 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v15, s37, v15, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s59
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s59, s67
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v52, v15, s[60:63], 0 offen
	scratch_load_b32 v15, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v15, s37, v15, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s58
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s58, s66
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_clause 0x1
	buffer_load_b32 v53, v15, s[60:63], 0 offen
	buffer_load_b32 v54, v16, s[60:63], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:532
	scratch_load_b32 v16, off, off offset:572
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s43
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v15, s37, v15, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v16, s37, v16, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s42
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v55, v15, s[60:63], 0 offen
	scratch_load_b32 v15, off, off offset:548 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v15, s37, v15, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s41
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v56, v15, s[60:63], 0 offen
	scratch_load_b32 v15, off, off offset:556 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v15, s37, v15, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s40
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_clause 0x1
	buffer_load_b32 v81, v15, s[60:63], 0 offen
	buffer_load_b32 v82, v16, s[60:63], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:580
	scratch_load_b32 v16, off, off offset:628
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s39
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v15, s37, v15, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v16, s37, v16, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s38
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v83, v15, s[60:63], 0 offen
	scratch_load_b32 v15, off, off offset:596 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v15, s37, v15, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s27
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v84, v15, s[60:63], 0 offen
	scratch_load_b32 v15, off, off offset:604 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v15, s37, v15, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s26
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_clause 0x1
	buffer_load_b32 v85, v15, s[60:63], 0 offen
	buffer_load_b32 v86, v16, s[60:63], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:632
	scratch_load_b32 v16, off, off offset:648
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s25
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v15, s37, v15, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v16, s37, v16, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s24
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v87, v15, s[60:63], 0 offen
	scratch_load_b32 v15, off, off offset:640 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v15, s37, v15, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s23
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v88, v15, s[60:63], 0 offen
	scratch_load_b32 v15, off, off offset:644 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v15, s37, v15, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s22
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_clause 0x1
	buffer_load_b32 v110, v15, s[60:63], 0 offen
	buffer_load_b32 v111, v16, s[60:63], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:652
	scratch_load_b32 v16, off, off offset:664
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s21
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v15, s37, v15, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v16, s37, v16, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s20
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v112, v15, s[60:63], 0 offen
	scratch_load_b32 v15, off, off offset:656 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v15, s37, v15, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s19
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v113, v15, s[60:63], 0 offen
	scratch_load_b32 v15, off, off offset:660 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v15, s37, v15, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s18
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_clause 0x1
	buffer_load_b32 v114, v15, s[60:63], 0 offen
	buffer_load_b32 v115, v16, s[60:63], 0 offen
	scratch_load_b32 v15, off, off offset:668 ; 4-byte Folded Reload
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s17
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v16, s37, v23, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v15, s37, v15, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s16
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v116, v15, s[60:63], 0 offen
	scratch_load_b32 v15, off, off offset:672 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v15, s37, v15, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s15
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v117, v15, s[60:63], 0 offen
	scratch_load_b32 v15, off, off offset:684 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v15, s37, v15, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s14
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_clause 0x1
	buffer_load_b32 v182, v15, s[60:63], 0 offen
	buffer_load_b32 v183, v16, s[60:63], 0 offen
	v_add_lshl_u32 v15, s37, v40, 2
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s93
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_i32 s90, s83
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v184, v15, s[60:63], 0 offen
	v_add_nc_u32_e32 v15, s77, v40
	v_add_lshl_u32 v15, s37, v15, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	buffer_load_b32 v185, v15, s[60:63], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_cndmask_b32_e64 v15, 0x80000000, v2, s12
	buffer_load_b32 v2, v15, s[72:75], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v15, v15, s[56:59], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v16, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v65, 0xc00, v4
	v_add_nc_u32_e32 v71, 0x1400, v4
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v16, 0, v16
	ds_store_b128 v16, v[66:69]
	scratch_load_b32 v16, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v16, v[49:52]
	scratch_load_b32 v16, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v16, v[53:56]
	scratch_load_b32 v16, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v16, v[81:84]
	scratch_load_b32 v16, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v16, v[85:88]
	scratch_load_b32 v16, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v16, v[110:113]
	scratch_load_b32 v16, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v16, v[114:117]
	scratch_load_b32 v16, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v16, v[182:185]
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v16, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v16, 0, v16
	ds_load_b128 v[154:157], v16
	ds_load_b128 v[106:109], v16 offset:4096
	scratch_load_b32 v16, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[166:169], v16
	scratch_load_b32 v16, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[162:165], v16
	scratch_load_b32 v16, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[158:161], v16
	scratch_load_b32 v16, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[134:137], v16
	scratch_load_b32 v16, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[130:133], v16
	scratch_load_b32 v16, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[126:129], v16
	scratch_load_b32 v16, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[122:125], v16
	scratch_load_b32 v16, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[150:153], v16
	scratch_load_b32 v16, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[146:149], v16
	scratch_load_b32 v16, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[118:121], v16
	scratch_load_b32 v16, off, off offset:444 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[118:121], off offset:32 ; 16-byte Folded Spill
	s_waitcnt vmcnt(0)
	ds_load_b128 v[118:121], v16
	scratch_load_b32 v16, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[170:173], v16
	scratch_load_b32 v16, off, off offset:452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[186:189], v16
	scratch_load_b32 v16, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[186:189], off ; 16-byte Folded Spill
	s_waitcnt vmcnt(0)
	ds_load_b128 v[186:189], v16
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[186:189], off offset:16 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v16, off, off offset:164
	scratch_load_b32 v21, off, off offset:156
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v187, v181 :: v_dual_add_nc_u32 v186, 0x1c00, v4
	v_mov_b32_e32 v188, v181
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v16, v21, v16
	v_add_nc_u32_e32 v21, 0x400, v4
	ds_store_2addr_stride64_b32 v16, v66, v67 offset1:1
	ds_store_2addr_stride64_b32 v16, v68, v69 offset0:2 offset1:3
	ds_store_2addr_stride64_b32 v16, v49, v50 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v16, v51, v52 offset0:6 offset1:7
	ds_store_2addr_stride64_b32 v16, v53, v54 offset0:8 offset1:9
	ds_store_2addr_stride64_b32 v16, v55, v56 offset0:10 offset1:11
	ds_store_2addr_stride64_b32 v16, v81, v82 offset0:12 offset1:13
	ds_store_2addr_stride64_b32 v16, v83, v84 offset0:14 offset1:15
	ds_store_2addr_stride64_b32 v16, v85, v86 offset0:16 offset1:17
	ds_store_2addr_stride64_b32 v16, v87, v88 offset0:18 offset1:19
	ds_store_2addr_stride64_b32 v16, v110, v111 offset0:20 offset1:21
	ds_store_2addr_stride64_b32 v16, v112, v113 offset0:22 offset1:23
	ds_store_2addr_stride64_b32 v16, v114, v115 offset0:24 offset1:25
	ds_store_2addr_stride64_b32 v16, v116, v117 offset0:26 offset1:27
	ds_store_2addr_stride64_b32 v16, v182, v183 offset0:28 offset1:29
	ds_store_2addr_stride64_b32 v16, v184, v185 offset0:30 offset1:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[244:245], v21 offset1:32
	ds_load_2addr_b32 v[242:243], v21 offset0:64 offset1:96
	ds_load_2addr_b32 v[240:241], v21 offset0:128 offset1:160
	ds_load_2addr_b32 v[238:239], v21 offset0:192 offset1:224
	ds_load_2addr_b32 v[236:237], v34 offset1:32
	ds_load_2addr_b32 v[234:235], v34 offset0:64 offset1:96
	ds_load_2addr_b32 v[232:233], v34 offset0:128 offset1:160
	ds_load_2addr_b32 v[230:231], v34 offset0:192 offset1:224
	ds_load_2addr_b32 v[228:229], v65 offset1:32
	ds_load_2addr_b32 v[226:227], v65 offset0:64 offset1:96
	ds_load_2addr_b32 v[224:225], v65 offset0:128 offset1:160
	ds_load_2addr_b32 v[222:223], v65 offset0:192 offset1:224
	ds_load_2addr_b32 v[220:221], v70 offset1:32
	ds_load_2addr_b32 v[218:219], v70 offset0:64 offset1:96
	ds_load_2addr_b32 v[216:217], v70 offset0:128 offset1:160
	ds_load_2addr_b32 v[214:215], v70 offset0:192 offset1:224
	ds_load_2addr_b32 v[212:213], v71 offset1:32
	ds_load_2addr_b32 v[210:211], v71 offset0:64 offset1:96
	ds_load_2addr_b32 v[208:209], v71 offset0:128 offset1:160
	ds_load_2addr_b32 v[206:207], v71 offset0:192 offset1:224
	ds_load_2addr_b32 v[204:205], v72 offset1:32
	ds_load_2addr_b32 v[202:203], v72 offset0:64 offset1:96
	ds_load_2addr_b32 v[200:201], v72 offset0:128 offset1:160
	ds_load_2addr_b32 v[198:199], v72 offset0:192 offset1:224
	ds_load_2addr_b32 v[196:197], v186 offset1:32
	ds_load_2addr_b32 v[194:195], v186 offset0:64 offset1:96
	ds_load_2addr_b32 v[192:193], v186 offset0:128 offset1:160
	ds_load_2addr_b32 v[190:191], v186 offset0:192 offset1:224
	ds_load_2addr_b32 v[252:253], v4 offset1:32
	ds_load_2addr_b32 v[250:251], v4 offset0:64 offset1:96
	ds_load_2addr_b32 v[248:249], v4 offset0:128 offset1:160
	ds_load_2addr_b32 v[246:247], v4 offset0:192 offset1:224
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v21, off, off offset:464 ; 4-byte Folded Reload
	ds_store_2addr_stride64_b32 v16, v66, v85 offset1:16
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v186, v181
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s27, v221, v221
	v_cmp_o_f32_e64 s37, v203, v203
	v_cmp_o_f32_e64 s38, v201, v201
	v_cmp_o_f32_e64 s39, v199, v199
	v_cmp_o_f32_e64 s40, v197, v197
	v_cmp_o_f32_e64 s41, v195, v195
	v_cmp_o_f32_e64 s42, v193, v193
	v_cmp_o_f32_e64 s43, v191, v191
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v21, v67, v86 offset1:16
	scratch_load_b32 v21, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v21, v68, v87 offset1:16
	scratch_load_b32 v21, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v21, v69, v88 offset1:16
	scratch_load_b32 v21, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v21, v49, v110 offset1:16
	scratch_load_b32 v21, off, off offset:484 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v21, v50, v111 offset1:16
	scratch_load_b32 v21, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v21, v51, v112 offset1:16
	scratch_load_b32 v21, off, off offset:492 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v21, v52, v113 offset1:16
	scratch_load_b32 v21, off, off offset:496 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v21, v53, v114 offset1:16
	scratch_load_b32 v21, off, off offset:504 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v21, v54, v115 offset1:16
	scratch_load_b32 v21, off, off offset:508 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v21, v55, v116 offset1:16
	scratch_load_b32 v21, off, off offset:512 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v21, v56, v117 offset1:16
	scratch_load_b32 v21, off, off offset:516 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v21, v81, v182 offset1:16
	scratch_load_b32 v21, off, off offset:524 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v182, v181
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v21, v82, v183 offset1:16
	scratch_load_b32 v21, off, off offset:528 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v183, v181
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v21, v83, v184 offset1:16
	scratch_load_b32 v21, off, off offset:536 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v184, v181
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v21, v84, v185 offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v21, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v185, v181
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, 0, v21
	ds_load_b128 v[49:52], v21
	scratch_load_b32 v21, off, off offset:540 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_bfe_u32 v34, v50, 16, 1
	v_cmp_o_f32_e64 s3, v50, v50
	v_cmp_o_f32_e64 s12, v51, v51
	v_cmp_o_f32_e64 s14, v52, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v34, v50, v34, 0x7fff
	v_cndmask_b16 v81.h, 0x7fff, v34.h, s3
	s_waitcnt vmcnt(0)
	ds_load_b128 v[53:56], v21
	v_bfe_u32 v21, v49, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v21, v49, v21, 0x7fff
	v_bfe_u32 v49, v51, 16, 1
	v_cndmask_b16 v81.l, 0x7fff, v21.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v65, v51, v49, 0x7fff
	v_bfe_u32 v49, v52, 16, 1
	scratch_load_b32 v21, off, off offset:560 ; 4-byte Folded Reload
	v_cndmask_b16 v82.l, 0x7fff, v65.h, s12
	v_add3_u32 v66, v52, v49, 0x7fff
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v49, v53, 16, 1
	v_cmp_o_f32_e64 s15, v53, v53
	v_cmp_o_f32_e64 s16, v54, v54
	v_cmp_o_f32_e64 s17, v55, v55
	v_cmp_o_f32_e64 s18, v56, v56
	v_add3_u32 v67, v53, v49, 0x7fff
	v_bfe_u32 v49, v54, 16, 1
	scratch_load_b32 v53, off, off offset:552 ; 4-byte Folded Reload
	v_cndmask_b16 v82.h, 0x7fff, v66.h, s14
	v_cndmask_b16 v83.l, 0x7fff, v67.h, s15
	v_add3_u32 v68, v54, v49, 0x7fff
	v_bfe_u32 v49, v55, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v68.h, s16
	v_add3_u32 v69, v55, v49, 0x7fff
	v_bfe_u32 v49, v56, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v69.h, s17
	v_add3_u32 v70, v56, v49, 0x7fff
	scratch_load_b32 v49, off, off offset:544 ; 4-byte Folded Reload
	v_cndmask_b16 v84.h, 0x7fff, v70.h, s18
	s_waitcnt vmcnt(1)
	ds_load_b128 v[53:56], v53
	s_waitcnt vmcnt(0)
	ds_load_b128 v[49:52], v49
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s23, v53, v53
	v_cmp_o_f32_e64 s24, v54, v54
	v_cmp_o_f32_e64 s25, v55, v55
	v_cmp_o_f32_e64 s26, v56, v56
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v71, v49, 16, 1
	v_cmp_o_f32_e64 s19, v49, v49
	v_cmp_o_f32_e64 s20, v50, v50
	v_cmp_o_f32_e64 s21, v51, v51
	v_cmp_o_f32_e64 s22, v52, v52
	v_add3_u32 v49, v49, v71, 0x7fff
	v_bfe_u32 v71, v50, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.l, 0x7fff, v49.h, s19
	v_add3_u32 v50, v50, v71, 0x7fff
	v_bfe_u32 v71, v51, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.h, 0x7fff, v50.h, s20
	v_add3_u32 v51, v51, v71, 0x7fff
	v_bfe_u32 v71, v52, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.l, 0x7fff, v51.h, s21
	v_add3_u32 v52, v52, v71, 0x7fff
	v_bfe_u32 v71, v53, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.h, 0x7fff, v52.h, s22
	v_add3_u32 v53, v53, v71, 0x7fff
	v_bfe_u32 v71, v54, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.l, 0x7fff, v53.h, s23
	v_add3_u32 v54, v54, v71, 0x7fff
	v_bfe_u32 v71, v55, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.h, 0x7fff, v54.h, s24
	v_add3_u32 v55, v55, v71, 0x7fff
	v_bfe_u32 v71, v56, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v88.l, 0x7fff, v55.h, s25
	v_add3_u32 v56, v56, v71, 0x7fff
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v65, v181 :: v_dual_mov_b32 v66, v182
	v_dual_mov_b32 v67, v183 :: v_dual_mov_b32 v68, v184
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v88.h, 0x7fff, v56.h, s26
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[49:52], off, off offset:296
	scratch_load_b128 v[53:56], off, off offset:312
	v_dual_mov_b32 v69, v185 :: v_dual_mov_b32 v70, v186
	v_dual_mov_b32 v71, v187 :: v_dual_mov_b32 v72, v188
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[49:56], v[81:88], v[65:72]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[49:52], v21
	scratch_load_b32 v21, off, off offset:564 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_bfe_u32 v34, v50, 16, 1
	v_cmp_o_f32_e64 s3, v50, v50
	v_cmp_o_f32_e64 s12, v51, v51
	v_cmp_o_f32_e64 s14, v52, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v34, v50, v34, 0x7fff
	s_waitcnt vmcnt(0)
	ds_load_b128 v[53:56], v21
	v_bfe_u32 v21, v49, 16, 1
	v_add3_u32 v21, v49, v21, 0x7fff
	v_bfe_u32 v49, v51, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v82, v51, v49, 0x7fff
	v_bfe_u32 v49, v52, 16, 1
	v_cndmask_b16 v82.l, 0x7fff, v82.h, s12
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v83, v52, v49, 0x7fff
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v49, v53, 16, 1
	v_cmp_o_f32_e64 s15, v53, v53
	v_cmp_o_f32_e64 s16, v54, v54
	v_cmp_o_f32_e64 s17, v55, v55
	v_cmp_o_f32_e64 s18, v56, v56
	v_add3_u32 v84, v53, v49, 0x7fff
	v_bfe_u32 v49, v54, 16, 1
	scratch_load_b32 v53, off, off offset:576 ; 4-byte Folded Reload
	v_cndmask_b16 v82.h, 0x7fff, v83.h, s14
	v_cndmask_b16 v83.l, 0x7fff, v84.h, s15
	v_add3_u32 v85, v54, v49, 0x7fff
	v_bfe_u32 v49, v55, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v85.h, s16
	v_add3_u32 v86, v55, v49, 0x7fff
	v_bfe_u32 v49, v56, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v86.h, s17
	v_add3_u32 v87, v56, v49, 0x7fff
	scratch_load_b32 v49, off, off offset:568 ; 4-byte Folded Reload
	v_cndmask_b16 v84.h, 0x7fff, v87.h, s18
	s_waitcnt vmcnt(1)
	ds_load_b128 v[53:56], v53
	s_waitcnt vmcnt(0)
	ds_load_b128 v[49:52], v49
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s23, v53, v53
	v_cmp_o_f32_e64 s24, v54, v54
	v_cmp_o_f32_e64 s25, v55, v55
	v_cmp_o_f32_e64 s26, v56, v56
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v81, v49, 16, 1
	v_cmp_o_f32_e64 s19, v49, v49
	v_cmp_o_f32_e64 s20, v50, v50
	v_cmp_o_f32_e64 s21, v51, v51
	v_cmp_o_f32_e64 s22, v52, v52
	v_add3_u32 v88, v49, v81, 0x7fff
	v_bfe_u32 v49, v50, 16, 1
	v_cndmask_b16 v81.l, 0x7fff, v21.h, vcc_lo
	scratch_load_b32 v21, off, off offset:584 ; 4-byte Folded Reload
	v_cndmask_b16 v81.h, 0x7fff, v34.h, s3
	v_cndmask_b16 v85.l, 0x7fff, v88.h, s19
	v_add3_u32 v49, v50, v49, 0x7fff
	v_bfe_u32 v50, v51, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.h, 0x7fff, v49.h, s20
	v_add3_u32 v50, v51, v50, 0x7fff
	v_bfe_u32 v51, v52, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.l, 0x7fff, v50.h, s21
	v_add3_u32 v51, v52, v51, 0x7fff
	v_bfe_u32 v52, v53, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.h, 0x7fff, v51.h, s22
	v_add3_u32 v52, v53, v52, 0x7fff
	v_bfe_u32 v53, v54, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.l, 0x7fff, v52.h, s23
	v_add3_u32 v53, v54, v53, 0x7fff
	v_bfe_u32 v54, v55, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.h, 0x7fff, v53.h, s24
	v_add3_u32 v54, v55, v54, 0x7fff
	v_bfe_u32 v55, v56, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v88.l, 0x7fff, v54.h, s25
	v_add3_u32 v55, v56, v55, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v88.h, 0x7fff, v55.h, s26
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[49:52], off, off offset:264
	scratch_load_b128 v[53:56], off, off offset:280
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[49:56], v[81:88], v[65:72]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[49:52], v21
	scratch_load_b32 v21, off, off offset:588 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_bfe_u32 v34, v50, 16, 1
	v_cmp_o_f32_e64 s3, v50, v50
	v_cmp_o_f32_e64 s12, v51, v51
	v_cmp_o_f32_e64 s14, v52, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v34, v50, v34, 0x7fff
	s_waitcnt vmcnt(0)
	ds_load_b128 v[53:56], v21
	v_bfe_u32 v21, v49, 16, 1
	v_add3_u32 v21, v49, v21, 0x7fff
	v_bfe_u32 v49, v51, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v82, v51, v49, 0x7fff
	v_bfe_u32 v49, v52, 16, 1
	v_cndmask_b16 v82.l, 0x7fff, v82.h, s12
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v83, v52, v49, 0x7fff
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v49, v53, 16, 1
	v_cmp_o_f32_e64 s15, v53, v53
	v_cmp_o_f32_e64 s16, v54, v54
	v_cmp_o_f32_e64 s17, v55, v55
	v_cmp_o_f32_e64 s18, v56, v56
	v_add3_u32 v84, v53, v49, 0x7fff
	v_bfe_u32 v49, v54, 16, 1
	scratch_load_b32 v53, off, off offset:600 ; 4-byte Folded Reload
	v_cndmask_b16 v82.h, 0x7fff, v83.h, s14
	v_cndmask_b16 v83.l, 0x7fff, v84.h, s15
	v_add3_u32 v85, v54, v49, 0x7fff
	v_bfe_u32 v49, v55, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v85.h, s16
	v_add3_u32 v86, v55, v49, 0x7fff
	v_bfe_u32 v49, v56, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v86.h, s17
	v_add3_u32 v87, v56, v49, 0x7fff
	scratch_load_b32 v49, off, off offset:592 ; 4-byte Folded Reload
	v_cndmask_b16 v84.h, 0x7fff, v87.h, s18
	s_waitcnt vmcnt(1)
	ds_load_b128 v[53:56], v53
	s_waitcnt vmcnt(0)
	ds_load_b128 v[49:52], v49
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s23, v53, v53
	v_cmp_o_f32_e64 s24, v54, v54
	v_cmp_o_f32_e64 s25, v55, v55
	v_cmp_o_f32_e64 s26, v56, v56
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v81, v49, 16, 1
	v_cmp_o_f32_e64 s19, v49, v49
	v_cmp_o_f32_e64 s20, v50, v50
	v_cmp_o_f32_e64 s21, v51, v51
	v_cmp_o_f32_e64 s22, v52, v52
	v_add3_u32 v88, v49, v81, 0x7fff
	v_bfe_u32 v49, v50, 16, 1
	v_cndmask_b16 v81.l, 0x7fff, v21.h, vcc_lo
	scratch_load_b32 v21, off, off offset:608 ; 4-byte Folded Reload
	v_cndmask_b16 v81.h, 0x7fff, v34.h, s3
	v_cndmask_b16 v85.l, 0x7fff, v88.h, s19
	v_add3_u32 v49, v50, v49, 0x7fff
	v_bfe_u32 v50, v51, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.h, 0x7fff, v49.h, s20
	v_add3_u32 v50, v51, v50, 0x7fff
	v_bfe_u32 v51, v52, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.l, 0x7fff, v50.h, s21
	v_add3_u32 v51, v52, v51, 0x7fff
	v_bfe_u32 v52, v53, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.h, 0x7fff, v51.h, s22
	v_add3_u32 v52, v53, v52, 0x7fff
	v_bfe_u32 v53, v54, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.l, 0x7fff, v52.h, s23
	v_add3_u32 v53, v54, v53, 0x7fff
	v_bfe_u32 v54, v55, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.h, 0x7fff, v53.h, s24
	v_add3_u32 v54, v55, v54, 0x7fff
	v_bfe_u32 v55, v56, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v88.l, 0x7fff, v54.h, s25
	v_add3_u32 v55, v56, v55, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v88.h, 0x7fff, v55.h, s26
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[49:52], off, off offset:232
	scratch_load_b128 v[53:56], off, off offset:248
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[49:56], v[81:88], v[65:72]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[49:52], v21
	scratch_load_b32 v21, off, off offset:612 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_bfe_u32 v34, v50, 16, 1
	v_cmp_o_f32_e64 s3, v50, v50
	v_cmp_o_f32_e64 s12, v51, v51
	v_cmp_o_f32_e64 s14, v52, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v34, v50, v34, 0x7fff
	s_waitcnt vmcnt(0)
	ds_load_b128 v[53:56], v21
	v_bfe_u32 v21, v49, 16, 1
	v_add3_u32 v21, v49, v21, 0x7fff
	v_bfe_u32 v49, v51, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v82, v51, v49, 0x7fff
	v_bfe_u32 v49, v52, 16, 1
	v_cndmask_b16 v82.l, 0x7fff, v82.h, s12
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v83, v52, v49, 0x7fff
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v49, v53, 16, 1
	v_cmp_o_f32_e64 s15, v53, v53
	v_cmp_o_f32_e64 s16, v54, v54
	v_cmp_o_f32_e64 s17, v55, v55
	v_cmp_o_f32_e64 s18, v56, v56
	v_add3_u32 v84, v53, v49, 0x7fff
	v_bfe_u32 v49, v54, 16, 1
	scratch_load_b32 v53, off, off offset:620 ; 4-byte Folded Reload
	v_cndmask_b16 v82.h, 0x7fff, v83.h, s14
	v_cndmask_b16 v83.l, 0x7fff, v84.h, s15
	v_add3_u32 v85, v54, v49, 0x7fff
	v_bfe_u32 v49, v55, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v85.h, s16
	v_add3_u32 v86, v55, v49, 0x7fff
	v_bfe_u32 v49, v56, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v86.h, s17
	v_add3_u32 v87, v56, v49, 0x7fff
	scratch_load_b32 v49, off, off offset:616 ; 4-byte Folded Reload
	v_cndmask_b16 v84.h, 0x7fff, v87.h, s18
	s_waitcnt vmcnt(1)
	ds_load_b128 v[53:56], v53
	s_waitcnt vmcnt(0)
	ds_load_b128 v[49:52], v49
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s23, v53, v53
	v_cmp_o_f32_e64 s24, v54, v54
	v_cmp_o_f32_e64 s25, v55, v55
	v_cmp_o_f32_e64 s26, v56, v56
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v81, v49, 16, 1
	v_cmp_o_f32_e64 s19, v49, v49
	v_cmp_o_f32_e64 s20, v50, v50
	v_cmp_o_f32_e64 s21, v51, v51
	v_cmp_o_f32_e64 s22, v52, v52
	v_add3_u32 v88, v49, v81, 0x7fff
	v_bfe_u32 v49, v50, 16, 1
	v_cndmask_b16 v81.l, 0x7fff, v21.h, vcc_lo
	v_cndmask_b16 v81.h, 0x7fff, v34.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v85.l, 0x7fff, v88.h, s19
	v_add3_u32 v49, v50, v49, 0x7fff
	v_bfe_u32 v50, v51, 16, 1
	v_cmp_o_f32_e64 s19, v237, v237
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v85.h, 0x7fff, v49.h, s20
	v_add3_u32 v50, v51, v50, 0x7fff
	v_bfe_u32 v51, v52, 16, 1
	v_cmp_o_f32_e64 s20, v235, v235
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v86.l, 0x7fff, v50.h, s21
	v_add3_u32 v51, v52, v51, 0x7fff
	v_bfe_u32 v52, v53, 16, 1
	v_cmp_o_f32_e64 s21, v233, v233
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v86.h, 0x7fff, v51.h, s22
	v_add3_u32 v52, v53, v52, 0x7fff
	v_bfe_u32 v53, v54, 16, 1
	v_cmp_o_f32_e64 s22, v231, v231
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v87.l, 0x7fff, v52.h, s23
	v_add3_u32 v53, v54, v53, 0x7fff
	v_bfe_u32 v54, v55, 16, 1
	v_cmp_o_f32_e64 s23, v229, v229
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v87.h, 0x7fff, v53.h, s24
	v_add3_u32 v54, v55, v54, 0x7fff
	v_bfe_u32 v55, v56, 16, 1
	v_cmp_o_f32_e64 s24, v227, v227
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v88.l, 0x7fff, v54.h, s25
	v_add3_u32 v55, v56, v55, 0x7fff
	v_cmp_o_f32_e64 s25, v225, v225
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v88.h, 0x7fff, v55.h, s26
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[49:52], off, off offset:200
	scratch_load_b128 v[53:56], off, off offset:216
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s26, v223, v223
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[49:56], v[81:88], v[65:72]
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v56, v75
	v_cvt_f32_i32_e32 v55, v74
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v52, v70, v15
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v70, v176, 0, 8
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v34, v66, v15
	v_sub_f32_e32 v50, v68, v15
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v66, v77
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v51, v69, v15
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v68, v79
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v53, v71, v15
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v69, v80
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v71, 15, v70
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.h, v70.l, 15
	.loc	1 720 47 is_stmt 1              ; attention_backward.py:720:47
	v_sub_f32_e32 v54, v72, v15
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e64 v176.l, 0
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v21, v65, v15
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v72, -16, v71
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v70.l
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v49, v67, v15
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v15, v73
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v176.h, v18.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v71, v71, v72, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v72.l, v0.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e64 v72.h, v176.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v70.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v17.l, v176.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v18, v71
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v14.l
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v73, -16, v72
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v8.l, v176.l
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v65, v76
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v18, v18, v17
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v67, v78
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v70, v72, v73, vcc_lo
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v14.l
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e64 v10.l, v176.l
	v_mov_b16_e64 v36.l, v176.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v70, v70
	v_mul_f32_e32 v17, v70, v17
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v70.l, v0.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e64 v70.h, v176.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v0.h, v14.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v71, -16, v70
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_dual_cndmask_b32 v70, v70, v71 :: v_dual_and_b32 v71, 15, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 42 is_stmt 1              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v14, -16, v71
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v70, v8, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v14, v71, v14, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v8, v8, v14
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v14, 0, v70, s1
	v_mov_b16_e64 v70.h, v176.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v8, 0, v8, s0
	v_mov_b16_e32 v70.l, v14.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_cmp_o_f32_e64 s3, v8, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v70, 1, v70
	v_add3_u32 v70, v14, v70, 0x7fff
	v_mov_b16_e32 v14.l, v8.h
	v_mov_b16_e64 v14.h, v176.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v74.h, 0x7fff, v70.h, vcc_lo
	v_and_b32_e32 v14, 1, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v14, v8, v14, 0x7fff
	v_cndmask_b32_e64 v8, 0, v18, s0
	v_cndmask_b16 v74.l, 0x7fff, v14.h, s3
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v14, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v18, v8, 16, 1
	v_cmp_o_f32_e64 s12, v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v18, v8, v18, 0x7fff
	v_cndmask_b32_e64 v8, 0, v17, s1
	v_cndmask_b16 v75.l, 0x7fff, v18.h, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_bfe_u32 v17, v8, 16, 1
	v_cmp_o_f32_e64 s14, v8, v8
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v18, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v17, v8, v17, 0x7fff
	.loc	1 640 41                        ; attention_backward.py:640:41
	v_mul_f32_e32 v8, s87, v176
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v75.h, 0x7fff, v17.h, s14
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v15, v8, v15
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v17, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v55, v8, v55
	v_mul_f32_e32 v56, v8, v56
	v_mul_f32_e32 v65, v8, v65
	v_mul_f32_e32 v66, v8, v66
	v_mul_f32_e32 v67, v8, v67
	v_mul_f32_e32 v68, v8, v68
	v_mul_f32_e32 v8, v8, v69
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(2)
	v_fma_f32 v14, v15, v14, -v2
	scratch_load_b32 v15, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v17, v56, v17, -v2
	scratch_load_b32 v56, off, off offset:188 ; 4-byte Folded Reload
	v_fma_f32 v18, v65, v18, -v2
	scratch_load_b32 v65, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fma_f32 v15, v55, v15, -v2
	scratch_load_b32 v55, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fma_f32 v56, v67, v56, -v2
	s_waitcnt vmcnt(1)
	v_fma_f32 v65, v68, v65, -v2
	s_waitcnt vmcnt(0)
	v_fma_f32 v55, v66, v55, -v2
	scratch_load_b32 v66, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v66, v8, v66, -v2
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v2, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v79, 0, v2, s36
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s36, v205, v205
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v2, v79, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v2, s85, v2
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v8, v2, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v67, v2, v8, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v2, v15
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v0.h, 0x7fff, v67.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v15, 0, v2, s35
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s35, v207, v207
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v2, v15, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v2, s85, v2
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v8, v2, 16, 1
	v_cmp_o_f32_e64 s3, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v68, v2, v8, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v2, v17
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v8, 0, v2, s34
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s34, v209, v209
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v2, v8, v49
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v2, s85, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v14, v2, 16, 1
	v_cmp_o_f32_e64 s12, v2, v2
	v_add3_u32 v17, v2, v14, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v2, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v14, 0, v2, s33
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s33, v211, v211
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v2, v14, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v2, s85, v2
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v18, v2, 16, 1
	v_cmp_o_f32_e64 s14, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v49, v2, v18, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v2, v55
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v80, 0, v2, s31
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s31, v213, v213
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v2, v80, v51
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v2, s85, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v18, v2, 16, 1
	v_cmp_o_f32_e64 s15, v2, v2
	v_add3_u32 v34, v2, v18, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v2, v56
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v56.l, v176.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v1.h, 0x7fff, v34.h, s15
	.loc	1 722 33                        ; attention_backward.py:722:33
	scratch_load_b32 v34, off, off offset:624 ; 4-byte Folded Reload
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v18, 0, v2, s30
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s30, v215, v215
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v2, v18, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v2, s85, v2
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v21, v2, 16, 1
	v_cmp_o_f32_e64 s16, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add3_u32 v50, v2, v21, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v2, v65
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v65.l, v176.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v2, 0, v2, s29
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s29, v217, v217
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v21, v2, v53
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v21, s85, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v51, v21, 16, 1
	v_cmp_o_f32_e64 s17, v21, v21
	v_add3_u32 v51, v21, v51, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v21, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v21, 0, v21, s28
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s28, v219, v219
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v52, v21, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v52, s85, v52
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v53, v52, 16, 1
	v_cmp_o_f32_e64 s18, v52, v52
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v53, v52, v53, 0x7fff
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, 0, v34
	ds_store_b16_d16_hi v34, v0
	ds_store_b16_d16_hi v34, v1 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v0.h, 0x7fff, v68.h, s3
	v_cndmask_b16 v1.h, 0x7fff, v50.h, s16
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v11, v0
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v0.h, 0x7fff, v17.h, s12
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v11, v1 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v1.h, 0x7fff, v51.h, s17
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v17, v90, 0, 8
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s17, v21, v21
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v12, v0
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v0.h, 0x7fff, v49.h, s14
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v12, v1 offset:512
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v49, 15, v17
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v1.h, v17.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v50, -16, v49
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v1.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v49, v49, v50, vcc_lo
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v50, v89, 0, 8
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v49, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v51, 15, v50
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v1.h, v50.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v52, -16, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v1.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v1.h, 4, v17.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v51, v51, v52, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v52.l, v1.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e64 v52.h, v176.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v17.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v1.h, 4, v50.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v51, v51
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v54, -16, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v17, v52, v54, vcc_lo
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v52.l, v1.h, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v50.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v1.h, 0x7fff, v53.h, s18
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v39, v0
	ds_store_b16_d16_hi v39, v1 offset:512
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v54, -16, v52
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v17, v17
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v1.h, v1.l
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v50, v52, v54, vcc_lo
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v52.h, v92.l
	v_mov_b16_e64 v52.l, v176.l
	v_mov_b16_e64 v1.l, v176.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s18, v239, v239
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v49, v49, v52
	v_mul_f32_e32 v17, v17, v52
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v52.h, v91.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v50, v50
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v49, 0, v49, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v51, v51, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v50, v50, v52
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v52, v49, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_cmp_o_f32_e64 s3, v17, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v52, v49, v52, 0x7fff
	v_bfe_u32 v49, v17, 16, 1
	v_add3_u32 v49, v17, v49, 0x7fff
	v_cndmask_b32_e64 v17, 0, v51, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v49.l, 0x7fff, v52.h, vcc_lo
	v_cndmask_b16 v49.h, 0x7fff, v49.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v51, v17, 16, 1
	v_cmp_o_f32_e64 s12, v17, v17
	v_add3_u32 v51, v17, v51, 0x7fff
	v_cndmask_b32_e64 v17, 0, v50, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v50, v17, 16, 1
	v_cmp_o_f32_e64 s14, v17, v17
	v_add3_u32 v50, v17, v50, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	scratch_load_b32 v17, off, off offset:636 ; 4-byte Folded Reload
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v50.l, 0x7fff, v51.h, s12
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v51, v180, 0, 8
	.loc	1 732 54 is_stmt 1              ; attention_backward.py:732:54
	v_mov_b16_e64 v180.l, v176.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v52, 15, v51
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.h, v51.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v53, -16, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v0.h, v5.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v52, v52, v53, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v51.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v52, v52, v10 :: v_dual_and_b32 v53, 15, v5
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v54, -16, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v53, v53, v54, vcc_lo
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v54.l, v0.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e64 v54.h, v176.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v51.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v5.l
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v55, -16, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v51, v54, v55, vcc_lo
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v54.l, v0.h, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v5.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.h, v9.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v51, v51
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v55, -16, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_dual_mul_f32 v10, v51, v10 :: v_dual_cndmask_b32 v5, v54, v55
	v_cvt_f32_i32_e32 v51, v53
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v55.l, v176.l
	v_mov_b16_e64 v54.l, v176.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v5, v5
	v_mul_f32_e32 v51, v51, v36
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v53.l, v176.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s3, v10, v10
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v5, v5, v36
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v36, 0, v52, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_bfe_u32 v52, v36, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s14, v5, v5
	v_add3_u32 v52, v36, v52, 0x7fff
	v_bfe_u32 v36, v10, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v52.l, v176.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v36, v10, v36, 0x7fff
	v_cndmask_b32_e64 v10, 0, v51, s0
	v_bfe_u32 v51, v10, 16, 1
	v_cmp_o_f32_e64 s12, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v51, v10, v51, 0x7fff
	v_bfe_u32 v10, v5, 16, 1
	v_add3_u32 v10, v5, v10, 0x7fff
	v_cndmask_b16 v5.h, 0x7fff, v36.h, s3
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v36, 15, v9
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v5.l, 0x7fff, v52.h, vcc_lo
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.h, v20.l, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v10.l, 0x7fff, v51.h, s12
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s14
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, 0, v17
	ds_load_b128 v[85:88], v17
	ds_load_b128 v[89:92], v6
	ds_load_b128 v[66:69], v3
	ds_load_b128 v[70:73], v179
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b32 v16, v74, v75 offset1:1
	ds_store_2addr_stride64_b32 v16, v49, v50 offset0:2 offset1:3
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v49, -16, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v36, v36, v49, vcc_lo
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v9.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v36, v36, v1 :: v_dual_and_b32 v49, 15, v20
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v50, -16, v49
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v49, v49, v50, vcc_lo
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v50.l, v0.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e64 v50.h, v176.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v9.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v20.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v49, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v51, -16, v50
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v9, v50, v51, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v50.l, v0.h, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v20.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v0, v0, 0, 8
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v51, -16, v50
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_dual_mul_f32 v1, v9, v1 :: v_dual_cndmask_b32 v20, v50, v51
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v9.h, v175.l
	v_mov_b16_e64 v9.l, v176.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v50.l, v176.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v51.l, v176.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v49, v49, v9
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v175.l, v176.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s3, v1, v1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v9, v20, v9
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v20, 0, v36, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v36, v20, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_add3_u32 v36, v20, v36, 0x7fff
	v_bfe_u32 v20, v1, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v20, v1, v20, 0x7fff
	v_cndmask_b32_e64 v1, 0, v49, s0
	v_bfe_u32 v49, v1, 16, 1
	v_cmp_o_f32_e64 s12, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v49, v1, v49, 0x7fff
	v_cndmask_b32_e64 v1, 0, v9, s1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v49.l, v176.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v9, v1, 16, 1
	v_cmp_o_f32_e64 s14, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v9, v1, v9, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v36.h, vcc_lo
	v_cndmask_b16 v1.h, 0x7fff, v20.h, s3
	v_cndmask_b16 v9.l, 0x7fff, v49.h, s12
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s14
	ds_store_2addr_stride64_b32 v16, v5, v10 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v16, v1, v9 offset0:6 offset1:7
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v1.l, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v5, 15, v1
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.l, v1.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v9, -16, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v0, v13, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v0.h, v176.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v5, v5, v9, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v9.l, v0.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.l, v9.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v10, 15, v9
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v9.h, v37.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v37.l, v176.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v1.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v13, -16, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v10, v10, v13, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v13, -16, v0
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v1, v0, v13, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v9.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v9.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v9.l, v176.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v5, v5, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v1, v1, v9
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v13, -16, v0
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v9.h, v105.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v1, 0, v1, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v0, v0, v13, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v10, v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_cmp_o_f32_e64 s3, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v0, v0
	v_mul_f32_e32 v0, v0, v9
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v9, v5, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v0, 0, v0, s1
	v_add3_u32 v9, v5, v9, 0x7fff
	v_bfe_u32 v5, v1, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s14, v0, v0
	v_add3_u32 v5, v1, v5, 0x7fff
	v_cndmask_b32_e64 v1, 0, v10, s0
	v_cndmask_b16 v5.l, 0x7fff, v9.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s3
	v_bfe_u32 v10, v1, 16, 1
	v_cmp_o_f32_e64 s12, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v10, v1, v10, 0x7fff
	v_bfe_u32 v1, v0, 16, 1
	v_add3_u32 v1, v0, v1, 0x7fff
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v0, v102, 0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v1.l, v0.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v0.l, v1.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v9, 15, v1
	.loc	1 650 42 is_stmt 1              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v0, v101, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v13, -16, v9
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v0.h, v176.l
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v10.l, v0.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 33 is_stmt 1              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v9, v9, v13, vcc_lo
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.l, v10.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v13, 15, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v9, v9
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v1.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v20, -16, v13
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v13, v13, v20, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v1.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v20, -16, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v20, v0, v20, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v10.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v10.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v36, -16, v0
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v0, v0, v36, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v36.h, v104.l
	v_mov_b16_e64 v36.l, v176.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v0, v0
	v_mul_f32_e32 v9, v9, v36
	v_mul_f32_e32 v20, v20, v36
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v36.h, v103.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v13, v13, v36
	v_mul_f32_e32 v0, v0, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v36, v9, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_cndmask_b32_e64 v0, 0, v0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v36, v9, v36, 0x7fff
	v_cndmask_b32_e64 v9, 0, v20, s1
	v_cmp_o_f32_e64 s16, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v1.l, 0x7fff, v36.h, vcc_lo
	v_bfe_u32 v20, v9, 16, 1
	v_cmp_o_f32_e64 s3, v9, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v20, v9, v20, 0x7fff
	v_cndmask_b32_e64 v9, 0, v13, s0
	v_bfe_u32 v13, v9, 16, 1
	v_cmp_o_f32_e64 s15, v9, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v13, v9, v13, 0x7fff
	v_bfe_u32 v9, v0, 16, 1
	v_add3_u32 v9, v0, v9, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v10.h, s12
	v_cndmask_b16 v0.h, 0x7fff, v1.h, s14
	v_cndmask_b16 v1.h, 0x7fff, v20.h, s3
	v_cndmask_b16 v9.l, 0x7fff, v13.h, s15
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s16
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s16, v2, v2
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_store_2addr_stride64_b32 v16, v5, v0 offset0:8 offset1:9
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v0, v100, 0, 8
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s15, v14, v14
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_store_2addr_stride64_b32 v16, v1, v9 offset0:10 offset1:11
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v5.l, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v10, 15, v5
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.l, v5.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v13, -16, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v0, v98, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v0.h, v176.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v10, v10, v13, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v13.l, v0.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v0.l, v13.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v20, 15, v13
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v13.h, v99.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v5.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v36, -16, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v20, v20, v36, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v5.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v36, -16, v0
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v5, v0, v36, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v13.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v13.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v13.l, v176.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v5, v5
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v10, v10, v13
	v_mul_f32_e32 v5, v5, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v36, -16, v0
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v13.h, v97.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v10, 0, v10, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v5, 0, v5, s1
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v0, v0, v36, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v20, v20, v13
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v5, v5
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v0, v0, v13
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v13, v10, 16, 1
	v_cndmask_b32_e64 v0, 0, v0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v13, v10, v13, 0x7fff
	v_bfe_u32 v10, v5, 16, 1
	v_cmp_o_f32_e64 s14, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v10, v5, v10, 0x7fff
	v_cndmask_b32_e64 v5, 0, v20, s0
	v_cndmask_b16 v10.l, 0x7fff, v13.h, vcc_lo
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v20, v5, 16, 1
	v_cmp_o_f32_e64 s12, v5, v5
	v_add3_u32 v20, v5, v20, 0x7fff
	v_bfe_u32 v5, v0, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v5, v0, v5, 0x7fff
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v0, v96, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v5.l, 0x7fff, v20.h, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s14
	.loc	1 0 0                           ; attention_backward.py:0
	v_mov_b16_e32 v1.l, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v9, 15, v1
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.l, v1.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v13, -16, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v0, v95, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e64 v0.h, v176.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v9, v9, v13, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v13.l, v0.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.l, v13.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v20, 15, v13
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v13.h, v94.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v1.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v36, -16, v20
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v20, v20, v36, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v1.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v36, -16, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v1, v0, v36, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v13.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v13.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v13.l, v176.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v1, v1
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v0.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v9, v9, v13
	v_mul_f32_e32 v1, v1, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v36, -16, v0
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v13.h, v93.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v9, 0, v9, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v0, v0, v36, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v20, v20, v13
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v36.l, v176.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s3, v1, v1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v0, v0, v13
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v13, v9, 16, 1
	v_cndmask_b32_e64 v0, 0, v0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v13, v9, v13, 0x7fff
	v_bfe_u32 v9, v1, 16, 1
	v_cmp_o_f32_e64 s14, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v9, v1, v9, 0x7fff
	v_cndmask_b32_e64 v1, 0, v20, s0
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v9.l, v176.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v20, v1, 16, 1
	v_cmp_o_f32_e64 s12, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v20, v1, v20, 0x7fff
	v_bfe_u32 v1, v0, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v20.l, v176.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v1, v0, v1, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v13.h, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v9.h, s3
	v_cndmask_b16 v1.l, 0x7fff, v20.h, s12
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s14
	ds_store_2addr_stride64_b32 v16, v10, v5 offset0:12 offset1:13
	ds_store_2addr_stride64_b32 v16, v0, v1 offset0:14 offset1:15
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v95, v7 offset:512
	ds_load_u16_d16 v96, v7 offset:768
	ds_load_u16_d16 v97, v7 offset:1024
	ds_load_u16_d16 v100, v7 offset:1792
	ds_load_u16_d16 v98, v7 offset:1280
	ds_load_u16_d16 v186, v7 offset:1088
	ds_load_u16_d16 v185, v7 offset:832
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16_hi v186, v7 offset:1216
	ds_load_u16_d16 v94, v7 offset:256
	ds_load_u16_d16 v93, v7
	ds_load_u16_d16 v99, v7 offset:1536
	ds_load_u16_d16_hi v95, v7 offset:640
	ds_load_u16_d16_hi v96, v7 offset:896
	ds_load_u16_d16_hi v97, v7 offset:1152
	ds_load_u16_d16 v187, v7 offset:1344
	ds_load_u16_d16 v77, v7 offset:2816
	ds_load_u16_d16 v78, v7 offset:3072
	ds_load_u16_d16 v84, v7 offset:2624
	ds_load_u16_d16 v83, v7 offset:2368
	ds_load_u16_d16 v74, v7 offset:2048
	ds_load_u16_d16 v75, v7 offset:2304
	ds_load_u16_d16 v76, v7 offset:2560
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v0, v79, 16, 1
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v84, v7 offset:2752
	ds_load_u16_d16_hi v99, v7 offset:1664
	ds_load_u16_d16_hi v100, v7 offset:1920
	ds_load_u16_d16_hi v98, v7 offset:1408
	ds_load_u16_d16 v182, v7 offset:64
	ds_load_u16_d16_hi v94, v7 offset:384
	ds_load_u16_d16 v184, v7 offset:576
	ds_load_u16_d16 v183, v7 offset:320
	ds_load_u16_d16_hi v93, v7 offset:128
	ds_load_u16_d16 v188, v7 offset:1600
	ds_load_u16_d16 v82, v7 offset:2112
	ds_load_u16_d16 v189, v7 offset:1856
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v0, v79, v0, 0x7fff
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v182, v7 offset:192
	ds_load_u16_d16_hi v185, v7 offset:960
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v184, v7 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v183, v7 offset:448
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v176.h, 0x7fff, v0.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v80, v80
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_load_u16_d16_hi v187, v7 offset:1472
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v188, v7 offset:1728
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v189, v7 offset:1984
	ds_load_u16_d16_hi v77, v7 offset:2944
	ds_load_u16_d16_hi v76, v7 offset:2688
	ds_load_u16_d16_hi v75, v7 offset:2432
	ds_load_u16_d16_hi v74, v7 offset:2176
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[57:64], v[93:100], v[85:92], v[57:64]
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v0, v79, v176
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v15, v15
	v_cmp_o_f32_e64 s14, v8, v8
	v_bfe_u32 v16, v21, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v1, v0, 16, 1
	v_cmp_o_f32_e64 s12, v0, v0
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v16, v21, v16, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v16.l, v176.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_add3_u32 v5, v0, v1, 0x7fff
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_bfe_u32 v0, v80, 16, 1
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s17
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[138:145], v[182:189], v[85:92], v[138:145]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v182.l, v176.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v0, v80, v0, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v183.l, v176.l
	v_mov_b16_e64 v184.l, v176.l
	v_mov_b16_e64 v185.l, v176.l
	v_mov_b16_e64 v186.l, v176.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v9.h, 0x7fff, v0.h, vcc_lo
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v187.l, v176.l
	v_mov_b16_e64 v188.l, v176.l
	v_mov_b16_e64 v189.l, v176.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s17, v241, v241
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v0, v80, v9
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_load_u16_d16 v89, v7 offset:3904
	ds_load_u16_d16 v85, v7 offset:2880
	ds_load_u16_d16 v79, v7 offset:3328
	ds_load_u16_d16 v86, v7 offset:3136
	ds_load_u16_d16 v80, v7 offset:3584
	ds_load_u16_d16 v81, v7 offset:3840
	ds_load_u16_d16 v88, v7 offset:3648
	ds_load_u16_d16 v87, v7 offset:3392
	ds_load_u16_d16_hi v83, v7 offset:2496
	ds_load_u16_d16_hi v82, v7 offset:2240
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v89, v7 offset:4032
	ds_load_u16_d16_hi v78, v7 offset:3200
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v85, v7 offset:3008
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v79, v7 offset:3456
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v86, v7 offset:3264
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v1, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v80, v7 offset:3712
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v81, v7 offset:3968
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v88, v7 offset:3776
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v87, v7 offset:3520
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v1, v0, v1, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v0, v15, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v0, v15, v0, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v0.l, v176.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s3
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v34, v9 offset:512
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v9, v18, 16, 1
	v_cmp_o_f32_e64 s3, v18, v18
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v10, v15, v0
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v11, v0
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v9, v18, v9, 0x7fff
	v_bfe_u32 v15, v2, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v9.l, v176.l
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v0, v10, 16, 1
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[57:64], v[74:81], v[66:73], v[57:64]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s3
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v10, v10
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v15, v2, v15, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v13, v10, v0, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v0, v8, 16, 1
	v_bfe_u32 v10, v14, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v15.l, v176.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s16
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s16, v243, v243
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v0, v8, v0, 0x7fff
	v_add3_u32 v10, v14, v10, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.l, 0x7fff, v5.h, s12
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v5, v246, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v10.l, v176.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v20.h, 0x7fff, v0.h, s14
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.h, 0x7fff, v1.h, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v1, v250, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v250, v250
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s15
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v34, v176
	ds_store_b16_d16_hi v11, v9 offset:512
	ds_store_b16_d16_hi v12, v20
	ds_store_b16_d16_hi v12, v15 offset:512
	ds_store_b16_d16_hi v39, v10
	ds_store_b16_d16_hi v39, v16 offset:512
	s_waitcnt lgkmcnt(0)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v1, v250, v1, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_barrier
	ds_load_b128 v[98:101], v17
	ds_load_b128 v[102:105], v6
	ds_load_b128 v[90:93], v3
	ds_load_b128 v[94:97], v179
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v182.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v242, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v242, v242
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v34, v0
	ds_store_b16_d16_hi v34, v0 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.l, 0x7fff, v13.h, s3
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v1, v242, v1, 0x7fff
	v_add3_u32 v5, v246, v5, 0x7fff
	v_cmp_o_f32_e64 s3, v246, v246
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v2, v2, v15
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v34.l, v176.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v184.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v238, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v238, v238
	v_cndmask_b16 v183.h, 0x7fff, v5.h, s3
	v_bfe_u32 v5, v214, 16, 1
	v_cmp_o_f32_e64 s3, v214, v214
	v_add3_u32 v1, v238, v1, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s14, v2, v2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v167, v167, v184
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v5, v214, v5, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v13.l, v176.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v185.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v234, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v234, v234
	v_cndmask_b16 v50.h, 0x7fff, v5.h, s3
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v5, v14, v10
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v169, v169, v185
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v1, v234, v1, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[138:145], v[82:89], v[66:73], v[138:145]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v5, v5
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v186.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v230, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v230, v230
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v163, v163, v186
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v1, v230, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v187.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v226, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v226, v226
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v165, v165, v187
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v1, v226, v1, 0x7fff
	v_cndmask_b16 v188.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v222, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v222, v222
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v1, v222, v1, 0x7fff
	v_cndmask_b16 v189.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v218, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v218, v218
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v161, v161, v189
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v1, v218, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v49.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v210, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v210, v210
	v_add3_u32 v1, v210, v1, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v210.l, v176.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v51.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v206, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v206, v206
	v_add3_u32 v1, v206, v1, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v206.l, v176.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v52.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v202, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v202, v202
	v_add3_u32 v1, v202, v1, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v202.l, v176.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v53.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v198, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v198, v198
	v_add3_u32 v1, v198, v1, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v198.l, v176.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v54.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v194, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v194, v194
	v_add3_u32 v1, v194, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v55.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v190, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v190, v190
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v14, v123, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v1, v190, v1, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v123, v133, v52
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v133, v239, 16, 1
	v_cndmask_b16 v56.h, 0x7fff, v1.h, vcc_lo
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v1, v8, v20 :: v_dual_sub_f32 v8, v18, v9
	v_sub_f32_e32 v9, v21, v16
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v21, v129, v54
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v133, v239, v133, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v10, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cmp_o_f32_e64 s12, v8, v8
	v_cmp_o_f32_e64 s15, v9, v9
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v18.l, v176.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v10, v1, v10, 0x7fff
	v_bfe_u32 v1, v5, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v16, v243, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v133.l, v176.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v1, v5, v1, 0x7fff
	v_bfe_u32 v5, v8, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v16, v243, v16, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v5, v8, v5, 0x7fff
	v_bfe_u32 v8, v2, 16, 1
	v_cndmask_b16 v0.h, 0x7fff, v5.h, s12
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v8, v2, v8, 0x7fff
	v_bfe_u32 v2, v9, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v11, v0
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.l, 0x7fff, v10.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v11, v0 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.h, 0x7fff, v8.h, s14
	v_add3_u32 v2, v9, v2, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v252, v252
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v12, v0
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s3
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v12, v0 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s15
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v39, v0
	ds_store_b16_d16_hi v39, v0 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v0, v252, 16, 1
	v_bfe_u32 v1, v248, 16, 1
	v_bfe_u32 v2, v244, 16, 1
	v_bfe_u32 v5, v240, 16, 1
	v_bfe_u32 v8, v236, 16, 1
	v_add3_u32 v0, v252, v0, 0x7fff
	v_bfe_u32 v9, v232, 16, 1
	v_add3_u32 v1, v248, v1, 0x7fff
	v_add3_u32 v2, v244, v2, 0x7fff
	v_cmp_o_f32_e64 s3, v244, v244
	v_cndmask_b16 v0.h, 0x7fff, v0.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v248, v248
	v_add3_u32 v5, v240, v5, 0x7fff
	v_cmp_o_f32_e64 s12, v240, v240
	v_add3_u32 v8, v236, v8, 0x7fff
	v_cmp_o_f32_e64 s14, v236, v236
	v_add3_u32 v9, v232, v9, 0x7fff
	v_cmp_o_f32_e64 s15, v232, v232
	v_cndmask_b16 v13.h, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v65.h, 0x7fff, v2.h, s3
	v_cndmask_b16 v198.h, 0x7fff, v5.h, s12
	v_cndmask_b16 v202.h, 0x7fff, v8.h, s14
	v_cndmask_b16 v206.h, 0x7fff, v9.h, s15
	v_bfe_u32 v1, v228, 16, 1
	v_bfe_u32 v2, v224, 16, 1
	v_bfe_u32 v5, v220, 16, 1
	v_bfe_u32 v8, v216, 16, 1
	v_bfe_u32 v9, v212, 16, 1
	v_add3_u32 v1, v228, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v228, v228
	v_add3_u32 v2, v224, v2, 0x7fff
	v_cmp_o_f32_e64 s3, v224, v224
	v_add3_u32 v5, v220, v5, 0x7fff
	v_cmp_o_f32_e64 s12, v220, v220
	v_add3_u32 v8, v216, v8, 0x7fff
	v_cmp_o_f32_e64 s14, v216, v216
	v_add3_u32 v9, v212, v9, 0x7fff
	v_cmp_o_f32_e64 s15, v212, v212
	v_cndmask_b16 v210.h, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v212.h, 0x7fff, v2.h, s3
	v_cndmask_b16 v18.h, 0x7fff, v5.h, s12
	v_cndmask_b16 v20.h, 0x7fff, v8.h, s14
	v_cndmask_b16 v15.h, 0x7fff, v9.h, s15
	v_bfe_u32 v1, v208, 16, 1
	v_bfe_u32 v2, v204, 16, 1
	v_bfe_u32 v5, v200, 16, 1
	v_bfe_u32 v8, v196, 16, 1
	v_bfe_u32 v9, v192, 16, 1
	v_add3_u32 v1, v208, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v208, v208
	v_add3_u32 v2, v204, v2, 0x7fff
	v_cmp_o_f32_e64 s3, v204, v204
	v_add3_u32 v5, v200, v5, 0x7fff
	v_cmp_o_f32_e64 s12, v200, v200
	v_add3_u32 v8, v196, v8, 0x7fff
	v_cmp_o_f32_e64 s14, v196, v196
	v_add3_u32 v9, v192, v9, 0x7fff
	v_cmp_o_f32_e64 s15, v192, v192
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[110:113], v17
	ds_load_b128 v[114:117], v6
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v180.h, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v37.h, 0x7fff, v2.h, s3
	v_cndmask_b16 v175.h, 0x7fff, v5.h, s12
	v_cndmask_b16 v34.h, 0x7fff, v8.h, s14
	v_cndmask_b16 v36.h, 0x7fff, v9.h, s15
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v189.l, v212.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v200, v159, v188
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v188.l, v210.h
	v_mov_b16_e64 v187.l, v206.h
	v_mov_b16_e64 v186.l, v202.h
	v_mov_b16_e64 v185.l, v198.h
	v_mov_b16_e64 v184.l, v65.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v204, v157, v183 :: v_dual_sub_f32 v17, v127, v53
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v183.l, v13.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v208, v155, v182
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v182.l, v0.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v9, v125, v56
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v56.l, v36.h
	v_mov_b16_e32 v55.l, v34.h
	v_mov_b16_e64 v54.l, v175.h
	v_wmma_f32_16x16x16_bf16 v[41:48], v[182:189], v[98:105], v[41:48]
	v_mov_b16_e32 v53.l, v37.h
	v_mov_b16_e64 v52.l, v180.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v125, v131, v51
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v51.l, v15.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v127, v137, v50
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v50.l, v20.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v0.l, v176.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v129, v135, v49
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e32 v49.l, v18.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v137, v235, 16, 1
	v_bfe_u32 v157, v231, 16, 1
	v_bfe_u32 v131, v241, 16, 1
	v_bfe_u32 v135, v237, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[49:56], v[90:97], v[41:48]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v137, v235, v137, 0x7fff
	v_add3_u32 v157, v231, v157, 0x7fff
	v_add3_u32 v131, v241, v131, 0x7fff
	v_add3_u32 v135, v237, v135, 0x7fff
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[182:189], v[110:117], v[41:48]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v182, v227, 16, 1
	v_cndmask_b16 v186.h, 0x7fff, v137.h, s20
	v_cndmask_b16 v187.h, 0x7fff, v157.h, s22
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v186.l, v176.l
	v_mov_b16_e64 v187.l, v176.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v188, v227, v182, 0x7fff
	v_bfe_u32 v182, v225, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v212.l, v176.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v1, v253, 16, 1
	v_bfe_u32 v2, v251, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v253, v253
	v_add3_u32 v214, v225, v182, 0x7fff
	v_bfe_u32 v182, v223, 16, 1
	v_add3_u32 v1, v253, v1, 0x7fff
	v_add3_u32 v2, v251, v2, 0x7fff
	v_cmp_o_f32_e64 s3, v251, v251
	v_cndmask_b16 v185.h, 0x7fff, v133.h, s18
	v_add3_u32 v189, v223, v182, 0x7fff
	scratch_load_b128 v[222:225], off, off offset:32 ; 16-byte Folded Reload
	v_bfe_u32 v182, v221, 16, 1
	v_cndmask_b16 v214.h, 0x7fff, v214.h, s25
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v214.l, v176.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v5, v249, 16, 1
	v_bfe_u32 v8, v247, 16, 1
	v_add3_u32 v216, v221, v182, 0x7fff
	v_bfe_u32 v182, v219, 16, 1
	v_bfe_u32 v10, v245, 16, 1
	v_bfe_u32 v155, v233, 16, 1
	v_bfe_u32 v159, v229, 16, 1
	v_add3_u32 v5, v249, v5, 0x7fff
	v_add3_u32 v190, v219, v182, 0x7fff
	v_bfe_u32 v182, v217, 16, 1
	v_cndmask_b16 v219.h, 0x7fff, v135.h, s19
	v_cmp_o_f32_e64 s12, v249, v249
	v_add3_u32 v8, v247, v8, 0x7fff
	v_cmp_o_f32_e64 s14, v247, v247
	v_add3_u32 v218, v217, v182, 0x7fff
	v_bfe_u32 v182, v215, 16, 1
	v_cndmask_b16 v217.h, 0x7fff, v131.h, s17
	v_add3_u32 v10, v245, v10, 0x7fff
	v_cmp_o_f32_e64 s15, v245, v245
	v_add3_u32 v155, v233, v155, 0x7fff
	v_add3_u32 v192, v215, v182, 0x7fff
	v_bfe_u32 v182, v213, 16, 1
	v_add3_u32 v159, v229, v159, 0x7fff
	v_cndmask_b16 v183.h, 0x7fff, v8.h, s14
	v_cndmask_b16 v184.h, 0x7fff, v16.h, s16
	v_cndmask_b16 v188.h, 0x7fff, v188.h, s24
	v_add3_u32 v215, v213, v182, 0x7fff
	v_bfe_u32 v182, v211, 16, 1
	v_cndmask_b16 v189.h, 0x7fff, v189.h, s26
	v_cndmask_b16 v220.h, 0x7fff, v155.h, s21
	v_cndmask_b16 v221.h, 0x7fff, v159.h, s23
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v183.l, v176.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v194, v211, v182, 0x7fff
	v_bfe_u32 v182, v209, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v184.l, v176.l
	v_mov_b16_e64 v185.l, v176.l
	v_mov_b16_e64 v188.l, v176.l
	v_mov_b16_e64 v189.l, v176.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v211, v209, v182, 0x7fff
	v_bfe_u32 v182, v207, 16, 1
	v_cndmask_b16 v190.h, 0x7fff, v190.h, s28
	v_cndmask_b16 v157.h, 0x7fff, v216.h, s27
	v_cndmask_b16 v159.h, 0x7fff, v218.h, s29
	v_cndmask_b16 v137.h, 0x7fff, v215.h, s31
	v_add3_u32 v196, v207, v182, 0x7fff
	v_bfe_u32 v182, v205, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v196.l, v176.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v155.h, 0x7fff, v211.h, s34
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v190.l, v176.l
	v_mov_b16_e64 v192.l, v176.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v207, v205, v182, 0x7fff
	v_bfe_u32 v182, v203, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v149, v149, v185
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v185.l, v217.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v194.l, v176.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v133.h, 0x7fff, v207.h, s36
	v_add3_u32 v205, v203, v182, 0x7fff
	v_bfe_u32 v182, v201, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v217.l, v176.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v153, v153, v183
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v220.l, v176.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v107, v107, v190 :: v_dual_sub_f32 v36, v124, v36
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v203, v201, v182, 0x7fff
	v_bfe_u32 v182, v199, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v190.l, v157.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v154, v0
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v155.l, v176.l
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v135.h, 0x7fff, v203.h, s38
	v_add3_u32 v201, v199, v182, 0x7fff
	v_bfe_u32 v182, v197, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v201.l, v176.l
	v_mov_b16_e64 v131.l, v176.l
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v204, v204
	v_cmp_o_f32_e64 s16, v167, v167
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v199, v197, v182, 0x7fff
	v_bfe_u32 v182, v195, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v205.l, v176.l
	v_mov_b16_e64 v219.l, v176.l
	v_mov_b16_e64 v221.l, v176.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v131.h, 0x7fff, v199.h, s40
	v_add3_u32 v197, v195, v182, 0x7fff
	v_bfe_u32 v182, v193, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v197.l, v176.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v195.h, 0x7fff, v201.h, s39
	v_cndmask_b16 v201.h, 0x7fff, v1.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v147, v147, v184
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v209, v193, v182, 0x7fff
	v_bfe_u32 v182, v191, 16, 1
	v_cndmask_b16 v193.h, 0x7fff, v196.h, s35
	v_cndmask_b16 v196.h, 0x7fff, v197.h, s41
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v193.l, v176.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v176.h, 0x7fff, v209.h, s42
	v_add3_u32 v213, v191, v182, 0x7fff
	v_cndmask_b16 v182.h, 0x7fff, v2.h, s3
	v_cndmask_b16 v191.h, 0x7fff, v192.h, s30
	v_cndmask_b16 v192.h, 0x7fff, v194.h, s33
	v_cndmask_b16 v194.h, 0x7fff, v205.h, s37
	v_cndmask_b16 v197.h, 0x7fff, v213.h, s43
	v_cndmask_b16 v205.h, 0x7fff, v5.h, s12
	v_cndmask_b16 v213.h, 0x7fff, v10.h, s15
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v182.l, v176.l
	v_mov_b16_e64 v191.l, v176.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v121, v121, v189 :: v_dual_sub_f32 v16, v171, v192
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v189.l, v214.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v119, v119, v188 :: v_dual_sub_f32 v10, v173, v193
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v188.l, v221.h
	v_mov_b16_e64 v184.l, v213.h
	v_mov_b16_e64 v183.l, v205.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v195.l, v176.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v193.l, v155.h
	v_mov_b16_e64 v192.l, v137.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v109, v109, v191 :: v_dual_sub_f32 v34, v122, v34
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v191.l, v159.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cmp_o_f32_e64 s3, v208, v208
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v213.l, v176.l
	v_mov_b16_e64 v157.l, v176.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v15, v130, v15
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v137.l, v176.l
	v_mov_b16_e64 v159.l, v176.l
	v_mov_b16_e64 v135.l, v176.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	s_waitcnt vmcnt(0)
	v_sub_f32_e32 v199, v225, v187
	v_dual_sub_f32 v203, v223, v186 :: v_dual_mov_b32 v226, v222
	v_mov_b32_e32 v228, v224
	scratch_load_b128 v[222:225], off, off offset:16 ; 16-byte Folded Reload
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v187.l, v220.h
	v_mov_b16_e64 v186.l, v219.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v151, v151, v182
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v182.l, v201.h
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[182:189], v[98:105], v[25:32]
	.loc	1 732 35                        ; attention_backward.py:732:35
	s_waitcnt vmcnt(0)
	v_dual_sub_f32 v1, v225, v197 :: v_dual_sub_f32 v2, v223, v196
	v_mov_b32_e32 v207, v222
	v_mov_b32_e32 v209, v224
	scratch_load_b128 v[222:225], off, off  ; 16-byte Folded Reload
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v197.l, v176.h
	v_mov_b16_e64 v196.l, v131.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v13, v156, v13
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s12, v13, v13
	.loc	1 732 35                        ; attention_backward.py:732:35
	s_waitcnt vmcnt(0)
	v_sub_f32_e32 v5, v225, v195
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v195.l, v135.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v8, v223, v194
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v194.l, v133.h
	v_mov_b32_e32 v218, v224
	v_mov_b32_e32 v216, v222
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[190:197], v[90:97], v[25:32]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[25:32], v[182:189], v[110:117], v[25:32]
	ds_load_b128 v[110:113], v3
	ds_load_b128 v[114:117], v179
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[49:56], v[110:117], v[41:48]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v49, v166, v65
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v50, v0, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v52, v168, v198
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v51, v13, 16, 1
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[25:32], v[190:197], v[110:117], v[25:32]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v65, v49, 16, 1
	v_add3_u32 v50, v0, v50, 0x7fff
	v_bfe_u32 v0, v208, 16, 1
	v_cmp_o_f32_e64 s15, v49, v49
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v53, v162, v202
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v65, v49, v65, 0x7fff
	v_bfe_u32 v49, v167, 16, 1
	v_add3_u32 v0, v208, v0, 0x7fff
	v_add3_u32 v51, v13, v51, 0x7fff
	v_bfe_u32 v13, v204, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v54, v164, v206
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v110, v167, v49, 0x7fff
	v_cndmask_b16 v49.h, 0x7fff, v0.h, s3
	v_bfe_u32 v0, v52, 16, 1
	v_add3_u32 v13, v204, v13, 0x7fff
	v_cndmask_b16 v49.l, 0x7fff, v50.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	v_cndmask_b16 v51.l, 0x7fff, v65.h, s15
	v_add3_u32 v0, v52, v0, 0x7fff
	v_bfe_u32 v52, v53, 16, 1
	v_cndmask_b16 v50.h, 0x7fff, v13.h, s14
	v_bfe_u32 v13, v169, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v55, v158, v210 :: v_dual_sub_f32 v56, v160, v212
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v65, v53, v52, 0x7fff
	v_bfe_u32 v52, v163, 16, 1
	v_cndmask_b16 v50.l, 0x7fff, v51.h, s12
	v_add3_u32 v13, v169, v13, 0x7fff
	v_cmp_o_f32_e64 s3, v169, v169
	v_cmp_o_f32_e64 s12, v53, v53
	v_add3_u32 v53, v163, v52, 0x7fff
	v_bfe_u32 v52, v54, 16, 1
	v_cndmask_b16 v51.h, 0x7fff, v110.h, s16
	v_cmp_o_f32_e64 s14, v163, v163
	v_cndmask_b16 v53.l, 0x7fff, v65.h, s12
	v_bfe_u32 v65, v56, 16, 1
	v_add3_u32 v110, v54, v52, 0x7fff
	v_cndmask_b16 v52.h, 0x7fff, v13.h, s3
	v_bfe_u32 v13, v55, 16, 1
	v_cmp_o_f32_e64 s15, v54, v54
	v_cndmask_b16 v52.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v53.h, 0x7fff, v53.h, s14
	v_bfe_u32 v0, v165, 16, 1
	v_add3_u32 v13, v55, v13, 0x7fff
	v_cmp_o_f32_e64 s3, v55, v55
	v_bfe_u32 v55, v200, 16, 1
	v_add3_u32 v65, v56, v65, 0x7fff
	v_cmp_o_f32_e64 s14, v56, v56
	v_bfe_u32 v56, v161, 16, 1
	v_cndmask_b16 v54.l, 0x7fff, v110.h, s15
	v_add3_u32 v0, v165, v0, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v165, v165
	v_add3_u32 v55, v200, v55, 0x7fff
	v_cmp_o_f32_e64 s12, v200, v200
	v_add3_u32 v56, v161, v56, 0x7fff
	v_cmp_o_f32_e64 s15, v161, v161
	v_cndmask_b16 v54.h, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v55.l, 0x7fff, v13.h, s3
	v_cndmask_b16 v55.h, 0x7fff, v55.h, s12
	v_cndmask_b16 v56.l, 0x7fff, v65.h, s14
	v_cndmask_b16 v56.h, 0x7fff, v56.h, s15
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v150, v201
	v_sub_f32_e32 v13, v152, v205
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s16, v147, v147
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[49:56], v[98:105], v[41:48]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v49, v146, v213
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v50, v0, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v54, v228, v220
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v52, v148, v217
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v65, v49, 16, 1
	v_add3_u32 v50, v0, v50, 0x7fff
	v_bfe_u32 v0, v151, 16, 1
	v_cmp_o_f32_e64 s3, v151, v151
	v_bfe_u32 v51, v13, 16, 1
	v_add3_u32 v65, v49, v65, 0x7fff
	v_cmp_o_f32_e64 s15, v49, v49
	v_add3_u32 v0, v151, v0, 0x7fff
	v_bfe_u32 v49, v147, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v53, v226, v219
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v51, v13, v51, 0x7fff
	v_cmp_o_f32_e64 s12, v13, v13
	v_bfe_u32 v13, v153, 16, 1
	v_add3_u32 v110, v147, v49, 0x7fff
	v_cndmask_b16 v49.h, 0x7fff, v0.h, s3
	v_bfe_u32 v0, v52, 16, 1
	v_cmp_o_f32_e64 s14, v153, v153
	v_add3_u32 v13, v153, v13, 0x7fff
	v_cndmask_b16 v49.l, 0x7fff, v50.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	v_add3_u32 v0, v52, v0, 0x7fff
	v_bfe_u32 v52, v53, 16, 1
	v_cndmask_b16 v50.h, 0x7fff, v13.h, s14
	v_cndmask_b16 v51.l, 0x7fff, v65.h, s15
	v_bfe_u32 v13, v149, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v55, v118, v221
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v65, v53, v52, 0x7fff
	v_bfe_u32 v52, v203, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v56, v120, v214
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v50.l, 0x7fff, v51.h, s12
	v_add3_u32 v13, v149, v13, 0x7fff
	v_cmp_o_f32_e64 s3, v149, v149
	v_cmp_o_f32_e64 s12, v53, v53
	v_add3_u32 v53, v203, v52, 0x7fff
	v_bfe_u32 v52, v54, 16, 1
	v_cndmask_b16 v51.h, 0x7fff, v110.h, s16
	v_cmp_o_f32_e64 s14, v203, v203
	v_cndmask_b16 v53.l, 0x7fff, v65.h, s12
	v_bfe_u32 v65, v56, 16, 1
	v_add3_u32 v110, v54, v52, 0x7fff
	v_cndmask_b16 v52.h, 0x7fff, v13.h, s3
	v_bfe_u32 v13, v55, 16, 1
	v_cmp_o_f32_e64 s15, v54, v54
	v_cndmask_b16 v52.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v53.h, 0x7fff, v53.h, s14
	v_bfe_u32 v0, v199, 16, 1
	v_add3_u32 v13, v55, v13, 0x7fff
	v_cmp_o_f32_e64 s3, v55, v55
	v_bfe_u32 v55, v119, 16, 1
	v_add3_u32 v65, v56, v65, 0x7fff
	v_cmp_o_f32_e64 s14, v56, v56
	v_bfe_u32 v56, v121, 16, 1
	v_cndmask_b16 v54.l, 0x7fff, v110.h, s15
	v_add3_u32 v0, v199, v0, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v199, v199
	v_add3_u32 v55, v119, v55, 0x7fff
	v_cmp_o_f32_e64 s12, v119, v119
	v_add3_u32 v56, v121, v56, 0x7fff
	v_cmp_o_f32_e64 s15, v121, v121
	v_cndmask_b16 v54.h, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v55.l, 0x7fff, v13.h, s3
	v_cndmask_b16 v55.h, 0x7fff, v55.h, s12
	v_cndmask_b16 v56.l, 0x7fff, v65.h, s14
	v_cndmask_b16 v56.h, 0x7fff, v56.h, s15
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v134, v18
	v_sub_f32_e32 v18, v132, v180
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v129, v129
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v13, v136, v20
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[25:32], v[49:56], v[98:105], v[25:32]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v49, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_bfe_u32 v51, v15, 16, 1
	v_cmp_o_f32_e64 s14, v127, v127
	v_cmp_o_f32_e64 s15, v15, v15
	v_add3_u32 v49, v0, v49, 0x7fff
	v_bfe_u32 v0, v129, 16, 1
	v_add3_u32 v51, v15, v51, 0x7fff
	v_bfe_u32 v15, v125, 16, 1
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v20, v126, v37
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v49.l, 0x7fff, v49.h, vcc_lo
	v_add3_u32 v0, v129, v0, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_add3_u32 v15, v125, v15, 0x7fff
	v_cmp_o_f32_e64 s16, v125, v125
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v37, v128, v175
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v49.h, 0x7fff, v0.h, s3
	v_bfe_u32 v0, v18, 16, 1
	v_cndmask_b16 v51.l, 0x7fff, v51.h, s15
	v_cndmask_b16 v51.h, 0x7fff, v15.h, s16
	v_cmp_o_f32_e64 s3, v123, v123
	v_bfe_u32 v15, v20, 16, 1
	v_add3_u32 v0, v18, v0, 0x7fff
	v_bfe_u32 v18, v17, 16, 1
	v_cmp_o_f32_e64 s15, v37, v37
	v_cmp_o_f32_e64 s16, v16, v16
	v_add3_u32 v15, v20, v15, 0x7fff
	v_cndmask_b16 v52.l, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v21, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_add3_u32 v18, v17, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v21, v0, 0x7fff
	v_cndmask_b16 v54.h, 0x7fff, v0.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v106, v157
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v50, v13, 16, 1
	v_cmp_o_f32_e64 s12, v13, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_bfe_u32 v21, v0, 16, 1
	v_add3_u32 v50, v13, v50, 0x7fff
	v_bfe_u32 v13, v127, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v21, v0, v21, 0x7fff
	v_cndmask_b16 v50.l, 0x7fff, v50.h, s12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v13, v127, v13, 0x7fff
	v_cmp_o_f32_e64 s12, v20, v20
	v_bfe_u32 v0, v107, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v20, v209, v176
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v50.h, 0x7fff, v13.h, s14
	v_bfe_u32 v13, v123, 16, 1
	v_cmp_o_f32_e64 s14, v17, v17
	v_bfe_u32 v17, v37, 16, 1
	v_cndmask_b16 v53.l, 0x7fff, v15.h, s12
	v_bfe_u32 v15, v14, 16, 1
	v_add3_u32 v13, v123, v13, 0x7fff
	v_cmp_o_f32_e64 s12, v14, v14
	v_add3_u32 v17, v37, v17, 0x7fff
	v_cndmask_b16 v53.h, 0x7fff, v18.h, s14
	v_add3_u32 v15, v14, v15, 0x7fff
	v_cndmask_b16 v52.h, 0x7fff, v13.h, s3
	v_bfe_u32 v13, v34, 16, 1
	v_cmp_o_f32_e64 s3, v34, v34
	v_cndmask_b16 v54.l, 0x7fff, v17.h, s15
	v_bfe_u32 v14, v36, 16, 1
	v_bfe_u32 v17, v9, 16, 1
	v_add3_u32 v13, v34, v13, 0x7fff
	v_cmp_o_f32_e64 s14, v36, v36
	v_cmp_o_f32_e64 s15, v9, v9
	v_add3_u32 v14, v36, v14, 0x7fff
	v_add3_u32 v17, v9, v17, 0x7fff
	v_cndmask_b16 v55.l, 0x7fff, v13.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v13, v170, v137
	v_sub_f32_e32 v9, v108, v159
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v55.h, 0x7fff, v15.h, s12
	v_cndmask_b16 v56.h, 0x7fff, v17.h, s15
	v_cndmask_b16 v56.l, 0x7fff, v14.h, s14
	v_bfe_u32 v36, v13, 16, 1
	v_bfe_u32 v34, v9, 16, 1
	v_cmp_o_f32_e64 s15, v13, v13
	v_cmp_o_f32_e64 s12, v9, v9
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[49:56], v[90:97], v[41:48]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v36, v13, v36, 0x7fff
	v_bfe_u32 v13, v16, 16, 1
	v_add3_u32 v34, v9, v34, 0x7fff
	v_bfe_u32 v9, v109, 16, 1
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v14, v172, v155
	v_sub_f32_e32 v17, v218, v135
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v16, v13, 0x7fff
	v_add3_u32 v0, v107, v0, 0x7fff
	v_cmp_o_f32_e64 s3, v107, v107
	v_add3_u32 v9, v109, v9, 0x7fff
	v_cmp_o_f32_e64 s14, v109, v109
	v_cndmask_b16 v51.h, 0x7fff, v13.h, s16
	v_bfe_u32 v13, v8, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v15, v216, v133
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v49.h, 0x7fff, v0.h, s3
	v_cndmask_b16 v50.h, 0x7fff, v9.h, s14
	v_bfe_u32 v0, v14, 16, 1
	v_bfe_u32 v9, v10, 16, 1
	v_add3_u32 v13, v8, v13, 0x7fff
	v_cmp_o_f32_e64 s14, v8, v8
	v_bfe_u32 v8, v17, 16, 1
	v_cndmask_b16 v49.l, 0x7fff, v21.h, vcc_lo
	v_cndmask_b16 v51.l, 0x7fff, v36.h, s15
	v_add3_u32 v0, v14, v0, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_add3_u32 v9, v10, v9, 0x7fff
	v_cmp_o_f32_e64 s3, v10, v10
	v_bfe_u32 v10, v15, 16, 1
	v_add3_u32 v8, v17, v8, 0x7fff
	v_cmp_o_f32_e64 s15, v17, v17
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v207, v131
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v50.l, 0x7fff, v34.h, s12
	v_add3_u32 v10, v15, v10, 0x7fff
	v_cmp_o_f32_e64 s12, v15, v15
	v_cndmask_b16 v52.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v54.l, 0x7fff, v8.h, s15
	v_bfe_u32 v0, v5, 16, 1
	v_bfe_u32 v8, v2, 16, 1
	v_cndmask_b16 v52.h, 0x7fff, v9.h, s3
	v_cndmask_b16 v53.l, 0x7fff, v10.h, s12
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_add3_u32 v0, v5, v0, 0x7fff
	v_bfe_u32 v5, v18, 16, 1
	v_add3_u32 v8, v2, v8, 0x7fff
	v_cmp_o_f32_e64 s12, v2, v2
	v_bfe_u32 v2, v20, 16, 1
	v_bfe_u32 v9, v1, 16, 1
	v_cndmask_b16 v53.h, 0x7fff, v13.h, s14
	v_add3_u32 v5, v18, v5, 0x7fff
	v_cmp_o_f32_e64 s3, v18, v18
	v_add3_u32 v2, v20, v2, 0x7fff
	v_cmp_o_f32_e64 s14, v20, v20
	v_add3_u32 v9, v1, v9, 0x7fff
	v_cmp_o_f32_e64 s15, v1, v1
	v_cndmask_b16 v54.h, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v55.l, 0x7fff, v5.h, s3
	v_cndmask_b16 v55.h, 0x7fff, v8.h, s12
	v_cndmask_b16 v56.l, 0x7fff, v2.h, s14
	v_cndmask_b16 v56.h, 0x7fff, v9.h, s15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[25:32], v[49:56], v[90:97], v[25:32]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_clause 0x7                            ; 36-byte Folded Reload
	scratch_load_b32 v5, off, off offset:48
	scratch_load_b32 v8, off, off offset:52
	scratch_load_b32 v9, off, off offset:56
	scratch_load_b32 v10, off, off offset:60
	scratch_load_b32 v13, off, off offset:64
	scratch_load_b32 v14, off, off offset:68
	scratch_load_b32 v15, off, off offset:72
	scratch_load_b64 v[52:53], off, off offset:88
	s_add_i32 s37, s90, s89
	s_clause 0x2                            ; 16-byte Folded Reload
	scratch_load_b32 v17, off, off offset:676
	scratch_load_b32 v20, off, off offset:744
	scratch_load_b64 v[53:54], off, off offset:100
	s_mul_i32 s27, s37, s76
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v183, v181
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_mov_b32 s70, s66
	s_mov_b32 s71, s67
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v34, off, off offset:752
	scratch_load_b64 v[54:55], off, off offset:108
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v182, v181
	v_dual_mov_b32 v184, v181 :: v_dual_mov_b32 v37, v24
	v_mov_b32_e32 v186, v181
	v_mov_b32_e32 v188, v181
	v_mov_b32_e32 v185, v181
	v_mov_b32_e32 v187, v181
	scratch_load_b64 v[65:66], off, off offset:712 ; 8-byte Folded Reload
	v_dual_mov_b32 v73, v181 :: v_dual_mov_b32 v74, v182
	v_dual_mov_b32 v76, v184 :: v_dual_mov_b32 v75, v183
	v_mov_b32_e32 v78, v186
	v_dual_mov_b32 v80, v188 :: v_dual_mov_b32 v77, v185
	v_mov_b32_e32 v79, v187
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(13)
	v_or_b32_e32 v0, s90, v5
	s_waitcnt vmcnt(12)
	v_or_b32_e32 v1, s90, v8
	s_waitcnt vmcnt(11)
	v_or_b32_e32 v2, s90, v9
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v5, s37, v5, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s46, v0
	v_cmp_gt_i32_e64 s3, s46, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(10)
	v_or_b32_e32 v1, s90, v10
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v0, s37, v8, 1
	v_add_lshl_u32 v8, s37, v9, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s12, s46, v2
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(9)
	v_or_b32_e32 v2, s90, v13
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v9, s37, v10, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s14, s46, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(8)
	v_or_b32_e32 v1, s90, v14
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v10, s37, v13, 1
	v_add_lshl_u32 v13, s37, v14, 1
	scratch_load_b32 v14, off, off offset:76 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v49, 0x80000000, v5, vcc_lo
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s16, s46, v1
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b32 v5, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v50, 0x80000000, v0, s3
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b32 v0, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v51, 0x80000000, v8, s12
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v8, s27, v52
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v52, 0x80000000, v9, s14
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b32 v9, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s15, s46, v2
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v2, s90, v15
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v15, s37, v15, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s17, s46, v2
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(9)
	v_or_b32_e32 v2, s90, v17
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v17, s37, v17, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s19, s46, v2
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(8)
	v_or_b32_e32 v2, s90, v20
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v20, s37, v20, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s21, s46, v2
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(6)
	v_or_b32_e32 v2, s90, v34
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v34, s37, v34, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s23, s46, v2
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v2, s90, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v34, 0x80000000, v34, s23
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s25, s46, v2
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v1, s90, v14
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v16, s37, v14, 1
	scratch_load_b32 v14, off, off offset:680 ; 4-byte Folded Reload
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v5, s27, v5
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s18, s46, v1
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s27, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v9, s27, v9
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v16, 0x80000000, v16, s18
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, s90, v14
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v18, s37, v14, 1
	scratch_load_b32 v14, off, off offset:748 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s20, s46, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v18, 0x80000000, v18, s20
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, s90, v14
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v21, s37, v14, 1
	v_mov_b32_e32 v14, v33
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s22, s46, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s90, v14
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v36, s37, v14, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s24, s46, v1
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v1, s37, v37, 1
	v_mov_b32_e32 v37, v35
	v_cndmask_b32_e64 v36, 0x80000000, v36, s24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s25
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v14, s90, v37
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v2, s37, v37, 1
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_add_nc_u32_e32 v37, s27, v177
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s26, s46, v14
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v14, 0x80000000, v37, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s3
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_add_nc_u32_e32 v37, s27, v53
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s12
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v53, 0x80000000, v13, s16
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s14
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s16
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v13, 0x80000000, v37, vcc_lo
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_add_nc_u32_e32 v37, s27, v54
	v_lshl_add_u32 v54, s76, 4, v177
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_clause 0x5
	buffer_load_u8 v14, v14, s[64:67], 0 offen
	buffer_load_u8 v176, v5, s[64:67], 0 offen
	buffer_load_u8 v90, v0, s[64:67], 0 offen
	buffer_load_u8 v89, v8, s[64:67], 0 offen
	buffer_load_u8 v180, v9, s[64:67], 0 offen
	buffer_load_u8 v5, v13, s[64:67], 0 offen
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s17
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v8, 0x80000000, v37, vcc_lo
	v_add_nc_u32_e32 v0, s27, v54
	scratch_load_b64 v[54:55], off, off offset:688 ; 8-byte Folded Reload
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s19
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s20
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s27, v54
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[54:55], off, off offset:696
	scratch_load_b64 v[55:56], off, off offset:704
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v13, s27, v54
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v54, 0x80000000, v20, s21
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v20, s27, v55
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b64 v[55:56], off, off offset:116 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v56, s27, v65
	scratch_load_b64 v[65:66], off, off offset:720 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s21
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v37, 0x80000000, v13, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s22
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s18
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_add_nc_u32_e32 v13, s27, v55
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v55, 0x80000000, v13, vcc_lo
	s_clause 0x3
	buffer_load_u8 v0, v0, s[64:67], 0 offen
	buffer_load_u8 v13, v9, s[64:67], 0 offen
	buffer_load_u8 v102, v37, s[64:67], 0 offen
	buffer_load_u8 v101, v20, s[64:67], 0 offen
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s27, v65
	scratch_load_b64 v[65:66], off, off offset:728 ; 8-byte Folded Reload
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s23
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v20, 0x80000000, v56, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s24
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s27, v65
	scratch_load_b64 v[65:66], off, off offset:736 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s2, s26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v56, s27, v65
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v65, 0x80000000, v2, s26
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v2, 0x80000000, v56, vcc_lo
	s_clause 0x5
	buffer_load_u8 v100, v20, s[64:67], 0 offen
	buffer_load_u8 v98, v9, s[64:67], 0 offen
	buffer_load_u8 v9, v8, s[64:67], 0 offen
	buffer_load_u8 v20, v55, s[64:67], 0 offen
	buffer_load_u8 v96, v37, s[64:67], 0 offen
	buffer_load_u8 v95, v2, s[64:67], 0 offen
	v_mov_b32_e32 v8, v22
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_and_not1_b32 vcc_lo, exec_lo, s82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 624 25                        ; attention_backward.py:624:25
	v_add_nc_u32_e32 v2, s37, v8
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v55, s90, v8
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v8, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s12, s46, v55
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v56, 0x80000000, v8, s12
	s_clause 0x10
	buffer_load_u16 v175, v16, s[68:71], 0 offen
	buffer_load_u16 v37, v17, s[68:71], 0 offen
	buffer_load_u16 v105, v18, s[68:71], 0 offen
	buffer_load_u16 v104, v54, s[68:71], 0 offen
	buffer_load_u16 v103, v21, s[68:71], 0 offen
	buffer_load_u16 v99, v34, s[68:71], 0 offen
	buffer_load_u16 v97, v36, s[68:71], 0 offen
	buffer_load_u16 v94, v1, s[68:71], 0 offen
	buffer_load_u16 v93, v65, s[68:71], 0 offen
	buffer_load_u16 v8, v49, s[68:71], 0 offen
	buffer_load_u16 v17, v50, s[68:71], 0 offen
	buffer_load_u16 v92, v51, s[68:71], 0 offen
	buffer_load_u16 v91, v52, s[68:71], 0 offen
	buffer_load_u16 v10, v10, s[68:71], 0 offen
	buffer_load_u16 v36, v53, s[68:71], 0 offen
	buffer_load_u16 v1, v15, s[68:71], 0 offen
	buffer_load_u16 v18, v56, s[68:71], 0 offen
	.loc	1 615 36                        ; attention_backward.py:615:36
	scratch_load_b32 v15, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s36, s4, s12
	s_and_b32 s35, s5, s12
	s_and_b32 s34, s6, s12
	s_and_b32 s33, s7, s12
	s_and_b32 s31, s8, s12
	s_and_b32 s30, s9, s12
	s_and_b32 s29, s10, s12
	s_and_b32 s28, s11, s12
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_store_b8 v178, v14
	ds_store_b8 v178, v176 offset:64
	ds_store_b8 v178, v0 offset:512
	ds_store_b8 v178, v13 offset:576
	ds_store_b8 v254, v90
	ds_store_b8 v254, v89 offset:64
	ds_store_b8 v254, v102 offset:512
	ds_store_b8 v254, v101 offset:576
	ds_store_b8 v38, v180
	ds_store_b8 v38, v5 offset:64
	s_waitcnt vmcnt(23)
	ds_store_b8 v38, v100 offset:512
	s_waitcnt vmcnt(22)
	ds_store_b8 v38, v98 offset:576
	s_waitcnt vmcnt(21)
	ds_store_b8 v19, v9
	s_waitcnt vmcnt(20)
	ds_store_b8 v19, v20 offset:64
	s_waitcnt vmcnt(19)
	ds_store_b8 v19, v96 offset:512
	s_waitcnt vmcnt(18)
	ds_store_b8 v19, v95 offset:576
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v21, off, off offset:344
	scratch_load_b64 v[65:66], off, off offset:124
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v15, 0, v15
	ds_load_b64 v[15:16], v15
	s_waitcnt vmcnt(1)
	ds_load_b64 v[49:50], v21
	scratch_load_b32 v21, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[65:66], v[15:16], v[73:80] neg_lo:[1,1,0]
	scratch_load_b64 v[15:16], off, off offset:132 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt vmcnt(1)
	ds_load_b64 v[51:52], v21
	scratch_load_b32 v21, off, off offset:352 ; 4-byte Folded Reload
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[15:16], v[49:50], v[73:80] neg_lo:[1,1,0]
	scratch_load_b64 v[49:50], off, off offset:140 ; 8-byte Folded Reload
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v15, s51, v55
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt vmcnt(1)
	ds_load_b64 v[53:54], v21
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[49:50], v[51:52], v[73:80] neg_lo:[1,1,0]
	scratch_load_b64 v[49:50], off, off offset:148 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[49:50], v[53:54], v[73:80] neg_lo:[1,1,0]
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_or_b32_e32 v16, 2, v174
	v_cmp_le_i32_e32 vcc_lo, v174, v15
	s_and_not1_b32 s21, s36, exec_lo
	s_and_not1_b32 s22, s35, exec_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_le_i32_e64 s3, v16, v15
	v_or_b32_e32 v16, 4, v174
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s20, s36, vcc_lo
	s_and_b32 s20, s20, exec_lo
	s_and_b32 s3, s35, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s14, v16, v15
	v_or_b32_e32 v16, 6, v174
	s_and_b32 s3, s3, exec_lo
	s_or_b32 s36, s21, s20
	s_or_b32 s35, s22, s3
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s14, s34, s14
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s15, v16, v15
	v_or_b32_e32 v16, 8, v174
	s_and_not1_b32 s3, s34, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_not1_b32 s20, s33, exec_lo
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s15, s33, s15
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s16, v16, v15
	v_or_b32_e32 v16, 10, v174
	s_and_b32 s15, s15, exec_lo
	s_or_b32 s34, s3, s14
	s_or_b32 s33, s20, s15
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s16, s31, s16
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s17, v16, v15
	v_or_b32_e32 v16, 12, v174
	s_and_not1_b32 s3, s31, exec_lo
	s_and_b32 s14, s16, exec_lo
	s_and_not1_b32 s15, s30, exec_lo
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s17, s30, s17
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s18, v16, v15
	v_or_b32_e32 v16, 14, v174
	s_and_b32 s16, s17, exec_lo
	s_or_b32 s31, s3, s14
	s_or_b32 s30, s15, s16
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s18, s29, s18
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s19, v16, v15
	s_and_not1_b32 s3, s29, exec_lo
	s_and_b32 s14, s18, exec_lo
	s_and_not1_b32 s15, s28, exec_lo
	s_or_b32 s29, s3, s14
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s19, s28, s19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s16, s19, exec_lo
	s_or_b32 s28, s15, s16
.LBB0_10:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 677 17 is_stmt 1              ; attention_backward.py:677:17
	s_and_not1_b32 vcc_lo, exec_lo, s81
	s_cbranch_vccnz .LBB0_7
; %bb.11:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v16, s49, v15
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v15, s50, v15
	v_or_b32_e32 v21, 2, v174
	v_or_b32_e32 v34, 4, v174
	v_or_b32_e32 v49, 6, v174
	v_or_b32_e32 v50, 8, v174
	v_or_b32_e32 v51, 10, v174
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v174, v16
	v_cmp_ge_i32_e64 s3, v21, v16
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s20, v174, v15
	v_cmp_le_i32_e64 s21, v21, v15
	v_or_b32_e32 v52, 12, v174
	v_or_b32_e32 v53, 14, v174
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s14, v34, v16
	v_cmp_ge_i32_e64 s15, v49, v16
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s22, v34, v15
	v_cmp_le_i32_e64 s23, v49, v15
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s16, v50, v16
	v_cmp_ge_i32_e64 s17, v51, v16
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s24, v50, v15
	v_cmp_le_i32_e64 s25, v51, v15
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s20, vcc_lo, s20
	s_and_b32 s3, s3, s21
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s18, v52, v16
	v_cmp_ge_i32_e64 s19, v53, v16
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s26, v52, v15
	v_cmp_le_i32_e64 s27, v53, v15
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s20, s20, s36
	s_and_b32 s3, s3, s35
	s_and_b32 s14, s14, s22
	s_and_b32 s15, s15, s23
	s_and_b32 s14, s14, s34
	s_and_b32 s15, s15, s33
	s_and_b32 s16, s16, s24
	s_and_b32 s17, s17, s25
	s_and_not1_b32 s21, s36, exec_lo
	s_and_b32 s20, s20, exec_lo
	s_and_not1_b32 s22, s35, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s16, s16, s31
	s_and_b32 s17, s17, s30
	s_and_b32 s18, s18, s26
	s_and_b32 s19, s19, s27
	s_or_b32 s36, s21, s20
	s_or_b32 s35, s22, s3
	s_and_not1_b32 s3, s34, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_not1_b32 s20, s33, exec_lo
	s_and_b32 s15, s15, exec_lo
	s_and_b32 s18, s18, s29
	s_and_b32 s19, s19, s28
	s_or_b32 s34, s3, s14
	s_or_b32 s33, s20, s15
	s_and_not1_b32 s3, s31, exec_lo
	s_and_b32 s14, s16, exec_lo
	s_and_not1_b32 s15, s30, exec_lo
	s_and_b32 s16, s17, exec_lo
	s_or_b32 s31, s3, s14
	s_or_b32 s30, s15, s16
	s_and_not1_b32 s3, s29, exec_lo
	s_and_b32 s14, s18, exec_lo
	s_and_not1_b32 s15, s28, exec_lo
	s_and_b32 s16, s19, exec_lo
	s_or_b32 s29, s3, s14
	s_or_b32 s28, s15, s16
	s_branch .LBB0_7
.LBB0_12:                               ; %Flow383
	.loc	1 0 21                          ; attention_backward.py:0:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off offset:760
	scratch_load_b32 v33, off, off offset:764
	v_readlane_b32 s40, v255, 0
	v_readlane_b32 s41, v255, 1
	v_readlane_b32 s42, v255, 2
	v_readlane_b32 s43, v255, 3
	s_branch .LBB0_14
.LBB0_13:
	v_mov_b32_e32 v32, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v31, v32
	v_mov_b32_e32 v30, v32
	v_mov_b32_e32 v29, v32
	v_mov_b32_e32 v28, v32
	v_mov_b32_e32 v27, v32
	s_waitcnt vmcnt(7)
	v_mov_b32_e32 v26, v32
	v_mov_b32_e32 v25, v32
	v_mov_b32_e32 v48, v32
	v_mov_b32_e32 v47, v32
	v_mov_b32_e32 v46, v32
	v_mov_b32_e32 v45, v32
	v_mov_b32_e32 v44, v32
	v_mov_b32_e32 v43, v32
	v_mov_b32_e32 v42, v32
	v_mov_b32_e32 v41, v32
	v_mov_b32_e32 v145, v32
	v_mov_b32_e32 v144, v32
	v_mov_b32_e32 v143, v32
	v_mov_b32_e32 v142, v32
	v_mov_b32_e32 v141, v32
	v_mov_b32_e32 v140, v32
	v_mov_b32_e32 v139, v32
	v_mov_b32_e32 v138, v32
	v_mov_b32_e32 v64, v32
	v_mov_b32_e32 v63, v32
	v_mov_b32_e32 v62, v32
	v_mov_b32_e32 v61, v32
	v_mov_b32_e32 v60, v32
	v_mov_b32_e32 v59, v32
	v_mov_b32_e32 v58, v32
	v_mov_b32_e32 v57, v32
.LBB0_14:                               ; %._crit_edge88
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	scratch_load_b32 v1, off, off offset:756 ; 4-byte Folded Reload
	.loc	1 753 13                        ; attention_backward.py:753:13
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v16, s53, v39
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s79, v39
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s37, s41, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v16, v16, s48
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s47, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_mov_b32 s36, s40
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v21, s77, v39
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, v1, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v15, 2, v1
	v_or_b32_e32 v14, 4, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s16, s48, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v17, v16, v1, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v13, 6, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s17, s48, v15
	v_cmp_gt_i32_e64 s18, s48, v14
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v18, v16, v15, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s16
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v19, v16, v14, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s17
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v12, 8, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s18
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v11, 10, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s19, s48, v13
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v10, 12, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s20, s48, v12
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v57, v17, s[36:39], 0 offen
	v_add_lshl_u32 v17, v16, v13, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s21, s48, v11
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v58, v18, s[36:39], 0 offen
	buffer_store_b32 v59, v19, s[36:39], 0 offen
	v_add_lshl_u32 v18, v16, v12, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s19
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v9, 14, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s22, s48, v10
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v19, v16, v11, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s20
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v8, 32, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v16, v10, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s21
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v7, 34, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s23, s48, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s22
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v6, 36, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s24, s48, v8
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s17
	s_clause 0x1
	buffer_store_b32 v60, v17, s[36:39], 0 offen
	buffer_store_b32 v61, v18, s[36:39], 0 offen
	v_add_lshl_u32 v17, v16, v9, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s25, s48, v7
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v18, v16, v8, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s23
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v5, 38, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s26, s48, v6
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v62, v19, s[36:39], 0 offen
	buffer_store_b32 v63, v20, s[36:39], 0 offen
	v_add_lshl_u32 v19, v16, v7, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s24
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v4, 40, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v16, v6, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s25
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v3, 42, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s27, s48, v5
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s26
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v0, 46, v1
	v_or_b32_e32 v2, 44, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s28, s48, v4
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s17
	s_clause 0x1
	buffer_store_b32 v64, v17, s[36:39], 0 offen
	buffer_store_b32 v138, v18, s[36:39], 0 offen
	v_add_lshl_u32 v17, v16, v5, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s29, s48, v3
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v18, v16, v4, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s27
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s0, s77, v0
	v_cmp_gt_i32_e64 s1, s77, v2
	v_cmp_gt_i32_e64 s2, s77, v3
	v_cmp_gt_i32_e64 s3, s77, v4
	v_cmp_gt_i32_e64 s4, s77, v5
	v_cmp_gt_i32_e64 s5, s77, v6
	v_cmp_gt_i32_e64 s6, s77, v7
	v_cmp_gt_i32_e64 s7, s77, v8
	v_cmp_gt_i32_e64 s8, s77, v9
	v_cmp_gt_i32_e64 s9, s77, v10
	v_cmp_gt_i32_e64 s10, s77, v11
	v_cmp_gt_i32_e64 s11, s77, v12
	v_cmp_gt_i32_e64 s12, s77, v13
	v_cmp_gt_i32_e64 s13, s77, v14
	v_cmp_gt_i32_e64 s14, s77, v15
	v_cmp_gt_i32_e64 s15, s77, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s30, s48, v2
	v_cmp_gt_i32_e64 s16, s48, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v139, v19, s[36:39], 0 offen
	buffer_store_b32 v140, v20, s[36:39], 0 offen
	v_add_lshl_u32 v19, v16, v3, 2
	v_add_lshl_u32 v20, v16, v2, 2
	v_add_lshl_u32 v16, v16, v0, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v0, v21, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s28
	s_and_b32 s16, vcc_lo, s16
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s17, vcc_lo, s29
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s15, vcc_lo, s15
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s17
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
	v_add_lshl_u32 v0, v0, s78, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s2, vcc_lo, s2
	s_and_b32 s1, vcc_lo, s1
	s_and_b32 vcc_lo, vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_add_nc_u32 v1, v21, v1
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v15, v21, v15
	v_add_nc_u32_e32 v13, v21, v13
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s17
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v1, v1, s78, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v14, v21, v14
	v_add_nc_u32_e32 v12, v21, v12
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v16, 0x80000000, v16, s16
	s_clause 0x4
	buffer_store_b32 v141, v17, s[36:39], 0 offen
	buffer_store_b32 v142, v18, s[36:39], 0 offen
	buffer_store_b32 v143, v19, s[36:39], 0 offen
	buffer_store_b32 v144, v20, s[36:39], 0 offen
	buffer_store_b32 v145, v16, s[36:39], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s15
	s_and_b32 s37, s43, 0xffff
	s_mov_b32 s36, s42
	v_add_lshl_u32 v15, v15, s78, 2
	v_add_lshl_u32 v14, v14, s78, 2
	buffer_store_b32 v41, v1, s[36:39], 0 offen
	v_add_lshl_u32 v1, v13, s78, 2
	v_add_lshl_u32 v12, v12, s78, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v11, v21, v11
	v_add_nc_u32_e32 v9, v21, v9
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v15, 0x80000000, v15, s14
	v_cndmask_b32_e64 v1, 0x80000000, v1, s12
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v10, v21, v10
	v_add_nc_u32_e32 v8, v21, v8
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v14, 0x80000000, v14, s13
	v_cndmask_b32_e64 v12, 0x80000000, v12, s11
	s_clause 0x1
	buffer_store_b32 v42, v15, s[36:39], 0 offen
	buffer_store_b32 v43, v14, s[36:39], 0 offen
	v_add_lshl_u32 v11, v11, s78, 2
	s_clause 0x1
	buffer_store_b32 v44, v1, s[36:39], 0 offen
	buffer_store_b32 v45, v12, s[36:39], 0 offen
	v_add_lshl_u32 v1, v9, s78, 2
	v_add_lshl_u32 v10, v10, s78, 2
	v_add_lshl_u32 v8, v8, s78, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v7, v21, v7
	v_add_nc_u32_e32 v5, v21, v5
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v11, 0x80000000, v11, s10
	v_cndmask_b32_e64 v1, 0x80000000, v1, s8
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v6, v21, v6
	v_add_nc_u32_e32 v4, v21, v4
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v10, 0x80000000, v10, s9
	v_cndmask_b32_e64 v8, 0x80000000, v8, s7
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v3, v21, v3
	v_add_nc_u32_e32 v2, v21, v2
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_clause 0x1
	buffer_store_b32 v46, v11, s[36:39], 0 offen
	buffer_store_b32 v47, v10, s[36:39], 0 offen
	v_add_lshl_u32 v7, v7, s78, 2
	s_clause 0x1
	buffer_store_b32 v48, v1, s[36:39], 0 offen
	buffer_store_b32 v25, v8, s[36:39], 0 offen
	v_add_lshl_u32 v1, v5, s78, 2
	v_add_lshl_u32 v6, v6, s78, 2
	v_add_lshl_u32 v4, v4, s78, 2
	v_add_lshl_u32 v3, v3, s78, 2
	v_add_lshl_u32 v2, v2, s78, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s6
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	v_cndmask_b32_e64 v6, 0x80000000, v6, s5
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	s_clause 0x6
	buffer_store_b32 v26, v7, s[36:39], 0 offen
	buffer_store_b32 v27, v6, s[36:39], 0 offen
	buffer_store_b32 v28, v1, s[36:39], 0 offen
	buffer_store_b32 v29, v4, s[36:39], 0 offen
	buffer_store_b32 v30, v3, s[36:39], 0 offen
	buffer_store_b32 v31, v2, s[36:39], 0 offen
	buffer_store_b32 v32, v0, s[36:39], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 772
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 772
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 28408
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 772
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 772
    .sgpr_count:     107
    .sgpr_spill_count: 4
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 192
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
