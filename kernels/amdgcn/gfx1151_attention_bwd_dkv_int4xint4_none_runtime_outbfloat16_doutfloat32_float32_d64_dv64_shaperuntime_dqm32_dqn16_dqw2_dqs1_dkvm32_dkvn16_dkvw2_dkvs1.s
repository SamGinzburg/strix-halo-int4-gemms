	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	s_load_b128 s[36:39], s[0:1], 0x8
	s_load_b128 s[24:27], s[0:1], 0x20
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v19, 0, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v2, 2, v9
	v_or_b32_e32 v3, 4, v9
	v_or_b32_e32 v4, 6, v9
	v_or_b32_e32 v5, 8, v9
	v_or_b32_e32 v6, 10, v9
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v2, off offset:28
	scratch_store_b32 off, v3, off offset:32
	scratch_store_b32 off, v4, off offset:36
	v_or_b32_e32 v7, 12, v9
	v_or_b32_e32 v10, 14, v9
	scratch_store_b32 off, v6, off offset:44 ; 4-byte Folded Spill
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_mov_b32 s42, s30
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s48
	s_bitcmp1_b32 s48, 8
	.loc	1 521 24                        ; attention_backward.py:521:24
	s_mul_i32 s79, s3, s47
	s_cselect_b32 s80, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_mov_b32 s43, s31
	s_cselect_b32 s81, -1, 0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_abs_i32 s22, s45
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_abs_i32 s5, s3
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cvt_f32_u32 s4, s22
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s78, s2, 4
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_mov_b32 s40, s26
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v8, s78, v2
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v2, s78, v3
	v_or_b32_e32 v3, s78, v4
	v_or_b32_e32 v4, s78, v5
	.loc	1 514 33 is_stmt 0              ; attention_backward.py:514:33
	v_bfe_u32 v46, v0, 4, 1
	v_and_b32_e32 v55, 15, v0
	.loc	1 522 24 is_stmt 1              ; attention_backward.py:522:24
	v_lshlrev_b32_e32 v56, 1, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v54, 32, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_or_b32_e32 v174, s78, v46
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_readfirstlane_b32 s4, v1
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v1, s78, v9
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v47, 6, v174
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v48, 8, v174
	v_or_b32_e32 v49, 10, v174
	v_or_b32_e32 v50, 12, v174
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cvt_u32_f32 s52, s4
	s_sub_i32 s4, 0, s22
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v51, 14, v174
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_i32 s4, s4, s52
	s_mul_hi_u32 s4, s52, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s52, s52, s4
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_mul_hi_u32 s4, s5, s52
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s4, s22
	s_sub_i32 s5, s5, s6
	s_add_i32 s6, s4, 1
	s_sub_i32 s7, s5, s22
	s_cmp_ge_u32 s5, s22
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s5, s7, s5
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s5, s22
	s_cselect_b32 s21, s6, s4
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_ashr_i32 s34, s44, 31
	s_ashr_i32 s35, s45, 31
	s_abs_i32 s33, s44
	.loc	1 514 23                        ; attention_backward.py:514:23
	s_or_b32 s4, s78, 1
	s_or_b32 s5, s78, 2
	s_or_b32 s6, s78, 3
	s_or_b32 s7, s78, 4
	s_or_b32 s8, s78, 5
	s_or_b32 s9, s78, 6
	s_or_b32 s10, s78, 7
	s_or_b32 s11, s78, 8
	s_or_b32 s13, s78, 9
	s_or_b32 s17, s78, 10
	s_or_b32 s18, s78, 11
	s_or_b32 s19, s78, 12
	s_or_b32 s20, s78, 13
	s_or_b32 s28, s78, 14
	s_or_b32 s29, s78, 15
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cmp_lt_i32 s78, s47
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s4, s47
	v_cmp_gt_i32_e64 s4, s47, v1
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s5, s47
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_and_b32_e32 v1, 31, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s6, s47
	v_cmp_gt_i32_e64 s6, s47, v2
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s7, s47
	v_cmp_gt_i32_e64 s7, s47, v3
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s8, s47
	v_cmp_gt_i32_e64 s8, s47, v4
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[3:4], null, s76, v9, v[1:2]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s9, s47
	v_cmp_gt_i32_e64 s5, s47, v8
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s10, s47
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s11, s47
	v_mov_b32_e32 v2, v3
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s13, s47
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b32 off, v9, off offset:16
	scratch_store_b32 off, v5, off offset:40
	scratch_store_b64 off, v[2:3], off offset:20
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v5, s78, v6
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s17, s47
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v6, s78, v7
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s18, s47
	v_cmp_gt_i32_e64 s9, s47, v5
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v5, s76, 1, v3
	scratch_store_b32 off, v7, off offset:48 ; 4-byte Folded Spill
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v7, s78, v10
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s19, s47
	v_cmp_gt_i32_e64 s10, s47, v6
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s20, s47
	v_cmp_gt_i32_e64 s11, s47, v7
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s28, s47
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v6, s76, 2, v3
	scratch_store_b32 off, v10, off offset:52 ; 4-byte Folded Spill
	v_mad_u64_u32 v[7:8], null, s76, 6, v[3:4]
	v_mad_u64_u32 v[10:11], null, s76, 10, v[3:4]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s29, s47
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[11:12], null, s76, 12, v[3:4]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s19, -1, 0
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_add_i32 s60, s79, s78
	v_lshl_add_u32 v8, s76, 3, v3
	s_mul_i32 s13, s60, s76
	v_mad_u64_u32 v[12:13], null, s76, 14, v[3:4]
	v_dual_mov_b32 v4, v7 :: v_dual_add_nc_u32 v9, s13, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:60
	scratch_store_b32 off, v8, off offset:72
	v_add_nc_u32_e32 v3, s13, v6
	v_mov_b32_e32 v6, v10
	v_add_nc_u32_e32 v2, s13, v5
	scratch_store_b64 off, v[4:5], off offset:64 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v4, s13, v7
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_cmp_gt_i32_e64 s20, s76, v1
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[6:7], off offset:76 ; 8-byte Folded Spill
	v_mov_b32_e32 v7, v11
	scratch_store_b32 off, v5, off offset:56 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v5, s13, v8
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s4, s20
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_add_nc_u32_e32 v6, s13, v10
	scratch_store_b64 off, v[7:8], off offset:84 ; 8-byte Folded Spill
	v_dual_mov_b32 v8, v12 :: v_dual_add_nc_u32 v7, s13, v11
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_and_b32 s29, s37, 0xffff
	s_mov_b32 s28, s36
	v_xor_b32_e32 v11, 0x198, v0
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[8:9], off offset:92 ; 8-byte Folded Spill
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s5, s20
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_add_nc_u32_e32 v8, s13, v12
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s6, s20
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s13, s77, v0
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s7, s20
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v13, 0, v11
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s8, s20
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_mov_b32 s8, s38
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s9, s20
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s10, s20
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_mov_b32 s10, s30
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v7, 0x80000000, v7, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s11, s20
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_mov_b32 s11, s31
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v8, 0x80000000, v8, s4
	s_clause 0x7
	buffer_load_u8 v36, v9, s[28:31], 0 offen
	buffer_load_u8 v9, v2, s[28:31], 0 offen
	buffer_load_u8 v10, v3, s[28:31], 0 offen
	buffer_load_u8 v4, v4, s[28:31], 0 offen
	buffer_load_u8 v5, v5, s[28:31], 0 offen
	buffer_load_u8 v6, v6, s[28:31], 0 offen
	buffer_load_u8 v7, v7, s[28:31], 0 offen
	buffer_load_u8 v8, v8, s[28:31], 0 offen
	.loc	1 542 37                        ; attention_backward.py:542:37
	s_add_i32 s4, s47, 15
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xor_b32_e32 v2, 0x88, v0
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_ashr_i32 s5, s4, 31
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xor_b32_e32 v3, 0x110, v0
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_lshr_b32 s5, s5, 28
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_and_b32 s29, s25, 0xffff
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_add_i32 s4, s4, s5
	.loc	1 541 32                        ; attention_backward.py:541:32
	s_ashr_i32 s5, s78, 1
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_ashr_i32 s4, s4, 4
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v254, 0, v2
	.loc	1 542 35                        ; attention_backward.py:542:35
	s_lshl_b32 s6, s4, 3
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v30, 0, v3
	.loc	1 549 23                        ; attention_backward.py:549:23
	s_cmp_lt_i32 s5, s6
	.loc	1 543 26                        ; attention_backward.py:543:26
	s_mul_i32 s6, s3, s6
	.loc	1 549 23                        ; attention_backward.py:549:23
	s_cselect_b32 s7, -1, 0
	.loc	1 545 17                        ; attention_backward.py:545:17
	s_add_i32 s6, s6, s5
	.loc	1 565 17                        ; attention_backward.py:565:17
	s_mul_i32 s4, s3, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mad_u64_u32 v[2:3], null, s6, s77, v[0:1]
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_bfe_i32 s2, s2, 0x1c0000
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_and_b32 s41, s27, 0xffff
	.loc	1 568 17                        ; attention_backward.py:568:17
	s_add_i32 s2, s4, s2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s4, s57, s13
	.loc	1 568 17                        ; attention_backward.py:568:17
	s_mul_i32 s2, s2, s77
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_and_b32 s9, s39, 0xffff
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_add_lshl_u32 v3, s2, v0, 1
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v11, s77, v2
	.loc	1 549 22                        ; attention_backward.py:549:22
	s_and_b32 s2, s7, s13
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s7, s47, v47
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v12, 0x80000000, v3, s4
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s4, vcc_lo, s13
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v21, s77, v11
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v14, 0x80000000, v3, s4
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s4, s58, s13
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v15, 0x80000000, v3, s4
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s4, s14, s13
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v24, s77, v21
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v16, 0x80000000, v3, s4
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s4, s56, s13
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v17, 0x80000000, v3, s4
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s4, s12, s13
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v27, s77, v24
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v18, 0x80000000, v3, s4
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s4, s55, s13
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v20, 0x80000000, v3, s4
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s4, s15, s13
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v31, s77, v27
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v22, 0x80000000, v3, s4
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s4, s54, s13
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v23, 0x80000000, v3, s4
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s4, s16, s13
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v34, s77, v31
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v25, 0x80000000, v3, s4
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s4, s53, s13
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v26, 0x80000000, v3, s4
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s4, s17, s13
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v35, s77, v34
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v28, 0x80000000, v3, s4
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s4, s23, s13
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v29, 0x80000000, v3, s4
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s4, s18, s13
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v32, 0x80000000, v3, s4
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s4, s59, s13
	.loc	1 587 22                        ; attention_backward.py:587:22
	s_add_i32 s25, s46, 31
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v33, 0x80000000, v3, s4
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s4, s19, s13
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_ashr_i32 s26, s25, 31
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s4, s47, v174
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_lshr_b32 s26, s26, 27
	s_mov_b32 s23, 0
	s_add_i32 s25, s25, s26
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_hi_u32 s2, s33, s52
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_mov_b32 s28, s24
	.loc	1 587 20                        ; attention_backward.py:587:20
	s_and_b32 s82, s25, 0xffffffe0
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_bfe_u32 s24, s48, 0x10008
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt vmcnt(7)
	ds_store_b8 v19, v36
	s_waitcnt vmcnt(6)
	ds_store_b8 v19, v9 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v254, v10
	s_waitcnt vmcnt(4)
	ds_store_b8 v254, v4 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v30, v5
	s_waitcnt vmcnt(2)
	ds_store_b8 v30, v6 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v13, v7
	s_waitcnt vmcnt(0)
	ds_store_b8 v13, v8 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_clause 0xf
	buffer_load_u16 v8, v12, s[40:43], 0 offen
	buffer_load_u16 v9, v14, s[40:43], 0 offen
	buffer_load_u16 v10, v15, s[40:43], 0 offen
	buffer_load_u16 v36, v16, s[40:43], 0 offen
	buffer_load_u16 v37, v17, s[40:43], 0 offen
	buffer_load_u16 v39, v18, s[40:43], 0 offen
	buffer_load_u16 v40, v20, s[40:43], 0 offen
	buffer_load_u16 v22, v22, s[40:43], 0 offen
	buffer_load_u16 v23, v23, s[40:43], 0 offen
	buffer_load_u16 v25, v25, s[40:43], 0 offen
	buffer_load_u16 v26, v26, s[40:43], 0 offen
	buffer_load_u16 v41, v28, s[40:43], 0 offen
	buffer_load_u16 v42, v29, s[40:43], 0 offen
	buffer_load_u16 v43, v32, s[40:43], 0 offen
	buffer_load_u16 v44, v33, s[40:43], 0 offen
	buffer_load_u16 v45, v3, s[40:43], 0 offen
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_clause 0x7
	buffer_load_u8 v12, v2, s[8:11], 0 offen
	buffer_load_u8 v20, v11, s[8:11], 0 offen
	buffer_load_u8 v14, v21, s[8:11], 0 offen
	buffer_load_u8 v15, v24, s[8:11], 0 offen
	buffer_load_u8 v16, v27, s[8:11], 0 offen
	buffer_load_u8 v17, v31, s[8:11], 0 offen
	buffer_load_u8 v18, v34, s[8:11], 0 offen
	buffer_load_u8 v21, v35, s[8:11], 0 offen
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshlrev_b32_e32 v2, 5, v55
	v_and_b32_e32 v3, 24, v56
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v31, 2, v174
	v_or_b32_e32 v35, 4, v174
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_add_lshl_u32 v5, s60, v46, 1
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s8, s47, v48
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_or_b32_e32 v4, v2, v3
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s5, s47, v31
	v_cmp_gt_i32_e64 s6, s47, v35
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v6, 4, v5
	v_add_nc_u32_e32 v7, 8, v5
	v_add_nc_u32_e32 v11, 12, v5
	v_add_nc_u32_e32 v24, 16, v5
	v_add_nc_u32_e32 v32, 20, v5
	v_add_nc_u32_e32 v33, 24, v5
	v_add_nc_u32_e32 v34, 28, v5
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s9, s47, v49
	v_cmp_gt_i32_e64 s10, s47, v50
	v_cmp_gt_i32_e64 s11, s47, v51
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v27, 0, v4
	v_xad_u32 v28, v4, 8, 0
	v_xad_u32 v29, v4, 16, 0
	v_xad_u32 v38, v4, 24, 0
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v4, 0x80000000, v5, s4
	v_cndmask_b32_e64 v5, 0x80000000, v6, s5
	v_cndmask_b32_e64 v6, 0x80000000, v7, s6
	v_cndmask_b32_e64 v7, 0x80000000, v11, s7
	v_cndmask_b32_e64 v31, 0x80000000, v24, s8
	v_cndmask_b32_e64 v32, 0x80000000, v32, s9
	v_cndmask_b32_e64 v33, 0x80000000, v33, s10
	v_cndmask_b32_e64 v34, 0x80000000, v34, s11
	.loc	1 588 9                         ; attention_backward.py:588:9
	scratch_store_b32 off, v46, off offset:756 ; 4-byte Folded Spill
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt vmcnt(23)
	v_mov_b16_e32 v57.h, v8.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v12.h, v9.l
	v_mov_b16_e32 v23.h, v10.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v14.h, v36.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v15.h, v37.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v16.h, v39.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v17.h, v40.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v18.h, v22.l
	v_mov_b16_e32 v35.h, v23.l
	v_mov_b16_e32 v20.h, v25.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v21.h, v26.l
	v_mov_b16_e32 v36.h, v41.l
	v_mov_b16_e32 v37.h, v42.l
	v_mov_b16_e32 v24.h, v43.l
	v_mov_b16_e32 v25.h, v44.l
	v_mov_b16_e32 v26.h, v45.l
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s23, s78, s49
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_add_i32 s25, s50, s51
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s23, s23, s51
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_sub_i32 s25, s78, s25
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s23, s23, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 592 17                        ; attention_backward.py:592:17
	s_min_i32 s23, s46, s23
	.loc	1 590 24                        ; attention_backward.py:590:24
	s_max_i32 s23, s23, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 600 19                        ; attention_backward.py:600:19
	s_add_i32 s23, s23, 31
	.loc	1 600 18 is_stmt 0              ; attention_backward.py:600:18
	s_ashr_i32 s24, s23, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s24, s24, 27
	s_add_i32 s23, s23, s24
	.loc	1 589 24 is_stmt 1              ; attention_backward.py:589:24
	s_max_i32 s24, s25, 0
	.loc	1 600 17                        ; attention_backward.py:600:17
	s_and_b32 s25, s23, 0xffffffe0
	.loc	1 597 45                        ; attention_backward.py:597:45
	s_and_b32 s23, s24, 0x7fffffe0
	.loc	1 598 24                        ; attention_backward.py:598:24
	s_min_i32 s82, s82, s25
.LBB0_2:
	.loc	1 0 24 is_stmt 0                ; attention_backward.py:0:24
	s_clause 0x7
	buffer_load_u16 v11, v4, s[28:31], 0 offen
	buffer_load_u16 v10, v5, s[28:31], 0 offen
	buffer_load_u16 v9, v6, s[28:31], 0 offen
	buffer_load_u16 v8, v7, s[28:31], 0 offen
	buffer_load_u16 v7, v31, s[28:31], 0 offen
	buffer_load_u16 v6, v32, s[28:31], 0 offen
	buffer_load_u16 v5, v33, s[28:31], 0 offen
	buffer_load_u16 v4, v34, s[28:31], 0 offen
	ds_load_b64 v[31:32], v27
	ds_load_b64 v[27:28], v28
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_mul_i32 s25, s2, s22
	s_xor_b32 s24, s34, s35
	s_sub_i32 s25, s33, s25
	s_add_i32 s26, s2, 1
	s_sub_i32 s27, s25, s22
	s_cmp_ge_u32 s25, s22
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v57.l, 0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s2, s26, s2
	s_cselect_b32 s25, s27, s25
	s_add_i32 s26, s2, 1
	s_cmp_ge_u32 s25, s22
	.loc	1 554 72                        ; attention_backward.py:554:72
	s_waitcnt vmcnt(1)
	v_and_b16 v5.h, v20.l, 15
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s2, s26, s2
	.loc	1 554 72                        ; attention_backward.py:554:72
	s_waitcnt vmcnt(0)
	v_and_b16 v4.h, v12.l, 15
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_xor_b32 s2, s2, s24
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v23.l, v57.l
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_sub_i32 s83, s2, s24
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v5.h
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_waitcnt lgkmcnt(1)
	scratch_store_b64 off, v[31:32], off offset:100 ; 8-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[27:28], off offset:108 ; 8-byte Folded Spill
	ds_load_b64 v[27:28], v29
	.loc	1 554 72 is_stmt 1              ; attention_backward.py:554:72
	v_and_b16 v7.h, v15.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v39.l, 4, v20.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v39.h, v57.l
	.loc	1 554 72 is_stmt 1              ; attention_backward.py:554:72
	v_and_b16 v6.h, v14.l, 15
	v_and_b16 v9.h, v17.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v40.l, 4, v14.l
	v_lshrrev_b16 v41.l, 4, v15.l
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v39, 0, v39, s14
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s14, 7, v7.h
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v43.l, 4, v17.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v40.h, v57.l
	.loc	1 554 72 is_stmt 1              ; attention_backward.py:554:72
	v_and_b16 v8.h, v16.l, 15
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v41.h, v57.l
	.loc	1 556 28 is_stmt 0              ; attention_backward.py:556:28
	v_lshrrev_b16 v42.l, 4, v16.l
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v42.h, v57.l
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e64 v40, 0, v40, s12
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s12, 7, v6.h
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v41, 0, v41, s15
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s15, 7, v8.h
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[27:28], off offset:116 ; 8-byte Folded Spill
	ds_load_b64 v[27:28], v38
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_lshrrev_b16 v38.l, 4, v12.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v38.h, v57.l
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e64 v42, 0, v42, s16
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s16, 7, v9.h
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v35.l, v57.l
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v10.h, v18.l, 15
	v_and_b16 v11.h, v21.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v45.l, 4, v21.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v43.h, v57.l
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v37.l, v57.l
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v44.l, 4, v18.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v44.h, v57.l
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v25.l, v57.l
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v43, 0, v43, s17
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s17, 7, v10.h
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v38, 0, v38, vcc_lo
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v4.h
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v44, 0, v44, s18
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s18, 7, v11.h
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[27:28], off offset:124 ; 8-byte Folded Spill
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v27, 15, v20
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v20.l, v57.l
	v_mov_b16_e32 v36.l, v57.l
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v45.h, v57.l
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v24.l, v57.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v47, -16, v27
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v26.l, v57.l
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v45, 0, v45, s19
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_barrier
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v27, v27, v47, s2
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e64 s2, 7, v39
	.loc	1 558 52 is_stmt 0              ; attention_backward.py:558:52
	v_or_b32_e32 v47, -16, v39
	s_clause 0x1
	s_load_b128 s[52:55], s[0:1], 0x50
	s_load_b32 s48, s[0:1], 0x74
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v27, v27
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v22, 15, v12
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v12.l, v57.l
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e64 v39, v39, v47, s2
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v65, 1, v54
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v23, v27, v23
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v46, -16, v22
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v29, 15, v15
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v15.l, v57.l
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v32, 15, v17
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v17.l, v57.l
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v22, v22, v46, vcc_lo
	.loc	1 557 50 is_stmt 0              ; attention_backward.py:557:50
	v_or_b32_e32 v49, -16, v29
	.loc	1 558 35 is_stmt 1              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v38
	.loc	1 558 52 is_stmt 0              ; attention_backward.py:558:52
	v_or_b32_e32 v46, -16, v38
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_and_b32_e32 v31, 15, v16
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v22, v22
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v29, v29, v49, s14
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v33, 15, v18
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v38, v38, v46, vcc_lo
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v50, -16, v31
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v22, v22, v57
	v_cvt_f32_i32_e32 v29, v29
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v28, 15, v14
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v31, v31, v50, s15
	.loc	1 557 50 is_stmt 0              ; attention_backward.py:557:50
	v_or_b32_e32 v52, -16, v33
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_mul_f32_e32 v17, v29, v17
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v48, -16, v28
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	.loc	1 575 27 is_stmt 0              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_and_b32_e32 v34, 15, v21
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v21.l, v57.l
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v28, v28, v48, s12
	v_cndmask_b32_e64 v33, v33, v52, s17
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v27, v31, v35
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v31, v22, 16, 1
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v14.l, v57.l
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_add3_u32 v31, v22, v31, 0x7fff
	.loc	1 558 35 is_stmt 1              ; attention_backward.py:558:35
	v_cmp_lt_u32_e64 s12, 7, v40
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v15, v28, v15
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v51, -16, v32
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_dual_mul_f32 v14, v39, v14 :: v_dual_mul_f32 v29, v33, v37
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_cndmask_b16 v4.h, 0x7fff, v31.h, vcc_lo
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v48, -16, v40
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v32, v32, v51, s16
	.loc	1 557 50 is_stmt 0              ; attention_backward.py:557:50
	v_or_b32_e32 v53, -16, v34
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v16.l, v57.l
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e64 s14, 7, v41
	.loc	1 558 26 is_stmt 0              ; attention_backward.py:558:26
	v_cndmask_b32_e64 v40, v40, v48, s12
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v32, v32
	v_mul_f32_e32 v12, v38, v12
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v34, v34, v53, s18
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v49, -16, v41
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v40, v40
	v_mul_f32_e32 v21, v32, v21
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v22, v12, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v34, v34
	v_mul_f32_e32 v16, v40, v16
	.loc	1 558 26 is_stmt 1              ; attention_backward.py:558:26
	v_cndmask_b32_e64 v41, v41, v49, s14
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_add3_u32 v22, v12, v22, 0x7fff
	v_bfe_u32 v12, v23, 16, 1
	.loc	1 575 27 is_stmt 0              ; attention_backward.py:575:27
	v_mul_f32_e32 v25, v34, v25
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v18.l, v57.l
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_cndmask_b16 v5.h, 0x7fff, v22.h, vcc_lo
	v_add3_u32 v12, v23, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	.loc	1 558 35 is_stmt 1              ; attention_backward.py:558:35
	v_cmp_lt_u32_e64 s15, 7, v42
	.loc	1 558 52 is_stmt 0              ; attention_backward.py:558:52
	v_or_b32_e32 v50, -16, v42
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_mul_f32_e32 v18, v41, v18
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e64 s16, 7, v43
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v6.h, 0x7fff, v12.h, vcc_lo
	v_bfe_u32 v12, v14, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e64 v42, v42, v50, s15
	.loc	1 558 52 is_stmt 0              ; attention_backward.py:558:52
	v_or_b32_e32 v51, -16, v43
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e64 s17, 7, v44
	.loc	1 575 26 is_stmt 1              ; attention_backward.py:575:26
	v_add3_u32 v12, v14, v12, 0x7fff
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v52, -16, v44
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e64 v43, v43, v51, s16
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e64 s18, 7, v45
	.loc	1 575 26 is_stmt 1              ; attention_backward.py:575:26
	v_cndmask_b16 v7.h, 0x7fff, v12.h, vcc_lo
	v_bfe_u32 v12, v15, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	.loc	1 575 27 is_stmt 0              ; attention_backward.py:575:27
	v_mul_f32_e32 v20, v42, v20
	v_cvt_f32_i32_e32 v43, v43
	.loc	1 558 26 is_stmt 1              ; attention_backward.py:558:26
	v_cndmask_b32_e64 v44, v44, v52, s17
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_add3_u32 v12, v15, v12, 0x7fff
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v53, -16, v45
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_bfe_u32 v14, v20, 16, 1
	.loc	1 575 27 is_stmt 0              ; attention_backward.py:575:27
	v_mul_f32_e32 v28, v43, v36
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v8.h, 0x7fff, v12.h, vcc_lo
	v_bfe_u32 v12, v16, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_add3_u32 v14, v20, v14, 0x7fff
	v_bfe_u32 v15, v28, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v24, v44, v24
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_add3_u32 v12, v16, v12, 0x7fff
	.loc	1 558 26 is_stmt 1              ; attention_backward.py:558:26
	v_cndmask_b32_e64 v45, v45, v53, s18
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cmp_lt_i32 s83, 1
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_add3_u32 v15, v28, v15, 0x7fff
	v_bfe_u32 v16, v24, 16, 1
	v_cndmask_b16 v9.h, 0x7fff, v12.h, vcc_lo
	v_bfe_u32 v12, v17, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 575 27 is_stmt 0              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_add3_u32 v16, v24, v16, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v12, v17, v12, 0x7fff
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v26, v45, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v10.h, 0x7fff, v12.h, vcc_lo
	v_bfe_u32 v12, v18, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_bfe_u32 v17, v26, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v18, v12, 0x7fff
	v_add3_u32 v17, v26, v17, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v11.h, 0x7fff, v12.h, vcc_lo
	v_bfe_u32 v12, v27, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_add3_u32 v12, v27, v12, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cndmask_b16 v12.l, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_cndmask_b16 v12.h, 0x7fff, v14.h, vcc_lo
	v_bfe_u32 v14, v21, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_add3_u32 v14, v21, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cndmask_b16 v14.l, 0x7fff, v14.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_cndmask_b16 v14.h, 0x7fff, v15.h, vcc_lo
	v_bfe_u32 v15, v29, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_add3_u32 v15, v29, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cndmask_b16 v15.l, 0x7fff, v15.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_cndmask_b16 v15.h, 0x7fff, v16.h, vcc_lo
	v_bfe_u32 v16, v25, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_add3_u32 v16, v25, v16, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v16.l, 0x7fff, v16.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_cndmask_b16 v16.h, 0x7fff, v17.h, vcc_lo
	.loc	1 715 36 is_stmt 1              ; attention_backward.py:715:36
	v_add_nc_u32_e32 v17, v19, v0
	ds_store_b16_d16_hi v17, v4
	ds_store_b16 v17, v12 offset:1024
	scratch_store_b32 off, v17, off offset:132 ; 4-byte Folded Spill
	v_xad_u32 v17, 0x90, v56, 0
	ds_store_b16_d16_hi v17, v5
	ds_store_b16_d16_hi v17, v12 offset:1024
	v_xad_u32 v12, 0x120, v56, 0
	ds_store_b16_d16_hi v12, v6
	ds_store_b16 v12, v14 offset:1024
	v_xad_u32 v12, 0x1b0, v56, 0
	ds_store_b16_d16_hi v12, v7
	ds_store_b16_d16_hi v12, v14 offset:1024
	v_xad_u32 v12, 0x240, v56, 0
	ds_store_b16_d16_hi v12, v8
	ds_store_b16 v12, v15 offset:1024
	v_xad_u32 v12, 0x2d0, v56, 0
	ds_store_b16_d16_hi v12, v9
	ds_store_b16_d16_hi v12, v15 offset:1024
	v_xad_u32 v12, 0x360, v56, 0
	ds_store_b16_d16_hi v12, v10
	ds_store_b16 v12, v16 offset:1024
	v_xad_u32 v12, 0x3f0, v56, 0
	ds_store_b16_d16_hi v12, v11
	ds_store_b16_d16_hi v12, v16 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cbranch_scc1 .LBB0_13
; %bb.3:                                ; %.lr.ph103
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	s_xor_b32 s2, s3, s45
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	s_load_b32 s84, s[0:1], 0x80
	s_ashr_i32 s2, s2, 31
	v_writelane_b32 v255, s60, 0
	s_xor_b32 s12, s21, s2
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x48
	s_load_b128 s[60:63], s[0:1], 0x38
	s_sub_i32 s2, s12, s2
	s_clause 0x1
	s_load_b64 s[64:65], s[0:1], 0x0
	s_load_b64 s[68:69], s[0:1], 0x18
	s_mul_i32 s0, s2, s45
	v_dual_mov_b32 v181, 0 :: v_dual_lshlrev_b32 v40, 1, v55
	s_sub_i32 s3, s3, s0
	.loc	1 602 9 is_stmt 1               ; attention_backward.py:602:9
	s_sub_i32 s0, s78, s51
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_max_i32 s0, s0, 0
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v10.h, v9.l
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_and_b32 s0, s0, 0x7fffffe0
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v9.l, v57.l
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_max_u32 s0, s23, s0
	s_and_b32 s1, s81, exec_lo
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v14, 1, v1
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_cselect_b32 s85, s0, s23
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s0, s48, v1
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v1.l, v57.l
	v_mov_b16_e32 v1.h, v10.l
	v_mov_b16_e32 v10.l, v57.l
	v_mov_b16_e32 v9.h, v8.l
	v_mov_b16_e32 v7.h, v6.l
	v_mov_b16_e32 v57.h, v11.l
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v1, off offset:152
	scratch_store_b32 off, v10, off offset:156
	scratch_store_b32 off, v9, off offset:160
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_and_b32_e32 v1, 7, v0
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v9.h, v7.l
	v_mov_b16_e32 v7.l, v57.l
	v_cmp_eq_u32_e32 vcc_lo, 0, v54
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s1, s48, v14
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_lshlrev_b32_e32 v8, 4, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v9, off offset:164
	scratch_store_b32 off, v7, off offset:168
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v7.h, v5.l
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v7, off offset:172
	scratch_store_b32 off, v57, off offset:148
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_lshl_or_b32 v6, v55, 7, v8
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v57.h, v4.l
	v_mul_u32_u24_e32 v1, 0x90, v1
	v_and_b32_e32 v12, 16, v0
	v_dual_mov_b32 v48, v181 :: v_dual_lshlrev_b32 v41, 3, v0
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_xad_u32 v4, 0x70, v6, 0
	v_xad_u32 v5, 0x60, v6, 0
	ds_load_b128 v[24:27], v4
	ds_load_b128 v[20:23], v5
	v_xad_u32 v7, 0x50, v6, 0
	v_xad_u32 v9, v6, 64, 0
	v_xad_u32 v10, v6, 48, 0
	v_xad_u32 v11, v6, 32, 0
	v_xad_u32 v4, v6, 16, 0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[20:23], off offset:180
	scratch_store_b128 off, v[24:27], off offset:196
	ds_load_b128 v[24:27], v7
	ds_load_b128 v[20:23], v9
	v_add_nc_u32_e32 v5, 0, v6
	v_lshlrev_b32_e32 v6, 4, v54
	v_and_b32_e32 v41, 48, v41
	.loc	1 613 26                        ; attention_backward.py:613:26
	s_mul_i32 s2, s2, s44
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s44, s83, s3
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[20:23], off offset:212
	scratch_store_b128 off, v[24:27], off offset:228
	.loc	1 715 36                        ; attention_backward.py:715:36
	ds_load_b128 v[24:27], v10
	ds_load_b128 v[20:23], v11
	v_or3_b32 v7, v3, v6, v2
	v_and_b32_e32 v2, 0x70, v56
	s_add_i32 s44, s44, s2
	.loc	1 641 25                        ; attention_backward.py:641:25
	s_mul_f32 s86, s84, 0x3fb8aa3b
	s_cmp_lt_i32 s85, s82
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[20:23], off offset:244
	scratch_store_b128 off, v[24:27], off offset:260
	.loc	1 715 36                        ; attention_backward.py:715:36
	ds_load_b128 v[24:27], v4
	ds_load_b128 v[20:23], v5
	v_xor_b32_e32 v2, v8, v2
	v_bfe_i32 v4, v0, 3, 1
	v_cndmask_b32_e64 v5, 0x820, 0, vcc_lo
	v_xor_b32_e32 v3, 8, v7
	v_xor_b32_e32 v6, 16, v7
	v_lshl_or_b32 v14, v0, 7, v2
	v_xor_b32_e32 v2, 24, v7
	v_and_or_b32 v4, 0x410, v4, v5
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[20:23], off offset:276
	scratch_store_b128 off, v[24:27], off offset:292
	v_xor_b32_e32 v5, 16, v14
	v_xor_b32_e32 v44, v4, v1
	v_xor_b32_e32 v1, 64, v14
	v_add_nc_u32_e32 v2, 0, v2
	v_xor_b32_e32 v8, 32, v14
	v_xor_b32_e32 v9, 48, v14
	v_xor_b32_e32 v27, 0x1070, v44
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v2, off offset:340 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 0, v5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v7, off offset:308
	scratch_store_b32 off, v14, off offset:312
	v_add_nc_u32_e32 v5, 0, v27
	v_xor_b32_e32 v10, 0x50, v14
	scratch_store_b32 off, v2, off offset:344 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 0, v8
	v_dual_mov_b32 v47, v181 :: v_dual_lshlrev_b32 v24, 2, v0
	v_mul_u32_u24_e32 v7, 0x110, v55
	v_add_nc_u32_e32 v3, 0, v3
	scratch_store_b32 off, v2, off offset:348 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 0, v9
	scratch_store_b32 off, v1, off offset:356 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, v0
	scratch_store_b32 off, v57, off offset:176 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v12, 2, v12
	v_xor_b32_e32 v11, 0x60, v14
	v_xor_b32_e32 v28, 0x110, v24
	v_xor_b32_e32 v29, 0x220, v24
	v_xor_b32_e32 v31, 0x330, v24
	v_xor_b32_e32 v32, 0x440, v24
	v_xor_b32_e32 v33, 0x550, v24
	v_xor_b32_e32 v34, 0x660, v24
	v_xor_b32_e32 v35, 0x770, v24
	v_xor_b32_e32 v36, 0x880, v24
	v_xor_b32_e32 v37, 0x990, v24
	v_xor_b32_e32 v38, 0xaa0, v24
	v_xor_b32_e32 v39, 0xbb0, v24
	v_xor_b32_e32 v42, 0xcc0, v24
	v_xor_b32_e32 v43, 0xdd0, v24
	v_lshl_or_b32 v45, v54, 7, v7
	v_or3_b32 v46, v40, v12, v54
	v_add3_u32 v7, 0, v54, v40
	v_xor_b32_e32 v40, 0xee0, v24
	v_xor_b32_e32 v12, 0xff0, v24
	v_lshl_or_b32 v24, v55, 6, v41
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v44, off offset:316
	scratch_store_b32 off, v3, off offset:332
	v_add_nc_u32_e32 v3, 0, v6
	v_mov_b32_e32 v57, 0
	.loc	1 545 17                        ; attention_backward.py:545:17
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b32 off, v56, off offset:144
	scratch_store_b64 off, v[1:2], off offset:136
	scratch_store_b32 off, v24, off offset:328
	v_dual_mov_b32 v58, v181 :: v_dual_add_nc_u32 v1, 0, v10
	v_xor_b32_e32 v14, 0x70, v14
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v3, off offset:336
	scratch_store_b32 off, v2, off offset:352
	scratch_store_b32 off, v1, off offset:364
	v_dual_mov_b32 v60, v181 :: v_dual_add_nc_u32 v1, 0, v11
	v_xor_b32_e32 v15, 16, v44
	v_xor_b32_e32 v16, 32, v44
	v_mov_b32_e32 v62, v181
	scratch_store_b32 off, v1, off offset:368 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v14
	v_dual_mov_b32 v59, v181 :: v_dual_add_nc_u32 v0, s77, v0
	v_xor_b32_e32 v17, 48, v44
	v_mov_b32_e32 v64, v181
	scratch_store_b32 off, v1, off offset:372 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v15
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:376
	scratch_store_b32 off, v0, off offset:360
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v1, 0, v16
	v_xor_b32_e32 v18, 64, v44
	v_xor_b32_e32 v20, 0x50, v44
	v_mov_b32_e32 v140, v181
	scratch_store_b32 off, v1, off offset:384 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v17
	v_xor_b32_e32 v21, 0x60, v44
	v_mov_b32_e32 v142, v181
	v_dual_mov_b32 v61, v181 :: v_dual_add_nc_u32 v0, s77, v0
	scratch_store_b32 off, v1, off offset:388 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v18
	v_xor_b32_e32 v22, 0x70, v44
	v_mov_b32_e32 v144, v181
	v_xor_b32_e32 v23, 0x1040, v44
	v_xor_b32_e32 v25, 0x1050, v44
	scratch_store_b32 off, v1, off offset:392 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v20
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:396
	scratch_store_b32 off, v0, off offset:380
	v_add_nc_u32_e32 v1, 0, v21
	v_xor_b32_e32 v26, 0x1060, v44
	v_dual_mov_b32 v63, v181 :: v_dual_add_nc_u32 v0, s77, v0
	v_mov_b32_e32 v139, v181
	scratch_store_b32 off, v1, off offset:404 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v22
	v_xor_b32_e32 v2, 0x1020, v44
	v_xor_b32_e32 v3, 0x1030, v44
	v_mov_b32_e32 v141, v181
	v_mov_b32_e32 v143, v181
	scratch_store_b32 off, v1, off offset:408 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v23
	v_mov_b32_e32 v145, v181
	v_lshl_add_u32 v4, v54, 1, 0
	v_mov_b32_e32 v41, 0
	s_mov_b32 s45, 0
	scratch_store_b32 off, v1, off offset:412 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:416
	scratch_store_b32 off, v0, off offset:400
	v_add_nc_u32_e32 v1, 0, v26
	v_add_nc_u32_e32 v0, s77, v0
	v_lshl_add_u32 v4, v55, 2, v4
	s_cselect_b32 s87, -1, 0
	s_and_b32 s65, s65, 0xffff
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:424
	scratch_store_b32 off, v0, off offset:420
	v_xor_b32_e32 v1, 0x1010, v44
	v_add_nc_u32_e32 v0, s77, v0
	v_mov_b32_e32 v44, v181
	s_mov_b32 s67, 0x31027000
	s_mov_b32 s66, 0x7ffffffe
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v5, off offset:432 ; 4-byte Folded Spill
	s_and_b32 s69, s69, 0xffff
	s_and_b32 s73, s63, 0xffff
	s_mov_b32 s72, s62
	scratch_store_b32 off, v1, off offset:436 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v2
	s_and_b32 s57, s57, 0xffff
	s_and_b32 s61, s61, 0xffff
	scratch_store_b32 off, v1, off offset:440 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:444
	scratch_store_b32 off, v0, off offset:428
	v_add_nc_u32_e32 v1, 0, v28
	v_add_nc_u32_e32 v3, 0, v12
	v_add_nc_u32_e32 v0, s77, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:452
	scratch_store_b32 off, v3, off offset:524
	v_add_nc_u32_e32 v1, 0, v29
	scratch_store_b32 off, v1, off offset:456 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v31
	scratch_store_b32 off, v1, off offset:460 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v32
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:464
	scratch_store_b32 off, v0, off offset:448
	v_add_nc_u32_e32 v1, 0, v33
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v0, s77, v0
	scratch_store_b32 off, v1, off offset:472 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v34
	v_mov_b32_e32 v34, v181
	scratch_store_b32 off, v1, off offset:476 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v35
	v_mov_b32_e32 v35, v181
	scratch_store_b32 off, v1, off offset:480 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v36
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:484
	scratch_store_b32 off, v0, off offset:468
	v_add_nc_u32_e32 v0, s77, v0
	v_dual_mov_b32 v36, v181 :: v_dual_add_nc_u32 v1, 0, v37
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v37, v181 :: v_dual_add_nc_u32 v2, s77, v0
	scratch_store_b32 off, v1, off offset:492 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v38
	v_mov_b32_e32 v38, v181
	scratch_store_b32 off, v2, off offset:508 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s77, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v3, s77, v2
	scratch_store_b32 off, v1, off offset:496 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v39
	v_mov_b32_e32 v39, v181
	scratch_store_b32 off, v1, off offset:500 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v42
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:504
	scratch_store_b32 off, v0, off offset:488
	v_xor_b32_e32 v1, 16, v45
	v_add_nc_u32_e32 v0, 0, v43
	v_mov_b32_e32 v42, v181
	v_mov_b32_e32 v43, v181
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v0, off offset:512 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v40
	v_mov_b32_e32 v40, v181
	scratch_store_b32 off, v1, off offset:528 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 48, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v0, off offset:516 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v45
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:532
	scratch_store_b32 off, v2, off offset:520
	v_xor_b32_e32 v0, 64, v45
	v_xor_b32_e32 v2, 0x50, v45
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v3, off offset:536 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s77, v3
	scratch_store_b32 off, v0, off offset:548 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	scratch_store_b32 off, v1, off offset:540 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x60, v45
	v_xor_b32_e32 v2, 0x90, v45
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:556
	scratch_store_b32 off, v3, off offset:544
	v_add_nc_u32_e32 v3, s77, v3
	scratch_store_b32 off, v0, off offset:552 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x70, v45
	v_xor_b32_e32 v1, 0x80, v45
	scratch_store_b32 off, v3, off offset:560 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s77, v3
	v_add_nc_u32_e32 v0, 0, v0
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v0, off offset:564 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xa0, v45
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:580
	scratch_store_b32 off, v3, off offset:568
	v_add_nc_u32_e32 v3, s77, v3
	scratch_store_b32 off, v1, off offset:572 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v2
	v_xor_b32_e32 v0, 0xc0, v45
	v_xor_b32_e32 v2, 0xd0, v45
	scratch_store_b32 off, v3, off offset:584 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s77, v3
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v1, off offset:576 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xb0, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:588 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xe0, v45
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:604
	scratch_store_b32 off, v3, off offset:592
	v_add_nc_u32_e32 v3, s77, v3
	scratch_store_b32 off, v0, off offset:596 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:600
	scratch_store_b32 off, v45, off offset:320
	v_xor_b32_e32 v0, 0xf0, v45
	v_xor_b32_e32 v1, 0x90, v46
	scratch_store_b32 off, v3, off offset:608 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s77, v3
	v_xor_b32_e32 v2, 0x120, v46
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:612
	scratch_store_b32 off, v46, off offset:324
	v_xor_b32_e32 v0, 0x1b0, v46
	v_add_nc_u32_e32 v11, 0, v1
	v_xor_b32_e32 v1, 16, v24
	scratch_store_b32 off, v3, off offset:616 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s77, v3
	v_add_nc_u32_e32 v31, 0, v0
	v_xor_b32_e32 v0, 32, v24
	v_add_nc_u32_e32 v15, 0, v1
	v_add_nc_u32_e32 v12, 0, v2
	v_add_nc_u32_e32 v1, s77, v3
	scratch_store_b32 off, v3, off offset:620 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v8, 0, v0
	v_xor_b32_e32 v2, 48, v24
	v_dual_mov_b32 v45, v181 :: v_dual_add_nc_u32 v0, s77, v1
	scratch_store_b32 off, v1, off offset:624 ; 4-byte Folded Spill
	v_dual_mov_b32 v46, v181 :: v_dual_add_nc_u32 v27, 0, v2
	scratch_store_b32 off, v0, off offset:628 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:632 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:636 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:640 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:644 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:648 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:652 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s77, v0
	scratch_load_b32 v0, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 520 26                        ; attention_backward.py:520:26
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v2, 16, v0
	scratch_store_b32 off, v2, off offset:660 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 18, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:664
	scratch_store_b32 off, v1, off offset:656
	v_or_b32_e32 v2, 20, v0
	v_add_nc_u32_e32 v1, s77, v1
	scratch_store_b32 off, v2, off offset:672 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 22, v0
	v_add_nc_u32_e32 v32, s77, v1
	scratch_store_b32 off, v2, off offset:676 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 24, v0
	scratch_store_b32 off, v2, off offset:680 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 26, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:684
	scratch_store_b32 off, v1, off offset:668
	scratch_load_b64 v[1:2], off, off offset:20 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[2:3], null, s76, 18, v[1:2]
	scratch_store_b64 off, v[2:3], off offset:688 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s76, 20, v[1:2]
	scratch_store_b64 off, v[2:3], off offset:696 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s76, 22, v[1:2]
	scratch_store_b64 off, v[2:3], off offset:704 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s76, 24, v[1:2]
	scratch_store_b64 off, v[2:3], off offset:712 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s76, 26, v[1:2]
	scratch_store_b64 off, v[2:3], off offset:720 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s76, 28, v[1:2]
	scratch_store_b64 off, v[2:3], off offset:728 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s76, 30, v[1:2]
	scratch_store_b64 off, v[1:2], off offset:736 ; 8-byte Folded Spill
	v_or_b32_e32 v1, 28, v0
	v_or_b32_e32 v0, 30, v0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:748
	scratch_store_b32 off, v55, off offset:760
	scratch_store_b32 off, v65, off offset:764
	v_or_b32_e32 v0, v65, v55
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:744
	scratch_store_b32 off, v0, off offset:752
	s_branch .LBB0_5
.LBB0_4:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_add_i32 s45, s45, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s45, s83
	s_cbranch_scc0 .LBB0_12
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s87
	s_cbranch_vccnz .LBB0_4
; %bb.6:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 613 26                        ; attention_backward.py:613:26
	s_add_i32 s88, s44, s45
	s_mov_b32 s89, s85
	.loc	1 613 25 is_stmt 0              ; attention_backward.py:613:25
	s_mul_i32 s88, s88, s46
	s_branch .LBB0_8
.LBB0_7:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[22:23], off, off offset:136
	scratch_load_b32 v20, off, off offset:360
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s2, s89, 1
	s_or_b32 s3, s89, 2
	s_or_b32 s14, s89, 3
	s_or_b32 s15, s89, 4
	s_or_b32 s16, s89, 5
	s_or_b32 s17, s89, 6
	s_or_b32 s18, s89, 7
	s_or_b32 s19, s89, 8
	s_or_b32 s21, s89, 9
	s_or_b32 s22, s89, 10
	s_or_b32 s23, s89, 11
	s_or_b32 s24, s89, 12
	s_or_b32 s25, s89, 13
	s_or_b32 s26, s89, 14
	s_or_b32 s27, s89, 15
	s_or_b32 s92, s89, 16
	s_or_b32 s93, s89, 17
	s_or_b32 s94, s89, 18
	s_or_b32 s95, s89, 19
	s_or_b32 s96, s89, 20
	s_or_b32 s97, s89, 21
	s_or_b32 s98, s89, 22
	s_or_b32 s99, s89, 23
	s_or_b32 s100, s89, 24
	s_or_b32 s101, s89, 25
	s_or_b32 s102, s89, 26
	s_or_b32 s103, s89, 27
	s_or_b32 s104, s89, 28
	s_or_b32 vcc_lo, s89, 29
	s_or_b32 vcc_hi, s89, 30
	s_or_b32 s79, s89, 31
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s89, s46
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s37, s37, s77
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s2, s46
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v17.h, v17.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s3, s46
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v6.h, v6.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s14, s46
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v0, v0, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s15, s46
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v0.h, v18.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s16, s46
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v28, 0x800, v4
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s17, s46
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v55, 0xc00, v4
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s18, s46
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v56, 0x1000, v4
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s19, s46
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v65, 0x1400, v4
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s21, s46
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v70, 0x1800, v4
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s22, s46
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v71, 0x1c00, v4
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s23, s46
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v14, v14, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s24, s46
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v5, v5, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s41, -1, 0
	s_cmp_lt_i32 s25, s46
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v1.h, 4, v14.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s40, -1, 0
	s_cmp_lt_i32 s26, s46
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v29.h, v29.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s39, -1, 0
	s_cmp_lt_i32 s27, s46
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v10.h, v10.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s38, -1, 0
	s_cmp_lt_i32 s92, s46
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v9, v9, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s93, s46
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v16.h, v16.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s94, s46
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v21, v21, 0, 8
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s95, s46
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s96, s46
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s97, s46
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s22, -1, 0
	s_cmp_lt_i32 s98, s46
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s21, -1, 0
	s_cmp_lt_i32 s99, s46
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s100, s46
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s101, s46
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s102, s46
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s103, s46
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s104, s46
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 vcc_lo, s46
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 vcc_hi, s46
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s2, -1, 0
	s_cmp_lt_i32 s79, s46
	.loc	1 0 0                           ; attention_backward.py:0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s92, -1, 0
	.loc	1 712 26 is_stmt 1              ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s63
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s63, s67
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s89, s89, 32
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	.loc	1 699 25 is_stmt 1              ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v2, 2, v2
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v3, s37, v22, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v20, s37, v20, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s62
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s62, s66
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	s_clause 0x1
	buffer_load_b32 v66, v3, s[60:63], 0 offen
	buffer_load_b32 v67, v20, s[60:63], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:380
	scratch_load_b32 v20, off, off offset:428
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s91
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v3, s37, v3, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v20, s37, v20, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s90
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v68, v3, s[60:63], 0 offen
	scratch_load_b32 v3, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v3, s37, v3, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s75
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s75, s67
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v69, v3, s[60:63], 0 offen
	scratch_load_b32 v3, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v3, s37, v3, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s74
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s74, s66
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	s_clause 0x1
	buffer_load_b32 v51, v3, s[60:63], 0 offen
	buffer_load_b32 v52, v20, s[60:63], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:448
	scratch_load_b32 v20, off, off offset:508
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s71
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v3, s37, v3, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v20, s37, v20, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s70
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v53, v3, s[60:63], 0 offen
	scratch_load_b32 v3, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v3, s37, v3, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s59
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s59, s67
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v54, v3, s[60:63], 0 offen
	scratch_load_b32 v3, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v3, s37, v3, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s58
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s58, s66
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	s_clause 0x1
	buffer_load_b32 v81, v3, s[60:63], 0 offen
	buffer_load_b32 v82, v20, s[60:63], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:520
	scratch_load_b32 v20, off, off offset:560
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s43
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v3, s37, v3, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v20, s37, v20, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s42
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v83, v3, s[60:63], 0 offen
	scratch_load_b32 v3, off, off offset:536 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v3, s37, v3, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s41
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v84, v3, s[60:63], 0 offen
	scratch_load_b32 v3, off, off offset:544 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v3, s37, v3, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s40
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	s_clause 0x1
	buffer_load_b32 v85, v3, s[60:63], 0 offen
	buffer_load_b32 v86, v20, s[60:63], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:568
	scratch_load_b32 v20, off, off offset:608
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s39
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v3, s37, v3, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v20, s37, v20, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s38
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v87, v3, s[60:63], 0 offen
	scratch_load_b32 v3, off, off offset:584 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v3, s37, v3, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s27
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v88, v3, s[60:63], 0 offen
	scratch_load_b32 v3, off, off offset:592 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v3, s37, v3, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s26
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	s_clause 0x1
	buffer_load_b32 v110, v3, s[60:63], 0 offen
	buffer_load_b32 v111, v20, s[60:63], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:616
	scratch_load_b32 v20, off, off offset:628
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s25
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v3, s37, v3, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v20, s37, v20, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s24
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v112, v3, s[60:63], 0 offen
	scratch_load_b32 v3, off, off offset:620 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v3, s37, v3, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s23
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v113, v3, s[60:63], 0 offen
	scratch_load_b32 v3, off, off offset:624 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v3, s37, v3, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s22
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	s_clause 0x1
	buffer_load_b32 v114, v3, s[60:63], 0 offen
	buffer_load_b32 v115, v20, s[60:63], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:632
	scratch_load_b32 v20, off, off offset:644
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s21
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v3, s37, v3, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v20, s37, v20, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s19
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v116, v3, s[60:63], 0 offen
	scratch_load_b32 v3, off, off offset:636 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v3, s37, v3, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s18
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v117, v3, s[60:63], 0 offen
	scratch_load_b32 v3, off, off offset:640 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v3, s37, v3, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s17
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	s_clause 0x1
	buffer_load_b32 v182, v3, s[60:63], 0 offen
	buffer_load_b32 v183, v20, s[60:63], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:648
	scratch_load_b32 v20, off, off offset:668
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s16
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v3, s37, v3, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v20, s37, v20, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s15
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v184, v3, s[60:63], 0 offen
	scratch_load_b32 v3, off, off offset:652 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v3, s37, v3, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s14
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v185, v3, s[60:63], 0 offen
	scratch_load_b32 v3, off, off offset:656 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v3, s37, v3, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s3
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	s_clause 0x1
	buffer_load_b32 v186, v3, s[60:63], 0 offen
	buffer_load_b32 v187, v20, s[60:63], 0 offen
	v_add_lshl_u32 v3, s37, v32, 2
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s13, s92
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_i32 s89, s82
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v188, v3, s[60:63], 0 offen
	v_add_nc_u32_e32 v3, s77, v32
	v_add_lshl_u32 v3, s37, v3, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	buffer_load_b32 v189, v3, s[60:63], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_cndmask_b32_e64 v3, 0x80000000, v2, s12
	buffer_load_b32 v2, v3, s[72:75], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v20, v3, s[56:59], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v3, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, 0, v3
	ds_store_b128 v3, v[66:69]
	scratch_load_b32 v3, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v3, v[51:54]
	scratch_load_b32 v3, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v3, v[81:84]
	scratch_load_b32 v3, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v3, v[85:88]
	scratch_load_b32 v3, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v3, v[110:113]
	scratch_load_b32 v3, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v3, v[114:117]
	scratch_load_b32 v3, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v3, v[182:185]
	scratch_load_b32 v3, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v3, v[186:189]
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v3, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, 0, v3
	ds_load_b128 v[154:157], v3
	ds_load_b128 v[106:109], v3 offset:4096
	scratch_load_b32 v3, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[166:169], v3
	scratch_load_b32 v3, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[162:165], v3
	scratch_load_b32 v3, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[158:161], v3
	scratch_load_b32 v3, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[134:137], v3
	scratch_load_b32 v3, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[130:133], v3
	scratch_load_b32 v3, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[126:129], v3
	scratch_load_b32 v3, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[122:125], v3
	scratch_load_b32 v3, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[150:153], v3
	scratch_load_b32 v3, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[146:149], v3
	scratch_load_b32 v3, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[118:121], v3
	scratch_load_b32 v3, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[22:25], v3
	scratch_load_b32 v3, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[170:173], v3
	scratch_load_b32 v3, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[176:179], v3
	scratch_load_b32 v3, off, off offset:444 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[190:193], v3
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[190:193], off ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:144
	scratch_load_b32 v26, off, off offset:132
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, v26, v3
	v_add_nc_u32_e32 v26, 0x400, v4
	ds_store_2addr_stride64_b32 v3, v66, v67 offset1:1
	ds_store_2addr_stride64_b32 v3, v68, v69 offset0:2 offset1:3
	ds_store_2addr_stride64_b32 v3, v51, v52 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v3, v53, v54 offset0:6 offset1:7
	ds_store_2addr_stride64_b32 v3, v81, v82 offset0:8 offset1:9
	ds_store_2addr_stride64_b32 v3, v83, v84 offset0:10 offset1:11
	ds_store_2addr_stride64_b32 v3, v85, v86 offset0:12 offset1:13
	ds_store_2addr_stride64_b32 v3, v87, v88 offset0:14 offset1:15
	ds_store_2addr_stride64_b32 v3, v110, v111 offset0:16 offset1:17
	ds_store_2addr_stride64_b32 v3, v112, v113 offset0:18 offset1:19
	ds_store_2addr_stride64_b32 v3, v114, v115 offset0:20 offset1:21
	ds_store_2addr_stride64_b32 v3, v116, v117 offset0:22 offset1:23
	ds_store_2addr_stride64_b32 v3, v182, v183 offset0:24 offset1:25
	ds_store_2addr_stride64_b32 v3, v184, v185 offset0:26 offset1:27
	ds_store_2addr_stride64_b32 v3, v186, v187 offset0:28 offset1:29
	ds_store_2addr_stride64_b32 v3, v188, v189 offset0:30 offset1:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[244:245], v26 offset1:32
	ds_load_2addr_b32 v[242:243], v26 offset0:64 offset1:96
	ds_load_2addr_b32 v[240:241], v26 offset0:128 offset1:160
	ds_load_2addr_b32 v[238:239], v26 offset0:192 offset1:224
	ds_load_2addr_b32 v[236:237], v28 offset1:32
	ds_load_2addr_b32 v[234:235], v28 offset0:64 offset1:96
	ds_load_2addr_b32 v[232:233], v28 offset0:128 offset1:160
	ds_load_2addr_b32 v[230:231], v28 offset0:192 offset1:224
	ds_load_2addr_b32 v[228:229], v55 offset1:32
	ds_load_2addr_b32 v[226:227], v55 offset0:64 offset1:96
	ds_load_2addr_b32 v[224:225], v55 offset0:128 offset1:160
	ds_load_2addr_b32 v[222:223], v55 offset0:192 offset1:224
	ds_load_2addr_b32 v[220:221], v56 offset1:32
	ds_load_2addr_b32 v[218:219], v56 offset0:64 offset1:96
	ds_load_2addr_b32 v[216:217], v56 offset0:128 offset1:160
	ds_load_2addr_b32 v[214:215], v56 offset0:192 offset1:224
	ds_load_2addr_b32 v[212:213], v65 offset1:32
	ds_load_2addr_b32 v[210:211], v65 offset0:64 offset1:96
	ds_load_2addr_b32 v[208:209], v65 offset0:128 offset1:160
	ds_load_2addr_b32 v[206:207], v65 offset0:192 offset1:224
	ds_load_2addr_b32 v[204:205], v70 offset1:32
	ds_load_2addr_b32 v[202:203], v70 offset0:64 offset1:96
	ds_load_2addr_b32 v[200:201], v70 offset0:128 offset1:160
	ds_load_2addr_b32 v[198:199], v70 offset0:192 offset1:224
	ds_load_2addr_b32 v[196:197], v71 offset1:32
	ds_load_2addr_b32 v[194:195], v71 offset0:64 offset1:96
	ds_load_2addr_b32 v[192:193], v71 offset0:128 offset1:160
	ds_load_2addr_b32 v[190:191], v71 offset0:192 offset1:224
	ds_load_2addr_b32 v[252:253], v4 offset1:32
	ds_load_2addr_b32 v[250:251], v4 offset0:64 offset1:96
	ds_load_2addr_b32 v[248:249], v4 offset0:128 offset1:160
	ds_load_2addr_b32 v[246:247], v4 offset0:192 offset1:224
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v26, off, off offset:452 ; 4-byte Folded Reload
	ds_store_2addr_stride64_b32 v3, v66, v110 offset1:16
	v_cmp_o_f32_e64 s27, v221, v221
	v_cmp_o_f32_e64 s37, v203, v203
	v_cmp_o_f32_e64 s38, v201, v201
	v_cmp_o_f32_e64 s39, v199, v199
	v_cmp_o_f32_e64 s40, v197, v197
	v_cmp_o_f32_e64 s41, v195, v195
	v_cmp_o_f32_e64 s42, v193, v193
	v_cmp_o_f32_e64 s43, v191, v191
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v26, v67, v111 offset1:16
	scratch_load_b32 v26, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v26, v68, v112 offset1:16
	scratch_load_b32 v26, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v26, v69, v113 offset1:16
	scratch_load_b32 v26, off, off offset:464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v26, v51, v114 offset1:16
	scratch_load_b32 v26, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v26, v52, v115 offset1:16
	scratch_load_b32 v26, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v26, v53, v116 offset1:16
	scratch_load_b32 v26, off, off offset:480 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v26, v54, v117 offset1:16
	scratch_load_b32 v26, off, off offset:484 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v26, v81, v182 offset1:16
	scratch_load_b32 v26, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v182, v181
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v26, v82, v183 offset1:16
	scratch_load_b32 v26, off, off offset:496 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v183, v181
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v26, v83, v184 offset1:16
	scratch_load_b32 v26, off, off offset:500 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v184, v181
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v26, v84, v185 offset1:16
	scratch_load_b32 v26, off, off offset:504 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v185, v181
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v26, v85, v186 offset1:16
	scratch_load_b32 v26, off, off offset:512 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v186, v181
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v26, v86, v187 offset1:16
	scratch_load_b32 v26, off, off offset:516 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v187, v181
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v26, v87, v188 offset1:16
	scratch_load_b32 v26, off, off offset:524 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v188, v181
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v26, v88, v189 offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 36-byte Folded Reload
	scratch_load_b32 v26, off, off offset:320
	scratch_load_b128 v[110:113], off, off offset:276
	scratch_load_b128 v[114:117], off, off offset:292
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v26, 0, v26
	ds_load_b128 v[51:54], v26
	scratch_load_b32 v26, off, off offset:528 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	v_bfe_u32 v28, v52, 16, 1
	v_cmp_o_f32_e64 s2, v52, v52
	v_cmp_o_f32_e64 s3, v53, v53
	v_cmp_o_f32_e64 s12, v54, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v28, v52, v28, 0x7fff
	s_waitcnt vmcnt(0)
	ds_load_b128 v[65:68], v26
	v_bfe_u32 v26, v51, 16, 1
	v_add3_u32 v26, v51, v26, 0x7fff
	v_bfe_u32 v51, v53, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v55, v53, v51, 0x7fff
	v_bfe_u32 v51, v54, 16, 1
	v_cndmask_b16 v82.l, 0x7fff, v55.h, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v56, v54, v51, 0x7fff
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v51, v65, 16, 1
	v_cmp_o_f32_e64 s14, v65, v65
	v_cmp_o_f32_e64 s15, v66, v66
	v_cmp_o_f32_e64 s16, v67, v67
	v_cmp_o_f32_e64 s17, v68, v68
	v_add3_u32 v69, v65, v51, 0x7fff
	v_bfe_u32 v51, v66, 16, 1
	scratch_load_b32 v65, off, off offset:540 ; 4-byte Folded Reload
	v_cndmask_b16 v82.h, 0x7fff, v56.h, s12
	v_cndmask_b16 v83.l, 0x7fff, v69.h, s14
	v_add3_u32 v70, v66, v51, 0x7fff
	v_bfe_u32 v51, v67, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v70.h, s15
	v_add3_u32 v71, v67, v51, 0x7fff
	v_bfe_u32 v51, v68, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v71.h, s16
	v_add3_u32 v72, v68, v51, 0x7fff
	scratch_load_b32 v51, off, off offset:532 ; 4-byte Folded Reload
	v_cndmask_b16 v84.h, 0x7fff, v72.h, s17
	s_waitcnt vmcnt(1)
	ds_load_b128 v[65:68], v65
	s_waitcnt vmcnt(0)
	ds_load_b128 v[51:54], v51
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s23, v65, v65
	v_cmp_o_f32_e64 s24, v66, v66
	v_cmp_o_f32_e64 s25, v67, v67
	v_cmp_o_f32_e64 s26, v68, v68
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v81, v51, 16, 1
	v_cmp_o_f32_e64 s18, v51, v51
	v_cmp_o_f32_e64 s19, v52, v52
	v_cmp_o_f32_e64 s21, v53, v53
	v_cmp_o_f32_e64 s22, v54, v54
	v_add3_u32 v51, v51, v81, 0x7fff
	v_bfe_u32 v81, v52, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.l, 0x7fff, v51.h, s18
	v_add3_u32 v52, v52, v81, 0x7fff
	v_bfe_u32 v81, v53, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.h, 0x7fff, v52.h, s19
	v_add3_u32 v53, v53, v81, 0x7fff
	v_bfe_u32 v81, v54, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.l, 0x7fff, v53.h, s21
	v_add3_u32 v54, v54, v81, 0x7fff
	v_bfe_u32 v81, v65, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.h, 0x7fff, v54.h, s22
	v_add3_u32 v65, v65, v81, 0x7fff
	v_bfe_u32 v81, v66, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.l, 0x7fff, v65.h, s23
	v_add3_u32 v66, v66, v81, 0x7fff
	v_bfe_u32 v81, v67, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.h, 0x7fff, v66.h, s24
	v_add3_u32 v67, v67, v81, 0x7fff
	v_bfe_u32 v81, v68, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v88.l, 0x7fff, v67.h, s25
	v_add3_u32 v68, v68, v81, 0x7fff
	v_cndmask_b16 v81.l, 0x7fff, v26.h, vcc_lo
	scratch_load_b32 v26, off, off offset:548 ; 4-byte Folded Reload
	v_cndmask_b16 v81.h, 0x7fff, v28.h, s2
	v_cndmask_b16 v88.h, 0x7fff, v68.h, s26
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v65, v181 :: v_dual_mov_b32 v66, v182
	v_dual_mov_b32 v67, v183 :: v_dual_mov_b32 v68, v184
	v_dual_mov_b32 v69, v185 :: v_dual_mov_b32 v70, v186
	v_dual_mov_b32 v71, v187 :: v_dual_mov_b32 v72, v188
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[110:117], v[81:88], v[65:72]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_load_b128 v[51:54], v26
	scratch_load_b32 v26, off, off offset:552 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	v_bfe_u32 v28, v52, 16, 1
	v_cmp_o_f32_e64 s2, v52, v52
	v_cmp_o_f32_e64 s3, v53, v53
	v_cmp_o_f32_e64 s12, v54, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v28, v52, v28, 0x7fff
	s_waitcnt vmcnt(0)
	ds_load_b128 v[81:84], v26
	v_bfe_u32 v26, v51, 16, 1
	v_add3_u32 v26, v51, v26, 0x7fff
	v_bfe_u32 v51, v53, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v55, v53, v51, 0x7fff
	v_bfe_u32 v51, v54, 16, 1
	v_add3_u32 v56, v54, v51, 0x7fff
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v51, v81, 16, 1
	v_cmp_o_f32_e64 s14, v81, v81
	v_cmp_o_f32_e64 s15, v82, v82
	v_cmp_o_f32_e64 s16, v83, v83
	v_cmp_o_f32_e64 s17, v84, v84
	v_add3_u32 v85, v81, v51, 0x7fff
	v_bfe_u32 v51, v82, 16, 1
	scratch_load_b32 v81, off, off offset:564 ; 4-byte Folded Reload
	v_add3_u32 v86, v82, v51, 0x7fff
	v_bfe_u32 v51, v83, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v87, v83, v51, 0x7fff
	v_bfe_u32 v51, v84, 16, 1
	v_add3_u32 v88, v84, v51, 0x7fff
	scratch_load_b32 v51, off, off offset:556 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[81:84], v81
	s_waitcnt vmcnt(0)
	ds_load_b128 v[51:54], v51
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s23, v81, v81
	v_cmp_o_f32_e64 s24, v82, v82
	v_cmp_o_f32_e64 s25, v83, v83
	v_cmp_o_f32_e64 s26, v84, v84
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v110, v51, 16, 1
	v_cmp_o_f32_e64 s18, v51, v51
	v_cmp_o_f32_e64 s19, v52, v52
	v_cmp_o_f32_e64 s21, v53, v53
	v_cmp_o_f32_e64 s22, v54, v54
	v_add3_u32 v110, v51, v110, 0x7fff
	v_bfe_u32 v51, v52, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.l, 0x7fff, v110.h, s18
	v_add3_u32 v51, v52, v51, 0x7fff
	v_bfe_u32 v52, v53, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v52, v53, v52, 0x7fff
	v_bfe_u32 v53, v54, 16, 1
	v_cndmask_b16 v86.l, 0x7fff, v52.h, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v53, v54, v53, 0x7fff
	v_bfe_u32 v54, v81, 16, 1
	v_add3_u32 v54, v81, v54, 0x7fff
	v_bfe_u32 v81, v82, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.l, 0x7fff, v54.h, s23
	v_add3_u32 v111, v82, v81, 0x7fff
	v_bfe_u32 v81, v83, 16, 1
	v_cndmask_b16 v82.l, 0x7fff, v55.h, s3
	v_cndmask_b16 v82.h, 0x7fff, v56.h, s12
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v112, v83, v81, 0x7fff
	v_bfe_u32 v81, v84, 16, 1
	v_cndmask_b16 v83.l, 0x7fff, v85.h, s14
	v_cndmask_b16 v83.h, 0x7fff, v86.h, s15
	v_cndmask_b16 v85.h, 0x7fff, v51.h, s19
	v_cndmask_b16 v86.h, 0x7fff, v53.h, s22
	v_add3_u32 v113, v84, v81, 0x7fff
	v_cndmask_b16 v81.l, 0x7fff, v26.h, vcc_lo
	scratch_load_b32 v26, off, off offset:572 ; 4-byte Folded Reload
	v_cndmask_b16 v84.l, 0x7fff, v87.h, s16
	v_cndmask_b16 v84.h, 0x7fff, v88.h, s17
	v_cndmask_b16 v87.h, 0x7fff, v111.h, s24
	v_cndmask_b16 v88.l, 0x7fff, v112.h, s25
	v_cndmask_b16 v88.h, 0x7fff, v113.h, s26
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[110:113], off, off offset:244
	scratch_load_b128 v[114:117], off, off offset:260
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v81.h, 0x7fff, v28.h, s2
	s_waitcnt vmcnt(2)
	ds_load_b128 v[51:54], v26
	scratch_load_b32 v26, off, off offset:576 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[110:117], v[81:88], v[65:72]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	v_bfe_u32 v28, v52, 16, 1
	v_cmp_o_f32_e64 s2, v52, v52
	v_cmp_o_f32_e64 s3, v53, v53
	v_cmp_o_f32_e64 s12, v54, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v28, v52, v28, 0x7fff
	s_waitcnt vmcnt(0)
	ds_load_b128 v[81:84], v26
	v_bfe_u32 v26, v51, 16, 1
	v_add3_u32 v26, v51, v26, 0x7fff
	v_bfe_u32 v51, v53, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v55, v53, v51, 0x7fff
	v_bfe_u32 v51, v54, 16, 1
	v_add3_u32 v56, v54, v51, 0x7fff
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v51, v81, 16, 1
	v_cmp_o_f32_e64 s14, v81, v81
	v_cmp_o_f32_e64 s15, v82, v82
	v_cmp_o_f32_e64 s16, v83, v83
	v_cmp_o_f32_e64 s17, v84, v84
	v_add3_u32 v85, v81, v51, 0x7fff
	v_bfe_u32 v51, v82, 16, 1
	scratch_load_b32 v81, off, off offset:588 ; 4-byte Folded Reload
	v_add3_u32 v86, v82, v51, 0x7fff
	v_bfe_u32 v51, v83, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v87, v83, v51, 0x7fff
	v_bfe_u32 v51, v84, 16, 1
	v_add3_u32 v88, v84, v51, 0x7fff
	scratch_load_b32 v51, off, off offset:580 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[81:84], v81
	s_waitcnt vmcnt(0)
	ds_load_b128 v[51:54], v51
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s23, v81, v81
	v_cmp_o_f32_e64 s24, v82, v82
	v_cmp_o_f32_e64 s25, v83, v83
	v_cmp_o_f32_e64 s26, v84, v84
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v110, v51, 16, 1
	v_cmp_o_f32_e64 s18, v51, v51
	v_cmp_o_f32_e64 s19, v52, v52
	v_cmp_o_f32_e64 s21, v53, v53
	v_cmp_o_f32_e64 s22, v54, v54
	v_add3_u32 v110, v51, v110, 0x7fff
	v_bfe_u32 v51, v52, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.l, 0x7fff, v110.h, s18
	v_add3_u32 v51, v52, v51, 0x7fff
	v_bfe_u32 v52, v53, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v52, v53, v52, 0x7fff
	v_bfe_u32 v53, v54, 16, 1
	v_cndmask_b16 v86.l, 0x7fff, v52.h, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v53, v54, v53, 0x7fff
	v_bfe_u32 v54, v81, 16, 1
	v_add3_u32 v54, v81, v54, 0x7fff
	v_bfe_u32 v81, v82, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.l, 0x7fff, v54.h, s23
	v_add3_u32 v111, v82, v81, 0x7fff
	v_bfe_u32 v81, v83, 16, 1
	v_cndmask_b16 v82.l, 0x7fff, v55.h, s3
	v_cndmask_b16 v82.h, 0x7fff, v56.h, s12
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v112, v83, v81, 0x7fff
	v_bfe_u32 v81, v84, 16, 1
	v_cndmask_b16 v83.l, 0x7fff, v85.h, s14
	v_cndmask_b16 v83.h, 0x7fff, v86.h, s15
	v_cndmask_b16 v85.h, 0x7fff, v51.h, s19
	v_cndmask_b16 v86.h, 0x7fff, v53.h, s22
	v_add3_u32 v113, v84, v81, 0x7fff
	v_cndmask_b16 v81.l, 0x7fff, v26.h, vcc_lo
	scratch_load_b32 v26, off, off offset:596 ; 4-byte Folded Reload
	v_cndmask_b16 v84.l, 0x7fff, v87.h, s16
	v_cndmask_b16 v84.h, 0x7fff, v88.h, s17
	v_cndmask_b16 v87.h, 0x7fff, v111.h, s24
	v_cndmask_b16 v88.l, 0x7fff, v112.h, s25
	v_cndmask_b16 v88.h, 0x7fff, v113.h, s26
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[110:113], off, off offset:212
	scratch_load_b128 v[114:117], off, off offset:228
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v81.h, 0x7fff, v28.h, s2
	s_waitcnt vmcnt(2)
	ds_load_b128 v[51:54], v26
	scratch_load_b32 v26, off, off offset:600 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[110:117], v[81:88], v[65:72]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	v_bfe_u32 v28, v52, 16, 1
	v_cmp_o_f32_e64 s2, v52, v52
	v_cmp_o_f32_e64 s3, v53, v53
	v_cmp_o_f32_e64 s12, v54, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v28, v52, v28, 0x7fff
	s_waitcnt vmcnt(0)
	ds_load_b128 v[81:84], v26
	v_bfe_u32 v26, v51, 16, 1
	v_add3_u32 v26, v51, v26, 0x7fff
	v_bfe_u32 v51, v53, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v55, v53, v51, 0x7fff
	v_bfe_u32 v51, v54, 16, 1
	v_add3_u32 v56, v54, v51, 0x7fff
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v51, v81, 16, 1
	v_cmp_o_f32_e64 s14, v81, v81
	v_cmp_o_f32_e64 s15, v82, v82
	v_cmp_o_f32_e64 s16, v83, v83
	v_cmp_o_f32_e64 s17, v84, v84
	v_add3_u32 v85, v81, v51, 0x7fff
	v_bfe_u32 v51, v82, 16, 1
	scratch_load_b32 v81, off, off offset:612 ; 4-byte Folded Reload
	v_add3_u32 v86, v82, v51, 0x7fff
	v_bfe_u32 v51, v83, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v87, v83, v51, 0x7fff
	v_bfe_u32 v51, v84, 16, 1
	v_add3_u32 v88, v84, v51, 0x7fff
	scratch_load_b32 v51, off, off offset:604 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[81:84], v81
	s_waitcnt vmcnt(0)
	ds_load_b128 v[51:54], v51
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s23, v81, v81
	v_cmp_o_f32_e64 s24, v82, v82
	v_cmp_o_f32_e64 s25, v83, v83
	v_cmp_o_f32_e64 s26, v84, v84
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v110, v51, 16, 1
	v_cmp_o_f32_e64 s18, v51, v51
	v_cmp_o_f32_e64 s19, v52, v52
	v_cmp_o_f32_e64 s21, v53, v53
	v_cmp_o_f32_e64 s22, v54, v54
	v_add3_u32 v110, v51, v110, 0x7fff
	v_bfe_u32 v51, v52, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.l, 0x7fff, v110.h, s18
	v_add3_u32 v51, v52, v51, 0x7fff
	v_bfe_u32 v52, v53, 16, 1
	v_cmp_o_f32_e64 s18, v237, v237
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v52, v53, v52, 0x7fff
	v_bfe_u32 v53, v54, 16, 1
	v_cndmask_b16 v86.l, 0x7fff, v52.h, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v53, v54, v53, 0x7fff
	v_bfe_u32 v54, v81, 16, 1
	v_cmp_o_f32_e64 s21, v233, v233
	v_add3_u32 v54, v81, v54, 0x7fff
	v_bfe_u32 v81, v82, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.l, 0x7fff, v54.h, s23
	v_add3_u32 v111, v82, v81, 0x7fff
	v_bfe_u32 v81, v83, 16, 1
	v_cndmask_b16 v82.l, 0x7fff, v55.h, s3
	v_cndmask_b16 v82.h, 0x7fff, v56.h, s12
	v_cmp_o_f32_e64 s23, v229, v229
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v112, v83, v81, 0x7fff
	v_bfe_u32 v81, v84, 16, 1
	v_cndmask_b16 v83.l, 0x7fff, v85.h, s14
	v_cndmask_b16 v83.h, 0x7fff, v86.h, s15
	v_cndmask_b16 v85.h, 0x7fff, v51.h, s19
	v_cndmask_b16 v88.l, 0x7fff, v112.h, s25
	v_add3_u32 v113, v84, v81, 0x7fff
	v_cndmask_b16 v84.l, 0x7fff, v87.h, s16
	v_cndmask_b16 v84.h, 0x7fff, v88.h, s17
	v_cndmask_b16 v87.h, 0x7fff, v111.h, s24
	v_cndmask_b16 v81.l, 0x7fff, v26.h, vcc_lo
	v_cndmask_b16 v88.h, 0x7fff, v113.h, s26
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[110:113], off, off offset:180
	scratch_load_b128 v[114:117], off, off offset:196
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v81.h, 0x7fff, v28.h, s2
	v_cndmask_b16 v86.h, 0x7fff, v53.h, s22
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v28, v74
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s24, v227, v227
	v_cmp_o_f32_e64 s25, v225, v225
	v_cmp_o_f32_e64 s19, v235, v235
	v_cmp_o_f32_e64 s22, v231, v231
	v_cmp_o_f32_e64 s26, v223, v223
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[110:117], v[81:88], v[65:72]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v26, v65, v20
	v_sub_f32_e32 v65, v72, v20
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v72.l, v0.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v51, v66, v20
	v_sub_f32_e32 v52, v67, v20
	v_sub_f32_e32 v54, v69, v20
	v_sub_f32_e32 v55, v70, v20
	v_sub_f32_e32 v56, v71, v20
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v71, v80
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v53, v68, v20
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v20, v73
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v73, 15, v72
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.l, v72.l, 15
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v66, v75
	v_cvt_f32_i32_e32 v68, v77
	v_cvt_f32_i32_e32 v67, v76
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v74, -16, v73
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v0.l, 4, v72.l
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v69, v78
	v_cvt_f32_i32_e32 v70, v79
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v73, v73, v74, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v74.l, v0.l, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e32 v0.l, 0
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v72.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v18, v73
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e32 v74.h, v0.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v17.l, v0.l
	v_mov_b16_e32 v6.l, v0.l
	v_mov_b16_e32 v29.l, v0.l
	v_mov_b16_e32 v10.l, v0.l
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v75, -16, v74
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v18, v18, v17
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v16.l, v0.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v72, v74, v75, vcc_lo
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v14.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v17, v72, v17
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v72.l, v1.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e32 v72.h, v0.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v1.h, v14.l, 15
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v73, -16, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_dual_cndmask_b32 v72, v72, v73 :: v_dual_and_b32 v73, 15, v14
	.loc	1 650 42 is_stmt 1              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v1.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v72, v72
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v14, -16, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v72, v6, v72
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v14, v73, v14, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v14, v14
	v_mul_f32_e32 v6, v6, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v14, 0, v72, s1
	v_mov_b16_e32 v72.h, v0.l
	v_cndmask_b32_e64 v6, 0, v6, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v72.l, v14.h
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s2, v6, v6
	v_and_b32_e32 v72, 1, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v72, v14, v72, 0x7fff
	v_mov_b16_e32 v14.l, v6.h
	v_mov_b16_e32 v14.h, v0.l
	v_cndmask_b16 v74.h, 0x7fff, v72.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v14, v6, v14, 0x7fff
	v_cndmask_b32_e64 v6, 0, v18, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v74.l, 0x7fff, v14.h, s2
	v_bfe_u32 v18, v6, 16, 1
	v_cmp_o_f32_e64 s3, v6, v6
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v14, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v18, v6, v18, 0x7fff
	v_cndmask_b32_e64 v6, 0, v17, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v75.l, 0x7fff, v18.h, s3
	v_bfe_u32 v17, v6, 16, 1
	v_cmp_o_f32_e64 s12, v6, v6
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v18, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v17, v6, v17, 0x7fff
	.loc	1 640 41                        ; attention_backward.py:640:41
	v_mul_f32_e32 v6, s86, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v75.h, 0x7fff, v17.h, s12
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v17, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v20, v6, v20
	v_mul_f32_e32 v28, v6, v28
	v_mul_f32_e32 v66, v6, v66
	v_mul_f32_e32 v68, v6, v68
	v_mul_f32_e32 v67, v6, v67
	v_mul_f32_e32 v69, v6, v69
	v_mul_f32_e32 v70, v6, v70
	v_mul_f32_e32 v6, v6, v71
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(2)
	v_fma_f32 v14, v20, v14, -v2
	scratch_load_b32 v20, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fma_f32 v18, v66, v18, -v2
	s_waitcnt vmcnt(1)
	v_fma_f32 v17, v28, v17, -v2
	scratch_load_b32 v28, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v20, v67, v20, -v2
	s_waitcnt vmcnt(0)
	v_fma_f32 v66, v68, v28, -v2
	scratch_load_b32 v28, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v67, v69, v28, -v2
	scratch_load_b32 v28, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v68, v70, v28, -v2
	scratch_load_b32 v28, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v69, v6, v28, -v2
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v2, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v79, 0, v2, s36
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s36, v205, v205
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v2, v79, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v2, s84, v2
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v6, v2, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v26, v2, v6, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v2, v17
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v0.h, 0x7fff, v26.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	scratch_load_b32 v26, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v28, 0, v2, s35
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s35, v207, v207
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v2, v28, v51
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v2, s84, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v6, v2, 16, 1
	v_cmp_o_f32_e64 s2, v2, v2
	v_add3_u32 v17, v2, v6, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v2, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v6, 0, v2, s34
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s34, v209, v209
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v2, v6, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v2, s84, v2
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v14, v2, 16, 1
	v_cmp_o_f32_e64 s3, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v51, v2, v14, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v2, v20
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v14, 0, v2, s33
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s33, v211, v211
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v2, v14, v53
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v2, s84, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v18, v2, 16, 1
	v_cmp_o_f32_e64 s12, v2, v2
	v_add3_u32 v52, v2, v18, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v2, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v80, 0, v2, s31
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s31, v213, v213
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v2, v80, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v2, s84, v2
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v18, v2, 16, 1
	v_cmp_o_f32_e64 s14, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v53, v2, v18, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v2, v67
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v1.h, 0x7fff, v53.h, s14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v18, 0, v2, s30
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s30, v215, v215
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v2, v18, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v2, s84, v2
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v20, v2, 16, 1
	v_cmp_o_f32_e64 s15, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v54, v2, v20, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v2, v68
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v2, 0, v2, s29
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s29, v217, v217
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v20, v2, v56
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v20, s84, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v55, v20, 16, 1
	v_cmp_o_f32_e64 s16, v20, v20
	v_add3_u32 v55, v20, v55, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v20, v69
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v20, 0, v20, s28
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s28, v219, v219
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, 0, v26
	ds_store_b16_d16_hi v26, v0
	ds_store_b16_d16_hi v26, v1 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v0.h, 0x7fff, v17.h, s2
	v_cndmask_b16 v1.h, 0x7fff, v54.h, s15
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v17, v90, 0, 8
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	ds_store_b16_d16_hi v11, v0
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v0.h, 0x7fff, v51.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v11, v1 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v1.h, 0x7fff, v55.h, s16
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v51, 15, v17
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s16, v20, v20
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v12, v0
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v0.h, 0x7fff, v52.h, s12
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v12, v1 offset:512
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v1.h, v17.l, 15
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v52, -16, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v1.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v51, v51, v52, vcc_lo
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v52, v89, 0, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v51, v51
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v53, 15, v52
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v1.h, v52.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v54, -16, v53
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v1.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v1.h, 4, v17.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v53, v53, v54, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v54.l, v1.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e32 v54.h, v0.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v17.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v1.h, 4, v52.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v53, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v55, -16, v54
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v17, v54, v55, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v54.l, v1.h, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v52.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v55, -16, v54
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v52, v54, v55, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v54.h, v92.l
	v_mov_b16_e32 v54.l, v0.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v52, v52
	v_mul_f32_e32 v51, v51, v54
	v_mul_f32_e32 v17, v17, v54
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v54.h, v91.l
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v56, v20, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v51, 0, v51, s0
	v_cndmask_b32_e64 v17, 0, v17, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v53, v53, v54
	v_mul_f32_e32 v52, v52, v54
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v56, s84, v56
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v54, v51, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	v_cmp_o_f32_e64 s2, v17, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v65, v56, 16, 1
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v54, v51, v54, 0x7fff
	v_bfe_u32 v51, v17, 16, 1
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cmp_o_f32_e64 s17, v56, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v65, v56, v65, 0x7fff
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v51, v17, v51, 0x7fff
	v_cndmask_b32_e64 v17, 0, v53, s0
	v_cndmask_b16 v51.l, 0x7fff, v54.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v1.h, 0x7fff, v65.h, s17
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v31, v0
	ds_store_b16_d16_hi v31, v1 offset:512
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v53, v17, 16, 1
	v_cmp_o_f32_e64 s3, v17, v17
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s2
	v_add3_u32 v53, v17, v53, 0x7fff
	v_cndmask_b32_e64 v17, 0, v52, s1
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v1.h, v1.l
	v_mov_b16_e32 v1.l, v0.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s17, v239, v239
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v52, v17, 16, 1
	v_cmp_o_f32_e64 s12, v17, v17
	v_add3_u32 v52, v17, v52, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	scratch_load_b32 v17, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v52.l, 0x7fff, v53.h, s3
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v53, v180, 0, 8
	.loc	1 732 54 is_stmt 1              ; attention_backward.py:732:54
	v_mov_b16_e64 v180.l, v0.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v54, 15, v53
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.h, v53.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v55, -16, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v0.h, v5.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_dual_cndmask_b32 v54, v54, v55 :: v_dual_and_b32 v55, 15, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v53.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v56, -16, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v55, v55, v56, vcc_lo
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v56.l, v0.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e32 v56.h, v0.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v53.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v5.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v65, -16, v56
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v53, v56, v65, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v56.l, v0.h, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v5.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v54, v54
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.h, v9.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v65, -16, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v54, v54, v10
	v_dual_mul_f32 v10, v53, v10 :: v_dual_cndmask_b32 v5, v56, v65
	v_cvt_f32_i32_e32 v53, v55
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v55.l, v0.l
	v_mov_b16_e32 v56.l, v0.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v5, v5
	v_mul_f32_e32 v53, v53, v29
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v65.l, v0.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s2, v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v5, v5, v29
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v29, 0, v54, s0
	v_cndmask_b32_e64 v5, 0, v5, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_bfe_u32 v54, v29, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_cmp_o_f32_e64 s12, v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v54, v29, v54, 0x7fff
	v_bfe_u32 v29, v10, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v54.l, v0.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v29, v10, v29, 0x7fff
	v_cndmask_b32_e64 v10, 0, v53, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v53, v10, 16, 1
	v_cmp_o_f32_e64 s3, v10, v10
	v_add3_u32 v53, v10, v53, 0x7fff
	v_bfe_u32 v10, v5, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v10, v5, v10, 0x7fff
	v_cndmask_b16 v5.h, 0x7fff, v29.h, s2
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v29, 15, v9
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v5.l, 0x7fff, v54.h, vcc_lo
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.h, v21.l, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v10.l, 0x7fff, v53.h, s3
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s12
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, 0, v17
	ds_load_b128 v[85:88], v17
	ds_load_b128 v[89:92], v15
	ds_load_b128 v[66:69], v8
	ds_load_b128 v[70:73], v27
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b32 v3, v74, v75 offset1:1
	ds_store_2addr_stride64_b32 v3, v51, v52 offset0:2 offset1:3
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v51, -16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v29, v29, v51, vcc_lo
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v51, 15, v21
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v9.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v29, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v52, -16, v51
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v29, v29, v1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v51, v51, v52, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v52.l, v0.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e32 v52.h, v0.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v9.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v21.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v53, -16, v52
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v9, v52, v53, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v52.l, v0.h, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v21.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v53, -16, v52
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v1, v9, v1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v21, v52, v53, vcc_lo
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e64 v9.h, v175.l
	v_mov_b16_e32 v9.l, v0.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v175.l, v0.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v21, v21
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v52.l, v0.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v51, v51, v9
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v53.l, v0.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s2, v1, v1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v9, v21, v9
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v21, 0, v29, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v29, v21, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_add3_u32 v29, v21, v29, 0x7fff
	v_bfe_u32 v21, v1, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v21, v1, v21, 0x7fff
	v_cndmask_b32_e64 v1, 0, v51, s0
	v_bfe_u32 v51, v1, 16, 1
	v_cmp_o_f32_e64 s3, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v51, v1, v51, 0x7fff
	v_cndmask_b32_e64 v1, 0, v9, s1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v51.l, v0.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v9, v1, 16, 1
	v_cmp_o_f32_e64 s12, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v9, v1, v9, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v29.h, vcc_lo
	v_cndmask_b16 v1.h, 0x7fff, v21.h, s2
	v_cndmask_b16 v9.l, 0x7fff, v51.h, s3
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s12
	ds_store_2addr_stride64_b32 v3, v5, v10 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v3, v1, v9 offset0:6 offset1:7
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v1, v50, 0, 8
	.loc	1 732 54 is_stmt 1              ; attention_backward.py:732:54
	v_mov_b16_e32 v50.l, v0.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v5, 15, v1
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.h, v1.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v9, -16, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v5, v5, v9, vcc_lo
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v9, v49, 0, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v5, v5
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v10, 15, v9
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.h, v9.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_mul_f32_e32 v5, v5, v16
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v21, -16, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v1.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v5, 0, v5, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v10, v10, v21, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v21.l, v0.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e32 v21.h, v0.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v1.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v9.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v29, -16, v21
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v1, v21, v29, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v21.l, v0.h, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v9.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v29, -16, v21
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v1, v1, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v9, v21, v29, vcc_lo
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v16.h, v105.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_cndmask_b32_e64 v1, 0, v1, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v9, v9
	v_mul_f32_e32 v10, v10, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s2, v1, v1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v9, v9, v16
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v16, v5, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v16, v5, v16, 0x7fff
	v_bfe_u32 v5, v1, 16, 1
	v_add3_u32 v5, v1, v5, 0x7fff
	v_cndmask_b32_e64 v1, 0, v10, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v10, v1, 16, 1
	v_cmp_o_f32_e64 s3, v1, v1
	v_add3_u32 v10, v1, v10, 0x7fff
	v_cndmask_b32_e64 v1, 0, v9, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v9, v1, 16, 1
	v_cmp_o_f32_e64 s12, v1, v1
	v_add3_u32 v9, v1, v9, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v5.h, s2
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v5, v102, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v1.l, 0x7fff, v16.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v16, 15, v5
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.h, v5.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v21, -16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v16, v16, v21, vcc_lo
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v21, v101, 0, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_mov_b16_e32 v9.l, v21.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v21, 15, v9
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.h, v9.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v29, -16, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v5.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v21, v21, v29, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v29.l, v0.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e32 v29.h, v0.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v5.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v9.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v21, v21
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v49, -16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v5, v29, v49, vcc_lo
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v29.l, v0.h, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v9.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v5, v5
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v49, -16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v29, v29, v49, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v49.h, v104.l
	v_mov_b16_e32 v49.l, v0.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v16, v16, v49
	v_mul_f32_e32 v5, v5, v49
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v49.h, v103.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v16, 0, v16, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v5, 0, v5, s1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v21, v21, v49
	v_mul_f32_e32 v29, v29, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v49, v16, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_cmp_o_f32_e64 s2, v5, v5
	v_add3_u32 v49, v16, v49, 0x7fff
	v_bfe_u32 v16, v5, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v9.l, 0x7fff, v49.h, vcc_lo
	v_add3_u32 v16, v5, v16, 0x7fff
	v_cndmask_b32_e64 v5, 0, v21, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v21, v5, 16, 1
	v_cmp_o_f32_e64 s14, v5, v5
	v_add3_u32 v21, v5, v21, 0x7fff
	v_cndmask_b32_e64 v5, 0, v29, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v10.l, 0x7fff, v21.h, s14
	v_bfe_u32 v29, v5, 16, 1
	v_cmp_o_f32_e64 s15, v5, v5
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s14, v14, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v29, v5, v29, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v10.h, s3
	v_cndmask_b16 v5.h, 0x7fff, v9.h, s12
	v_cndmask_b16 v9.h, 0x7fff, v16.h, s2
	v_cndmask_b16 v10.h, 0x7fff, v29.h, s15
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s15, v2, v2
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_store_2addr_stride64_b32 v3, v1, v5 offset0:8 offset1:9
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	v_bfe_i32 v1, v100, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_store_2addr_stride64_b32 v3, v9, v10 offset0:10 offset1:11
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v9, v96, 0, 8
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v5, 15, v1
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.h, v1.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v10, 15, v9
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v16, -16, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v5, v5, v16, vcc_lo
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v16, v98, 0, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v5, v5
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v21, 15, v16
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.h, v16.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v29, -16, v21
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v21, v21, v29, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v29.l, v0.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e32 v29.h, v0.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v1.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v16.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v49, -16, v29
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v1, v29, v49, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v29.l, v0.h, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v16.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v0.h, v9.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v49, -16, v29
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v16, v29, v49, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v29.h, v99.l
	v_mov_b16_e32 v29.l, v0.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v16, v16
	v_mul_f32_e32 v5, v5, v29
	v_mul_f32_e32 v1, v1, v29
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v29.h, v97.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v1, 0, v1, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v21, v21, v29
	v_mul_f32_e32 v16, v16, v29
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v29, v5, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_cmp_o_f32_e64 s2, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v29, v5, v29, 0x7fff
	v_bfe_u32 v5, v1, 16, 1
	v_add3_u32 v5, v1, v5, 0x7fff
	v_cndmask_b32_e64 v1, 0, v21, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v21, v1, 16, 1
	v_cmp_o_f32_e64 s3, v1, v1
	v_add3_u32 v21, v1, v21, 0x7fff
	v_cndmask_b32_e64 v1, 0, v16, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v5.l, 0x7fff, v21.h, s3
	v_bfe_u32 v16, v1, 16, 1
	v_cmp_o_f32_e64 s12, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v16, v1, v16, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v29.h, vcc_lo
	v_cndmask_b16 v1.h, 0x7fff, v5.h, s2
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v5.h, 0x7fff, v16.h, s12
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v16, -16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v10, v10, v16, vcc_lo
	.loc	1 0 0                           ; attention_backward.py:0
	v_bfe_i32 v16, v95, 0, 8
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v21, 15, v16
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v0.h, v16.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v29, -16, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v9.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v21, v21, v29, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v29.l, v0.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e32 v29.h, v0.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v9.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v0.h, 4, v16.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v21, v21
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v49, -16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v9, v29, v49, vcc_lo
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v29.l, v0.h, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v16.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v9, v9
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v49, -16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v16, v29, v49, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v29.h, v94.l
	v_mov_b16_e32 v29.l, v0.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v49.l, v0.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v10, v10, v29
	v_mul_f32_e32 v9, v9, v29
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v29.h, v93.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v10, 0, v10, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v9, 0, v9, s1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v21, v21, v29
	v_mul_f32_e32 v16, v16, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v29, v10, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_cmp_o_f32_e64 s2, v9, v9
	v_add3_u32 v29, v10, v29, 0x7fff
	v_bfe_u32 v10, v9, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v29.l, v0.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v10, v9, v10, 0x7fff
	v_cndmask_b32_e64 v9, 0, v21, s0
	v_bfe_u32 v21, v9, 16, 1
	v_cmp_o_f32_e64 s3, v9, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v21, v9, v21, 0x7fff
	v_cndmask_b32_e64 v9, 0, v16, s1
	v_cndmask_b16 v10.l, 0x7fff, v21.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_bfe_u32 v16, v9, 16, 1
	v_cmp_o_f32_e64 s12, v9, v9
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v21, v2, 16, 1
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v16, v9, v16, 0x7fff
	v_cndmask_b16 v9.l, 0x7fff, v29.h, vcc_lo
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s2
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	v_cmp_o_f32_e64 s2, v28, v28
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v10.h, 0x7fff, v16.h, s12
	ds_store_2addr_stride64_b32 v3, v1, v5 offset0:12 offset1:13
	ds_store_2addr_stride64_b32 v3, v9, v10 offset0:14 offset1:15
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
	v_bfe_u32 v1, v79, 16, 1
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
	v_add3_u32 v1, v79, v1, 0x7fff
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v182, v7 offset:192
	ds_load_u16_d16_hi v185, v7 offset:960
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v184, v7 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v183, v7 offset:448
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v0.h, 0x7fff, v1.h, vcc_lo
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
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v5.l, v0.l
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v1, v79, v0
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[57:64], v[93:100], v[85:92], v[57:64]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v16, v14, 16, 1
	v_cmp_o_f32_e64 s12, v6, v6
	v_add3_u32 v21, v2, v21, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v3, v1, 16, 1
	v_cmp_o_f32_e64 s3, v1, v1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v16, v14, v16, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v16.l, v0.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s15
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v1, v80, 16, 1
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s14
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v21.l, v0.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[138:145], v[182:189], v[85:92], v[138:145]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v186.l, v0.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v1, v80, v1, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v184.l, v0.l
	v_mov_b16_e64 v182.l, v0.l
	v_mov_b16_e64 v183.l, v0.l
	v_mov_b16_e64 v185.l, v0.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v5.h, 0x7fff, v1.h, vcc_lo
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v187.l, v0.l
	v_mov_b16_e64 v188.l, v0.l
	v_mov_b16_e64 v189.l, v0.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s15, v243, v243
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v9, v80, v5
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
	v_bfe_u32 v1, v9, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v9, v9
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
	v_add3_u32 v1, v9, v1, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v9, v28, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_barrier
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v1.l, 0x7fff, v3.h, s3
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v3, v250, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v9, v28, v9, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v9.l, v0.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v250, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s2
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v26, v5 offset:512
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v5, v18, 16, 1
	v_cmp_o_f32_e64 s2, v18, v18
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v10, v28, v9
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v11, v9
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v5, v18, v5, 0x7fff
	v_bfe_u32 v28, v20, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v5.l, v0.l
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v9, v10, 16, 1
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[57:64], v[74:81], v[66:73], v[57:64]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s2
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s2, v10, v10
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v28, v20, v28, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v9, v10, v9, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v10, v6, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v28.l, v0.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[138:145], v[82:89], v[66:73], v[138:145]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s16
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s16, v241, v241
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v10, v6, v10, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v10.l, v0.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s12
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v26, v0
	ds_store_b16_d16_hi v11, v5 offset:512
	ds_store_b16_d16_hi v12, v10
	ds_store_b16_d16_hi v12, v21 offset:512
	ds_store_b16_d16_hi v31, v16
	ds_store_b16_d16_hi v31, v28 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.h, 0x7fff, v1.h, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v250, v250
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[98:101], v17
	ds_load_b128 v[102:105], v15
	ds_load_b128 v[90:93], v8
	ds_load_b128 v[94:97], v27
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v182.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v242, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v242, v242
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_barrier
	ds_store_b16 v26, v1
	ds_store_b16_d16_hi v26, v0 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v242, v3, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v1.l, 0x7fff, v9.h, s2
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v9, v246, 16, 1
	v_cmp_o_f32_e64 s2, v246, v246
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v5, v18, v5
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v184.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v238, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v238, v238
	v_add3_u32 v9, v246, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v2, v2, v21 :: v_dual_sub_f32 v167, v167, v184
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v238, v3, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v5, v5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v183.h, 0x7fff, v9.h, s2
	v_bfe_u32 v9, v214, 16, 1
	v_cmp_o_f32_e64 s2, v214, v214
	v_cndmask_b16 v185.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v234, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v234, v234
	v_add3_u32 v9, v214, v9, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s12, v2, v2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v169, v169, v185
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v234, v3, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v214.l, v0.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v50.h, 0x7fff, v9.h, s2
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v9, v20, v28
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v18.l, v0.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v186.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v230, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v230, v230
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s14, v9, v9
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v26.l, v0.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v163, v163, v186
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v3, v230, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v187.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v226, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v226, v226
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v165, v165, v187
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v226, v3, 0x7fff
	v_cndmask_b16 v188.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v222, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v222, v222
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v3, v222, v3, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v222.l, v0.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v189.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v218, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v218, v218
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v3, v218, v3, 0x7fff
	v_cndmask_b16 v49.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v210, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v210, v210
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v3, v210, v3, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v210.l, v0.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v51.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v206, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v206, v206
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v3, v206, v3, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v206.l, v0.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v52.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v202, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v202, v202
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v3, v202, v3, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v202.l, v0.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v53.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v198, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v198, v198
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v3, v198, v3, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v198.l, v0.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v54.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v194, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v194, v194
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v20, v129, v54
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v194, v3, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v129, v137, v50
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v137, v237, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v55.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v190, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v190, v190
	v_add3_u32 v137, v237, v137, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v137.l, v0.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v190, v3, 0x7fff
	v_cndmask_b16 v56.h, 0x7fff, v3.h, vcc_lo
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v3, v6, v10
	v_sub_f32_e32 v6, v14, v16
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v14.l, v0.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v10, v3, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_cmp_o_f32_e64 s2, v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v10, v3, v10, 0x7fff
	v_bfe_u32 v3, v6, 16, 1
	v_add3_u32 v3, v6, v3, 0x7fff
	v_bfe_u32 v6, v5, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v6, v5, v6, 0x7fff
	v_bfe_u32 v5, v2, 16, 1
	v_cndmask_b16 v0.h, 0x7fff, v6.h, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v5, v2, v5, 0x7fff
	v_bfe_u32 v2, v9, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v11, v1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v1.l, 0x7fff, v10.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v11, v0 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.h, 0x7fff, v5.h, s12
	v_add3_u32 v2, v9, v2, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v252, v252
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v12, v1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v1.l, 0x7fff, v3.h, s2
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v12, v0 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s14
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v31, v1
	ds_store_b16_d16_hi v31, v0 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v1, v252, 16, 1
	v_bfe_u32 v2, v244, 16, 1
	v_bfe_u32 v3, v240, 16, 1
	v_bfe_u32 v5, v236, 16, 1
	v_bfe_u32 v6, v232, 16, 1
	v_add3_u32 v1, v252, v1, 0x7fff
	v_add3_u32 v2, v244, v2, 0x7fff
	v_cmp_o_f32_e64 s2, v244, v244
	v_add3_u32 v3, v240, v3, 0x7fff
	v_cmp_o_f32_e64 s3, v240, v240
	v_cndmask_b16 v65.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v248, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v248, v248
	v_add3_u32 v5, v236, v5, 0x7fff
	v_cmp_o_f32_e64 s12, v236, v236
	v_add3_u32 v6, v232, v6, 0x7fff
	v_add3_u32 v1, v248, v1, 0x7fff
	v_cmp_o_f32_e64 s14, v232, v232
	v_cndmask_b16 v198.h, 0x7fff, v2.h, s2
	v_cndmask_b16 v202.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v206.h, 0x7fff, v5.h, s12
	v_cndmask_b16 v180.h, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v210.h, 0x7fff, v6.h, s14
	v_bfe_u32 v1, v228, 16, 1
	v_bfe_u32 v2, v224, 16, 1
	v_bfe_u32 v3, v220, 16, 1
	v_bfe_u32 v5, v216, 16, 1
	v_bfe_u32 v6, v212, 16, 1
	v_add3_u32 v1, v228, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v228, v228
	v_add3_u32 v2, v224, v2, 0x7fff
	v_cmp_o_f32_e64 s2, v224, v224
	v_add3_u32 v3, v220, v3, 0x7fff
	v_cmp_o_f32_e64 s3, v220, v220
	v_add3_u32 v5, v216, v5, 0x7fff
	v_cmp_o_f32_e64 s12, v216, v216
	v_add3_u32 v6, v212, v6, 0x7fff
	v_cmp_o_f32_e64 s14, v212, v212
	v_cndmask_b16 v212.h, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v214.h, 0x7fff, v2.h, s2
	v_cndmask_b16 v16.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v18.h, 0x7fff, v5.h, s12
	v_cndmask_b16 v14.h, 0x7fff, v6.h, s14
	v_bfe_u32 v1, v208, 16, 1
	v_bfe_u32 v2, v204, 16, 1
	v_bfe_u32 v3, v200, 16, 1
	v_bfe_u32 v5, v196, 16, 1
	v_bfe_u32 v6, v192, 16, 1
	v_add3_u32 v1, v208, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v208, v208
	v_add3_u32 v2, v204, v2, 0x7fff
	v_cmp_o_f32_e64 s2, v204, v204
	v_add3_u32 v3, v200, v3, 0x7fff
	v_cmp_o_f32_e64 s3, v200, v200
	v_add3_u32 v5, v196, v5, 0x7fff
	v_cmp_o_f32_e64 s12, v196, v196
	v_add3_u32 v6, v192, v6, 0x7fff
	v_cmp_o_f32_e64 s14, v192, v192
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[110:113], v17
	ds_load_b128 v[114:117], v15
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v175.h, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v28.h, 0x7fff, v2.h, s2
	v_cndmask_b16 v29.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v21.h, 0x7fff, v5.h, s12
	v_cndmask_b16 v26.h, 0x7fff, v6.h, s14
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v200, v161, v189
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v189.l, v214.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v204, v159, v188
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v188.l, v212.h
	v_mov_b16_e64 v187.l, v210.h
	v_mov_b16_e64 v186.l, v206.h
	v_mov_b16_e64 v185.l, v202.h
	v_mov_b16_e64 v184.l, v198.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v208, v157, v183
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v183.l, v180.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v216, v155, v182
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v182.l, v65.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v6, v125, v56
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v56.l, v26.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v123, v55
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v55.l, v21.h
	v_wmma_f32_16x16x16_bf16 v[41:48], v[182:189], v[98:105], v[41:48]
	v_mov_b16_e32 v54.l, v29.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v123, v127, v53
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v53.l, v28.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v125, v133, v52
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v52.l, v175.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v127, v131, v51
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v51.l, v14.h
	v_mov_b16_e32 v50.l, v18.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v131, v135, v49
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v49.l, v16.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v1, v253, 16, 1
	v_bfe_u32 v2, v251, 16, 1
	v_bfe_u32 v3, v249, 16, 1
	v_bfe_u32 v5, v247, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[49:56], v[90:97], v[41:48]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v9, v245, 16, 1
	v_bfe_u32 v17, v243, 16, 1
	v_bfe_u32 v133, v241, 16, 1
	v_bfe_u32 v135, v239, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[182:189], v[110:117], v[41:48]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v182, v227, 16, 1
	v_bfe_u32 v155, v235, 16, 1
	v_bfe_u32 v157, v233, 16, 1
	v_bfe_u32 v159, v231, 16, 1
	v_bfe_u32 v161, v229, 16, 1
	v_add3_u32 v188, v227, v182, 0x7fff
	v_bfe_u32 v182, v225, 16, 1
	v_add3_u32 v1, v253, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v253, v253
	v_add3_u32 v2, v251, v2, 0x7fff
	v_cmp_o_f32_e64 s2, v251, v251
	v_add3_u32 v218, v225, v182, 0x7fff
	scratch_load_b128 v[224:227], off, off  ; 16-byte Folded Reload
	v_bfe_u32 v182, v223, 16, 1
	v_add3_u32 v3, v249, v3, 0x7fff
	v_cmp_o_f32_e64 s3, v249, v249
	v_add3_u32 v5, v247, v5, 0x7fff
	v_cmp_o_f32_e64 s12, v247, v247
	v_add3_u32 v189, v223, v182, 0x7fff
	v_bfe_u32 v182, v221, 16, 1
	v_add3_u32 v9, v245, v9, 0x7fff
	v_cmp_o_f32_e64 s14, v245, v245
	v_add3_u32 v17, v243, v17, 0x7fff
	v_add3_u32 v133, v241, v133, 0x7fff
	v_add3_u32 v220, v221, v182, 0x7fff
	v_bfe_u32 v182, v219, 16, 1
	v_add3_u32 v135, v239, v135, 0x7fff
	v_add3_u32 v155, v235, v155, 0x7fff
	v_add3_u32 v157, v233, v157, 0x7fff
	v_add3_u32 v159, v231, v159, 0x7fff
	v_add3_u32 v190, v219, v182, 0x7fff
	v_bfe_u32 v182, v217, 16, 1
	v_add3_u32 v161, v229, v161, 0x7fff
	v_cndmask_b16 v183.h, 0x7fff, v5.h, s12
	v_cndmask_b16 v184.h, 0x7fff, v17.h, s15
	v_cndmask_b16 v185.h, 0x7fff, v135.h, s17
	v_add3_u32 v219, v217, v182, 0x7fff
	v_bfe_u32 v182, v215, 16, 1
	v_cndmask_b16 v186.h, 0x7fff, v155.h, s19
	v_cndmask_b16 v187.h, 0x7fff, v159.h, s22
	v_cndmask_b16 v188.h, 0x7fff, v188.h, s24
	v_cndmask_b16 v189.h, 0x7fff, v189.h, s26
	v_add3_u32 v192, v215, v182, 0x7fff
	v_bfe_u32 v182, v213, 16, 1
	v_cndmask_b16 v217.h, 0x7fff, v133.h, s16
	v_cndmask_b16 v221.h, 0x7fff, v137.h, s18
	v_cndmask_b16 v222.h, 0x7fff, v157.h, s21
	v_cndmask_b16 v223.h, 0x7fff, v161.h, s23
	v_add3_u32 v215, v213, v182, 0x7fff
	v_bfe_u32 v182, v211, 16, 1
	v_cndmask_b16 v218.h, 0x7fff, v218.h, s25
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v183.l, v0.l
	v_mov_b16_e64 v184.l, v0.l
	v_mov_b16_e64 v185.l, v0.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v194, v211, v182, 0x7fff
	v_bfe_u32 v182, v209, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v186.l, v0.l
	v_mov_b16_e64 v187.l, v0.l
	v_mov_b16_e64 v188.l, v0.l
	v_mov_b16_e64 v189.l, v0.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v211, v209, v182, 0x7fff
	v_bfe_u32 v182, v207, 16, 1
	v_cndmask_b16 v190.h, 0x7fff, v190.h, s28
	v_cndmask_b16 v159.h, 0x7fff, v220.h, s27
	v_cndmask_b16 v161.h, 0x7fff, v219.h, s29
	v_cndmask_b16 v155.h, 0x7fff, v215.h, s31
	v_add3_u32 v196, v207, v182, 0x7fff
	v_bfe_u32 v182, v205, 16, 1
	v_cndmask_b16 v157.h, 0x7fff, v211.h, s34
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v190.l, v0.l
	v_mov_b16_e64 v192.l, v0.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v25, v25, v189
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v207, v205, v182, 0x7fff
	v_bfe_u32 v182, v203, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v189.l, v218.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v23, v188
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v188.l, v223.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v135.h, 0x7fff, v207.h, s36
	v_add3_u32 v205, v203, v182, 0x7fff
	v_bfe_u32 v182, v201, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v149, v149, v185
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v185.l, v217.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v153, v153, v183
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v194.l, v0.l
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v203, v201, v182, 0x7fff
	v_bfe_u32 v182, v199, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v196.l, v0.l
	v_mov_b16_e64 v161.l, v0.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v121, v121, v187
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v137.h, 0x7fff, v203.h, s38
	v_add3_u32 v201, v199, v182, 0x7fff
	v_bfe_u32 v182, v197, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v187.l, v222.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v147, v147, v184
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v157.l, v0.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v119, v119, v186
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v199, v197, v182, 0x7fff
	v_bfe_u32 v182, v195, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v186.l, v221.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v107, v107, v190
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v190.l, v159.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v133.h, 0x7fff, v199.h, s40
	v_add3_u32 v197, v195, v182, 0x7fff
	v_bfe_u32 v182, v193, 16, 1
	v_cndmask_b16 v195.h, 0x7fff, v201.h, s39
	v_cndmask_b16 v201.h, 0x7fff, v1.h, vcc_lo
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v197.l, v0.l
	v_mov_b16_e64 v195.l, v0.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v209, v193, v182, 0x7fff
	v_bfe_u32 v182, v191, 16, 1
	v_cndmask_b16 v193.h, 0x7fff, v196.h, s35
	v_cndmask_b16 v196.h, 0x7fff, v197.h, s41
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v193.l, v0.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v0.h, 0x7fff, v209.h, s42
	v_add3_u32 v213, v191, v182, 0x7fff
	v_cndmask_b16 v182.h, 0x7fff, v2.h, s2
	v_cndmask_b16 v191.h, 0x7fff, v192.h, s30
	v_cndmask_b16 v192.h, 0x7fff, v194.h, s33
	v_cndmask_b16 v194.h, 0x7fff, v205.h, s37
	v_cndmask_b16 v197.h, 0x7fff, v213.h, s43
	v_cndmask_b16 v205.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v213.h, 0x7fff, v9.h, s14
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v182.l, v0.l
	v_mov_b16_e64 v191.l, v0.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v3, v179, v195
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v183.l, v205.h
	v_mov_b16_e64 v184.l, v213.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v151, v151, v182
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v182.l, v201.h
	v_mov_b16_e64 v195.l, v137.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v5, v177, v194
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v194.l, v135.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v9, v173, v193
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[182:189], v[98:105], v[33:40]
	v_mov_b16_e64 v193.l, v157.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v17, v171, v192
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v192.l, v155.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v109, v109, v191
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v191.l, v161.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v212.l, v0.l
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v216, v216
	v_cmp_o_f32_e64 s12, v208, v208
	v_cmp_o_f32_e64 s15, v167, v167
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v205.l, v0.l
	v_mov_b16_e64 v201.l, v0.l
	v_mov_b16_e64 v221.l, v0.l
	v_mov_b16_e64 v217.l, v0.l
	v_mov_b16_e64 v213.l, v0.l
	v_mov_b16_e64 v223.l, v0.l
	v_mov_b16_e64 v218.l, v0.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v136, v18
	v_sub_f32_e32 v14, v130, v14
	v_sub_f32_e32 v16, v134, v16
	v_sub_f32_e32 v22, v22, v223
	v_sub_f32_e32 v24, v24, v218
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v159.l, v0.l
	v_mov_b16_e64 v155.l, v0.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v21, v122, v21
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v135.l, v0.l
	v_mov_b16_e64 v133.l, v0.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	s_waitcnt vmcnt(0)
	v_sub_f32_e32 v1, v227, v197
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v197.l, v0.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v225, v196
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v196.l, v133.h
	v_mov_b32_e32 v209, v226
	v_mov_b32_e32 v207, v224
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[190:197], v[90:97], v[33:40]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v209, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[182:189], v[110:117], v[33:40]
	ds_load_b128 v[110:113], v8
	ds_load_b128 v[114:117], v27
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[49:56], v[110:117], v[41:48]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v50, v156, v180 :: v_dual_sub_f32 v49, v154, v65
	v_sub_f32_e32 v51, v166, v198
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[190:197], v[110:117], v[33:40]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v53, v162, v206
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v110, v50, 16, 1
	v_bfe_u32 v65, v49, 16, 1
	v_bfe_u32 v111, v51, 16, 1
	v_cmp_o_f32_e64 s3, v50, v50
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_add3_u32 v110, v50, v110, 0x7fff
	v_bfe_u32 v50, v208, 16, 1
	v_add3_u32 v65, v49, v65, 0x7fff
	v_bfe_u32 v49, v216, 16, 1
	v_add3_u32 v111, v51, v111, 0x7fff
	v_cmp_o_f32_e64 s14, v51, v51
	v_bfe_u32 v51, v167, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v52, v168, v202
	v_sub_f32_e32 v54, v164, v210
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v50, v208, v50, 0x7fff
	v_add3_u32 v49, v216, v49, 0x7fff
	v_add3_u32 v51, v167, v51, 0x7fff
	v_cndmask_b16 v50.l, 0x7fff, v110.h, s3
	v_bfe_u32 v110, v53, 16, 1
	v_cndmask_b16 v49.l, 0x7fff, v65.h, vcc_lo
	v_cndmask_b16 v51.l, 0x7fff, v111.h, s14
	v_bfe_u32 v65, v52, 16, 1
	v_bfe_u32 v111, v54, 16, 1
	v_add3_u32 v110, v53, v110, 0x7fff
	v_cmp_o_f32_e64 s3, v53, v53
	v_bfe_u32 v53, v163, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v55, v158, v212 :: v_dual_sub_f32 v56, v160, v214
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v65, v52, v65, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	v_bfe_u32 v52, v169, 16, 1
	v_add3_u32 v111, v54, v111, 0x7fff
	v_cmp_o_f32_e64 s14, v54, v54
	v_add3_u32 v53, v163, v53, 0x7fff
	v_cndmask_b16 v49.h, 0x7fff, v49.h, s2
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s12
	v_add3_u32 v52, v169, v52, 0x7fff
	v_cmp_o_f32_e64 s2, v169, v169
	v_cmp_o_f32_e64 s12, v163, v163
	v_cndmask_b16 v53.l, 0x7fff, v110.h, s3
	v_cndmask_b16 v54.l, 0x7fff, v111.h, s14
	v_bfe_u32 v110, v55, 16, 1
	v_bfe_u32 v111, v56, 16, 1
	v_cndmask_b16 v52.l, 0x7fff, v65.h, vcc_lo
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s2
	v_cndmask_b16 v53.h, 0x7fff, v53.h, s12
	v_bfe_u32 v65, v165, 16, 1
	v_add3_u32 v110, v55, v110, 0x7fff
	v_cmp_o_f32_e64 s2, v55, v55
	v_bfe_u32 v55, v204, 16, 1
	v_add3_u32 v111, v56, v111, 0x7fff
	v_cmp_o_f32_e64 s12, v56, v56
	v_bfe_u32 v56, v200, 16, 1
	v_add3_u32 v65, v165, v65, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v165, v165
	v_add3_u32 v55, v204, v55, 0x7fff
	v_cmp_o_f32_e64 s3, v204, v204
	v_add3_u32 v56, v200, v56, 0x7fff
	v_cmp_o_f32_e64 s14, v200, v200
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s15
	v_cndmask_b16 v54.h, 0x7fff, v65.h, vcc_lo
	v_cndmask_b16 v55.l, 0x7fff, v110.h, s2
	v_cndmask_b16 v55.h, 0x7fff, v55.h, s3
	v_cndmask_b16 v56.l, 0x7fff, v111.h, s12
	v_cndmask_b16 v56.h, 0x7fff, v56.h, s14
	v_cmp_o_f32_e64 s2, v151, v151
	v_cmp_o_f32_e64 s12, v153, v153
	v_cmp_o_f32_e64 s15, v147, v147
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[49:56], v[98:105], v[41:48]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v50, v152, v205
	v_sub_f32_e32 v49, v150, v201
	v_sub_f32_e32 v53, v118, v221
	v_sub_f32_e32 v52, v148, v217
	v_sub_f32_e32 v51, v146, v213
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v56, v50, 16, 1
	v_bfe_u32 v55, v49, 16, 1
	v_cmp_o_f32_e64 s3, v50, v50
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_bfe_u32 v65, v51, 16, 1
	v_add3_u32 v56, v50, v56, 0x7fff
	v_bfe_u32 v50, v153, 16, 1
	v_add3_u32 v55, v49, v55, 0x7fff
	v_bfe_u32 v49, v151, 16, 1
	v_add3_u32 v65, v51, v65, 0x7fff
	v_cmp_o_f32_e64 s14, v51, v51
	v_add3_u32 v50, v153, v50, 0x7fff
	v_cndmask_b16 v50.l, 0x7fff, v56.h, s3
	v_add3_u32 v49, v151, v49, 0x7fff
	v_bfe_u32 v56, v53, 16, 1
	v_cndmask_b16 v49.l, 0x7fff, v55.h, vcc_lo
	v_bfe_u32 v55, v52, 16, 1
	v_cmp_o_f32_e64 s3, v53, v53
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	v_add3_u32 v56, v53, v56, 0x7fff
	v_bfe_u32 v53, v119, 16, 1
	v_add3_u32 v55, v52, v55, 0x7fff
	v_bfe_u32 v52, v149, 16, 1
	v_cndmask_b16 v49.h, 0x7fff, v49.h, s2
	v_cmp_o_f32_e64 s2, v149, v149
	v_add3_u32 v53, v119, v53, 0x7fff
	v_cndmask_b16 v53.l, 0x7fff, v56.h, s3
	v_add3_u32 v52, v149, v52, 0x7fff
	v_bfe_u32 v56, v22, 16, 1
	v_bfe_u32 v51, v147, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v54, v120, v222
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s12
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s2
	v_add3_u32 v56, v22, v56, 0x7fff
	v_cmp_o_f32_e64 s2, v22, v22
	v_bfe_u32 v22, v23, 16, 1
	v_add3_u32 v51, v147, v51, 0x7fff
	v_cndmask_b16 v51.l, 0x7fff, v65.h, s14
	v_cmp_o_f32_e64 s12, v119, v119
	v_bfe_u32 v65, v54, 16, 1
	v_add3_u32 v22, v23, v22, 0x7fff
	v_cmp_o_f32_e64 s3, v23, v23
	v_bfe_u32 v23, v24, 16, 1
	v_cmp_o_f32_e64 s14, v54, v54
	v_add3_u32 v65, v54, v65, 0x7fff
	v_cndmask_b16 v52.l, 0x7fff, v55.h, vcc_lo
	v_cndmask_b16 v53.h, 0x7fff, v53.h, s12
	v_bfe_u32 v55, v121, 16, 1
	v_add3_u32 v23, v24, v23, 0x7fff
	v_cmp_o_f32_e64 s12, v24, v24
	v_bfe_u32 v24, v25, 16, 1
	v_cndmask_b16 v54.l, 0x7fff, v65.h, s14
	v_add3_u32 v55, v121, v55, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v121, v121
	v_cmp_o_f32_e64 s14, v25, v25
	v_add3_u32 v24, v25, v24, 0x7fff
	v_cndmask_b16 v56.l, 0x7fff, v23.h, s12
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v126, v28
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v28, v18, 16, 1
	v_cndmask_b16 v54.h, 0x7fff, v55.h, vcc_lo
	v_cndmask_b16 v55.l, 0x7fff, v56.h, s2
	v_cndmask_b16 v55.h, 0x7fff, v22.h, s3
	v_cndmask_b16 v56.h, 0x7fff, v24.h, s14
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v24, v128, v29
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v28, v18, v28, 0x7fff
	v_cmp_o_f32_e64 s3, v18, v18
	v_bfe_u32 v18, v129, 16, 1
	v_bfe_u32 v29, v14, 16, 1
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s15
	v_cmp_o_f32_e64 s12, v129, v129
	v_cmp_o_f32_e64 s14, v14, v14
	v_add3_u32 v18, v129, v18, 0x7fff
	v_add3_u32 v29, v14, v29, 0x7fff
	v_bfe_u32 v14, v127, 16, 1
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[49:56], v[98:105], v[33:40]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v22, v132, v175
	v_sub_f32_e32 v25, v124, v26
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v26, v16, 16, 1
	v_add3_u32 v14, v127, v14, 0x7fff
	v_cmp_o_f32_e64 s15, v127, v127
	v_cndmask_b16 v50.h, 0x7fff, v18.h, s12
	v_bfe_u32 v18, v23, 16, 1
	v_add3_u32 v26, v16, v26, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_cndmask_b16 v50.l, 0x7fff, v28.h, s3
	v_cndmask_b16 v51.h, 0x7fff, v14.h, s15
	v_bfe_u32 v14, v22, 16, 1
	v_add3_u32 v18, v23, v18, 0x7fff
	v_cmp_o_f32_e64 s3, v23, v23
	v_bfe_u32 v16, v131, 16, 1
	v_cndmask_b16 v49.l, 0x7fff, v26.h, vcc_lo
	v_add3_u32 v14, v22, v14, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_bfe_u32 v22, v123, 16, 1
	v_cndmask_b16 v53.l, 0x7fff, v18.h, s3
	v_bfe_u32 v18, v10, 16, 1
	v_add3_u32 v16, v131, v16, 0x7fff
	v_cmp_o_f32_e64 s2, v131, v131
	v_add3_u32 v22, v123, v22, 0x7fff
	v_cmp_o_f32_e64 s12, v123, v123
	v_bfe_u32 v23, v24, 16, 1
	v_cndmask_b16 v52.l, 0x7fff, v14.h, vcc_lo
	v_bfe_u32 v14, v20, 16, 1
	v_add3_u32 v18, v10, v18, 0x7fff
	v_cmp_o_f32_e64 s3, v10, v10
	v_bfe_u32 v10, v25, 16, 1
	v_cndmask_b16 v49.h, 0x7fff, v16.h, s2
	v_cndmask_b16 v51.l, 0x7fff, v29.h, s14
	v_bfe_u32 v16, v125, 16, 1
	v_add3_u32 v23, v24, v23, 0x7fff
	v_cmp_o_f32_e64 s14, v24, v24
	v_cndmask_b16 v53.h, 0x7fff, v22.h, s12
	v_add3_u32 v14, v20, v14, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_add3_u32 v10, v25, v10, 0x7fff
	v_cmp_o_f32_e64 s12, v25, v25
	v_bfe_u32 v20, v6, 16, 1
	v_add3_u32 v16, v125, v16, 0x7fff
	v_cmp_o_f32_e64 s2, v125, v125
	v_cndmask_b16 v54.l, 0x7fff, v23.h, s14
	v_cmp_o_f32_e64 s14, v6, v6
	v_add3_u32 v20, v6, v20, 0x7fff
	v_cndmask_b16 v54.h, 0x7fff, v14.h, vcc_lo
	v_cndmask_b16 v56.l, 0x7fff, v10.h, s12
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v6, v106, v159
	v_sub_f32_e32 v10, v108, v161
	v_sub_f32_e32 v14, v170, v155
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v52.h, 0x7fff, v16.h, s2
	v_bfe_u32 v16, v21, 16, 1
	v_bfe_u32 v22, v6, 16, 1
	v_bfe_u32 v23, v10, 16, 1
	v_bfe_u32 v24, v14, 16, 1
	v_cmp_o_f32_e64 s2, v21, v21
	v_add3_u32 v16, v21, v16, 0x7fff
	v_cndmask_b16 v55.h, 0x7fff, v18.h, s3
	v_cndmask_b16 v56.h, 0x7fff, v20.h, s14
	v_add3_u32 v22, v6, v22, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_bfe_u32 v6, v107, 16, 1
	v_add3_u32 v23, v10, v23, 0x7fff
	v_cmp_o_f32_e64 s3, v10, v10
	v_bfe_u32 v10, v109, 16, 1
	v_add3_u32 v24, v14, v24, 0x7fff
	v_cmp_o_f32_e64 s14, v14, v14
	v_bfe_u32 v14, v17, 16, 1
	v_cndmask_b16 v55.l, 0x7fff, v16.h, s2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v16, v172, v157
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v6, v107, v6, 0x7fff
	v_cmp_o_f32_e64 s2, v107, v107
	v_add3_u32 v10, v109, v10, 0x7fff
	v_cmp_o_f32_e64 s12, v109, v109
	v_add3_u32 v14, v17, v14, 0x7fff
	v_cmp_o_f32_e64 s15, v17, v17
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[49:56], v[90:97], v[41:48]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v176, v135
	v_sub_f32_e32 v20, v178, v137
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cndmask_b16 v49.h, 0x7fff, v6.h, s2
	v_cndmask_b16 v50.h, 0x7fff, v10.h, s12
	v_cndmask_b16 v51.h, 0x7fff, v14.h, s15
	v_bfe_u32 v6, v16, 16, 1
	v_bfe_u32 v10, v9, 16, 1
	v_bfe_u32 v14, v5, 16, 1
	v_cndmask_b16 v49.l, 0x7fff, v22.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_add3_u32 v6, v16, v6, 0x7fff
	v_add3_u32 v10, v9, v10, 0x7fff
	v_cmp_o_f32_e64 s2, v9, v9
	v_bfe_u32 v9, v18, 16, 1
	v_add3_u32 v14, v5, v14, 0x7fff
	v_cmp_o_f32_e64 s12, v5, v5
	v_bfe_u32 v5, v20, 16, 1
	v_cndmask_b16 v50.l, 0x7fff, v23.h, s3
	v_cndmask_b16 v51.l, 0x7fff, v24.h, s14
	v_add3_u32 v9, v18, v9, 0x7fff
	v_cmp_o_f32_e64 s3, v18, v18
	v_add3_u32 v5, v20, v5, 0x7fff
	v_cmp_o_f32_e64 s14, v20, v20
	v_cndmask_b16 v52.l, 0x7fff, v6.h, vcc_lo
	v_bfe_u32 v6, v2, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v21, v207, v133
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v53.l, 0x7fff, v9.h, s3
	v_cndmask_b16 v54.l, 0x7fff, v5.h, s14
	v_bfe_u32 v5, v3, 16, 1
	v_add3_u32 v6, v2, v6, 0x7fff
	v_cmp_o_f32_e64 s3, v2, v2
	v_bfe_u32 v2, v0, 16, 1
	v_cndmask_b16 v53.h, 0x7fff, v14.h, s12
	v_add3_u32 v5, v3, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_bfe_u32 v3, v21, 16, 1
	v_add3_u32 v2, v0, v2, 0x7fff
	v_cmp_o_f32_e64 s12, v0, v0
	v_bfe_u32 v0, v1, 16, 1
	v_cndmask_b16 v52.h, 0x7fff, v10.h, s2
	v_add3_u32 v3, v21, v3, 0x7fff
	v_cmp_o_f32_e64 s2, v21, v21
	v_cmp_o_f32_e64 s14, v1, v1
	v_add3_u32 v0, v1, v0, 0x7fff
	v_cndmask_b16 v54.h, 0x7fff, v5.h, vcc_lo
	v_cndmask_b16 v55.h, 0x7fff, v6.h, s3
	v_cndmask_b16 v55.l, 0x7fff, v3.h, s2
	v_cndmask_b16 v56.l, 0x7fff, v2.h, s12
	v_cndmask_b16 v56.h, 0x7fff, v0.h, s14
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[49:56], v[90:97], v[33:40]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_clause 0x7                            ; 36-byte Folded Reload
	scratch_load_b32 v3, off, off offset:16
	scratch_load_b32 v5, off, off offset:28
	scratch_load_b32 v6, off, off offset:32
	scratch_load_b32 v9, off, off offset:36
	scratch_load_b32 v10, off, off offset:40
	scratch_load_b32 v14, off, off offset:44
	scratch_load_b32 v16, off, off offset:48
	scratch_load_b64 v[51:52], off, off offset:64
	s_add_i32 s37, s89, s88
	s_clause 0x3                            ; 20-byte Folded Reload
	scratch_load_b32 v18, off, off offset:660
	scratch_load_b32 v21, off, off offset:672
	scratch_load_b32 v25, off, off offset:744
	scratch_load_b64 v[53:54], off, off offset:76
	s_mul_i32 s27, s37, s76
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v184, v181
	v_mov_b32_e32 v186, v181
	v_mov_b32_e32 v188, v181
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_mov_b32 s70, s66
	s_mov_b32 s71, s67
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v23, off, off offset:680
	scratch_load_b64 v[54:55], off, off offset:84
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v182, v181
	v_mov_b32_e32 v183, v181
	v_mov_b32_e32 v185, v181
	v_mov_b32_e32 v187, v181
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v73, v181 :: v_dual_mov_b32 v74, v182
	v_mov_b32_e32 v75, v183
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v77, v185
	v_dual_mov_b32 v79, v187 :: v_dual_mov_b32 v76, v184
	v_mov_b32_e32 v78, v186
	v_mov_b32_e32 v80, v188
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(13)
	v_or_b32_e32 v0, s89, v3
	s_waitcnt vmcnt(12)
	v_or_b32_e32 v1, s89, v5
	s_waitcnt vmcnt(11)
	v_or_b32_e32 v2, s89, v6
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v3, s37, v3, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s46, v0
	v_cmp_gt_i32_e64 s2, s46, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(10)
	v_or_b32_e32 v1, s89, v9
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v0, s37, v5, 1
	v_add_lshl_u32 v5, s37, v6, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s3, s46, v2
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(9)
	v_or_b32_e32 v2, s89, v10
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v6, s37, v9, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s12, s46, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(8)
	v_or_b32_e32 v1, s89, v14
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v9, s37, v10, 1
	v_add_lshl_u32 v10, s37, v14, 1
	scratch_load_b32 v14, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s14, s46, v2
	v_cmp_gt_i32_e64 s15, s46, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(8)
	v_or_b32_e32 v2, s89, v16
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s20, vcc_lo
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v29, 0x80000000, v5, s3
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v5, s27, v51
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s16, s46, v2
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(6)
	v_or_b32_e32 v2, s89, v18
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v51, 0x80000000, v6, s12
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v6, s27, v53
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v52, 0x80000000, v9, s14
	v_add_lshl_u32 v16, s37, v16, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s18, s46, v2
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v2, s89, v21
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v18, s37, v18, 1
	v_cndmask_b32_e64 v53, 0x80000000, v10, s15
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v10, s27, v54
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v21, s37, v21, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s21, s46, v2
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v2, s89, v23
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v23, s37, v23, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s23, s46, v2
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v2, s89, v25
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s25, s46, v2
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, s89, v14
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v17, s37, v14, 1
	scratch_load_b32 v14, off, off offset:664 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s17, s46, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v17, 0x80000000, v17, s17
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, s89, v14
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v20, s37, v14, 1
	scratch_load_b32 v14, off, off offset:676 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s19, s46, v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, s89, v14
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v22, s37, v14, 1
	scratch_load_b32 v14, off, off offset:684 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s22, s46, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v22, 0x80000000, v22, s22
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, s89, v14
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v24, s37, v14, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s24, s46, v1
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v1, s37, v25, 1
	scratch_load_b32 v25, off, off offset:748 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v1, 0x80000000, v1, s25
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v14, s89, v25
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v2, s37, v25, 1
	scratch_load_b64 v[25:26], off, off offset:20 ; 8-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s26, s46, v14
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b32 v14, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v26, 0x80000000, v0, s2
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b32 v0, off, off offset:60 ; 4-byte Folded Reload
	v_mov_b32_e32 v50, v25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v14, s27, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v25, s27, v50
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s27, v0
	v_lshl_add_u32 v50, s76, 4, v50
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s20, s2
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v28, 0x80000000, v14, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s20, s3
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v49, 0x80000000, v0, vcc_lo
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b32 v0, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s20, s12
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s20, s14
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v9, 0x80000000, v0, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s20, s15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	s_clause 0x5
	buffer_load_u8 v14, v25, s[64:67], 0 offen
	buffer_load_u8 v0, v28, s[64:67], 0 offen
	buffer_load_u8 v90, v49, s[64:67], 0 offen
	buffer_load_u8 v89, v5, s[64:67], 0 offen
	buffer_load_u8 v180, v9, s[64:67], 0 offen
	buffer_load_u8 v5, v6, s[64:67], 0 offen
	v_add_nc_u32_e32 v6, s27, v50
	scratch_load_b64 v[49:50], off, off offset:688 ; 8-byte Folded Reload
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v25, 0x80000000, v16, s16
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s20, s16
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v28, 0x80000000, v21, s21
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v16, s27, v49
	scratch_load_b64 v[49:50], off, off offset:696 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v10, 0x80000000, v18, s18
	v_cndmask_b32_e64 v18, 0x80000000, v20, s19
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s20, s18
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s20, s19
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s20, s21
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v20, s27, v49
	scratch_load_b64 v[49:50], off, off offset:704 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s27, v49
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b64 v[49:50], off, off offset:92 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s20, s22
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s20, s17
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v49, s27, v49
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v54, 0x80000000, v49, vcc_lo
	scratch_load_b64 v[49:50], off, off offset:712 ; 8-byte Folded Reload
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s20, s23
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v55, s27, v49
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_clause 0x3
	buffer_load_u8 v50, v6, s[64:67], 0 offen
	buffer_load_u8 v49, v16, s[64:67], 0 offen
	buffer_load_u8 v102, v20, s[64:67], 0 offen
	buffer_load_u8 v101, v21, s[64:67], 0 offen
	scratch_load_b64 v[20:21], off, off offset:720 ; 8-byte Folded Reload
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v6, 0x80000000, v23, s23
	v_cndmask_b32_e64 v23, 0x80000000, v24, s24
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v16, s27, v20
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v20, 0x80000000, v55, vcc_lo
	scratch_load_b64 v[55:56], off, off offset:728 ; 8-byte Folded Reload
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s20, s24
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s20, s25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s27, v55
	scratch_load_b64 v[55:56], off, off offset:736 ; 8-byte Folded Reload
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v56, 0x80000000, v2, s26
	v_add_nc_u32_e32 v24, s27, v55
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v55, 0x80000000, v21, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s20, s26
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v2, 0x80000000, v24, vcc_lo
	s_clause 0x5
	buffer_load_u8 v100, v20, s[64:67], 0 offen
	buffer_load_u8 v98, v16, s[64:67], 0 offen
	buffer_load_u8 v9, v9, s[64:67], 0 offen
	buffer_load_u8 v21, v54, s[64:67], 0 offen
	buffer_load_u8 v96, v55, s[64:67], 0 offen
	buffer_load_u8 v95, v2, s[64:67], 0 offen
	scratch_load_b32 v16, off, off offset:752 ; 4-byte Folded Reload
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_and_not1_b32 vcc_lo, exec_lo, s81
	.loc	1 624 25                        ; attention_backward.py:624:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s37, v16
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v20, s89, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v16, 1, v2
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s12, s46, v20
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v24, 0x80000000, v16, s12
	s_clause 0x10
	buffer_load_u16 v175, v17, s[68:71], 0 offen
	buffer_load_u16 v16, v10, s[68:71], 0 offen
	buffer_load_u16 v105, v18, s[68:71], 0 offen
	buffer_load_u16 v104, v28, s[68:71], 0 offen
	buffer_load_u16 v103, v22, s[68:71], 0 offen
	buffer_load_u16 v99, v6, s[68:71], 0 offen
	buffer_load_u16 v97, v23, s[68:71], 0 offen
	buffer_load_u16 v94, v1, s[68:71], 0 offen
	buffer_load_u16 v93, v56, s[68:71], 0 offen
	buffer_load_u16 v6, v3, s[68:71], 0 offen
	buffer_load_u16 v17, v26, s[68:71], 0 offen
	buffer_load_u16 v92, v29, s[68:71], 0 offen
	buffer_load_u16 v91, v51, s[68:71], 0 offen
	buffer_load_u16 v10, v52, s[68:71], 0 offen
	buffer_load_u16 v29, v53, s[68:71], 0 offen
	buffer_load_u16 v1, v25, s[68:71], 0 offen
	buffer_load_u16 v18, v24, s[68:71], 0 offen
	.loc	1 615 36                        ; attention_backward.py:615:36
	scratch_load_b32 v3, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v19, v14
	ds_store_b8 v19, v0 offset:64
	ds_store_b8 v19, v50 offset:512
	ds_store_b8 v19, v49 offset:576
	ds_store_b8 v254, v90
	ds_store_b8 v254, v89 offset:64
	ds_store_b8 v254, v102 offset:512
	ds_store_b8 v254, v101 offset:576
	ds_store_b8 v30, v180
	ds_store_b8 v30, v5 offset:64
	ds_store_b8 v30, v100 offset:512
	ds_store_b8 v30, v98 offset:576
	ds_store_b8 v13, v9
	ds_store_b8 v13, v21 offset:64
	ds_store_b8 v13, v96 offset:512
	ds_store_b8 v13, v95 offset:576
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
	.loc	1 630 33                        ; attention_backward.py:630:33
	scratch_load_b64 v[55:56], off, off offset:100 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v3, 0, v3
	ds_load_b64 v[22:23], v3
	scratch_load_b32 v3, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[55:56], v[22:23], v[73:80] neg_lo:[1,1,0]
	scratch_load_b64 v[22:23], off, off offset:108 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt vmcnt(1)
	ds_load_b64 v[24:25], v3
	scratch_load_b32 v3, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[22:23], v[24:25], v[73:80] neg_lo:[1,1,0]
	scratch_load_b64 v[22:23], off, off offset:116 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt vmcnt(1)
	ds_load_b64 v[51:52], v3
	scratch_load_b32 v3, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[22:23], v[51:52], v[73:80] neg_lo:[1,1,0]
	scratch_load_b64 v[22:23], off, off offset:124 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt vmcnt(1)
	ds_load_b64 v[53:54], v3
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v3, s51, v20
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[22:23], v[53:54], v[73:80] neg_lo:[1,1,0]
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_or_b32_e32 v20, 2, v174
	v_cmp_le_i32_e32 vcc_lo, v174, v3
	s_and_not1_b32 s21, s36, exec_lo
	s_and_not1_b32 s22, s35, exec_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_le_i32_e64 s2, v20, v3
	v_or_b32_e32 v20, 4, v174
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s19, s36, vcc_lo
	s_and_b32 s19, s19, exec_lo
	s_and_b32 s2, s35, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s3, v20, v3
	v_or_b32_e32 v20, 6, v174
	s_and_b32 s2, s2, exec_lo
	s_or_b32 s36, s21, s19
	s_or_b32 s35, s22, s2
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s3, s34, s3
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s14, v20, v3
	v_or_b32_e32 v20, 8, v174
	s_and_not1_b32 s2, s34, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s19, s33, exec_lo
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s14, s33, s14
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s15, v20, v3
	v_or_b32_e32 v20, 10, v174
	s_and_b32 s14, s14, exec_lo
	s_or_b32 s34, s2, s3
	s_or_b32 s33, s19, s14
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s15, s31, s15
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s16, v20, v3
	v_or_b32_e32 v20, 12, v174
	s_and_not1_b32 s2, s31, exec_lo
	s_and_b32 s3, s15, exec_lo
	s_and_not1_b32 s14, s30, exec_lo
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s16, s30, s16
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s17, v20, v3
	v_or_b32_e32 v20, 14, v174
	s_and_b32 s15, s16, exec_lo
	s_or_b32 s31, s2, s3
	s_or_b32 s30, s14, s15
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s17, s29, s17
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s18, v20, v3
	s_and_not1_b32 s2, s29, exec_lo
	s_and_b32 s3, s17, exec_lo
	s_and_not1_b32 s14, s28, exec_lo
	s_or_b32 s29, s2, s3
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s18, s28, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s15, s18, exec_lo
	s_or_b32 s28, s14, s15
.LBB0_10:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 677 17 is_stmt 1              ; attention_backward.py:677:17
	s_and_not1_b32 vcc_lo, exec_lo, s80
	s_cbranch_vccnz .LBB0_7
; %bb.11:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v20, s49, v3
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v3, s50, v3
	v_or_b32_e32 v22, 2, v174
	v_or_b32_e32 v23, 4, v174
	v_or_b32_e32 v24, 6, v174
	v_or_b32_e32 v25, 8, v174
	v_or_b32_e32 v26, 10, v174
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v174, v20
	v_cmp_ge_i32_e64 s2, v22, v20
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s19, v174, v3
	v_cmp_le_i32_e64 s21, v22, v3
	v_or_b32_e32 v28, 12, v174
	v_or_b32_e32 v51, 14, v174
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s3, v23, v20
	v_cmp_ge_i32_e64 s14, v24, v20
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s22, v23, v3
	v_cmp_le_i32_e64 s23, v24, v3
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s15, v25, v20
	v_cmp_ge_i32_e64 s16, v26, v20
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s24, v25, v3
	v_cmp_le_i32_e64 s25, v26, v3
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s19, vcc_lo, s19
	s_and_b32 s2, s2, s21
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s17, v28, v20
	v_cmp_ge_i32_e64 s18, v51, v20
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s26, v28, v3
	v_cmp_le_i32_e64 s27, v51, v3
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s19, s19, s36
	s_and_b32 s2, s2, s35
	s_and_b32 s3, s3, s22
	s_and_b32 s14, s14, s23
	s_and_b32 s3, s3, s34
	s_and_b32 s14, s14, s33
	s_and_b32 s15, s15, s24
	s_and_b32 s16, s16, s25
	s_and_not1_b32 s21, s36, exec_lo
	s_and_b32 s19, s19, exec_lo
	s_and_not1_b32 s22, s35, exec_lo
	s_and_b32 s2, s2, exec_lo
	s_and_b32 s15, s15, s31
	s_and_b32 s16, s16, s30
	s_and_b32 s17, s17, s26
	s_and_b32 s18, s18, s27
	s_or_b32 s36, s21, s19
	s_or_b32 s35, s22, s2
	s_and_not1_b32 s2, s34, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s19, s33, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_b32 s17, s17, s29
	s_and_b32 s18, s18, s28
	s_or_b32 s34, s2, s3
	s_or_b32 s33, s19, s14
	s_and_not1_b32 s2, s31, exec_lo
	s_and_b32 s3, s15, exec_lo
	s_and_not1_b32 s14, s30, exec_lo
	s_and_b32 s15, s16, exec_lo
	s_or_b32 s31, s2, s3
	s_or_b32 s30, s14, s15
	s_and_not1_b32 s2, s29, exec_lo
	s_and_b32 s3, s17, exec_lo
	s_and_not1_b32 s14, s28, exec_lo
	s_and_b32 s15, s18, exec_lo
	s_or_b32 s29, s2, s3
	s_or_b32 s28, s14, s15
	s_branch .LBB0_7
.LBB0_12:                               ; %Flow383
	.loc	1 0 21                          ; attention_backward.py:0:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v55, off, off offset:760
	scratch_load_b32 v65, off, off offset:764
	v_readlane_b32 s60, v255, 0
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
	v_mov_b32_e32 v145, v40
	v_mov_b32_e32 v144, v40
	v_mov_b32_e32 v143, v40
	v_mov_b32_e32 v142, v40
	v_mov_b32_e32 v141, v40
	v_mov_b32_e32 v140, v40
	v_mov_b32_e32 v139, v40
	v_mov_b32_e32 v138, v40
	v_mov_b32_e32 v64, v40
	v_mov_b32_e32 v63, v40
	v_mov_b32_e32 v62, v40
	v_mov_b32_e32 v61, v40
	v_mov_b32_e32 v60, v40
	v_mov_b32_e32 v59, v40
	v_mov_b32_e32 v58, v40
	v_mov_b32_e32 v57, v40
.LBB0_14:                               ; %._crit_edge104
	.loc	1 550 20 is_stmt 1              ; attention_backward.py:550:20
	scratch_load_b32 v1, off, off offset:756 ; 4-byte Folded Reload
	.loc	1 753 13                        ; attention_backward.py:753:13
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v16, s60, v55
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s78, v55
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s37, s53, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v17, v16, s48
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, s47, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_mov_b32 s36, s52
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v16, v16, s77
	.loc	1 550 20                        ; attention_backward.py:550:20
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, v1, v65
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v14, 2, v1
	v_or_b32_e32 v13, 4, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s15, s48, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v18, v17, v1, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v15, 6, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s16, s48, v14
	v_cmp_gt_i32_e64 s17, s48, v13
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v19, v17, v14, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, vcc_lo, s15
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v17, v13, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, vcc_lo, s16
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v12, 8, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, vcc_lo, s17
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v11, 10, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s18, s48, v15
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s15
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v10, 12, v1
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
	s_and_b32 s16, vcc_lo, s18
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v9, 14, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s21, s48, v10
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v17, v11, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s19
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v8, 32, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v21, v17, v10, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s20
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v7, 34, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s22, s48, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s21
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v6, 36, v1
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
	s_and_b32 s16, vcc_lo, s22
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v5, 38, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s25, s48, v6
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v62, v20, s[36:39], 0 offen
	buffer_store_b32 v63, v21, s[36:39], 0 offen
	v_add_lshl_u32 v20, v17, v7, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s23
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v4, 40, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v21, v17, v6, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s24
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v3, 42, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s26, s48, v5
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s25
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v2, 44, v1
	v_or_b32_e32 v0, 46, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s27, s48, v4
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v21, 0x80000000, v21, s16
	s_clause 0x1
	buffer_store_b32 v64, v18, s[36:39], 0 offen
	buffer_store_b32 v138, v19, s[36:39], 0 offen
	v_add_lshl_u32 v18, v17, v5, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s28, s48, v3
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v19, v17, v4, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s14, s77, v1
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s26
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s29, s48, v2
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v139, v20, s[36:39], 0 offen
	buffer_store_b32 v140, v21, s[36:39], 0 offen
	v_add_lshl_u32 v20, v17, v3, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s15, s48, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s27
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v1, v16, v1, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s12, s77, v13
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v21, v17, v2, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s28
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v17, v17, v0, 2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v13, v16, v13, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s14, vcc_lo, s14
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, vcc_lo, s29
	s_and_b32 s15, vcc_lo, s15
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s14
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v21, 0x80000000, v21, s16
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s12, vcc_lo, s12
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s15
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s13, s77, v14
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x4
	buffer_store_b32 v141, v18, s[36:39], 0 offen
	buffer_store_b32 v142, v19, s[36:39], 0 offen
	buffer_store_b32 v143, v20, s[36:39], 0 offen
	buffer_store_b32 v144, v21, s[36:39], 0 offen
	buffer_store_b32 v145, v17, s[36:39], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s37, s55, 0xffff
	s_mov_b32 s36, s54
	v_cndmask_b32_e64 v13, 0x80000000, v13, s12
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s12, s77, v15
	v_cmp_gt_i32_e64 s11, s77, v12
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v14, v16, v14, 2
	buffer_store_b32 v41, v1, s[36:39], 0 offen
	v_add_lshl_u32 v1, v16, v15, 2
	v_add_lshl_u32 v12, v16, v12, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, vcc_lo, s13
	s_and_b32 s12, vcc_lo, s12
	s_and_b32 s11, vcc_lo, s11
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v14, 0x80000000, v14, s13
	v_cndmask_b32_e64 v1, 0x80000000, v1, s12
	v_cndmask_b32_e64 v12, 0x80000000, v12, s11
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s8, s77, v9
	v_cmp_gt_i32_e64 s10, s77, v11
	v_cmp_gt_i32_e64 s7, s77, v8
	v_cmp_gt_i32_e64 s9, s77, v10
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_clause 0x1
	buffer_store_b32 v42, v14, s[36:39], 0 offen
	buffer_store_b32 v43, v13, s[36:39], 0 offen
	v_add_lshl_u32 v11, v16, v11, 2
	s_clause 0x1
	buffer_store_b32 v44, v1, s[36:39], 0 offen
	buffer_store_b32 v45, v12, s[36:39], 0 offen
	v_add_lshl_u32 v1, v16, v9, 2
	v_add_lshl_u32 v10, v16, v10, 2
	v_add_lshl_u32 v8, v16, v8, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s10, vcc_lo, s10
	s_and_b32 s8, vcc_lo, s8
	s_and_b32 s9, vcc_lo, s9
	s_and_b32 s7, vcc_lo, s7
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v11, 0x80000000, v11, s10
	v_cndmask_b32_e64 v1, 0x80000000, v1, s8
	v_cndmask_b32_e64 v10, 0x80000000, v10, s9
	v_cndmask_b32_e64 v8, 0x80000000, v8, s7
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s4, s77, v5
	v_cmp_gt_i32_e64 s6, s77, v7
	v_cmp_gt_i32_e64 s3, s77, v4
	v_cmp_gt_i32_e64 s5, s77, v6
	v_cmp_gt_i32_e64 s2, s77, v3
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_clause 0x1
	buffer_store_b32 v46, v11, s[36:39], 0 offen
	buffer_store_b32 v47, v10, s[36:39], 0 offen
	v_add_lshl_u32 v7, v16, v7, 2
	s_clause 0x1
	buffer_store_b32 v48, v1, s[36:39], 0 offen
	buffer_store_b32 v33, v8, s[36:39], 0 offen
	v_add_lshl_u32 v1, v16, v5, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s1, s77, v2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v6, v16, v6, 2
	v_add_lshl_u32 v4, v16, v4, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s0, s77, v0
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v3, v16, v3, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, vcc_lo, s6
	s_and_b32 s4, vcc_lo, s4
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v2, v16, v2, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, vcc_lo, s5
	s_and_b32 s3, vcc_lo, s3
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v0, v16, v0, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s6
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s2, vcc_lo, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s5
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s1, vcc_lo, s1
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x6
	buffer_store_b32 v34, v7, s[36:39], 0 offen
	buffer_store_b32 v35, v6, s[36:39], 0 offen
	buffer_store_b32 v36, v1, s[36:39], 0 offen
	buffer_store_b32 v37, v4, s[36:39], 0 offen
	buffer_store_b32 v38, v3, s[36:39], 0 offen
	buffer_store_b32 v39, v2, s[36:39], 0 offen
	buffer_store_b32 v40, v0, s[36:39], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 772
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 29688
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 772
    .sgpr_count:     107
    .sgpr_spill_count: 1
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
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
